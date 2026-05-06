
Gurobi 12.0.1 (mac64[x86]) logging started Wed May  6 11:03:26 2026

Set parameter LogFile to value "../Data/Output/Gurobi2/SecureWebContainer_offers_20.sol"
Set parameter LogToConsole to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
LogToConsole  0
Presolve  0

Optimize a model with 30 rows, 155 columns and 325 nonzeros
Model fingerprint: 0x886c7bbd
Model has 5 SOS constraints
Model has 430 simple general constraints
  430 INDICATOR
Variable types: 5 continuous, 150 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 2e+01]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 480 integer (135 binary)
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 41 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
H    0     0                    8681.0000000    0.00000   100%     -    0s
H    0     0                    5864.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    4 5864.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 5864.00000    0.00000   100%     -    0s
     0     2    0.00000    0    4 5864.00000    0.00000   100%     -    0s
H   16    22                    5802.0000000    0.00000   100%   7.6    0s
H   20    22                    5681.0000000    0.00000   100%   9.5    0s
H   31    30                    5624.0000000    0.00000   100%   9.7    0s
H   35    38                    5403.0000000    0.00000   100%   8.8    0s
H   57    48                    4955.0000000    0.00000   100%   9.8    0s
*   97    72              24    4091.0000000    0.00000   100%   9.5    0s
H  142   110                    2789.0000000    0.00000   100%   8.1    0s
*  228   128              60    2631.0000000    0.00000   100%   6.8    0s
*  239   128              65    2559.0000000    0.00000   100%   6.7    0s
*  243   128              67    2546.0000000    0.00000   100%   6.6    0s
*  367   191              61    2536.0000000    0.00000   100%   5.9    0s
*  371   191              63    2523.0000000    0.00000   100%   5.8    0s
H  512   297                    2448.0000000    0.00000   100%   5.0    0s
H 1277   671                    2375.0000000   58.00000  97.6%   4.8    0s
H 1872   763                    2340.0000000   58.00000  97.5%   4.3    0s
H 2933  1111                    2317.0000000   93.00000  96.0%   3.3    1s
* 3292  1245              62    2280.0000000   93.00000  95.9%   3.2    1s
* 3296  1245              64    2267.0000000   93.00000  95.9%   3.2    1s
H 3787  1418                    2232.0000000   93.00000  95.8%   3.0    1s
 32691 10945 1427.00000   61    6 2232.00000  472.00000  78.9%   1.7    5s
 87056 21546 1450.00000   47    3 2232.00000  623.00000  72.1%   1.5   10s
 134434 26532 1218.00000   60    4 2232.00000  839.00000  62.4%   1.4   15s
 173174 28711 1329.00000   47    4 2232.00000  927.00000  58.5%   1.4   20s
 232338 22342 1666.00000   51    4 2232.00000 1264.00000  43.4%   1.3   25s
 297066 24266 1826.00000   29    4 2232.00000 1447.00000  35.2%   1.3   30s
 365631 23021 1802.00000   42    4 2232.00000 1656.00000  25.8%   1.2   35s
 423224 19286 1775.00000   37    4 2232.00000 1773.00000  20.6%   1.2   40s
 486918 13164 1902.00000   31    4 2232.00000 1902.00000  14.8%   1.1   45s

Cutting planes:
  Implied bound: 11
  Relax-and-lift: 4

