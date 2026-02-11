from docplex.mp.model import Model
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
        self.alloc_vars = {}   # (c, v) -> bin
        self.type_vars = {}    # (v, o) -> bin
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
                    "cpu": c.get("Compute", {}).get("CPU", 0),
                    "memory": c.get("Memory", {}).get("Memory", 0),
                    "storage": c.get("Storage", {}).get("StorageSize", 0)
                })

        self.nr_vms = len(self.components)

    def build_variables(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)

        for c in range(nr_comp):
            for v in range(self.nr_vms):
                self.alloc_vars[(c, v)] = self.model.binary_var(
                    name=f"C{c + 1}_VM{v + 1}"
                )

        for v in range(self.nr_vms):
            for o in range(nr_offers):
                self.type_vars[(v, o)] = self.model.binary_var(
                    name=f"VM{v + 1}_Offer{o + 1}"
                )

        for v in range(self.nr_vms):
            self.vm_price[v] = self.model.continuous_var(
                lb=0, name=f"PriceProv{v + 1}"
            )

        self.vm_active = {}
        for v in range(self.nr_vms):
            self.vm_active[v] = self.model.binary_var(name=f"v_{v}")

        self.CPU = {}
        self.Memory = {}
        self.Storage = {}

        for v in range(self.nr_vms):
            self.CPU[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_CPU")
            self.Memory[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_Memory")
            self.Storage[v] = self.model.integer_var(lb=0, name=f"VM{v + 1}_offer_Storage")

    def basic_allocation(self):
        nr_comp = len(self.components)
        for c in range(nr_comp):
            self.model.add_constraint(
                self.model.sum(
                    self.alloc_vars[(c, v)] for v in range(self.nr_vms)
                ) >= 1,
                ctname=f"BasicAllocation_{c}"
            )

    def occupancy(self):
        nr_comp = len(self.components)

        for v in range(self.nr_vms):
            self.model.add_constraint(
                self.model.sum(self.alloc_vars[(c, v)] for c in range(nr_comp))
                <= nr_comp * self.vm_active[v],
                ctname=f"Occupancy_{v}"
            )

    def capacity(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)

        resources = ["cpu", "memory", "storage"]

        for v in range(self.nr_vms):
            for res in resources:
                lhs = self.model.sum(
                    self.alloc_vars[(c, v)] * self.components[c][res]
                    for c in range(nr_comp)
                )

                rhs = self.model.sum(
                    self.type_vars[(v, o)] * self.offers[o][res]
                    for o in range(nr_offers)
                )

                self.model.add_constraint(
                    lhs <= rhs,
                    ctname=f"Capacity_{res}_VM{v}"
                )

    def link(self):
        nr_offers = len(self.offers)

        for v in range(self.nr_vms):
            self.model.add_constraint(
                self.vm_price[v] ==
                self.model.sum(
                    self.type_vars[(v, o)] * self.offers[o]["price"]
                    for o in range(nr_offers)
                ),
                ctname=f"LinkPrice_{v}"
            )

    def link_deactivation(self):
        nr_offers = len(self.offers)

        for v in range(self.nr_vms):
            self.model.add_constraint(
                self.model.sum(self.type_vars[(v, o)] for o in range(nr_offers))
                <= nr_offers * self.vm_active[v],
                ctname=f"Deactivation_{v}"
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
        out_path = os.path.join(output_dir, f"{dynamic_base_name}.out")

        self.model.export_as_lp(lp_path)

        # OUTPUT sus
        start_time = time.time()
        duration = time.time() - start_time
        solution = self.model.solve()
        solve_details = self.model.solve_details

        #scriere in fisier out
        with open(out_path, "w") as log_file:
            solution = self.model.solve(log_output=log_file)

            log_file.write("\n")
            log_file.write("FINAL SOLUTION\n")
            if solution:
                log_file.write(str(solution))
            else:
                log_file.write("No solution found (Infeasible or Unbounded).")

        # scriere in fisier solutie
        with open(sol_path, "w") as f:
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
                        var_name = f"VM{v + 1}_Offer{o + 1}"
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

                # extragere date

                vm_cpu = solution.get_value(self.CPU[v])
                vm_mem = solution.get_value(self.Memory[v])
                vm_sto = solution.get_value(self.Storage[v])
                vm_prc = solution.get_value(self.vm_price[v])

                vm_details.append({
                    "id": v + 1,
                    "type": t_val,
                    "cpu": int(vm_cpu),
                    "mem": int(vm_mem),
                    "sto": int(vm_sto),
                    "price": vm_prc
                })
                f.write("\nVM Detailed Specs\n")
                f.write(f"{'VM ID':<6} {'Type':<6} {'Price':<10} {'CPU':<8} {'Memory':<10} {'Storage':<10}\n")
                f.write("-" * 60 + "\n")

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

        result = solver.run()
        return result