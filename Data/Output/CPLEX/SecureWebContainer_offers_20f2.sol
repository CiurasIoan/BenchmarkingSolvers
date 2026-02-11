Objective = 1387.0
Time = 0.210121
Wall_Time = 0.203826
Status = integer optimal solution
Nodes = 0
Gap = 0.0

Solution = solution for: CPLEX_deployment
objective: 1387
status: OPTIMAL_SOLUTION(2)
C1_VM3=1
C2_VM1=1
C3_VM5=1
C4_VM2=1
C5_VM5=1
VM1_Offer17=1
VM2_Offer15=1
VM2_Offer16=1
VM2_Offer17=1
VM3_Offer16=1
VM3_Offer17=1
VM5_Offer16=1
VM5_Offer17=1
VM5_Offer18=1
PriceProv1=128.000
PriceProv2=653.000
PriceProv3=274.000
PriceProv5=332.000
v_0=1
v_1=1
v_2=1
v_3=1
v_4=1

Solve_details = status  = integer optimal solution
time    = 0.203826 s.
problem = MILP
gap     = 0%


Allocation matrix a
0 0 1 0 0
1 0 0 0 0
0 0 0 0 1
0 1 0 0 0
0 0 0 0 1

VM type vector t
[17, 15, 16, 0, 16]

VM Detailed Specs (Active Only)
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 5   16     332.00     0        0          0         
------------------------------------------------------------
Total Calculated: 332.00

Detailed Component Allocation
Component 1 -> VM 3
Component 2 -> VM 1
Component 3 -> VM 5
Component 4 -> VM 2
Component 5 -> VM 5
