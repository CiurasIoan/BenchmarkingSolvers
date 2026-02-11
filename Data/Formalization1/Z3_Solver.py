from torch.ao.quantization import per_channel_weight_observer_range_neg_127_to_127
from z3 import *
import time

class Z3_Solver:

    def _initSolver(self):
        """
        Initializes the solver
        :return: None
        """
        if self.solverTypeOptimize:
            self.solver = Optimize()
        else:
            self.solver = Solver()
            self.solver.set(unsat_core=True)
            #self.solver.set("sat.cardinality.solver", True)
            self.labelIdx = 0
            self.labelIdx_oneToOne = 0
            self.labelIdx_offer = 0
            self.labelIdx_conflict = 0

        self.vmIds_for_fixedComponents = set()
        self._defineVariablesAndConstraints()



    def createSMT2LIBFile(self, fileName):
        """
        File creation
        :param fileName: string representing the file name storing the SMT2LIB formulation of the problem
        :return:
        """
        #with open(fileName, 'w+') as fo:
        #   fo.write("(set-logic QF_LIA)\n") # quantifier free linear integer-real arithmetic
        #fo.close()
        if fileName is None: return
        with open(fileName, 'w+') as fo:
            fo.write(self.solver.sexpr())
        fo.close()

    def createSMT2LIBFileSolution(self, fileName, status, model):
        """
        File creation
        :param fileName: string representing the file name storing the SMT2LIB formulation of the problem
        :param status: SAT/UNSAT
        :param model: string representing key-values pairs for the variables in the model
        :return:
        """
        if fileName is None: return
        with open(fileName, 'w+') as foo:
            foo.write(repr(status)+ '[\n')
            for k in model:
                foo.write('%s = %s, ' % (k, model[k]))
                foo.write('\n')
            foo.write(']')
        foo.close()

    def convert_price(self, price):
        return price

    def run(self):
        """
        Invokes the solving of the problem, generates the SMT-LIB problem file,
        and writes the result (SAT/UNSAT/UNKNOWN), model, and statistics
        into the solution file.
        """

        # If optimization mode is active
        if self.solverTypeOptimize:
            opt = sum(self.PriceProv)
            min_obj = self.solver.minimize(opt)

        # 1️⃣ Save the SMT problem encoding before solving
        self.createSMT2LIBFile(self.smt2lib)

        # 2️⃣ Run the solver and measure runtime
        self.get_current_time()
        start_time = time.time()
        status = self.solver.check()

        stop_time = time.time()

        # 3️⃣ Handle UNSAT cores (for non-optimize mode)
        if not self.solverTypeOptimize:
            unsat_core = self.solver.unsat_core()
            self.problem.logger.debug(f"unsat_constraints= {unsat_core}")
            if len(unsat_core) > 0:
                print(f"unsat_constraints= {unsat_core}")

        # 4️⃣ Log and print status
        self.problem.logger.info(f"Z3 status: {status}")
        print(f"Z3 status: {status}")

        # 5️⃣ Collect model data if SAT
        model_dict = {}
        if status == sat:
            model = self.solver.model()
            for d in model.decls():
                model_dict[str(d)] = str(model[d])

        # 6️⃣ Write result + model + statistics into one SMT2LIB solution file
        self.createSMT2LIBFileSolution(
            self.smt2libsol,
            str(status).upper(),
            model_dict,
            solver=self.solver
        )

        # 7️⃣ Post-process results depending on optimization mode
        if self.solverTypeOptimize:
            if status == sat:
                # Build assignment matrix
                a_mat = []
                for i in range(self.nrComp):
                    l = []
                    for k in range(self.nrVM):
                        l.append(model[self.a[i * self.nrVM + k]])
                    a_mat.append(l)

                # VM prices
                vms_price = [
                    int(self.convert_price(model[self.PriceProv[k]]) * 1000)
                    for k in range(self.nrVM)
                ]

                # VM types
                vms_type = [model[self.vmType[k]] for k in range(self.nrVM)]

                # Return optimization data
                return (
                    self.convert_price(min_obj.value()),
                    vms_price,
                    stop_time - start_time,
                    a_mat,
                    vms_type,
                )
            else:
                # UNSAT in optimization case
                return -1, None, None, None, None
        else:
            # Non-optimization case: just return timing
            return None, None, stop_time - start_time

    def createSMT2LIBFileSolution(self, fileName, status, model, solver=None):
        """
        Writes the solver result, model, objective values, and stats into one SMT-LIB-like file.
        """
        if fileName is None:
            return

        with open(fileName, 'w+', encoding='utf-8') as f:
            f.write("; =========================================\n")
            f.write("; Z3 Solver Result\n")
            f.write("; =========================================\n\n")

            f.write(f"; STATUS: {status}\n\n")
            f.write("(set-logic QF_LIA)\n\n")

            if status == "SAT":
                # 1) Model
                f.write("(model\n")
                for k, v in model.items():
                    f.write(f"  (define-fun {k} () Int {v})\n")
                f.write(")\n\n")

                # 2) Objectives (only if Optimize was used)
                if solver is not None and isinstance(solver, Optimize):
                    # Ensure a model exists for evaluation (should, since status == SAT)
                    try:
                        m = solver.model()
                    except Exception:
                        m = None

                    objs = list(solver.objectives())
                    if objs:
                        f.write("; Optimized objective values\n")
                        for i, obj in enumerate(objs, 1):
                            val = None
                            # Prefer OptimizeObjective.value() where available
                            try:
                                val = obj.value()
                            except Exception:
                                pass
                            # Fallback: try evaluating as an expression on the model
                            if val is None and m is not None:
                                try:
                                    val = m.eval(obj, model_completion=True)
                                except Exception:
                                    val = None
                            if val is not None:
                                try:
                                    sort_name = val.sort().name()
                                except Exception:
                                    sort_name = "Int"  # safe default
                                f.write(f"(define-fun objective{i} () {sort_name} {val})\n")
                            else:
                                f.write(f"; objective{i} value unavailable\n")
                        f.write("\n")
            else:
                f.write(f"; No model available ({status})\n\n")

            # Statistics (similar to -st)
            if solver is not None:
                try:
                    f.write("; =========================================\n")
                    f.write("; Z3 Statistics (-st equivalent)\n")
                    f.write("; =========================================\n\n")
                    stats = solver.statistics()
                    for k in stats.keys():
                        f.write(f"{k}: {stats.get_key_value(k)}\n")
                except Exception:
                    pass

            f.write("\n; End of SMT2LIB result file\n")



