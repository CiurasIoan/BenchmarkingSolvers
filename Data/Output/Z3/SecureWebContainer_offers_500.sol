Solver Engine: Z3 v4.15.4

(:added-eqs                   2179722
 :arith-eq-adapter            33808
 :arith-bound-propagations-lp 10844955
 :arith-conflicts             4804
 :arith-diseq                 8341749
 :arith-fixed-eqs             7946
 :arith-lower                 11016948
 :arith-make-feasible         113087
 :arith-max-columns           550
 :arith-max-rows              17
 :arith-upper                 5766286
 :binary-propagations         14182308
 :bv-bit2core                 205175
 :bv-dynamic-diseqs           5454058
 :bv->core-eq                 252
 :conflicts                   36200
 :decisions                   577547
 :del-clause                  5555957
 :final-checks                133
 :max-memory                  48.85
 :memory                      42.13
 :minimized-lits              5506334
 :mk-bool-var                 81988
 :mk-clause                   5556434
 :mk-clause-binary            12099
 :num-allocs                  6562227535.00
 :num-checks                  104
 :pb-conflicts                578
 :pb-predicates               7
 :pb-propagations             32104
 :pb-resolves                 573
 :propagations                37602650
 :restarts                    264
 :rlimit-count                106364628
 :solve-eqs-elim-vars         5
 :solve-eqs-steps             40
 :time                        75.86)
Price = 1112
Time = 75.858986
Status = sat

Matrice components x VM
0 0 1 0 0
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
0 0 0 0 1

VM type vector t
[0, 433, 278, 252, 479]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
2      Apache          2          512          1000        
1, 3   Balancer, Nginx 8          4096         1500        
4      IDSServer       8          16000        2000        
5      IDSAgent        1          256          250         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 2   433    116.00     2        3750       2000      
VM 3   278    420.00     8        15000      2000      
VM 4   252    532.00     8        30000      2000      
VM 5   479    44.00      1        1700       1000      
------------------------------------------------------------
Total Calculated: 1112.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 2
Component 3 -> VM 3
Component 4 -> VM 4
Component 5 -> VM 5
