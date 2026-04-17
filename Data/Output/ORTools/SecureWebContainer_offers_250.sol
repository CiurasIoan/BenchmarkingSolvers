
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false symmetry_level: 0
Setting number of workers to 4

Initial optimization model '': (model_fingerprint: 0xdf637fa403a2abf)
#Variables: 1'300 (#ints: 5 in objective) (1'300 primary variables)
  - 1'280 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kExactlyOne: 5 (#enforced: 5) (#literals: 1'250)
#kLinear1: 5'005 (#enforced: 5'005)
#kLinearN: 25 (#enforced: 5) (#terms: 1'365)

Starting presolve at 0.00s

Presolve summary:
  - 0 affine relations were detected.

Presolved optimization model '': (model_fingerprint: 0xf8d1acc891796094)
#Variables: 1'300 (#ints: 5 in objective) (1'300 primary variables)
  - 1'280 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kLinear1: 5'005 (#enforced: 5'005)
#kLinearN: 30 (#enforced: 10) (#terms: 2'615)

Preloading model.
#Bound   0.02s best:inf   next:[0,80000]  initial_domain
#Model   0.02s var:1300/1300 constraints:5060/5060

Starting search at 0.02s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.52s best:23105 next:[0,23104]  fj_restart_decay_obj(batch:1 lin{mvs:443 evals:1'546} #w_updates:238 #perturb:0)
#2       0.55s best:15546 next:[0,15545]  rnd_var_lns (d=5.00e-01 s=13 t=0.10 p=0.00 stall=0 h=base) [hint]
#3       0.61s best:15245 next:[0,15244]  rnd_cst_lns (d=5.00e-01 s=14 t=0.10 p=0.00 stall=0 h=base)
#4       0.94s best:10111 next:[0,10110]  graph_var_lns (d=5.00e-01 s=15 t=0.10 p=0.00 stall=0 h=base)
#Bound   1.07s best:10111 next:[1,10110]  bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/3968 clauses=13)
#5       1.08s best:3982  next:[1,3981]   no_lp
#Model   1.09s var:1115/1300 constraints:4320/5060
#6       1.23s best:3746  next:[1,3745]   graph_cst_lns (d=5.00e-01 s=17 t=0.10 p=0.00 stall=0 h=base)
#7       1.24s best:3271  next:[1,3270]   ls_restart_decay(batch:1 lin{mvs:703 evals:1'439} #w_updates:248 #perturb:0)
#8       1.26s best:2615  next:[1,2614]   rnd_var_lns (d=7.07e-01 s=20 t=0.10 p=1.00 stall=0 h=base) [hint]
#Bound   1.59s best:2615  next:[2,2614]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=1/3972 clauses=13)
#Bound   1.59s best:2615  next:[3,2614]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=547/3976 clauses=21)
#Bound   1.59s best:2615  next:[4,2614]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=548/3980 clauses=33)
#Bound   1.59s best:2615  next:[5,2614]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=549/3984 clauses=49)
#Bound   1.59s best:2615  next:[6,2614]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=550/3988 clauses=69)
#Bound   1.59s best:2615  next:[7,2614]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=551/3992 clauses=93)
#Bound   1.59s best:2615  next:[8,2614]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=552/3996 clauses=121)
#Bound   1.59s best:2615  next:[9,2614]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=553/4000 clauses=153)
#Bound   1.59s best:2615  next:[10,2614]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=554/4004 clauses=189)
#Bound   1.59s best:2615  next:[11,2614]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=555/4008 clauses=229)
#Bound   1.59s best:2615  next:[12,2614]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=556/4012 clauses=273)
#Bound   1.59s best:2615  next:[13,2614]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=557/4016 clauses=321)
#Bound   1.59s best:2615  next:[14,2614]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=558/4020 clauses=373)
#Bound   1.59s best:2615  next:[15,2614]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=559/4024 clauses=429)
#Bound   1.59s best:2615  next:[16,2614]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=560/4028 clauses=489)
#Bound   1.59s best:2615  next:[17,2614]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=561/4032 clauses=553)
#Bound   1.59s best:2615  next:[18,2614]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=562/4036 clauses=621)
#Bound   1.60s best:2615  next:[19,2614]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=563/4040 clauses=693)
#Bound   1.60s best:2615  next:[20,2614]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=564/4044 clauses=769)
#Bound   1.60s best:2615  next:[21,2614]  bool_core (num_cores=21 [size:1 mw:1] a=1 d=3 fixed=565/4048 clauses=849)
#9       1.70s best:2579  next:[116,2578] no_lp
#10      1.70s best:2516  next:[116,2515] no_lp
#11      1.70s best:2485  next:[116,2484] no_lp
#12      1.70s best:1956  next:[116,1955] no_lp
#13      1.71s best:1850  next:[125,1849] default_lp
#14      1.73s best:1690  next:[133,1689] no_lp
#15      1.74s best:1614  next:[133,1613] no_lp
#16      1.74s best:1498  next:[133,1497] no_lp
#17      1.74s best:1422  next:[133,1421] no_lp
#18      1.74s best:1296  next:[133,1295] no_lp
#19      1.74s best:1295  next:[134,1294] no_lp
#20      1.74s best:1252  next:[134,1251] no_lp
#21      1.74s best:1201  next:[134,1200] no_lp
#22      1.76s best:1199  next:[137,1198] default_lp
#23      1.76s best:1197  next:[140,1196] default_lp
#24      1.77s best:1196  next:[144,1195] no_lp
#25      1.77s best:1170  next:[144,1169] default_lp
#Model   1.77s var:730/1300 constraints:2780/5060
#26      1.77s best:1162  next:[144,1161] no_lp
#27      1.77s best:1150  next:[144,1149] default_lp
#28      1.80s best:1130  next:[158,1129] no_lp
#Model   1.87s var:714/1300 constraints:2719/5060
#Bound   2.00s best:1130  next:[190,1129] bool_core (num_cores=190 [size:1 mw:1] a=1 d=3 fixed=1890/4724 clauses=71'829) [skipped_logs=168]
#Done    2.14s no_lp
#Bound   2.14s best:1130  next:[546,1129] no_lp [skipped_logs=30]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [   2.12s,    2.12s]    2.12s   0.00ns    2.12s         2 [135.97ms, 297.55ms] 216.76ms  80.79ms 433.52ms
        'default_lp':         1 [   2.12s,    2.12s]    2.12s   0.00ns    2.12s         2 [197.73ms, 297.55ms] 247.64ms  49.91ms 495.28ms
  'feasibility_pump':         4 [ 52.00us,  45.62ms]  12.44ms  19.23ms  49.77ms         3 [  3.28us,  84.55us]  30.37us  38.31us  91.12us
                'fj':         3 [  5.53ms, 252.41ms] 132.52ms 100.91ms 397.56ms         3 [  4.67ms, 100.05ms]  68.24ms  44.95ms 204.72ms
     'graph_arc_lns':         1 [139.99ms, 139.99ms] 139.99ms   0.00ns 139.99ms         1 [ 41.02us,  41.02us]  41.02us   0.00ns  41.02us
     'graph_cst_lns':         1 [134.72ms, 134.72ms] 134.72ms   0.00ns 134.72ms         1 [  4.99ms,   4.99ms]   4.99ms   0.00ns   4.99ms
     'graph_dec_lns':         2 [  1.93ms,   2.47ms]   2.20ms 272.50us   4.40ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         1 [334.04ms, 334.04ms] 334.04ms   0.00ns 334.04ms         1 [  3.68ms,   3.68ms]   3.68ms   0.00ns   3.68ms
                'ls':         2 [ 10.62ms,  71.84ms]  41.23ms  30.61ms  82.45ms         2 [  5.86ms,  57.41ms]  31.64ms  25.77ms  63.27ms
             'no_lp':         1 [   2.11s,    2.11s]    2.11s   0.00ns    2.11s         2 [216.38ms, 297.55ms] 256.96ms  40.59ms 513.93ms
         'rins/rens':         3 [  7.01ms,  19.67ms]  11.30ms   5.92ms  33.91ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         2 [ 61.56ms, 805.18ms] 433.37ms 371.81ms 866.74ms         2 [ 45.06us,  34.62ms]  17.33ms  17.29ms  34.67ms
       'rnd_var_lns':         2 [ 16.09ms,  28.74ms]  22.41ms   6.32ms  44.83ms         2 [241.00ns,   1.67us] 953.50ns 712.50ns   1.91us

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  4'840        217    17'254         0            9'697     14'088   4'579'739      1'234'179
  'default_lp':  3'971        415    16'906         2            9'089     13'337   4'141'363      1'424'025
       'no_lp':  3'971        630    18'270         5            9'109     13'561   4'325'865      1'482'235

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':  2'189  1'133  4'840    1'518         39'936            52'122                 0
  'default_lp':  1'700    950  3'971    1'321         22'212               150               169
       'no_lp':  3'561    950  3'971    -'540         22'290               258               177

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0         218             0         0
  'default_lp':           342      21'429             8'275      10'262             0        96
       'no_lp':           496      26'196             6'417      13'937             0       152

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       30      2'808        0         0           0               0          0
  'default_lp':       21      2'383        0         0           0               0          0
       'no_lp':       21      2'383        0         0           0               0          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':   31'527             0     11'844             0          0              0          0           0            3          1        0           0          0         0        217
    'default_lp':        0             0          0            83          3              1         13           0            0          0        0           0          0       463        415
         'no_lp':        0             0          0           134          2              6         18           0            0          0        0           0          0       640        630

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1       1'201         57      456        0        0

Lp dimension     Final dimension of first component
  'default_lp':    43 rows, 40 columns, 161 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0    0           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           77        0        0       0          0      0             0      57/91

Lp Cut    default_lp
     IB:          57

LNS stats           Improv/Calls  Closed  Difficulty  TimeLimit
  'graph_arc_lns':           0/1    100%    7.07e-01       0.10
  'graph_cst_lns':           1/1    100%    7.07e-01       0.10
  'graph_dec_lns':           0/0      0%    5.00e-01       0.10
  'graph_var_lns':           1/1    100%    7.07e-01       0.10
      'rins/rens':           3/3    100%    8.76e-01       0.10
    'rnd_cst_lns':           2/2    100%    8.14e-01       0.10
    'rnd_var_lns':           2/2    100%    8.14e-01       0.10

LS stats                          Batches  Restarts/Perturbs  LinMoves  GenMoves  CompoundMoves  Bactracks  WeightUpdates  ScoreComputed
                   'fj_restart':        1                  1     9'680         0              0          0         19'822          1'388
  'fj_restart_compound_perturb':        1                  1         0    10'296            545      4'875            125        264'436
         'fj_restart_decay_obj':        1                  1       443         0              0          0            238          2'153
  'ls_restart_compound_perturb':        1                  1         0     3'272             52      1'610             20         32'271
             'ls_restart_decay':        1                  1       703         0              0          0            248          2'045

Solutions (28)             Num     Rank
            'default_lp':   10  [12,27]
  'fj_restart_decay_obj':    2    [0,1]
         'graph_cst_lns':    2    [5,6]
         'graph_var_lns':    2    [3,4]
      'ls_restart_decay':    2    [6,7]
                 'no_lp':   32   [4,28]
           'rnd_cst_lns':    2    [2,3]
           'rnd_var_lns':    4    [1,8]

Objective bounds     Num
       'bool_core':  218
  'initial_domain':    1
           'no_lp':    3

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     42       11       40
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      3        3

Improving bounds shared    Num  Sym
            'default_lp':  200    0
                 'no_lp':  932    0

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          0          0           50            50
   'default_lp':         16          0           26            50
        'no_lp':         34          0           50            50

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1130
best_bound: 1130
integers: 1296
booleans: 3971
conflicts: 630
branches: 18270
propagations: 4325865
integer_propagations: 1482235
restarts: 5
lp_iterations: 0
walltime: 2.15163
usertime: 2.15163
deterministic_time: 1.75419
gap_integral: 12.386
solution_fingerprint: 0x41081e5ea78a076

Price = 1130.0
Time = 2.154845
Wall_Time = 2.151631
Status = OPTIMAL
Conflicts = 630
Branches = 18270


Matrice components x VM
0 1 0 0 0
0 0 0 0 1
0 0 0 1 0
1 0 0 0 0
0 0 1 0 0

VM type vector t
[134, 182, 245, 182, 225]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
1      Balancer        4          2048         500         
5      IDSAgent        1          256          250         
3      Nginx           4          2048         1000        
2      Apache          2          512          1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   134    532.00     8        30000      2000      
VM 2   182    210.00     4        7500       2000      
VM 3   245    52.00      1        1700       1000      
VM 4   182    210.00     4        7500       2000      
VM 5   225    126.00     2        3750       2000      
------------------------------------------------------------
Total Calculated: 1130.00

Component Allocation
Component 1 -> VM 2
Component 2 -> VM 5
Component 3 -> VM 4
Component 4 -> VM 1
Component 5 -> VM 3
