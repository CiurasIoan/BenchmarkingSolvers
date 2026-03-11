Version identifier: 22.1.1.0 | 2022-11-28 | 9160aff4d
CPXPARAM_Preprocessing_Presolve                  0
CPXPARAM_Preprocessing_Symmetry                  0
CPXPARAM_DetTimeLimit                            5000000
Tried aggregator 0 times.
Reduced MIP has 3455 rows, 3680 columns, and 8410 nonzeros.
Reduced MIP has 2850 binaries, 15 generals, 0 SOSs, and 2610 indicators.
Presolve time = 0.02 sec. (7.02 ticks)
Found incumbent of value 9152.000000 after 0.21 sec. (66.10 ticks)
Clique table members: 19290.
MIP emphasis: balance optimality and feasibility.
MIP search method: dynamic search.
Parallel mode: deterministic, using up to 4 threads.
Root relaxation solution time = 0.01 sec. (7.10 ticks)

        Nodes                                         Cuts/
   Node  Left     Objective  IInf  Best Integer    Best Bound    ItCnt     Gap

*     0+    0                         9152.0000        0.0000           100.00%
      0     0        0.0000   254     9152.0000        0.0000      736  100.00%
      0     0        0.0000   466     9152.0000     Cuts: 221     1188  100.00%
      0     0        0.0000   296     9152.0000     Cuts: 364     1433  100.00%
      0     0        0.0000   143     9152.0000     Cuts: 321     1577  100.00%
      0     0        0.0000   135     9152.0000     Cuts: 226     1633  100.00%
      0     0        0.0000   129     9152.0000 Impl Bds: 196     1680  100.00%
      0     0        0.0000   114     9152.0000     Cuts: 254     1752  100.00%
      0     0        0.0000   104     9152.0000     Cuts: 205     1843  100.00%
      0     0        0.0000   113     9152.0000     Cuts: 285     1908  100.00%
      0     2        0.0000    66     9152.0000        0.0000     1923  100.00%
Elapsed time = 0.65 sec. (275.58 ticks, tree = 0.02 MB, solutions = 1)
*   207    90      integral     0     3030.0000        0.0000     3426  100.00%
*   287    77      integral     0     2983.0000        0.0000     3753  100.00%
*   321   102      integral     0     2970.0000        0.0000     3928  100.00%
    404   146      252.0000     7     2970.0000        0.0000     4245  100.00%
*   714+  315                         2898.0000        0.0000           100.00%
*   739   357      integral     0     2880.0000        0.0000     6409  100.00%
    816   374      809.0000     1     2880.0000        0.0000     6683  100.00%
*   954   401      integral     0     2384.0000        0.0000     7209  100.00%
   1236   469        0.0000     2     2384.0000        0.0000     9063  100.00%
   1725   619    infeasible           2384.0000        0.0000    12144  100.00%
   2149   740    infeasible           2384.0000        0.0000    15276  100.00%
   2638   873        0.0000     2     2384.0000        0.0000    18023  100.00%
   3172  1002    infeasible           2384.0000        0.0000    20421  100.00%
   3659  1166       93.0000     1     2384.0000        0.0000    23125  100.00%

Performing restart 1

