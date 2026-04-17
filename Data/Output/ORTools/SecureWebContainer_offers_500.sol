
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false symmetry_level: 0
Setting number of workers to 4

Initial optimization model '': (model_fingerprint: 0xb82876ae98e0dc9c)
#Variables: 2'550 (#ints: 5 in objective) (2'550 primary variables)
  - 2'530 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,21278]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kExactlyOne: 5 (#enforced: 5) (#literals: 2'500)
#kLinear1: 10'005 (#enforced: 10'005)
#kLinearN: 25 (#enforced: 5) (#terms: 2'615)

Starting presolve at 0.01s

Presolve summary:
  - 0 affine relations were detected.

Presolved optimization model '': (model_fingerprint: 0x7352cb9ec3cc8ef)
#Variables: 2'550 (#ints: 5 in objective) (2'550 primary variables)
  - 2'530 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,21278]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kLinear1: 10'005 (#enforced: 10'005)
#kLinearN: 30 (#enforced: 10) (#terms: 5'115)

Preloading model.
#Bound   0.02s best:inf   next:[0,106390] initial_domain
#Model   0.03s var:2550/2550 constraints:10060/10060

Starting search at 0.04s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.44s best:30190 next:[0,30189]  fj_restart_decay(batch:1 lin{mvs:476 evals:2'907} #w_updates:238 #perturb:0)
#2       0.89s best:9500  next:[0,9499]   rnd_cst_lns (d=5.00e-01 s=11 t=0.10 p=0.00 stall=0 h=base)
#3       1.08s best:9355  next:[0,9354]   graph_var_lns (d=5.00e-01 s=12 t=0.10 p=0.00 stall=0 h=base)
#4       1.73s best:1130  next:[0,1129]   graph_arc_lns (d=5.00e-01 s=13 t=0.10 p=0.00 stall=0 h=base)
#5       1.79s best:1112  next:[0,1111]   graph_cst_lns (d=5.00e-01 s=14 t=0.10 p=0.00 stall=0 h=base)
#Model   2.54s var:1490/2550 constraints:5820/10060
#Bound   2.56s best:1112  next:[1,1111]   bool_core (num_cores=1 [size:3 mw:1 d:2] a=3 d=2 fixed=3010/7131 clauses=28)
#Bound   2.56s best:1112  next:[2,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3011/7133 clauses=30)
#Bound   2.56s best:1112  next:[3,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3012/7135 clauses=34)
#Bound   2.56s best:1112  next:[4,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3013/7137 clauses=40)
#Bound   2.56s best:1112  next:[5,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3014/7139 clauses=48)
#Bound   2.56s best:1112  next:[6,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3015/7141 clauses=58)
#Bound   2.56s best:1112  next:[7,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3016/7143 clauses=70)
#Bound   2.56s best:1112  next:[8,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3017/7145 clauses=84)
#Bound   2.56s best:1112  next:[9,1111]   bool_core (num_cores=1 [cover] a=3 d=2 fixed=3018/7147 clauses=100)
#Bound   2.56s best:1112  next:[10,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3019/7149 clauses=118)
#Bound   2.56s best:1112  next:[11,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3020/7151 clauses=138)
#Bound   2.56s best:1112  next:[12,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3021/7153 clauses=160)
#Bound   2.56s best:1112  next:[13,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3022/7155 clauses=184)
#Bound   2.56s best:1112  next:[14,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3023/7157 clauses=210)
#Bound   2.56s best:1112  next:[15,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3024/7159 clauses=238)
#Bound   2.56s best:1112  next:[16,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3025/7161 clauses=268)
#Bound   2.56s best:1112  next:[17,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3026/7163 clauses=300)
#Bound   2.56s best:1112  next:[18,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3027/7165 clauses=334)
#Bound   2.56s best:1112  next:[19,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3028/7167 clauses=370)
#Bound   2.56s best:1112  next:[20,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3029/7169 clauses=408)
#Bound   2.56s best:1112  next:[21,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3030/7171 clauses=448)
#Bound   2.56s best:1112  next:[22,1111]  bool_core (num_cores=1 [cover] a=3 d=2 fixed=3031/7173 clauses=490)
#Model   2.63s var:1290/2550 constraints:5020/10060
#Model   2.74s var:1022/2550 constraints:3948/10060
#Model   2.84s var:984/2550 constraints:3796/10060
#Model   2.95s var:975/2550 constraints:3760/10060
#Bound   2.59s best:1112  next:[116,1111] bool_core (num_cores=1 [cover] a=3 d=2 fixed=3125/7361 clauses=13'369) [skipped_logs=93]
#Model   3.23s var:959/2550 constraints:3699/10060
#Done    3.26s no_lp
#Bound   3.26s best:1112  next:[420,1111] no_lp [skipped_logs=2]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [   3.23s,    3.23s]    3.23s   0.00ns    3.23s         2 [355.23ms,    1.02s] 686.59ms 331.35ms    1.37s
        'default_lp':         1 [   3.23s,    3.23s]    3.23s   0.00ns    3.23s         2 [252.88ms,    1.02s] 635.41ms 382.53ms    1.27s
  'feasibility_pump':         3 [ 54.00us,  84.20ms]  28.36ms  39.49ms  85.08ms         2 [  3.28us,  84.55us]  43.92us  40.64us  87.84us
                'fj':         2 [ 20.85ms, 259.86ms] 140.36ms 119.50ms 280.72ms         2 [ 10.95ms, 100.00ms]  55.47ms  44.53ms 110.95ms
     'graph_arc_lns':         1 [649.36ms, 649.36ms] 649.36ms   0.00ns 649.36ms         1 [100.04ms, 100.04ms] 100.04ms   0.00ns 100.04ms
     'graph_cst_lns':         2 [ 59.41ms, 626.78ms] 343.10ms 283.69ms 686.19ms         2 [  2.67ms, 100.00ms]  51.34ms  48.66ms 102.67ms
     'graph_dec_lns':         2 [  3.66ms,   4.67ms]   4.16ms 505.00us   8.33ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         2 [194.76ms, 596.99ms] 395.87ms 201.11ms 791.75ms         2 [  4.20ms, 100.49ms]  52.34ms  48.15ms 104.69ms
                'ls':         2 [ 78.79ms,  83.70ms]  81.25ms   2.46ms 162.50ms         2 [100.01ms, 100.03ms] 100.02ms  10.74us 200.04ms
             'no_lp':         1 [   3.22s,    3.22s]    3.22s   0.00ns    3.22s         2 [290.84ms,    1.02s] 654.39ms 363.55ms    1.31s
         'rins/rens':         2 [ 16.12ms,  18.43ms]  17.28ms   1.16ms  34.55ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         1 [435.26ms, 435.26ms] 435.26ms   0.00ns 435.26ms         1 [ 15.29ms,  15.29ms]  15.29ms   0.00ns  15.29ms
       'rnd_var_lns':         3 [ 14.29ms,  31.91ms]  22.54ms   7.24ms  67.62ms         2 [ 10.00ns,  10.00ns]  10.00ns   0.00ns  20.00ns

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  7'364         23    27'715         0           16'715     22'442  11'790'048      4'232'937
  'default_lp':  7'130        467    23'749         1           15'748     19'119  11'351'032      4'186'636
       'no_lp':  7'130        767    23'187         2           15'739     19'403  11'715'504      4'294'592

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':  3'198  1'033  7'364    3'133         26'470               788                 3
  'default_lp':  3'815  1'145  7'130    2'170         19'974               179               126
       'no_lp':  6'406  1'145  7'130    -'421         20'386               318               257

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             2           2             1'654         650             0         3
  'default_lp':           277      13'329             8'562       9'938             0        85
       'no_lp':           540      25'171            12'583      16'273             0       109

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':    7'287      5'649        0     4'944      15'056          12'104          1
  'default_lp':      115      3'260        0         9         614              89          5
       'no_lp':       92      2'641        0         9         430              52          4

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':    6'670             0          0             2          0              0          1       4'944        1'107         91        0           0          0        10         23
    'default_lp':        0             0          0            72          4             12         13           9            2          0        0           0          0       397        467
         'no_lp':        2             0          0           100          7              3          9           9            5          1        0           0          0       739        767

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1       1'004         54      323        0        0

Lp dimension     Final dimension of first component
  'default_lp':    40 rows, 40 columns, 147 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0    0           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           74        0        0       0          0      0             0      54/71

Lp Cut    default_lp
     IB:          54

LNS stats           Improv/Calls  Closed  Difficulty  TimeLimit
  'graph_arc_lns':           1/1      0%    2.93e-01       0.10
  'graph_cst_lns':           1/2     50%    5.38e-01       0.10
  'graph_dec_lns':           0/0      0%    5.00e-01       0.10
  'graph_var_lns':           1/2     50%    5.38e-01       0.10
      'rins/rens':           2/2    100%    8.14e-01       0.10
    'rnd_cst_lns':           1/1    100%    7.07e-01       0.10
    'rnd_var_lns':           0/2    100%    8.14e-01       0.10

LS stats                        Batches  Restarts/Perturbs  LinMoves  GenMoves  CompoundMoves  Bactracks  WeightUpdates  ScoreComputed
                 'fj_restart':        1                  1     3'010         0              0          0          9'435          1'578
           'fj_restart_decay':        1                  1       476         0              0          0            238          3'700
           'ls_restart_decay':        1                  1     2'670         0              0          0            595         15'923
  'ls_restart_decay_compound':        1                  1         0     3'350            350      1'499             24         66'937

Solutions (5)          Num   Rank
  'fj_restart_decay':    2  [0,1]
     'graph_arc_lns':    2  [3,4]
     'graph_cst_lns':    2  [4,5]
     'graph_var_lns':    2  [2,3]
       'rnd_cst_lns':    2  [1,2]

Objective bounds     Num
       'bool_core':  116
  'initial_domain':    1
           'no_lp':    3

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     11       13       10
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      2        2

Improving bounds shared      Num  Sym
            'default_lp':  1'065    0
                 'no_lp':    889    0

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':         11          0            7           187
   'default_lp':         18          0            5           187
        'no_lp':        158          0          187           187

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1112
best_bound: 1112
integers: 2546
booleans: 7130
conflicts: 767
branches: 23187
propagations: 11715504
integer_propagations: 4294592
restarts: 2
lp_iterations: 0
walltime: 3.27302
usertime: 3.27302
deterministic_time: 4.58653
gap_integral: 28.6402
solution_fingerprint: 0xca6a362c4d953fbc

Price = 1112.0
Time = 3.275481
Wall_Time = 3.273022
Status = OPTIMAL
Conflicts = 767
Branches = 23187


Matrice components x VM
0 0 0 0 1
1 0 0 0 0
0 0 0 0 1
0 1 0 0 0
0 0 0 1 0

VM type vector t
[433, 252, 0, 479, 278]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
2      Apache          2          512          1000        
4      IDSServer       8          16000        2000        
5      IDSAgent        1          256          250         
1, 3   Balancer, Nginx 8          4096         1500        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   433    116.00     2        3750       2000      
VM 2   252    532.00     8        30000      2000      
VM 4   479    44.00      1        1700       1000      
VM 5   278    420.00     8        15000      2000      
------------------------------------------------------------
Total Calculated: 1112.00

Component Allocation
Component 1 -> VM 5
Component 2 -> VM 1
Component 3 -> VM 5
Component 4 -> VM 2
Component 5 -> VM 4
