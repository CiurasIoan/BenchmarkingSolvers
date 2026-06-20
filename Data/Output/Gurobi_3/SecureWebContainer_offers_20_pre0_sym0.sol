
Gurobi 12.0.1 (mac64[x86]) logging started Sat Jun 20 12:26:09 2026

Set parameter LogFile to value "../Data/Output/Gurobi_3/SecureWebContainer_offers_20_pre0_sym0.sol"
Set parameter LogToConsole to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
LogToConsole  0
Presolve  0

Optimize a model with 40 rows, 135 columns and 670 nonzeros
Model fingerprint: 0x18498195
Variable types: 5 continuous, 130 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 1e+06]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 1e+00]
Variable types: 0 continuous, 135 integer (130 binary)
Found heuristic solution: objective 9152.0000000
Found heuristic solution: objective 9150.0000000
Found heuristic solution: objective 5864.0000000

Root relaxation: objective 1.440357e+03, 91 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0 1440.35714    0   13 5864.00000 1440.35714  75.4%     -    0s
H    0     0                    4375.0000000 1440.35714  67.1%     -    0s
H    0     0                    2232.0000000 1440.35714  35.5%     -    0s
     0     0 1547.00000    0   26 2232.00000 1547.00000  30.7%     -    0s
     0     0 1559.00000    0   21 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   23 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   23 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   22 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   18 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   17 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   16 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   18 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   18 2232.00000 1559.00000  30.2%     -    0s
     0     0 1559.00000    0   15 2232.00000 1559.00000  30.2%     -    0s
     0     2 1559.00000    0   15 2232.00000 1559.00000  30.2%     -    0s

Cutting planes:
  Gomory: 2
  Cover: 19
  Clique: 7
  MIR: 17
  StrongCG: 8
  GUB cover: 15
  Zero half: 2
  Mod-K: 1
  RLT: 5
  Relax-and-lift: 1

Explored 368 nodes (3120 simplex iterations) in 0.15 seconds (0.07 work units)
Thread count was 4 (of 4 available processors)

Solution count 5: 2232 4375 5864 ... 9152

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2232.0
Time = 0.148780
Status = 2
Nodes = 368.0
Gap = 0.0


Matrice components x VM
0 0 0 1 0
0 1 0 0 0
0 0 0 0 1
1 0 0 0 0
0 0 1 0 0

VM type vector t
[12, 17, 18, 15, 15]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
2      Apache          2          512          1000        
5      IDSAgent        1          256          250         
1      Balancer        4          2048         500         
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   12     1288.00    8        68400      2000      
VM 2   17     128.00     2        3750       2000      
VM 3   18     58.00      1        1700       1000      
VM 4   15     379.00     4        30500      1000      
VM 5   15     379.00     4        30500      1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 4
Component 2 -> VM 2
Component 3 -> VM 5
Component 4 -> VM 1
Component 5 -> VM 3
