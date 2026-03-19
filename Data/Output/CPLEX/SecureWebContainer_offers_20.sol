Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
CPXPARAM_Preprocessing_Presolve                  0
CPXPARAM_Preprocessing_Symmetry                  0
CPXPARAM_DetTimeLimit                            5000000
Tried aggregator 0 times.
Reduced MIP has 1755 rows, 1880 columns, and 4310 nonzeros.
Reduced MIP has 1450 binaries, 15 generals, 0 SOSs, and 1215 indicators.
Presolve time = 0.00 sec. (2.14 ticks)
Found incumbent of value 9152.000000 after 0.05 sec. (22.54 ticks)
Clique table members: 3250.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 4 threads.
Root relaxation solution time = 0.01 sec. (3.14 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                         9152.0000        0.0000           100.00%
      0     0        0.0000   103     9152.0000        0.0000      415  100.00%
      0     0        0.0000   129     9152.0000     Cuts: 102      589  100.00%
      0     0        0.0000    88     9152.0000     Cuts: 199      667  100.00%
      0     0        0.0000    50     9152.0000     Cuts: 133      732  100.00%
      0     0        0.0000    53     9152.0000      Cuts: 58      769  100.00%
      0     2        0.0000    26     9152.0000        0.0000      780  100.00%
Elapsed time = 0.18 sec. (77.48 ticks, tree = 0.02 MB, solutions = 1)
*   739   228      integral     0     8479.0000        0.0000     3604  100.00%
*   767   243      integral     0     6688.0000        0.0000     3794  100.00%
*   866   259      integral     0     4704.0000        0.0000     3949  100.00%
    876   247     4576.0000     1     4704.0000        0.0000     3989  100.00%
*  1285   337      integral     0     2988.0000        0.0000     5838  100.00%
*  1292   264      integral     0     2931.0000        0.0000     6063  100.00%
*  1322   286      integral     0     2802.0000        0.0000     6231  100.00%
   1949   538    infeasible           2802.0000        0.0000     9103  100.00%
*  2234   623      integral     0     2789.0000        0.0000    10377  100.00%
*  2532   683      integral     0     2484.0000        0.0000    11666  100.00%
   2981   814       63.7200    98     2484.0000        0.0000    14540  100.00%

Performing restart 1

Repeating presolve.
Tried aggregator 0 times.
Reduced presolve eliminated 403 rows and 593 columns.
Reduced MIP has 2022 rows, 1287 columns, and 4369 nonzeros.
Reduced MIP has 1257 binaries, 15 generals, 0 SOSs, and 265 indicators.
Presolve time = 0.00 sec. (0.63 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 832 rows and 1053 columns.
Reduced MIP has 1190 rows, 234 columns, and 1365 nonzeros.
Reduced MIP has 204 binaries, 30 generals, 0 SOSs, and 265 indicators.
Presolve time = 0.00 sec. (0.45 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 0 rows and 4 columns.
Reduced MIP has 1190 rows, 230 columns, and 1345 nonzeros.
Reduced MIP has 200 binaries, 30 generals, 0 SOSs, and 265 indicators.
Presolve time = 0.00 sec. (0.12 ticks)
Represolve time = 0.07 sec. (23.90 ticks)
   3722     0        0.0000    16     2484.0000      Cuts: 34    19968  100.00%
   3722     0        0.0000    26     2484.0000       Cuts: 6    19981  100.00%
   3722     0        0.0000    28     2484.0000      Cuts: 24    19993  100.00%
   3722     0        0.0000    22     2484.0000       Cuts: 9    20005  100.00%
   3722     0        0.0000     1     2484.0000      Cuts: 22    20012  100.00%
   3722     0        0.0000    28     2484.0000   Impl Bds: 1    20017  100.00%
   3722     2        0.0000     1     2484.0000        0.0000    20017  100.00%
*  4128+  214                         2461.0000        0.0000           100.00%
*  4131+  214                         2280.0000        0.0000           100.00%
*  4532+  455                         2272.0000        0.0000           100.00%
*  4534+  455                         2267.0000        0.0000           100.00%
*  4542+  455                         2232.0000        0.0000           100.00%
   5021   689        0.0000     3     2232.0000        0.0000    23451  100.00%
   6446  1728     1637.0000     1     2232.0000      128.0000    27925   94.27%
   8036  2437      221.0000     2     2232.0000      156.0000    32594   93.01%
  10224  3465      239.0000     2     2232.0000      221.0000    40192   90.10%
  12087  4237      276.6262    20     2232.0000      249.0719    46527   88.84%
  20008  5766      437.0000     8     2232.0000      379.0000    90785   83.02%
Elapsed time = 9.82 sec. (3200.67 ticks, tree = 3.27 MB, solutions = 18)
  27971  7790      569.1583    33     2232.0000      500.0000   134763   77.60%
  36357  8435     2191.0000     1     2232.0000      580.0000   214876   74.01%
  45127  8592      774.6214    23     2232.0000      672.6394   294159   69.86%
  53326  8921     2152.0000     1     2232.0000      781.0000   378252   65.01%
  61124  8706     1316.0000     1     2232.0000      874.0000   470145   60.84%
  69360  7786     1357.4839     9     2232.0000     1106.0000   567110   50.45%
  76997  7656     1667.0000    14     2232.0000     1304.8933   649363   41.54%
  84692  7683    infeasible           2232.0000     1426.6173   737284   36.08%
  92483  7137     1744.0000     1     2232.0000     1494.0000   828701   33.06%
 100525  6390     1672.2102    11     2232.0000     1575.0000   920175   29.44%
Elapsed time = 27.24 sec. (12738.06 ticks, tree = 3.89 MB, solutions = 18)
 108563  5256    infeasible           2232.0000     1666.0000  1006137   25.36%
 117059  4351    infeasible           2232.0000     1773.0000  1094623   20.56%
 125704  2733     2005.0000     1     2232.0000     1902.0000  1182073   14.78%

GUB cover cuts applied:  1
Clique cuts applied:  5
Cover cuts applied:  9
Implied bound cuts applied:  72
Mixed integer rounding cuts applied:  5
Zero-half cuts applied:  2
Gomory fractional cuts applied:  3

Root node processing (before b&c):
  Real time             =    0.17 sec. (76.68 ticks)
Parallel b&c, 4 threads:
  Real time             =   33.56 sec. (16154.97 ticks)
  Sync time (average)   =    2.63 sec.
  Wait time (average)   =    0.15 sec.
                          ------------
Total (root+branch&cut) =   33.73 sec. (16231.64 ticks)
Price = 2232.0
Time = 33.739764
Wall_Time = 33.734908
Status = integer optimal solution
Nodes = 131778
Gap = 0.0

Solution = solution for: CPLEX_deployment
objective: 2232
status: OPTIMAL_SOLUTION(2)
C1_VM1=1
C2_VM2=1
C3_VM5=1
C4_VM3=1
C5_VM4=1
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_Type15=1
VM2_Type17=1
VM3_Type12=1
VM4_Type18=1
VM5_Type15=1
PriceProv1=379.000
PriceProv2=128.000
PriceProv3=1288.000
PriceProv4=58.000
PriceProv5=379.000
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_offer_CPU=4
VM1_offer_Memory=30500
VM1_offer_Storage=1000
VM2_offer_CPU=2
VM2_offer_Memory=3750
VM2_offer_Storage=2000
VM3_offer_CPU=8
VM3_offer_Memory=68400
VM3_offer_Storage=2000
VM4_offer_CPU=1
VM4_offer_Memory=1700
VM4_offer_Storage=1000
VM5_offer_CPU=4
VM5_offer_Memory=30500
VM5_offer_Storage=1000

Solve_details = status  = integer optimal solution
time    = 33.7349 s.
problem = MILP
gap     = 0%


Matrice components x VM
1 0 0 0 0
0 1 0 0 0
0 0 0 0 1
0 0 1 0 0
0 0 0 1 0

VM type vector t
[15, 17, 12, 18, 15]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
4      IDSServer       8          16000        2000        
5      IDSAgent        1          256          250         
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   15     379.00     4        30500      1000      
VM 2   17     128.00     2        3750       2000      
VM 3   12     1288.00    8        68400      2000      
VM 4   18     58.00      1        1700       1000      
VM 5   15     379.00     4        30500      1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 1
Component 2 -> VM 2
Component 3 -> VM 5
Component 4 -> VM 3
Component 5 -> VM 4
