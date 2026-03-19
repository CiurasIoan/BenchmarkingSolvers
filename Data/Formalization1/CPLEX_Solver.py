from docplex.mp.model import Model
from docplex.mp.progress import ProgressListener
import time
import os
import json

class CPLEX_Solver:
    def __init__(self, components_file, offers_file, nr_vms=0):
        self.components_file = components_file
        self.offers_file = offers_file
        self.nr_vms = 0

        self.components = []
        self.offers = []

        self.model = Model("CPLEX_deployment")

        # Variabile
        self.alloc_vars = {}   # (c, v) -> bin --> alocarea ofertei cumparate pe masina
        self.type_vars = {}    # (v, o) -> bin ---> ce tip de oferta punem pe masina
        self.vm_price = {}     # v -> float

    def load_data(self):
        with open(self.offers_file, "r") as f:
            raw = json.load(f)
            for _, o in raw.items():
                self.offers.append({
                    "cpu": o.get("cpu", 0),
                    "memory": o.get("memory", 0),
                    "storage": o.get("storage", 0),
                    "price": o.get("price", 0)
                })

        with open(self.components_file, "r") as f:
            raw = json.load(f)
            for c in raw.get("components", []):
                self.components.append({
                    "id": c.get("id", 0),
                    "name": c.get("name", "Unknown"),
                    "cpu": c.get("Compute", {}).get("CPU", 0),
                    "memory": c.get("Compute", {}).get("Memory", 0),
                    "storage": c.get("Storage", {}).get("StorageSize", 0)
                })

        self.nr_vms = len(self.components)

    def build_variables(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)
        self.vm_active = {}  #occupancy
        self.alloc_vars = {}

        for c in range(nr_comp):
            for v in range(self.nr_vms):
                self.alloc_vars[(c, v)] = self.model.binary_var(
                    name=f"C{c + 1}_VM{v + 1}"
                )

        # for v in range(self.nr_vms):
        #     for o in range(nr_offers):
        #         self.type_vars[(v, o)] = self.model.binary_var(
        #             name=f"VM{v+1}_Type{o+1}"
        #         )
        # print(self.type_vars)

        for v in range(self.nr_vms):
            self.vm_active[v] = self.model.binary_var(name=f"VM_{v + 1}")

        for v in range(self.nr_vms):
            temp_vars = []
            for o in range(nr_offers):
                var = self.model.binary_var(name=f"VM{v + 1}_Type{o + 1}")
                self.type_vars[(v, o)] = var
                temp_vars.append(var)

            self.model.add_constraint(
                self.model.logical_or(*temp_vars) == self.vm_active[v],
                ctname=f"VM{v + 1}"
            )

        for v in range(self.nr_vms):
            self.vm_price[v] = self.model.continuous_var(
                lb=0, name=f"PriceProv{v + 1}"
            )

        for v in range(self.nr_vms):
            self.vm_active[v] = self.model.binary_var(name=f"VM_{v+1}")

        print(self.vm_active)

        self.CPU = {}
        self.Memory = {}
        self.Storage = {}

        for v in range(self.nr_vms):
            self.CPU[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_CPU")
            self.Memory[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_Memory")
            self.Storage[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_Storage")

    def vm_type(self):
        nr_offers = len(self.offers)
        for v in range(self.nr_vms):
            conditii_oferte = [self.type_vars[(v, o)] == 1 for o in range(nr_offers)]
            self.model.add(
                self.model.logical_or(*conditii_oferte) #== (self.vm_active[v] == 1)
            )

    def basic_allocation(self):
        nr_comp = len(self.components)
        for c in range(nr_comp):
            self.model.add_constraint(
                self.model.sum(self.alloc_vars[(c, v)] for v in range(self.nr_vms)) >= 1,
                ctname=f"BasicAllocation_{c}"
            )

    def occupancy(self):
        nr_comp = len(self.components)

        for v in range(self.nr_vms):
            self.model.add_constraint(
                #self.model.if_then(self.model.sum(self.alloc_vars[(c, v)] for c in range(nr_comp)) >= 1, self.vm_active[v] == 1), ctname=f"Occupancy_{v}"
                self.model.if_then(self.model.sum(self.alloc_vars[(c, v)] for c in range(nr_comp)) >= 1 , self.vm_active[v] == 1), ctname=f"Occupancy_{v}"

            )

    def capacity(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)
        for v in range(self.nr_vms):
                self.model.add_constraint(
                    self.model.sum(
                        self.alloc_vars[(c, v)] * self.components[c]["cpu"]
                        for c in range(nr_comp)
                    )
                    <= self.CPU[v],
                    ctname=f"Capacity_CPU_VM{v + 1}"
                )

                self.model.add_constraint(
                    self.model.sum(
                        self.alloc_vars[(c, v)] * self.components[c]["memory"]
                        for c in range(nr_comp)
                    )
                    <= self.Memory[v],
                    ctname=f"Capacity_Memory_VM{v + 1}"
                )

                self.model.add_constraint(
                    self.model.sum(
                        self.alloc_vars[(c, v)] * self.components[c]["storage"]
                        for c in range(nr_comp)
                    )
                    <= self.Storage[v],
                    ctname=f"Capacity_Storage_VM{v + 1}"
                )

    def link(self):
        nr_offers = len(self.offers)
        for v in range(self.nr_vms):
            for o in range(nr_offers):
                offer = self.offers[o]
                #c131-133 din off20.lp
                condition = self.model.logical_and(self.vm_active[v] == 1, self.type_vars[(v, o)] == 1) == 1
                #Condiție => (CPU = X  /  RAM = Y  /  STO = Z)  and  Preț = P
                #la fel e si conditie => cpu=x and conditie => ram etc
                consecinte = [
                    self.vm_price[v] == offer["price"],   # pk = Ptk
                    self.CPU[v]      == offer["cpu"],     # r_cpu = F_cpu
                    self.Memory[v]   == offer["memory"],  # r_mem = F_mem
                    self.Storage[v]  == offer["storage"]  # r_sto = F_sto
                ]

                for eq in consecinte:
                    self.model.add_constraint(
                        self.model.if_then(condition, eq),
                        ctname=f"Link_VM{v+1}_Offer{o+1}"
                    )

    def link_deactivation(self):
        #print(self.vm_type(v))
        for v in range(self.nr_vms):
                self.model.add_constraint(
                    self.model.if_then(
                        self.vm_active[v] == 0, self.vm_price[v]==0),
                ctname=f"Deactivation_{v+1}"
                )

    def objective(self):
        self.model.minimize(
            self.model.sum(self.vm_price[v] for v in range(self.nr_vms))
        )

    def run(self, output_dir="../Data/Output/CPLEX", base_name="cplex"):
        os.makedirs(output_dir, exist_ok=True)

        components_name = os.path.splitext(os.path.basename(self.components_file))[0]
        offers_name = os.path.splitext(os.path.basename(self.offers_file))[0]
        dynamic_base_name = f"{components_name}_{offers_name}"

        lp_path = os.path.join(output_dir, f"{dynamic_base_name}.lp")
        sol_path = os.path.join(output_dir, f"{dynamic_base_name}.sol")

        self.model.export_as_lp(lp_path)
        #scriere in sol file

        with open(sol_path, "w") as f:
            self.model.parameters.preprocessing.presolve = 0
            self.model.parameters.preprocessing.symmetry = 0
            self.model.parameters.read.datacheck = 0
            self.model.parameters.dettimelimit = 5000000

            start_time = time.time()
            solution = self.model.solve(log_output=f)
            solve_details = self.model.solve_details



            duration = time.time() - start_time

            if solution:
                f.write(f"Price = {solution.objective_value}\n")
                f.write(f"Time = {duration:.6f}\n")
                f.write(f"Wall_Time = {solve_details.time:.6f}\n")
                f.write(f"Status = {self.model.solve_details.status}\n")
                f.write(f"Nodes = {solve_details.nb_nodes_processed}\n")
                f.write(f"Gap = {self.model.solve_details.mip_relative_gap}\n\n")

                f.write(f"Solution = {self.model.solution}\n")
                f.write(f"Solve_details = {self.model.solve_details}\n")

                # MATRICEA
                a_mat = []
                nr_comp = len(self.components)

                for c in range(nr_comp):
                    row = []
                    for v in range(self.nr_vms):
                        var_name = f"C{c + 1}_VM{v + 1}"
                        row.append(int(round(solution.get_value(var_name))))
                    a_mat.append(row)

                # VECTORUL
                t_vec = []
                nr_offers = len(self.offers)

                for v in range(self.nr_vms):
                    t_val = 0
                    for o in range(nr_offers):
                        var_name = f"VM{v + 1}_Type{o + 1}"
                        if int(round(solution.get_value(var_name))) == 1:
                            t_val = o + 1
                            break
                    t_vec.append(t_val)

                f.write("\nMatrice components x VM\n")
                for row in a_mat:
                    f.write(" ".join(map(str, row)) + "\n")

                f.write("\nVM type vector t\n")
                f.write(str(t_vec) + "\n")

                # VM detalii
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
                        f.write(f"{ids_str:<6} {names_str:<15} {total_req_cpu:<10} {total_req_mem:<12} {total_req_sto:<12}\n")

                f.write("-" * 60 + "\n")

                f.write("\nVM Detailed Specs\n")
                f.write(f"{'VM ID':<6} {'Type':<6} {'Price':<10} {'CPU':<8} {'Memory':<10} {'Storage':<10}\n")
                f.write("-" * 60 + "\n")
                for v in range(self.nr_vms):
                    # extragere date

                    vm_cpu = solution.get_value(self.CPU[v])
                    vm_mem = solution.get_value(self.Memory[v])
                    vm_sto = solution.get_value(self.Storage[v])
                    vm_prc = solution.get_value(self.vm_price[v])
                    t_val = t_vec[v]

                    vm_details.append({
                        "id": v + 1,
                        "type": t_val,
                        "cpu": int(vm_cpu),
                        "mem": int(vm_mem),
                        "sto": int(vm_sto),
                        "price": vm_prc
                    })

                    total_cost_check = 0

                for vm in vm_details:
                    if vm["type"] > 0:
                        f.write(
                            f"VM {vm['id']:<3} {vm['type']:<6} {vm['price']:<10.2f} {vm['cpu']:<8} {vm['mem']:<10} {vm['sto']:<10}\n")
                        total_cost_check += vm['price']

                f.write("-" * 60 + "\n")
                f.write(f"Total Calculated: {total_cost_check:.2f}\n")

                # --- Scriere Alocare Detaliata (Human Readable) ---
                f.write("\nComponent Allocation\n")
                for c in range(len(self.components)):
                    for v in range(self.nr_vms):
                        if a_mat[c][v] == 1:
                            f.write(f"Component {c + 1} -> VM {v + 1}\n")

            else:
                f.write("No solution found.\n")

    def solve(application_file, offers_file):
        solver = CPLEX_Solver(
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
        solver.vm_type()


        result = solver.run()
        return result