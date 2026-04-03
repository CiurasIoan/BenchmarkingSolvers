from z3 import *
import time
import os
import json


class Z3_Solver:
    def __init__(self, components_file, offers_file):
        self.components_file = components_file
        self.offers_file = offers_file

        self.components = []
        self.offers = []

        self.load_data()
        self.nr_comps = len(self.components)
        self.nr_offers = len(self.offers)

        self.solver = Optimize()

        self.a = {}  # (c, v) -> Int (0 sau 1)
        self.vmType = {}  # v -> Int

        # Variabile resurse
        self.ProcProv = {}
        self.MemProv = {}
        self.StorageProv = {}
        self.PriceProv = {}

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
        for v in range(1, self.nr_vms + 1):
            self.vmType[v] = Int(f"VM{v}Type")
            self.ProcProv[v] = Int(f"ProcProv{v}")
            self.MemProv[v] = Int(f"MemProv{v}")
            self.StorageProv[v] = Int(f"StorageProv{v}")
            self.PriceProv[v] = Int(f"PriceProv{v}")

            for c in range(1, self.nr_comps + 1):
                self.a[(c, v)] = Int(f"C{c}_VM{v}")

                self.solver.add(Or(self.a[(c, v)] == 0, self.a[(c, v)] == 1))

    def basic_allocation(self):
        for c in range(1, self.nr_comps + 1):
            self.solver.add(sum([self.a[(c, v)] for v in range(1, self.nr_vms + 1)]) == 1)

    def occupancy(self):
        for c in range(1, self.nr_comps + 1):
            for v in range(1, self.nr_vms + 1):
                self.solver.add(Implies(self.a[(c, v)] == 1, Not(self.vmType[v] == 0)))

    def capacity(self):
        for v in range(1, self.nr_vms + 1):
            self.solver.add(
                sum([self.a[(c, v)] * self.components[c - 1]["cpu"] for c in range(1, self.nr_comps + 1)]) <=
                self.ProcProv[v]
            )
            self.solver.add(
                sum([self.a[(c, v)] * self.components[c - 1]["memory"] for c in range(1, self.nr_comps + 1)]) <=
                self.MemProv[v]
            )
            self.solver.add(
                sum([self.a[(c, v)] * self.components[c - 1]["storage"] for c in range(1, self.nr_comps + 1)]) <=
                self.StorageProv[v]
            )


    def link(self):
        # deactivation
        for v in range(1, self.nr_vms + 1):
            self.solver.add(
                Implies(sum([self.a[(c, v)] for c in range(1, self.nr_comps + 1)]) == 0, self.PriceProv[v] == 0)
            )
        #link
        for o in range(1, self.nr_offers + 1):
            off = self.offers[o - 1]
            for v in range(1, self.nr_vms + 1):
                self.solver.add(
                    Implies(self.vmType[v] == o,
                            And(
                                self.PriceProv[v] == off["price"],
                                self.ProcProv[v] == off["cpu"],
                                self.MemProv[v] == off["memory"],
                                self.StorageProv[v] == off["storage"]
                            )
                            )
                )

        for v in range(1, self.nr_vms + 1):
            valid_types = [self.vmType[v] == t for t in range(0, self.nr_offers + 1)]
            self.solver.add(Or(valid_types))


    def objective(self):
        total_price = sum([self.PriceProv[v] for v in range(1, self.nr_vms + 1)])
        self.objective = self.solver.minimize(total_price)

    def build_general_constraints(self):
        self.build_variables()
        self.basic_allocation()
        self.occupancy()
        self.link()
        self.capacity()
        self.objective()


    def createSMT2LIBFile(self, file_name):
        if file_name is None: return
        with open(file_name, 'w', encoding='utf-8') as f:
            f.write(self.solver.sexpr())
            f.write("\n(check-sat)\n")
            f.write("(get-model)\n")
            f.write("(get-objectives)\n")
            f.write("(exit)\n")

    def run(self, output_dir="../Data/Output/Z3"):
        os.makedirs(output_dir, exist_ok=True)

        components_name = os.path.splitext(os.path.basename(self.components_file))[0]
        offers_name = os.path.splitext(os.path.basename(self.offers_file))[0]
        dynamic_base_name = f"{components_name}_{offers_name}"

        smt_path = os.path.join(output_dir, f"{dynamic_base_name}.smt2")
        sol_path = os.path.join(output_dir, f"{dynamic_base_name}.sol")

        self.createSMT2LIBFile(smt_path)

        self.solver.set("timeout", 5000000)
        start_time = time.time()
        status = self.solver.check()
        duration = time.time() - start_time

        with open(sol_path, "w") as f:
            if status == sat:
                m = self.solver.model()

                total_price_expr = sum([self.PriceProv[v] for v in range(1, self.nr_vms + 1)])
                obj_val = m.eval(total_price_expr).as_long()

                z3_version = z3.get_version_string()
                f.write(f"Solver Engine: Z3 v{z3_version}\n")
                f.write("\n")

                #trebuie cumva sa obtin si wall time vs time
                stats = self.solver.statistics()
                f.write(str(stats))

                f.write("\n")

                f.write(f"Price = {obj_val}\n")
                f.write(f"Time = {duration:.6f}\n")
                f.write(f"Status = {status}\n")

                # MATRICEA
                a_mat = []
                for c in range(1, self.nr_comps + 1):
                    row = []
                    for v in range(1, self.nr_vms + 1):
                        val = m.eval(self.a[(c, v)]).as_long()
                        row.append(val)
                    a_mat.append(row)

                # VECTORUL (VM Type)
                t_vec = []
                for v in range(1, self.nr_vms + 1):
                    t_val = m.eval(self.vmType[v]).as_long()
                    t_vec.append(t_val)

                f.write("\nMatrice components x VM\n")
                for row in a_mat:
                    f.write(" ".join(map(str, row)) + "\n")

                f.write("\nVM type vector t\n")
                f.write(str(t_vec) + "\n")

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

                    for c in range(self.nr_comps):
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

                vm_details = []
                for v in range(1, self.nr_vms + 1):
                    vm_cpu = m.eval(self.ProcProv[v]).as_long()
                    vm_mem = m.eval(self.MemProv[v]).as_long()
                    vm_sto = m.eval(self.StorageProv[v]).as_long()
                    vm_prc = m.eval(self.PriceProv[v]).as_long()
                    t_val = t_vec[v - 1]

                    vm_details.append({
                        "id": v,
                        "type": t_val,
                        "cpu": vm_cpu,
                        "mem": vm_mem,
                        "sto": vm_sto,
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

                f.write("\nComponent Allocation\n")
                for c in range(self.nr_comps):
                    for v in range(self.nr_vms):
                        if a_mat[c][v] == 1:
                            f.write(f"Component {c + 1} -> VM {v + 1}\n")

            else:
                f.write("No solution found.\n")

        return status