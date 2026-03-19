from Data.Formalization1.CPLEX_Solver import CPLEX_Solver
#from Data.Formalization2.CPLEX_Solver_f2 import CPLEX_Solver


res = CPLEX_Solver.solve(
    "../Data/Case_Studies/SecureWebContainer.json",
    "../Data/Offers/offers_500.json"
)
print(res)

