from ortools.sat.python import cp_model
import os
import time
import json


class ORTools_Solver:
    def __init__(self, components_file, offers_file, nr_vms=0):
        self.components_file = components_file
        self.offers_file = offers_file
        self.nr_vms = 0

        self.components = []
        self.offers = []

        self.model = cp_model.CpModel()

        # Variabile
        self.alloc_vars = {}
        self.type_vars = {}
        self.vm_price = {}
        self.vm_active = {}
        self.CPU = {}
        self.Memory = {}
        self.Storage = {}

    def load_data(self):
        with open(self.offers_file, "r") as f:
            raw = json.load(f)
            for _, o in raw.items():
                self.offers.append({
                    "cpu": int(o.get("cpu", 0)),
                    "memory": int(o.get("memory", 0)),
                    "storage": int(o.get("storage", 0)),
                    "price": int(o.get("price", 0))  # CP-SAT cere int!
                })

        with open(self.components_file, "r") as f:
            raw = json.load(f)
            for c in raw.get("components", []):
                self.components.append({
                    "id": c.get("id", 0),
                    "name": c.get("name", "Unknown"),
                    "cpu": int(c.get("Compute", {}).get("CPU", 0)),
                    "memory": int(c.get("Compute", {}).get("Memory", 0)),
                    "storage": int(c.get("Storage", {}).get("StorageSize", 0))
                })

        self.nr_vms = len(self.components)

    def build_variables(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)

        # Calculăm limitele superioare pentru variabilele Int (CP-SAT le cere obligatoriu)
        max_price = max([o["price"] for o in self.offers] + [0])
        max_cpu = max([o["cpu"] for o in self.offers] + [0])
        max_mem = max([o["memory"] for o in self.offers] + [0])
        max_sto = max([o["storage"] for o in self.offers] + [0])

        for c in range(nr_comp):
            for v in range(self.nr_vms):
                # CP-SAT: NewBoolVar
                self.alloc_vars[(c, v)] = self.model.NewBoolVar(f"C{c + 1}_VM{v + 1}")

        for v in range(self.nr_vms):
            self.vm_active[v] = self.model.NewBoolVar(f"VM_{v + 1}")

            temp_vars = []
            for o in range(nr_offers):
                var = self.model.NewBoolVar(f"VM{v + 1}_Type{o + 1}")
                self.type_vars[(v, o)] = var
                temp_vars.append(var)

            # daca e activ, alege exact 1 tip
            self.model.AddExactlyOne(temp_vars).OnlyEnforceIf(self.vm_active[v])
            self.model.Add(sum(temp_vars) == 0).OnlyEnforceIf(self.vm_active[v].Not())

            self.vm_price[v] = self.model.NewIntVar(0, max_price, f"PriceProv{v + 1}")
            self.CPU[v] = self.model.NewIntVar(0, max_cpu, f"VM{v + 1}_offer_CPU")
            self.Memory[v] = self.model.NewIntVar(0, max_mem, f"VM{v + 1}_offer_Memory")
            self.Storage[v] = self.model.NewIntVar(0, max_sto, f"VM{v + 1}_offer_Storage")

    def basic_allocation(self):
        nr_comp = len(self.components)
        for c in range(nr_comp):
            self.model.Add(sum(self.alloc_vars[(c, v)] for v in range(self.nr_vms)) >= 1).WithName(f"BasicAllocation_{c+1}")

    def occupancy(self):
        nr_comp = len(self.components)
        for v in range(self.nr_vms):
            for c in range(nr_comp):
                self.model.AddImplication(self.alloc_vars[(c, v)], self.vm_active[v]).WithName(f"Occupancy_{v+1}")

    def capacity(self):
        nr_comp = len(self.components)
        for v in range(self.nr_vms):
            self.model.Add(
                sum(self.alloc_vars[(c, v)] * self.components[c]["cpu"] for c in range(nr_comp)) <= self.CPU[v]
            ).WithName(f"Capacity_CPU_VM{v + 1}")
            self.model.Add(
                sum(self.alloc_vars[(c, v)] * self.components[c]["memory"] for c in range(nr_comp)) <= self.Memory[v],
            ).WithName(f"Capacity_Memory_VM{v + 1}")
            self.model.Add(
                sum(self.alloc_vars[(c, v)] * self.components[c]["storage"] for c in range(nr_comp)) <= self.Storage[v],
            ).WithName(f"Capacity_Storage_VM{v + 1}")

    def link(self):
        nr_offers = len(self.offers)
        for v in range(self.nr_vms):
            for o in range(nr_offers):
                offer = self.offers[o]
                is_chosen = self.type_vars[(v, o)]

                self.model.Add(self.vm_price[v] == offer["price"]).OnlyEnforceIf(is_chosen)
                self.model.Add(self.CPU[v] == offer["cpu"]).OnlyEnforceIf(is_chosen)
                self.model.Add(self.Memory[v] == offer["memory"]).OnlyEnforceIf(is_chosen)
                self.model.Add(self.Storage[v] == offer["storage"]).OnlyEnforceIf(is_chosen)

    def link_deactivation(self):
        for v in range(self.nr_vms):
            self.model.Add(self.vm_price[v] == 0).WithName(f"Deactivation_VM{v+1}").OnlyEnforceIf(self.vm_active[v].Not())
            # self.model.Add(self.CPU[v] == 0).OnlyEnforceIf(self.vm_active[v].Not())
            # self.model.Add(self.Memory[v] == 0).OnlyEnforceIf(self.vm_active[v].Not())
            # self.model.Add(self.Storage[v] == 0).OnlyEnforceIf(self.vm_active[v].Not())

    def objective(self):
        self.model.Minimize(sum(self.vm_price[v] for v in range(self.nr_vms)))

    def run(self, output_dir="../Data/Output/ORTools"):
        os.makedirs(output_dir, exist_ok=True)

        components_name = os.path.splitext(os.path.basename(self.components_file))[0]
        offers_name = os.path.splitext(os.path.basename(self.offers_file))[0]
        dynamic_base_name = f"{components_name}_{offers_name}"

        proto_path = os.path.join(output_dir, f"{dynamic_base_name}_model.txt")
        self.model.ExportToFile(proto_path)

        sol_path = os.path.join(output_dir, f"{dynamic_base_name}.sol")

        solver = cp_model.CpSolver()

        solver.parameters.cp_model_presolve = False
        solver.parameters.max_time_in_seconds = 5000.0
        solver.parameters.log_search_progress = True

        start_time = time.time()

        with open(sol_path, "w") as f:
            def capture_log(message: str):
                f.write(message + "\n")

            solver.log_callback = capture_log
            status = solver.Solve(self.model)
            duration = time.time() - start_time

            if status == cp_model.OPTIMAL or status == cp_model.FEASIBLE:
                f.write(f"Price = {solver.ObjectiveValue()}\n")
                f.write(f"Time = {duration:.6f}\n")
                f.write(f"Wall_Time = {solver.WallTime():.6f}\n")
                f.write(f"Status = {solver.StatusName(status)}\n")
                f.write(f"Conflicts = {solver.NumConflicts()}\n")
                f.write(f"Branches = {solver.NumBranches()}\n\n")

                # MATRICEA
                a_mat = []
                nr_comp = len(self.components)

                for c in range(nr_comp):
                    row = []
                    for v in range(self.nr_vms):
                        val = solver.Value(self.alloc_vars[(c, v)])
                        row.append(int(val))
                    a_mat.append(row)

                # VECTORUL
                t_vec = []
                nr_offers = len(self.offers)

                for v in range(self.nr_vms):
                    t_val = 0
                    for o in range(nr_offers):
                        if solver.Value(self.type_vars[(v, o)]) == 1:
                            t_val = o + 1
                            break
                    t_vec.append(t_val)

                f.write("\nMatrice components x VM\n")
                for row in a_mat:
                    f.write(" ".join(map(str, row)) + "\n")

                f.write("\nVM type vector t\n")
                f.write(str(t_vec) + "\n")

                vm_details = []
                f.write("\nComponent Requirements\n")
                f.write(f"{'C ID':<6} {'Name':<15} {'Req CPU':<10} {'Req Memory':<12} {'Req Storage':<12}\n")
                f.write("-" * 60 + "\n")

                for v in range(self.nr_vms):
                    total_req_cpu = 0
                    total_req_mem = 0
                    total_req_sto = 0
                    is_used = False

                    c_names = []
                    c_ids = []

                    for c in range(nr_comp):
                        if a_mat[c][v] == 1:
                            is_used = True
                            total_req_cpu += self.components[c]["cpu"]
                            total_req_mem += self.components[c]["memory"]
                            total_req_sto += self.components[c]["storage"]

                            c_ids.append(str(self.components[c].get("id", c + 1)))
                            c_names.append(self.components[c].get("name", f"Comp_{c + 1}"))

                    if is_used:
                        ids_str = ", ".join(c_ids)
                        names_str = ", ".join(c_names)
                        f.write(
                            f"{ids_str:<6} {names_str:<15} {total_req_cpu:<10} {total_req_mem:<12} {total_req_sto:<12}\n")

                f.write("-" * 60 + "\n")

                f.write("\nVM Detailed Specs\n")
                f.write(f"{'VM ID':<6} {'Type':<6} {'Price':<10} {'CPU':<8} {'Memory':<10} {'Storage':<10}\n")
                f.write("-" * 60 + "\n")

                total_cost_check = 0
                for v in range(self.nr_vms):
                    #extragere date cu .value
                    vm_cpu = solver.Value(self.CPU[v])
                    vm_mem = solver.Value(self.Memory[v])
                    vm_sto = solver.Value(self.Storage[v])
                    vm_prc = solver.Value(self.vm_price[v])
                    t_val = t_vec[v]

                    if t_val > 0:
                        f.write(f"VM {v + 1:<3} {t_val:<6} {vm_prc:<10.2f} {vm_cpu:<8} {vm_mem:<10} {vm_sto:<10}\n")
                        total_cost_check += vm_prc

                f.write("-" * 60 + "\n")
                f.write(f"Total Calculated: {total_cost_check:.2f}\n")

                f.write("\nComponent Allocation\n")
                for c in range(len(self.components)):
                    for v in range(self.nr_vms):
                        if a_mat[c][v] == 1:
                            f.write(f"Component {c + 1} -> VM {v + 1}\n")

            else:
                f.write(f"No solution found. Status: {solver.StatusName(status)}\n")


    def solve(application_file, offers_file):
        solver = ORTools_Solver(
            components_file=application_file,
            offers_file=offers_file
        )

        solver.load_data()
        solver.build_variables()
        solver.basic_allocation()
        solver.occupancy()
        solver.capacity()
        solver.link()
        solver.link_deactivation()
        solver.objective()

        return solver.run()