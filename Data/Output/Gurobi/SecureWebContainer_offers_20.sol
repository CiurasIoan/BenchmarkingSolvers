
Gurobi 12.0.1 (mac64[x86]) logging started Mon Apr  6 11:55:18 2026

Set parameter LogFile to value "../Data/Output/Gurobi/SecureWebContainer_offers_20.sol"
Set parameter LogToConsole to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
LogToConsole  0
Presolve  0

Optimize a model with 20 rows, 150 columns and 115 nonzeros
Model fingerprint: 0xcbd01db6
Model has 435 simple general constraints
  5 OR, 430 INDICATOR
Variable types: 5 continuous, 145 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 475 integer (135 binary)
Found heuristic solution: objective 9544.0000000
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 54 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
H    0     0                    6870.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6870.00000    0.00000   100%     -    0s
H    0     0                    6046.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6046.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6046.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6046.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6046.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 6046.00000    0.00000   100%     -    0s
H    0     0                    5949.0000000    0.00000   100%     -    0s
     0     2    0.00000    0    8 5949.00000    0.00000   100%     -    0s
H   12    16                    5825.0000000    0.00000   100%   3.6    0s
H   26    36                    5740.0000000    0.00000   100%   7.0    0s
H   31    36                    5681.0000000    0.00000   100%   7.6    0s
H   57    64                    2981.0000000    0.00000   100%  10.0    0s
*  264   188              71    2665.0000000    0.00000   100%   6.6    0s
H  333   216                    2432.0000000    0.00000   100%   6.6    0s
H  380   254                    2427.0000000    0.00000   100%   6.6    0s
H  450   306                    2285.0000000    0.00000   100%   6.1    0s
H 1107   606                    2250.0000000   58.00000  97.4%   5.6    0s
H 2199   776                    2232.0000000   58.00000  97.4%   3.9    0s
 58109 16387 1322.00000   45    7 2232.00000  495.00000  77.8%   1.4    5s
 127916 23735 infeasible   66      2232.00000  781.00000  65.0%   1.2   10s
 200472 18223 1690.00000   49    4 2232.00000 1288.00000  42.3%   1.1   15s
 272818 16687 1631.00000   35    7 2232.00000 1631.00000  26.9%   1.1   20s
 322438 11595 1818.00000   45    5 2232.00000 1818.00000  18.5%   1.0   25s
 386763   579 2105.00000   30    4 2232.00000 2105.00000  5.69%   1.0   30s

Cutting planes:
  Implied bound: 5

Explored 389413 nodes (374463 simplex iterations) in 30.19 seconds (16.19 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2250 2285 ... 5825

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2231.999999999996
Time = 30.188266
Status = 2
Nodes = 389413.0
Gap = 0.0


Matrice components x VM
0 0 1 0 0
0 1 0 0 0
0 0 0 0 1
0 0 0 1 0
1 0 0 0 0

VM type vector t
[18, 17, 15, 12, 15]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
5      IDSAgent        1          256          250         
2      Apache          2          512          1000        
1      Balancer        4          2048         500         
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   18     58.00      1        1700       1000      
VM 2   17     128.00     2        3750       2000      
VM 3   15     379.00     4        30500      1000      
VM 4   12     1288.00    8        68400      2000      
VM 5   15     379.00     4        30500      1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 2
Component 3 -> VM 5
Component 4 -> VM 4
Component 5 -> VM 1