Repeating presolve.
Tried aggregator 0 times.
Reduced presolve eliminated 854 rows and 1400 columns.
Reduced MIP has 3758 rows, 2280 columns, and 7887 nonzeros.
Reduced MIP has 2250 binaries, 15 generals, 0 SOSs, and 740 indicators.
Presolve time = 0.00 sec. (1.29 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 1617 rows and 1856 columns.
Reduced MIP has 2141 rows, 424 columns, and 2529 nonzeros.
Reduced MIP has 394 binaries, 30 generals, 0 SOSs, and 740 indicators.
Presolve time = 0.00 sec. (0.83 ticks)
Tried aggregator 0 times.
Reduced presolve eliminated 0 rows and 24 columns.
Reduced MIP has 2141 rows, 400 columns, and 2409 nonzeros.
Reduced MIP has 370 binaries, 30 generals, 0 SOSs, and 740 indicators.
Presolve time = 0.00 sec. (0.24 ticks)
Tried aggregator 0 times.
Reduced MIP has 2141 rows, 400 columns, and 2409 nonzeros.
Reduced MIP has 370 binaries, 30 generals, 0 SOSs, and 740 indicators.
Presolve time = 0.00 sec. (0.23 ticks)
Represolve time = 0.12 sec. (91.95 ticks)
   3771     0       -0.0000    48     2384.0000      Cuts: 17    24658  100.00%
   3771     0        0.0000    41     2384.0000      Cuts: 26    24697  100.00%
   3771     0       -0.0000    34     2384.0000      Cuts: 13    24709  100.00%
   3771     0       -0.0000    30     2384.0000      Cuts: 26    24722  100.00%
   3771     0        0.0000    28     2384.0000      Cuts: 21    24730  100.00%
   3771     2        0.0000     1     2384.0000        0.0000    24730  100.00%
*  4003+   96                         2372.0000        0.0000           100.00%
*  4044+  125                         2335.0000        0.0000           100.00%
*  4191+  196                         2199.0000        0.0000           100.00%
*  4191+  196                         2185.0000        0.0000           100.00%
*  4620+  410                         2172.0000        0.0000           100.00%
*  5216+  774                         2154.0000        0.0000           100.00%
*  5217+  774                         2119.0000        0.0000           100.00%
*  5658  1113      integral     0     2060.0000      197.0000    29538   90.44%
*  6399  1442      integral     0     2047.0000      325.0000    31721   84.12%
   6778  1552      463.0000     8     2047.0000      394.0000    32403   80.75%
Elapsed time = 6.24 sec. (3411.32 ticks, tree = 1.26 MB, solutions = 19)
  11096  1805     1288.0000    29     2047.0000     1197.0000    58147   41.52%
* 13470  3293      integral     0     2009.0000     1301.0000    67234   35.24%
* 13749+ 3290                         1996.0000     1301.0000            34.82%
* 14259  3396      integral     0     1978.0000     1301.0000    69521   34.23%
  15820  4143     1373.0000     2     1978.0000     1301.0000    74647   34.23%
  22286  7442     1429.0000     3     1978.0000     1399.0000    96020   29.27%
  28299 10027     1444.0000     6     1978.0000     1430.0000   117257   27.70%
  34506 13137     1650.0000     2     1978.0000     1430.0000   139394   27.70%
  39361 15297     1528.0000     2     1978.0000     1468.0000   161629   25.78%
  45462 18130     1481.0000     2     1978.0000     1479.0000   187610   25.23%
  50271 20088     1564.0000     5     1978.0000     1485.0000   209287   24.92%
  54770 21347     1508.0000     5     1978.0000     1495.0000   229341   24.42%
  60339 23684     1514.0000     4     1978.0000     1498.0000   251534   24.27%
Elapsed time = 27.06 sec. (12950.75 ticks, tree = 20.03 MB, solutions = 22)
  65585 25612     1521.0000     2     1978.0000     1509.0000   275054   23.71%
  70904 26188     1540.0000     2     1978.0000     1524.0000   301000   22.95%
  75890 28034     1540.0000     1     1978.0000     1540.0000   324929   22.14%
  80859 29853     1553.0000     2     1978.0000     1542.0000   353366   22.04%
  85665 31513     1553.0000     5     1978.0000     1553.0000   382921   21.49%
  90693 32502     1567.0000     2     1978.0000     1554.0000   418431   21.44%
  95496 33687     1580.0000     1     1978.0000     1567.0000   449197   20.78%
 100618 35383     1716.0000     1     1978.0000     1576.0000   484528   20.32%
 105522 36192    infeasible           1978.0000     1586.0000   514873   19.82%
 110248 36580     1612.0000     1     1978.0000     1598.0000   555979   19.21%
Elapsed time = 62.29 sec. (22488.85 ticks, tree = 31.74 MB, solutions = 22)
 115058 36646    infeasible           1978.0000     1610.0000   600376   18.60%
 119792 36579     1627.0000     7     1978.0000     1620.5722   644890   18.07%
 124339 36669    infeasible           1978.0000     1627.0000   675743   17.75%
 128731 38218     1637.0000     2     1978.0000     1637.0000   711733   17.24%
 133250 38589     1657.9154    31     1978.0000     1638.0000   752261   17.19%
 138053 38602     1745.0000    18     1978.0000     1644.0000   806140   16.89%
 142670 38536     1912.0000     2     1978.0000     1650.0000   853657   16.58%
 147383 38492     1665.0000     1     1978.0000     1656.0000   898098   16.28%
 152134 38493    infeasible           1978.0000     1664.2437   959484   15.86%
 156915 38342    infeasible           1978.0000     1668.0000  1008831   15.67%
Elapsed time = 92.70 sec. (32028.22 ticks, tree = 32.86 MB, solutions = 22)
 161806 38405     1700.0000    20     1978.0000     1675.0000  1053563   15.32%
 166800 38246     1683.9002    17     1978.0000     1681.0000  1104273   15.02%
 171559 38052     1711.2834    17     1978.0000     1683.0000  1146795   14.91%
 176460 37777     1722.0000    18     1978.0000     1690.0000  1191209   14.56%
 181522 37464     1703.1357    26     1978.0000     1696.0000  1248371   14.26%
 186425 37040     1966.0000     1     1978.0000     1700.0000  1297851   14.05%
 191548 36540     1746.0000    16     1978.0000     1707.0000  1341853   13.70%
 196525 35978    infeasible           1978.0000     1718.0000  1387146   13.14%
 201881 34838        cutoff           1978.0000     1723.0000  1443483   12.89%
 206750 33955     1771.3515    15     1978.0000     1734.0000  1486358   12.34%
Elapsed time = 114.99 sec. (41566.88 ticks, tree = 29.33 MB, solutions = 22)
 212310 32478    infeasible           1978.0000     1744.0000  1538656   11.83%
 217393 31259    infeasible           1978.0000     1750.0000  1582735   11.53%
 222888 29421     1783.0000    11     1978.0000     1761.0000  1653051   10.97%
 228699 28042     1826.7593     8     1978.0000     1773.0000  1698932   10.36%
 234555 26210    infeasible           1978.0000     1785.0000  1749416    9.76%
 240258 23871        cutoff           1978.0000     1801.0000  1811665    8.95%
 246096 21678    infeasible           1978.0000     1817.0000  1868408    8.14%
 252306 18038    infeasible           1978.0000     1836.0000  1942987    7.18%
 259115 13826    infeasible           1978.0000     1870.7341  2006618    5.42%
 268299  5219    infeasible           1978.0000     1933.0000  2105459    2.28%
Elapsed time = 131.92 sec. (51104.95 ticks, tree = 6.36 MB, solutions = 22)

Clique cuts applied:  3
Cover cuts applied:  1
Implied bound cuts applied:  114
Flow cuts applied:  1
Mixed integer rounding cuts applied:  4
Zero-half cuts applied:  2
Gomory fractional cuts applied:  3

Root node processing (before b&c):
  Real time             =    0.65 sec. (273.75 ticks)
Parallel b&c, 4 threads:
  Real time             =  132.24 sec. (51394.87 ticks)
  Sync time (average)   =    9.15 sec.
  Wait time (average)   =    0.56 sec.
                          ------------
Total (root+branch&cut) =  132.88 sec. (51668.62 ticks)
Price = 1978.0
Time = 132.913006
Wall_Time = 132.899334
Status = integer optimal solution
Nodes = 273414
Gap = 0.0

Solution = solution for: CPLEX_deployment
objective: 1978
status: OPTIMAL_SOLUTION(2)
C1_VM2=1
C2_VM4=1
C3_VM1=1
C4_VM5=1
C5_VM3=1
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_Type27=1
VM2_Type26=1
VM3_Type38=1
VM4_Type37=1
VM5_Type22=1
PriceProv1=252.000
PriceProv2=252.000
PriceProv3=58.000
PriceProv4=128.000
PriceProv5=1288.000
VM_1=1
VM_2=1
VM_3=1
VM_4=1
VM_5=1
VM1_offer_CPU=4
VM1_offer_Memory=7500
VM1_offer_Storage=2000
VM2_offer_CPU=4
VM2_offer_Memory=7500
VM2_offer_Storage=2000
VM3_offer_CPU=1
VM3_offer_Memory=1700
VM3_offer_Storage=1000
VM4_offer_CPU=2
VM4_offer_Memory=3750
VM4_offer_Storage=2000
VM5_offer_CPU=8
VM5_offer_Memory=68400
VM5_offer_Storage=2000

Solve_details = status  = integer optimal solution
time    = 132.899 s.
problem = MILP
gap     = 0%


Matrice components x VM
0 1 0 0 0
0 0 0 1 0
1 0 0 0 0
0 0 0 0 1
0 0 1 0 0

VM type vector t
[27, 26, 38, 37, 22]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
3      Nginx           4          2048         1000        
1      Balancer        4          2048         500         
5      IDSAgent        1          256          250         
2      Apache          2          512          1000        
4      IDSServer       8          16000        2000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   27     252.00     4        7500       2000      
VM 2   26     252.00     4        7500       2000      
VM 3   38     58.00      1        1700       1000      
VM 4   37     128.00     2        3750       2000      
VM 5   22     1288.00    8        68400      2000      
------------------------------------------------------------
Total Calculated: 1978.00

Component Allocation
Component 1 -> VM 2
Component 2 -> VM 4
Component 3 -> VM 1
Component 4 -> VM 5
Component 5 -> VM 3
