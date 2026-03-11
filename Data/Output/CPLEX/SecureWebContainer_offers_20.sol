Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
CPXPARAM_Preprocessing_Presolve                  0
CPXPARAM_Preprocessing_Symmetry                  0
Tried aggregator 0 times.
Reduced MIP has 1755 rows, 1880 columns, and 4310 nonzeros.
Reduced MIP has 1450 binaries, 15 generals, 0 SOSs, and 1310 indicators.
Presolve time = 0.01 sec. (2.15 ticks)
Found incumbent of value 9152.000000 after 0.12 sec. (25.01 ticks)
Clique table members: 5150.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 4 threads.
Root relaxation solution time = 0.01 sec. (3.14 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                         9152.0000        0.0000           100.00%
      0     0        0.0000   103     9152.0000        0.0000      415  100.00%
      0     0        0.0000   129     9152.0000     Cuts: 102      589  100.00%
      0     0        0.0000    88     9152.0000 Impl Bds: 123      652  100.00%
      0     0        0.0000    51     9152.0000  Impl Bds: 86      718  100.00%
      0     0        0.0000    55     9152.0000  Impl Bds: 78      757  100.00%
      0     2        0.0000    32     9152.0000        0.0000      769  100.00%
Elapsed time = 0.45 sec. (79.93 ticks, tree = 0.02 MB, solutions = 1)
*   280    92      integral     0     5546.0000        0.0000     1507  100.00%
*   745   236      integral     0     5403.0000        0.0000     3348  100.00%
*   905   291      integral     0     4815.0000        0.0000     4147  100.00%
*  1007   322      integral     0     4188.0000        0.0000     4804  100.00%
   1040   294       98.0000     2     4188.0000        0.0000     4965  100.00%
*  1494   464      integral     0     4131.0000        0.0000     7094  100.00%
*  1519   467      integral     0     3598.0000        0.0000     7042  100.00%
*  1812+  505                         3076.0000        0.0000           100.00%
*  1996   539      integral     0     3063.0000        0.0000     9786  100.00%
*  2067   574      integral     0     2807.0000        0.0000    10443  100.00%
   2081   569      709.9226    18     2807.0000        0.0000    10460  100.00%
*  2598   724      integral     0     2802.0000        0.0000    13010  100.00%
*  2608   722      integral     0     2789.0000        0.0000    13031  100.00%
   3095   839        0.0000     5     2789.0000        0.0000    15933  100.00%

Performing restart 1

Repeating presolve.
Tried aggregator 0 times.
Reduced presolve eliminated 404 rows and 591 columns.
Reduced MIP has 2024 rows, 1289 columns, and 4369 nonzeros.
Reduced MIP has 1259 binaries, 15 generals, 0 SOSs, and 360 indicators.
Presolve time = 0.00 sec. (0.66 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 821 rows and 1055 columns.
Reduced MIP has 1203 rows, 234 columns, and 1373 nonzeros.
Reduced MIP has 204 binaries, 30 generals, 0 SOSs, and 360 indicators.
Presolve time = 0.00 sec. (0.46 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 0 rows and 4 columns.
Reduced MIP has 1203 rows, 230 columns, and 1353 nonzeros.
Reduced MIP has 200 binaries, 30 generals, 0 SOSs, and 360 indicators.
Presolve time = 0.00 sec. (0.13 ticks)
Represolve time = 0.06 sec. (24.92 ticks)
   3802     0        0.0000    36     2789.0000      Cuts: 36    21698  100.00%
   3802     0        0.0000    14     2789.0000      Cuts: 17    21714  100.00%
   3802     0        0.0000    27     2789.0000      Cuts: 26    21726  100.00%
   3823    18     1373.0000     1     2789.0000        0.0000    21803  100.00%
*  4342   337      integral     0     2762.0000        0.0000    23177  100.00%
   5312   984        0.0000    17     2762.0000        0.0000    25423  100.00%
*  6202+ 1531                         2738.0000        0.0000           100.00%
*  6242+ 1601                         2455.0000        0.0000           100.00%
*  6245+ 1601                         2358.0000        0.0000           100.00%
*  6499+ 1674                         2298.0000        0.0000           100.00%
*  6555+ 1670                         2267.0000        0.0000           100.00%
*  6804+ 1887                         2232.0000        0.0000           100.00%
   7034  1971      221.0000     1     2232.0000        0.0000    29597  100.00%
   8880  3128      128.0000     1     2232.0000       93.0000    34540   95.83%
  11331  4688     1598.0000     1     2232.0000      128.0000    41251   94.27%
  13278  5533     1066.0000     3     2232.0000      156.0000    46395   93.01%
  21711  9098      402.0000     2     2232.0000      367.0000    78543   83.56%
Elapsed time = 10.57 sec. (3180.70 ticks, tree = 5.64 MB, solutions = 23)
  29786 12901     2063.0000     1     2232.0000      402.0000   110981   81.99%
  37819 13909     1969.0000     7     2232.0000      518.0000   208794   76.79%
  46183 13940      644.0304    13     2232.0000      603.6048   310153   72.96%
  54982 13764      828.6825    11     2232.0000      681.0000   399968   69.49%
  63128 13384     1677.4434    17     2232.0000      781.0000   494160   65.01%
  71098 13059     1276.0000     1     2232.0000      855.0000   572651   61.69%
  79275 12334        cutoff           2232.0000      944.0000   663384   57.71%
  87167 11392    infeasible           2232.0000     1221.4979   748838   45.27%
  94785 10787     1462.9505    11     2232.0000     1373.0000   840256   38.49%
 102727 10102     1604.6999    10     2232.0000     1449.9308   923303   35.04%
Elapsed time = 40.84 sec. (12718.01 ticks, tree = 6.18 MB, solutions = 23)
 110670  8949    infeasible           2232.0000     1543.1746  1012295   30.86%
 118712  7699     1831.3069    17     2232.0000     1630.0000  1091426   26.97%
 126692  6152    infeasible           2232.0000     1725.1988  1185718   22.71%
 134770  4060     1958.0752    11     2232.0000     1827.9308  1277516   18.10%
 143633   872        cutoff           2232.0000     2097.0752  1367262    6.05%

Clique cuts applied:  1
Cover cuts applied:  9
Implied bound cuts applied:  65
Mixed integer rounding cuts applied:  1
Zero-half cuts applied:  3
Gomory fractional cuts applied:  6

Root node processing (before b&c):
  Real time             =    0.43 sec. (79.16 ticks)
Parallel b&c, 4 threads:
  Real time             =   56.19 sec. (17479.15 ticks)
  Sync time (average)   =    4.67 sec.
  Wait time (average)   =    2.90 sec.
                          ------------
Total (root+branch&cut) =   56.62 sec. (17558.31 ticks)
Price = 2232.0
Time = 56.645107
Wall_Time = 56.626934
Status = integer optimal solution
Nodes = 144627
Gap = 0.0

Solution = solution for: CPLEX_deployment
objective: 2232
status: OPTIMAL_SOLUTION(2)
C1_VM5=1
C2_VM4=1
C3_VM3=1
C4_VM2=1
C5_VM1=1
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_Type18=1
VM2_Type12=1
VM3_Type15=1
VM4_Type17=1
VM5_Type15=1
PriceProv1=58.000
PriceProv2=1288.000
PriceProv3=379.000
PriceProv4=128.000
PriceProv5=379.000
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_offer_CPU=1
VM1_offer_Memory=1700
VM1_offer_Storage=1000
VM2_offer_CPU=8
VM2_offer_Memory=68400
VM2_offer_Storage=2000
VM3_offer_CPU=4
VM3_offer_Memory=30500
VM3_offer_Storage=1000
VM4_offer_CPU=2
VM4_offer_Memory=3750
VM4_offer_Storage=2000
VM5_offer_CPU=4
VM5_offer_Memory=30500
VM5_offer_Storage=1000

Solve_details = status  = integer optimal solution
time    = 56.6269 s.
problem = MILP
gap     = 0%


Matrice components x VM
0 0 0 0 1
0 0 0 1 0
0 0 1 0 0
0 1 0 0 0
1 0 0 0 0

VM type vector t
[18, 12, 15, 17, 15]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
5      IDSAgent        1          256          250         
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
2      Apache          2          512          1000        
1      Balancer        4          2048         500         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   18     58.00      1        1700       1000      
VM 2   12     1288.00    8        68400      2000      
VM 3   15     379.00     4        30500      1000      
VM 4   17     128.00     2        3750       2000      
VM 5   15     379.00     4        30500      1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 5
Component 2 -> VM 4
Component 3 -> VM 3
Component 4 -> VM 2
Component 5 -> VM 1
