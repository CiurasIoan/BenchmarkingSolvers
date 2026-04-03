Solver Engine: Z3 v4.15.4

(:added-eqs                   92582
 :arith-eq-adapter            6016
 :arith-bound-propagations-lp 87658
 :arith-conflicts             439
 :arith-diseq                 145831
 :arith-fixed-eqs             1648
 :arith-lower                 180653
 :arith-make-feasible         21119
 :arith-max-columns           109
 :arith-max-rows              17
 :arith-upper                 129666
 :binary-propagations         452976
 :conflicts                   4189
 :decisions                   21878
 :del-clause                  8431
 :final-checks                109
 :max-memory                  19.67
 :memory                      19.67
 :minimized-lits              41594
 :mk-bool-var                 12740
 :mk-clause                   9077
 :mk-clause-binary            2337
 :num-allocs                  10978406
 :num-checks                  85
 :pb-conflicts                850
 :pb-predicates               187
 :pb-propagations             8666
 :pb-resolves                 848
 :propagations                787974
 :restarts                    32
 :rlimit-count                2490941
 :solve-eqs-elim-vars         5
 :solve-eqs-steps             40
 :time                        1.05)
Price = 2232
Time = 1.046188
Status = sat

Matrice components x VM
0 0 0 1 0
0 0 1 0 0
0 1 0 0 0
1 0 0 0 0
0 0 0 0 1

VM type vector t
[12, 15, 17, 15, 18]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
2      Apache          2          512          1000        
1      Balancer        4          2048         500         
5      IDSAgent        1          256          250         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   12     1288.00    8        68400      2000      
VM 2   15     379.00     4        30500      1000      
VM 3   17     128.00     2        3750       2000      
VM 4   15     379.00     4        30500      1000      
VM 5   18     58.00      1        1700       1000      
------------------------------------------------------------
Total Calculated: 2232.00

Component Allocation
Component 1 -> VM 4
Component 2 -> VM 3
Component 3 -> VM 2
Component 4 -> VM 1
Component 5 -> VM 5