Explored 543791 nodes (594347 simplex iterations) in 49.45 seconds (23.57 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2267 2280 ... 2546

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2231.999999999998
Time = 49.448827
Status = 2
Nodes = 543791.0
Gap = 0.0


Matrice components x VM
0 0 0 1 0
0 0 1 0 0
0 0 0 0 1
0 1 0 0 0
1 0 0 0 0

VM type vector t
[18, 12, 17, 15, 15]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
5      IDSAgent        1          256          250         
4      IDSServer       8          16000        2000        
2      Apache          2          512          1000        
1      Balancer        4          2048         500         
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   18     58.00      1        1700       1000      
VM 2   12     1288.00    8        68400      2000      
VM 3   17     128.00     2        3750       2000      
VM 4   15     379.00     4        30500      1000      
VM 5   15     379.00     4        30500      1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 4
Component 2 -> VM 3
Component 3 -> VM 5
Component 4 -> VM 2
Component 5 -> VM 1

Gurobi 12.0.1 (mac64[x86]) logging started Wed May  6 11:05:56 2026

Set parameter LogFile to value "../Data/Output/Gurobi2/SecureWebContainer_offers_20.sol"
Set parameter LogToConsole to value 0
Set parameter Cuts to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
Cuts  0
LogToConsole  0
Presolve  0

Optimize a model with 30 rows, 155 columns and 325 nonzeros
Model fingerprint: 0x886c7bbd
Model has 5 SOS constraints
Model has 430 simple general constraints
  430 INDICATOR
Variable types: 5 continuous, 150 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 2e+01]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 480 integer (135 binary)
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 41 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     2    0.00000    0    5 9152.00000    0.00000   100%     -    0s
H   30    24                    8681.0000000    0.00000   100%   1.6    0s
H   33    24                    5779.0000000    0.00000   100%   2.0    0s
*  170   116              42    3076.0000000    0.00000   100%   4.2    0s
H  187   116                    3063.0000000    0.00000   100%   4.0    0s
*  202   116              48    3004.0000000    0.00000   100%   3.8    0s
*  206   116              50    2991.0000000    0.00000   100%   3.7    0s
H  258   132                    2978.0000000    0.00000   100%   3.5    0s
H  259   131                    2448.0000000    0.00000   100%   3.5    0s
*  589   258              33    2272.0000000    0.00000   100%   3.3    0s
*  593   258              35    2267.0000000    0.00000   100%   3.3    0s
*  595   258              36    2232.0000000    0.00000   100%   3.3    0s
 63156 19741     cutoff   47      2232.00000  507.00000  77.3%   1.3    5s
 141099 31199 1160.00000   49    4 2232.00000  758.00000  66.0%   1.2   10s
 200942 38159 1731.00000   56    4 2232.00000  904.00000  59.5%   1.2   15s
 256826 32988 infeasible   49      2232.00000 1078.00000  51.7%   1.1   20s
 290187 33457 infeasible   50      2232.00000 1229.00000  44.9%   1.1   25s
 315201 31420 infeasible   54      2232.00000 1334.00000  40.2%   1.1   30s
 361103 32174 infeasible   45      2232.00000 1466.00000  34.3%   1.0   35s
 399311 29600 1593.00000   44    4 2232.00000 1593.00000  28.6%   1.0   40s
 443744 27385 2069.00000   31    4 2232.00000 1690.00000  24.3%   1.0   45s
 495029 18609 infeasible   40      2232.00000 1809.00000  19.0%   1.0   50s
 543193 10356 1942.00000   51    4 2232.00000 1942.00000  13.0%   0.9   55s

Explored 579578 nodes (523287 simplex iterations) in 59.35 seconds (24.53 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2267 2272 ... 5779

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2232.0
Time = 59.347165
Status = 2
Nodes = 579578.0
Gap = 0.0


Matrice components x VM
0 0 1 0 0
0 0 0 1 0
0 1 0 0 0
1 0 0 0 0
0 0 0 0 1

VM type vector t
[12, 15, 15, 17, 18]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
5      IDSAgent        1          256          250         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   12     1288.00    8        68400      2000      
VM 2   15     379.00     4        30500      1000      
VM 3   15     379.00     4        30500      1000      
VM 4   17     128.00     2        3750       2000      
VM 5   18     58.00      1        1700       1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 4
Component 3 -> VM 2
Component 4 -> VM 1
Component 5 -> VM 5

Gurobi 12.0.1 (mac64[x86]) logging started Wed May  6 13:10:49 2026

Set parameter LogFile to value "../Data/Output/Gurobi2/SecureWebContainer_offers_20.sol"
Set parameter LogToConsole to value 0
Set parameter Cuts to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
Cuts  0
LogToConsole  0
Presolve  0

Optimize a model with 30 rows, 155 columns and 325 nonzeros
Model fingerprint: 0x08aad465
Model has 430 simple general constraints
  430 INDICATOR
Variable types: 5 continuous, 150 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 2e+01]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 480 integer (135 binary)
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 41 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     2    0.00000    0    5 9152.00000    0.00000   100%     -    0s
H   14    24                    5626.0000000    0.00000   100%   2.0    0s
H   95   100                    5528.0000000    0.00000   100%   4.2    0s
*  170   116              42    3076.0000000    0.00000   100%   4.2    0s
H  187   116                    3063.0000000    0.00000   100%   4.0    0s
*  202   116              48    3004.0000000    0.00000   100%   3.8    0s
*  206   116              50    2991.0000000    0.00000   100%   3.7    0s
H  258   132                    2978.0000000    0.00000   100%   3.5    0s
H  259   131                    2448.0000000    0.00000   100%   3.5    0s
*  589   258              33    2272.0000000    0.00000   100%   3.3    0s
*  593   258              35    2267.0000000    0.00000   100%   3.3    0s
*  595   258              36    2232.0000000    0.00000   100%   3.3    0s
 75458 22138  525.00000   40    4 2232.00000  525.00000  76.5%   1.3    5s
 160160 34207  804.00000   37    6 2232.00000  804.00000  64.0%   1.2   10s
 239238 36858 infeasible   62      2232.00000 1002.00000  55.1%   1.1   15s
 297566 32248 1288.00000   28    6 2232.00000 1288.00000  42.3%   1.1   20s
 348238 31782 1557.00000   41    5 2232.00000 1429.00000  36.0%   1.0   25s
 377678 31505 1669.00000   47    3 2232.00000 1523.00000  31.8%   1.0   30s
 414608 28913 infeasible   43      2232.00000 1617.00000  27.6%   1.0   35s
 481943 20703 infeasible   52      2232.00000 1778.00000  20.3%   1.0   40s
 535588 12539 infeasible   38      2232.00000 1919.00000  14.0%   0.9   45s
 578722   619 2115.00000   37    4 2232.00000 2106.00000  5.65%   0.9   50s

