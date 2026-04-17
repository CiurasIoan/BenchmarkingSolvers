from Data.Formalization1.CPLEX_Solver import CPLEX_Solver
#from Data.Formalization2.CPLEX_Solver_f2 import CPLEX_Solver
from Data.Formalization1.Z3_Solver import Z3_Solver
from Data.Formalization1.Gurobi_Solver_LP import parsing
from Data.Formalization1.Gurobi_Solver import Gurobi_Solver
from Data.Formalization1.ORTools_Solver import ORTools_Solver

import os

#CPLEX prima formalizare
# res = CPLEX_Solver.solve(
#     "../Data/Case_Studies/SecureWebContainer.json",
#     "../Data/Offers/offers_20.json"
# )
# print(res)

#Z3 prima formalizare
#
# def run_test():
#     solver = Z3_Solver(
#         components_file="../Data/Case_Studies/SecureWebContainer.json",
#         offers_file="../Data/Offers/offers_500.json"
#     )
#
#     solver.build_general_constraints()
#
#     status = solver.run()
#
#     print(f"Status final Z3: {status}")
#
#
# if __name__ == "__main__":
#     run_test()


# # gurobi_lp
# lp_generate_de_cplex = "../Data/Output/CPLEX/SecureWebContainer_offers_20.lp"
# parsing(lp_generate_de_cplex)

#gurobi clasic
# res = Gurobi_Solver.solve(
#     "../Data/Case_Studies/SecureWebContainer.json",
#     "../Data/Offers/offers_20.json"
# )
# print(res)

#ORTOOLS
res = ORTools_Solver.solve(
    "../Data/Case_Studies/SecureWebContainer.json",
    "../Data/Offers/offers_500.json"
)
print(res)

