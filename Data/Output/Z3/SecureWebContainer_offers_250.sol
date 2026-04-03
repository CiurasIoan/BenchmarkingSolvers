Solver Engine: Z3 v4.15.4

(:added-eqs                   749475
 :arith-eq-adapter            59546
 :arith-bound-propagations-lp 2872021
 :arith-conflicts             3035
 :arith-diseq                 2560502
 :arith-fixed-eqs             3296
 :arith-lower                 3495348
 :arith-make-feasible         98623
 :arith-max-columns           334
 :arith-max-rows              17
 :arith-offset-eqs            5
 :arith-upper                 1691313
 :binary-propagations         2897449
 :bv-bit2core                 91448
 :bv-dynamic-diseqs           1451369
 :bv->core-eq                 672
 :conflicts                   17915
 :decisions                   173729
 :del-clause                  1505946
 :final-checks                145
 :max-memory                  31.57
 :memory                      30.08
 :minimized-lits              1162243
 :mk-bool-var                 121361
 :mk-clause                   1506017
 :mk-clause-binary            5175
 :num-allocs                  1317819452
 :num-checks                  113
 :pb-conflicts                461
 :pb-predicates               7
 :pb-propagations             15469
 :pb-resolves                 455
 :propagations                10868041
 :restarts                    140
 :rlimit-count                32336057
 :solve-eqs-elim-vars         5
 :solve-eqs-steps             40
 :time                        18.21)
Price = 1130
Time = 18.216621
Status = sat

Matrice components x VM
0 1 0 0 0
0 0 1 0 0
0 0 0 0 1
0 0 0 1 0
1 0 0 0 0

VM type vector t
[245, 182, 225, 134, 182]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
5      IDSAgent        1          256          250         
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   245    52.00      1        1700       1000      
VM 2   182    210.00     4        7500       2000      
VM 3   225    126.00     2        3750       2000      
VM 4   134    532.00     8        30000      2000      
VM 5   182    210.00     4        7500       2000      
------------------------------------------------------------
Total Calculated: 1130.00

Component Allocation
Component 1 -> VM 2
Component 2 -> VM 3
Component 3 -> VM 5
Component 4 -> VM 4
Component 5 -> VM 1
