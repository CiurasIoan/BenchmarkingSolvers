Solver Engine: Z3 v4.15.4

(:added-eqs                   146948
 :arith-eq-adapter            8474
 :arith-bound-propagations-lp 175115
 :arith-conflicts             626
 :arith-diseq                 299931
 :arith-fixed-eqs             2264
 :arith-lower                 377212
 :arith-make-feasible         28986
 :arith-max-columns           131
 :arith-max-rows              17
 :arith-offset-eqs            1
 :arith-upper                 256870
 :binary-propagations         1010673
 :conflicts                   6095
 :decisions                   57087
 :del-clause                  19098
 :final-checks                109
 :max-memory                  21.33
 :memory                      21.33
 :minimized-lits              106491
 :mk-bool-var                 18231
 :mk-clause                   20140
 :mk-clause-binary            3257
 :num-allocs                  52792889
 :num-checks                  84
 :pb-conflicts                1537
 :pb-predicates               387
 :pb-propagations             12314
 :pb-resolves                 1532
 :propagations                1961780
 :restarts                    50
 :rlimit-count                5410642
 :solve-eqs-elim-vars         5
 :solve-eqs-steps             40
 :time                        2.55)
Price = 1978
Time = 2.547580
Status = sat

Matrice components x VM
0 0 1 0 0
0 0 0 0 1
1 0 0 0 0
0 1 0 0 0
0 0 0 1 0

VM type vector t
[27, 22, 26, 38, 37]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
3      Nginx           4          2048         1000        
4      IDSServer       8          16000        2000        
1      Balancer        4          2048         500         
5      IDSAgent        1          256          250         
2      Apache          2          512          1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   27     252.00     4        7500       2000      
VM 2   22     1288.00    8        68400      2000      
VM 3   26     252.00     4        7500       2000      
VM 4   38     58.00      1        1700       1000      
VM 5   37     128.00     2        3750       2000      
------------------------------------------------------------
Total Calculated: 1978.00

Component Allocation
Component 1 -> VM 3
Component 2 -> VM 5
Component 3 -> VM 1
Component 4 -> VM 2
Component 5 -> VM 4