Explored 580887 nodes (524620 simplex iterations) in 50.40 seconds (24.65 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2267 2272 ... 5528

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2232.0
Time = 50.433023
Status = 2
Nodes = 580887.0
Gap = 0.0


Matrice components x VM
0 0 1 0 0
0 0 0 1 0
0 1 0 0 0
1 0 0 0 0
0 0 0 0 1

VM type vector t
[12, 15, 15, 17, 18]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
5      IDSAgent        1          256          250         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   12     1288.00    8        68400      2000      
VM 2   15     379.00     4        30500      1000      
VM 3   15     379.00     4        30500      1000      
VM 4   17     128.00     2        3750       2000      
VM 5   18     58.00      1        1700       1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 4
Component 3 -> VM 2
Component 4 -> VM 1
Component 5 -> VM 5

Gurobi 12.0.1 (mac64[x86]) logging started Wed May  6 13:21:10 2026

Set parameter LogFile to value "../Data/Output/Gurobi2/SecureWebContainer_offers_20.sol"
Set parameter LogToConsole to value 0
Set parameter Cuts to value 0
Gurobi Optimizer version 12.0.1 build v12.0.1rc0 (mac64[x86] - Darwin 22.6.0 22H730)

CPU model: Intel(R) Core(TM) i5-7267U CPU @ 3.10GHz
Thread count: 2 physical cores, 4 logical processors, using up to 4 threads

Non-default parameters:
TimeLimit  5000
Symmetry  0
Cuts  0
LogToConsole  0
Presolve  0

Optimize a model with 30 rows, 155 columns and 325 nonzeros
Model fingerprint: 0x886c7bbd
Model has 5 SOS constraints
Model has 430 simple general constraints
  430 INDICATOR
Variable types: 5 continuous, 150 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 2e+01]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 480 integer (135 binary)
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 41 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    5 9152.00000    0.00000   100%     -    0s
     0     2    0.00000    0    5 9152.00000    0.00000   100%     -    0s
H   30    24                    8681.0000000    0.00000   100%   1.6    0s
H   33    24                    5779.0000000    0.00000   100%   2.0    0s
*  170   116              42    3076.0000000    0.00000   100%   4.2    0s
H  187   116                    3063.0000000    0.00000   100%   4.0    0s
*  202   116              48    3004.0000000    0.00000   100%   3.8    0s
*  206   116              50    2991.0000000    0.00000   100%   3.7    0s
H  258   132                    2978.0000000    0.00000   100%   3.5    0s
H  259   131                    2448.0000000    0.00000   100%   3.5    0s
*  589   258              33    2272.0000000    0.00000   100%   3.3    0s
*  593   258              35    2267.0000000    0.00000   100%   3.3    0s
*  595   258              36    2232.0000000    0.00000   100%   3.3    0s
 73447 22160 infeasible   56      2232.00000  525.00000  76.5%   1.3    5s
 158650 34165 infeasible   51      2232.00000  804.00000  64.0%   1.2   10s
 240027 39008 infeasible   69      2232.00000  979.00000  56.1%   1.1   15s
 298543 32234 1288.00000   21   27 2232.00000 1288.00000  42.3%   1.1   20s
 371713 31668 infeasible   40      2232.00000 1501.00000  32.8%   1.0   25s
 451368 26687 infeasible   51      2232.00000 1704.00000  23.7%   1.0   30s
 526222 14503 infeasible   34      2232.00000 1880.00000  15.8%   0.9   35s

Explored 579578 nodes (523287 simplex iterations) in 38.50 seconds (24.53 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2267 2272 ... 5779

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
Price = 2232.0
Time = 38.502815
Status = 2
Nodes = 579578.0
Gap = 0.0


Matrice components x VM
0 0 1 0 0
0 0 0 1 0
0 1 0 0 0
1 0 0 0 0
0 0 0 0 1

VM type vector t
[12, 15, 15, 17, 18]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
5      IDSAgent        1          256          250         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   12     1288.00    8        68400      2000      
VM 2   15     379.00     4        30500      1000      
VM 3   15     379.00     4        30500      1000      
VM 4   17     128.00     2        3750       2000      
VM 5   18     58.00      1        1700       1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 4
Component 3 -> VM 2
Component 4 -> VM 1
Component 5 -> VM 5
