
Gurobi 12.0.1 (mac64[x86]) logging started Wed Apr  1 10:13:15 2026

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

Optimize a model with 45 rows, 150 columns and 165 nonzeros
Model fingerprint: 0x6952ad3c
Model has 425 simple general constraints
  5 OR, 420 INDICATOR
Variable types: 5 continuous, 145 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 465 integer (150 binary)
Found heuristic solution: objective 9544.0000000
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 66 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     2    0.00000    0    4 9152.00000    0.00000   100%     -    0s
H    4     6                    6006.0000000    0.00000   100%   6.0    0s
H    8    16                    4704.0000000    0.00000   100%   5.0    0s
H  186   168                    2957.0000000    0.00000   100%   9.6    0s
H  990   607                    2944.0000000   93.00000  96.8%   6.7    0s
H 1008   600                    2653.0000000   93.00000  96.5%   6.7    0s
H 1067   607                    2471.0000000   93.00000  96.2%   6.7    0s
H 1519   840                    2448.0000000   93.00000  96.2%   6.7    0s
H 2416   712                    2250.0000000   93.00000  95.9%   5.8    0s
H 6315  1577                    2232.0000000  186.00000  91.7%   4.9    1s
 31921  3736 infeasible   39      2232.00000  367.00000  83.6%   3.7    5s
 71079 10412 2106.31929   52   47 2232.00000  623.00000  72.1%   4.3   10s
 104965  7613 1684.64509   56   34 2232.00000 1554.07633  30.4%   4.7   15s
 131286   516     cutoff   60      2232.00000 2144.75195  3.91%   4.9   20s

Cutting planes:
  Cover: 1
  Implied bound: 50
  Flow cover: 4
  Relax-and-lift: 5

Explored 132617 nodes (649006 simplex iterations) in 20.19 seconds (11.62 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2250 2448 ... 9152

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
No solution found.

Gurobi 12.0.1 (mac64[x86]) logging started Wed Apr  1 10:24:35 2026

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

Optimize a model with 45 rows, 150 columns and 165 nonzeros
Model fingerprint: 0x6952ad3c
Model has 425 simple general constraints
  5 OR, 420 INDICATOR
Variable types: 5 continuous, 145 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 465 integer (150 binary)
Found heuristic solution: objective 9544.0000000
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 66 iterations, 0.00 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     0    0.00000    0    4 9152.00000    0.00000   100%     -    0s
     0     2    0.00000    0    4 9152.00000    0.00000   100%     -    0s
H    4     6                    6006.0000000    0.00000   100%   6.0    0s
H    8    16                    4704.0000000    0.00000   100%   5.0    0s
H  186   168                    2957.0000000    0.00000   100%   9.6    0s
H  990   607                    2944.0000000   93.00000  96.8%   6.7    0s
H 1008   600                    2653.0000000   93.00000  96.5%   6.7    0s
H 1067   607                    2471.0000000   93.00000  96.2%   6.7    0s
H 1519   840                    2448.0000000   93.00000  96.2%   6.7    0s
H 2416   712                    2250.0000000   93.00000  95.9%   5.8    0s
H 6315  1577                    2232.0000000  186.00000  91.7%   4.9    1s
 27609  3482 1517.08547   36   64 2232.00000  367.00000  83.6%   3.6    5s
 55126  8146 1747.56367   47   91 2232.00000  479.43380  78.5%   4.1   10s
 83060  9971     cutoff   60      2232.00000  873.14603  60.9%   4.5   15s
 113909  5598 2096.63934   50   22 2232.00000 1748.68265  21.7%   4.8   20s

Cutting planes:
  Cover: 1
  Implied bound: 50
  Flow cover: 4
  Relax-and-lift: 5

Explored 132617 nodes (649006 simplex iterations) in 22.78 seconds (11.62 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2250 2448 ... 9152

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
No solution found.

Gurobi 12.0.1 (mac64[x86]) logging started Wed Apr  1 10:31:24 2026

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
Model fingerprint: 0xf6d5a235
Model has 430 simple general constraints
  10 OR, 420 INDICATOR
Variable types: 5 continuous, 145 integer (130 binary)
Coefficient statistics:
  Matrix range     [1e+00, 2e+04]
  Objective range  [1e+00, 1e+00]
  Bounds range     [1e+00, 1e+00]
  RHS range        [1e+00, 1e+00]
  GenCon rhs range [1e+00, 1e+06]
  GenCon coe range [1e+00, 1e+00]
Variable types: 105 continuous, 465 integer (150 binary)
Found heuristic solution: objective 9152.0000000

Root relaxation: objective 0.000000e+00, 75 iterations, 0.01 seconds (0.00 work units)

    Nodes    |    Current Node    |     Objective Bounds      |     Work
 Expl Unexpl |  Obj  Depth IntInf | Incumbent    BestBd   Gap | It/Node Time

     0     0    0.00000    0    8 9152.00000    0.00000   100%     -    0s
H    0     0                    5546.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    8 5546.00000    0.00000   100%     -    0s
H    0     0                    4722.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    8 4722.00000    0.00000   100%     -    0s
H    0     0                    4704.0000000    0.00000   100%     -    0s
     0     0    0.00000    0    8 4704.00000    0.00000   100%     -    0s
     0     0    0.00000    0    7 4704.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 4704.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 4704.00000    0.00000   100%     -    0s
     0     0    0.00000    0    8 4704.00000    0.00000   100%     -    0s
H    0     0                    4047.0000000    0.00000   100%     -    0s
H    0     0                    2802.0000000    0.00000   100%     -    0s
     0     2    0.00000    0    8 2802.00000    0.00000   100%     -    0s
H    9    14                    2789.0000000    0.00000   100%   6.4    0s
H  437   358                    2780.0000000   58.00000  97.9%   8.2    0s
H 2754   936                    2762.0000000   98.00000  96.5%   5.3    0s
* 3040  1001              36    2530.0000000   98.00000  96.1%   5.1    0s
* 3048  1001              38    2507.0000000   98.00000  96.1%   5.1    0s
* 3559  1171              33    2451.0000000  128.00000  94.8%   4.8    0s
* 3905  1315              35    2416.0000000  128.00000  94.7%   4.6    1s
* 4564  1571              59    2393.0000000  146.00000  93.9%   4.3    1s
H 5932  1674                    2335.0000000  156.00000  93.3%   3.8    1s
H 6021  1760                    2317.0000000  156.00000  93.3%   3.8    1s
H19582  3589                    2232.0000000  324.00000  85.5%   2.3    2s
 43214  7229     cutoff   49      2232.00000  548.00000  75.4%   3.8    5s
 75654  4379 1362.89325   29   40 2232.00000 1328.28442  40.5%   4.8   10s

Cutting planes:
  Cover: 1
  Implied bound: 41
  Clique: 2
  MIR: 2
  Flow cover: 5
  RLT: 1
  Relax-and-lift: 5

Explored 105521 nodes (547406 simplex iterations) in 14.48 seconds (10.50 work units)
Thread count was 4 (of 4 available processors)

Solution count 10: 2232 2317 2335 ... 2780

Optimal solution found (tolerance 1.00e-04)
Best objective 2.232000000000e+03, best bound 2.232000000000e+03, gap 0.0000%
No solution found.
