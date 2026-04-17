
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false
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

Starting presolve at 0.02s

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
[Symmetry] Graph for symmetry has 12'730 nodes and 25'330 arcs.
[Symmetry] Symmetry computation done. time: 0.018066 dtime: 0.0103297
[Symmetry] #generators: 34, average support size: 121.765
[Symmetry] 504 orbits on 2550 variables with sizes: 10,10,10,10,10,10,5,5,5,5,...
[Symmetry] Found orbitope of size 510 x 2

Preloading model.
#Bound   0.08s best:inf   next:[0,106390] initial_domain
#Model   0.09s var:2550/2550 constraints:10060/10060

Starting search at 0.10s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.47s best:30190 next:[0,30189]  fj_restart_decay(batch:1 lin{mvs:476 evals:2'907} #w_updates:238 #perturb:0)
#2       0.77s best:26352 next:[0,26351]  rnd_cst_lns (d=5.00e-01 s=9 t=0.10 p=0.00 stall=0 h=base)
#3       1.30s best:9281  next:[0,9280]   graph_var_lns (d=5.00e-01 s=10 t=0.10 p=0.00 stall=0 h=base)
#4       1.63s best:1132  next:[0,1131]   graph_arc_lns (d=5.00e-01 s=11 t=0.10 p=0.00 stall=0 h=base)
#5       2.54s best:1112  next:[0,1111]   rins_pump_lns (d=7.07e-01 s=22 t=0.10 p=1.00 stall=0 h=base)
#Bound   2.65s best:1112  next:[1,1111]   bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/7133 clauses=13)
#Model   2.74s var:975/2550 constraints:3760/10060
#Bound   2.90s best:1112  next:[2,1111]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=3011/7137 clauses=13)
#Bound   2.90s best:1112  next:[3,1111]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=3817/7141 clauses=21)
#Bound   2.90s best:1112  next:[4,1111]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=3818/7145 clauses=33)
#Bound   2.90s best:1112  next:[5,1111]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=3819/7149 clauses=49)
#Bound   2.90s best:1112  next:[6,1111]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=3820/7153 clauses=69)
#Bound   2.90s best:1112  next:[7,1111]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=3821/7157 clauses=93)
#Bound   2.90s best:1112  next:[8,1111]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=3822/7161 clauses=121)
#Bound   2.90s best:1112  next:[9,1111]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=3823/7165 clauses=153)
#Bound   2.90s best:1112  next:[10,1111]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=3824/7169 clauses=189)
#Bound   2.90s best:1112  next:[11,1111]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=3825/7173 clauses=229)
#Bound   2.90s best:1112  next:[12,1111]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=3826/7177 clauses=273)
#Bound   2.90s best:1112  next:[13,1111]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=3827/7181 clauses=321)
#Bound   2.90s best:1112  next:[14,1111]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=3828/7185 clauses=373)
#Bound   2.90s best:1112  next:[15,1111]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=3829/7189 clauses=429)
#Bound   2.90s best:1112  next:[16,1111]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=3830/7193 clauses=489)
#Bound   2.90s best:1112  next:[17,1111]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=3831/7197 clauses=553)
#Bound   2.90s best:1112  next:[18,1111]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=3832/7201 clauses=621)
#Bound   2.90s best:1112  next:[19,1111]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=3833/7205 clauses=693)
#Bound   2.90s best:1112  next:[20,1111]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=3834/7209 clauses=769)
#Bound   2.90s best:1112  next:[21,1111]  bool_core (num_cores=21 [size:1 mw:1] a=1 d=3 fixed=3835/7213 clauses=849)
#Bound   2.90s best:1112  next:[22,1111]  bool_core (num_cores=22 [size:1 mw:1] a=1 d=3 fixed=3836/7217 clauses=933)
#Bound   3.00s best:1112  next:[125,1111] bool_core (num_cores=125 [size:1 mw:1] a=1 d=3 fixed=3939/7629 clauses=31'009) [skipped_logs=102]
#Done    3.35s no_lp
#Bound   3.35s best:1112  next:[268,1111] bool_core (num_cores=268 [size:1 mw:1] a=1 d=3 fixed=4082/8201 clauses=143'121) [skipped_logs=142]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [   3.26s,    3.26s]    3.26s   0.00ns    3.26s         2 [172.52ms,    1.02s] 595.23ms 422.71ms    1.19s
        'default_lp':         1 [   3.26s,    3.26s]    3.26s   0.00ns    3.26s         2 [262.10ms,    1.02s] 640.02ms 377.92ms    1.28s
  'feasibility_pump':         3 [ 55.00us, 140.09ms]  48.21ms  65.00ms 144.62ms         2 [  3.28us,  84.55us]  43.92us  40.64us  87.84us
                'fj':         2 [ 11.81ms, 193.13ms] 102.47ms  90.66ms 204.94ms         2 [ 10.95ms, 100.00ms]  55.47ms  44.53ms 110.95ms
     'graph_arc_lns':         1 [329.47ms, 329.47ms] 329.47ms   0.00ns 329.47ms         1 [ 10.01ms,  10.01ms]  10.01ms   0.00ns  10.01ms
     'graph_cst_lns':         2 [ 64.52ms, 359.14ms] 211.83ms 147.31ms 423.67ms         2 [272.82us,  25.18ms]  12.72ms  12.45ms  25.45ms
     'graph_dec_lns':         3 [  4.48ms,   6.28ms]   5.08ms 843.11us  15.25ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         1 [535.44ms, 535.44ms] 535.44ms   0.00ns 535.44ms         1 [  3.98ms,   3.98ms]   3.98ms   0.00ns   3.98ms
                'ls':         3 [ 78.09ms, 103.31ms]  90.13ms  10.33ms 270.39ms         3 [100.00ms, 100.04ms] 100.02ms  14.04us 300.05ms
             'no_lp':         1 [   3.25s,    3.25s]    3.25s   0.00ns    3.25s         2 [259.70ms,    1.02s] 638.82ms 379.12ms    1.28s
         'rins/rens':         2 [ 19.25ms,  28.02ms]  23.64ms   4.39ms  47.28ms         1 [ 10.03us,  10.03us]  10.03us   0.00ns  10.03us
       'rnd_cst_lns':         2 [272.18ms, 659.97ms] 466.08ms 193.90ms 932.15ms         2 [  2.25ms, 100.25ms]  51.25ms  49.00ms 102.51ms
       'rnd_var_lns':         4 [ 21.30ms, 220.38ms]  87.36ms  79.50ms 349.45ms         3 [ 10.00ns,  13.11ms]   4.37ms   6.18ms  13.11ms

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  8'205        267    24'698         0           16'337     21'078  11'777'410      3'911'646
  'default_lp':  7'130        530    23'837         1           15'748     19'182  11'433'738      4'210'870
       'no_lp':  7'130        552    24'347         2           15'696     19'840  11'592'227      4'169'819

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':  4'606  1'013  8'205    2'586        123'066            41'954                 0
  'default_lp':  3'815  1'145  7'130    2'170         19'978               214               128
       'no_lp':  4'240  1'145  7'130    1'745         19'850               171               264

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0         268             0         0
  'default_lp':           326      14'061             9'279      10'399             0       109
       'no_lp':           443      25'557             8'542      19'290             0        93

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       30      3'226        0         0           0               0          0
  'default_lp':      115      3'260        0         9         614              89          5
       'no_lp':      142      3'952        0        22         686             318          2

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':   52'080             0     50'160             0          0              0          0           0            2          1        0           0          0         0        267
    'default_lp':        0             0          0            94          4             12         15           9            2          0        0           0          0       411        530
         'no_lp':        0             0          0            79          2              1         14          22            0          0        0           0          0       765        552

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1       1'155         54      376        0        0

Lp dimension     Final dimension of first component
  'default_lp':    44 rows, 40 columns, 155 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0    0           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           74        0        0       0          0      0             0      54/77

Lp Cut    default_lp
     IB:          54

LNS stats           Improv/Calls  Closed  Difficulty  TimeLimit
  'graph_arc_lns':           1/1    100%    7.07e-01       0.10
  'graph_cst_lns':           0/2    100%    8.14e-01       0.10
  'graph_dec_lns':           0/0      0%    5.00e-01       0.10
  'graph_var_lns':           1/1    100%    7.07e-01       0.10
      'rins/rens':           2/2    100%    8.14e-01       0.10
    'rnd_cst_lns':           1/2     50%    5.38e-01       0.10
    'rnd_var_lns':           0/3    100%    8.76e-01       0.10

LS stats                        Batches  Restarts/Perturbs  LinMoves  GenMoves  CompoundMoves  Bactracks  WeightUpdates  ScoreComputed
                 'fj_restart':        1                  1     3'010         0              0          0          9'435          1'578
           'fj_restart_decay':        1                  1       476         0              0          0            238          3'700
           'ls_restart_decay':        1                  1     2'834         0              0          0            432         13'944
  'ls_restart_decay_compound':        1                  1         0     2'475             30      1'222             10         32'713
         'ls_restart_perturb':        1                  1     4'501         0              0          0          5'395         12'390

Solutions (5)          Num   Rank
  'fj_restart_decay':    2  [0,1]
     'graph_arc_lns':    2  [3,4]
     'graph_var_lns':    2  [2,3]
     'rins_pump_lns':    2  [4,5]
       'rnd_cst_lns':    2  [1,2]

Objective bounds     Num
       'bool_core':  268
  'initial_domain':    1

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':      9       18        9
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      2        2

Improving bounds shared    Num  Sym
            'default_lp':  315    0
                 'no_lp':    6   20

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          0          0          202           204
   'default_lp':        124          0           43           204
        'no_lp':         80          0          204           204

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1112
best_bound: 1112
integers: 2546
booleans: 7130
conflicts: 552
branches: 24347
propagations: 11592227
integer_propagations: 4169819
restarts: 2
lp_iterations: 0
walltime: 3.37836
usertime: 3.37836
deterministic_time: 4.31429
gap_integral: 27.6743
solution_fingerprint: 0x85b43e4495269fd5

Price = 1112.0
Time = 3.385828
Wall_Time = 3.378363
Status = OPTIMAL
Conflicts = 552
Branches = 24347


Matrice components x VM
0 0 0 0 1
0 0 1 0 0
0 1 0 0 0
1 0 0 0 0
0 0 0 1 0

VM type vector t
[252, 341, 433, 479, 341]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
3      Nginx           4          2048         1000        
2      Apache          2          512          1000        
5      IDSAgent        1          256          250         
1      Balancer        4          2048         500         
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   252    532.00     8        30000      2000      
VM 2   341    210.00     4        7500       2000      
VM 3   433    116.00     2        3750       2000      
VM 4   479    44.00      1        1700       1000      
VM 5   341    210.00     4        7500       2000      
------------------------------------------------------------
Total Calculated: 1112.00

Component Allocation
Component 1 -> VM 5
Component 2 -> VM 3
Component 3 -> VM 2
Component 4 -> VM 1
Component 5 -> VM 4
