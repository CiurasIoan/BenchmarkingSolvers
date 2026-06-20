from gurobipy import *
import gurobipy as gp
import time
import os
import json

class Gurobi_Solver:
    def __init__(self, components_file, offers_file, nr_vms=0):
        self.components_file = components_file
        self.offers_file = offers_file
        self.nr_vms = 0
        self.components = []
        self.offers = []

        self.model = Model("Gurobi_deployment")

        self.model.update()

        # Variabile
        self.alloc_vars = {}   # (c, v) -> bin --> alocarea ofertei cumparate pe masina
        self.type_vars = {}    # (v, o) -> bin ---> ce tip de oferta punem pe masina
        self.vm_price = {}     # v -> float
        self.vm_active = {}
        self.CPU = {}
        self.Memory = {}
        self.Storage = {}

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

        self.alloc_vars = {}
        self.type_vars = {}
        self.vm_active = {}
        self.vm_price ={}

        for v in range(self.nr_vms):
            self.vm_price[v] = self.model.addVar(
                vtype=GRB.CONTINUOUS,
                lb=0,
                name=f"Price_VM{v + 1}"
            )

        # Allocation variables
        for c in range(nr_comp):
            for v in range(self.nr_vms):
                self.alloc_vars[(c, v)] = self.model.addVar(
                    vtype=GRB.BINARY,
                    name=f"C{c + 1}_VM{v + 1}"
                )

        # VM type variables (one-hot encoding)
        for v in range(self.nr_vms):
            self.vm_active[v] = self.model.addVar(
                vtype=GRB.BINARY,
                name=f"VM_{v + 1}"
            )

            for o in range(nr_offers):
                self.type_vars[(v, o)] = self.model.addVar(
                    vtype=GRB.BINARY,
                    name=f"VM{v + 1}_Type{o + 1}"
                )

                # optional: objective coefficient can be set later
                self.type_vars[(v, o)].obj = 0

    def basic_allocation(self):
        nr_comp = len(self.components)

        for c in range(nr_comp):
            self.model.addConstr(
                gp.quicksum(self.alloc_vars[(c, v)] for v in range(self.nr_vms)) >= 1,
                name=f"BasicAllocation_{c+1}"
            )

    def occupancy(self):
        nr_comp = len(self.components)

        for v in range(self.nr_vms):
            assigned = gp.quicksum(self.alloc_vars[(c, v)] for c in range(nr_comp))

            # VM active if used
            self.model.addConstr(
                assigned >= self.vm_active[v],
                name=f"OccupancyLB_{v+1}"
            )

            # no assignment if inactive
            self.model.addConstr(
                assigned <= nr_comp * self.vm_active[v],
                name=f"OccupancyUB_{v+1}"
            )

    def vm_type(self):
        nr_offers = len(self.offers)

        for v in range(self.nr_vms):
            self.model.addConstr(
                gp.quicksum(self.type_vars[(v, o)] for o in range(nr_offers))
                == self.vm_active[v],
                name=f"Vm_Type_{v+1}"
            )

    def capacity(self):
        nr_comp = len(self.components)
        nr_offers = len(self.offers)

        for v in range(self.nr_vms):

            for res in ["cpu", "memory", "storage"]:
                self.model.addConstr(
                    gp.quicksum(
                        self.alloc_vars[(c, v)] * self.components[c][res]
                        for c in range(nr_comp)
                    )
                    <=
                    gp.quicksum(
                        self.type_vars[(v, o)] * self.offers[o][res]
                        for o in range(nr_offers)
                    ),
                    name=f"Capacity_{res}_VM{v + 1}"
                )

    def link_price(self):
        nr_offers = len(self.offers)

        for v in range(self.nr_vms):
            self.model.addConstr(
                self.vm_price[v] ==
                gp.quicksum(
                    self.type_vars[(v, o)] * self.offers[o]["price"]
                    for o in range(nr_offers)
                ),
                name=f"LinkPrice_{v + 1}"
            )

    def objective(self):
        self.model.setObjective(
            gp.quicksum(
                self.vm_price[v]
                for v in range(self.nr_vms)
            ),
            GRB.MINIMIZE
        )


    def run(self, output_dir="../Data/Output/Gurobi_3"):
        os.makedirs(output_dir, exist_ok=True)

        components_name = os.path.splitext(os.path.basename(self.components_file))[0]
        offers_name = os.path.splitext(os.path.basename(self.offers_file))[0]
        dynamic_base_name = f"{components_name}_{offers_name}_pre0_sym0"

        lp_path = os.path.join(output_dir, f"{dynamic_base_name}.lp")
        sol_path = os.path.join(output_dir, f"{dynamic_base_name}.sol")

        self.model.write(lp_path)
        self.model.Params.Presolve = 0
        self.model.Params.Symmetry = 0
        self.model.Params.TimeLimit = 5000
        self.model.Params.LogFile = sol_path
        self.model.Params.LogToConsole = 0

        start_time = time.time()
        self.model.optimize()
        duration = time.time() - start_time

        #scriere in sol file
        with open(sol_path, "a") as f:
            if self.model.Status == GRB.OPTIMAL or self.model.Status == GRB.SUBOPTIMAL:
                f.write(f"Price = {self.model.ObjVal}\n")
                f.write(f"Time = {duration:.6f}\n")
                f.write(f"Status = {self.model.Status}\n")
                f.write(f"Nodes = {self.model.NodeCount}\n")
                f.write(f"Gap = {self.model.MIPGap}\n\n")

                # MATRICEA
                a_mat = []
                nr_comp = len(self.components)

                for c in range(nr_comp):
                    row = []
                    for v in range(self.nr_vms):
                        val = int(round(self.alloc_vars[(c, v)].X))
                        row.append(val)
                    a_mat.append(row)

                # VECTORUL
                t_vec = []
                nr_offers = len(self.offers)

                for v in range(self.nr_vms):
                    t_val = 0
                    for o in range(nr_offers):
                        if self.type_vars[(v, o)].X > 0.5:
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

                    vm_prc = sum(
                        self.type_vars[(v, o)].X * self.offers[o]["price"]
                        for o in range(len(self.offers))
                    )

                    vm_cpu = sum(
                        self.type_vars[(v, o)].X * self.offers[o]["cpu"]
                        for o in range(len(self.offers))
                    )

                    vm_mem = sum(
                        self.type_vars[(v, o)].X * self.offers[o]["memory"]
                        for o in range(len(self.offers))
                    )

                    vm_sto = sum(
                        self.type_vars[(v, o)].X * self.offers[o]["storage"]
                        for o in range(len(self.offers))
                    )
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
                    if self.vm_active[v].X > 0.5:
                        f.write(f"VM {vm['id']:<3} {vm['type']:<6} {vm['price']:<10.2f} {vm['cpu']:<8} {vm['mem']:<10} {vm['sto']:<10}\n")
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
        solver = Gurobi_Solver(
            components_file=application_file,
            offers_file=offers_file
        )

        solver.load_data()
        solver.build_variables()
        solver.basic_allocation()
        solver.occupancy()
        solver.capacity()
        solver.link_price()
        solver.vm_type()
        solver.objective()

        result = solver.run()
        return result