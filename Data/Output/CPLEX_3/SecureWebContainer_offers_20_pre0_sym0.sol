Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
CPXPARAM_Preprocessing_Presolve                  0
CPXPARAM_Preprocessing_Symmetry                  0
CPXPARAM_DetTimeLimit                            5000000
Found incumbent of value 9152.000000 after 0.09 sec. (0.78 ticks)
Clique table members: 30.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 4 threads.
Root relaxation solution time = 0.01 sec. (0.51 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                         9152.0000        0.0000           100.00%
      0     0     1440.3571    12     9152.0000     1440.3571      104   84.26%
*     0+    0                         3130.0000     1440.3571            53.98%
      0     0     1440.3571    10     3130.0000      Cuts: 22      121   53.98%
      0     0     1447.5536    18     3130.0000      Cuts: 17      144   53.75%
      0     0     1454.0714    12     3130.0000      Cuts: 20      156   53.54%
      0     0     1458.3585    28     3130.0000      Cuts: 15      168   53.41%
      0     0     1492.8288    33     3130.0000      Cuts: 18      196   52.31%
      0     0     1547.0000    24     3130.0000      Cuts: 19      241   50.58%
      0     0     1563.0000    19     3130.0000      Cuts: 16      287   50.06%
*     0+    0                         3002.0000     1563.0000            47.93%
      0     0     1563.0000    23     3002.0000      Cuts: 14      303   47.93%
      0     0     1563.0000    16     3002.0000       Cuts: 8      313   47.93%
*     0+    0                         2932.0000     1563.0000            46.69%
*     0+    0                         2255.0000     1563.0000            30.69%
      0     2     1563.0000    16     2255.0000     1563.8000      313   30.65%
Elapsed time = 0.16 sec. (13.54 ticks, tree = 0.02 MB, solutions = 5)
*    34    13      integral     0     2232.0000     1612.3750      512   27.76%

GUB cover cuts applied:  11
Clique cuts applied:  2
Cover cuts applied:  51
Implied bound cuts applied:  8
Flow cuts applied:  2
Mixed integer rounding cuts applied:  4
Zero-half cuts applied:  4

Root node processing (before b&c):
  Real time             =    0.16 sec. (13.49 ticks)
Parallel b&c, 4 threads:
  Real time             =    0.05 sec. (11.87 ticks)
  Sync time (average)   =    0.02 sec.
  Wait time (average)   =    0.00 sec.
                          ------------
Total (root+branch&cut) =    0.21 sec. (25.35 ticks)
Price = 2232.0
Time = 0.223401
Wall_Time = 0.219194
Status = integer optimal solution
Nodes = 387
Gap = 0.0

Solution = solution for: CPLEX_deployment
objective: 2232
status: OPTIMAL_SOLUTION(2)
C1_VM2=1
C2_VM4=1
C3_VM3=1
C4_VM5=1
C5_VM1=1
VM1_Offer18=1
VM2_Offer15=1
VM3_Offer15=1
VM4_Offer17=1
VM5_Offer12=1
v_1=1
Price_VM1=58.000
v_2=1
Price_VM2=379.000
v_3=1
Price_VM3=379.000
v_4=1
Price_VM4=128.000
v_5=1
Price_VM5=1288.000

Solve_details = status  = integer optimal solution
time    = 0.219194 s.
problem = MILP
gap     = 0%


Matrice components x VM
0 1 0 0 0
0 0 0 1 0
0 0 1 0 0
0 0 0 0 1
1 0 0 0 0

VM type vector t
[18, 15, 15, 17, 12]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
5      Comp_5          1          256          250         
1      Comp_1          4          2048         500         
3      Comp_3          4          2048         1000        
2      Comp_2          2          512          1000        
4      Comp_4          8          16000        2000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   18     58.00      1        1700       1000      
VM 2   15     379.00     4        30500      1000      
VM 3   15     379.00     4        30500      1000      
VM 4   17     128.00     2        3750       2000      
VM 5   12     1288.00    8        68400      2000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 2
Component 2 -> VM 4
Component 3 -> VM 3
Component 4 -> VM 5
Component 5 -> VM 1
