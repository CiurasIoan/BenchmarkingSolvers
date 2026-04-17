
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false symmetry_level: 0
Setting number of workers to 4

Initial optimization model '': (model_fingerprint: 0x57f0db811c68dd68)
#Variables: 250 (#ints: 5 in objective) (250 primary variables)
  - 230 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kExactlyOne: 5 (#enforced: 5) (#literals: 200)
#kLinear1: 805 (#enforced: 805)
#kLinearN: 25 (#enforced: 5) (#terms: 315)

Starting presolve at 0.01s

Presolve summary:
  - 0 affine relations were detected.

Presolved optimization model '': (model_fingerprint: 0x759d227fb0edac40)
#Variables: 250 (#ints: 5 in objective) (250 primary variables)
  - 230 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kLinear1: 805 (#enforced: 805)
#kLinearN: 30 (#enforced: 10) (#terms: 515)

Preloading model.
#Bound   0.02s best:inf   next:[0,80000]  initial_domain
#Model   0.03s var:250/250 constraints:860/860

Starting search at 0.03s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.08s best:3384  next:[0,3383]   no_lp
#Bound   0.09s best:3384  next:[1,3383]   bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/918 clauses=13)
#2       0.09s best:2972  next:[1,2971]   default_lp
#Bound   0.10s best:2972  next:[2,2971]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=166/922 clauses=13)
#Bound   0.10s best:2972  next:[3,2971]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=182/926 clauses=21)
#Bound   0.10s best:2972  next:[4,2971]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=183/930 clauses=33)
#Bound   0.10s best:2972  next:[5,2971]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=184/934 clauses=49)
#Bound   0.10s best:2972  next:[6,2971]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=185/938 clauses=69)
#Bound   0.10s best:2972  next:[7,2971]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=186/942 clauses=93)
#Bound   0.10s best:2972  next:[8,2971]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=187/946 clauses=121)
#Bound   0.10s best:2972  next:[9,2971]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=188/950 clauses=153)
#Bound   0.10s best:2972  next:[10,2971]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=189/954 clauses=189)
#Bound   0.10s best:2972  next:[11,2971]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=190/958 clauses=229)
#Bound   0.10s best:2972  next:[12,2971]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=191/962 clauses=273)
#Bound   0.10s best:2972  next:[13,2971]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=192/966 clauses=321)
#Bound   0.10s best:2972  next:[14,2971]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=193/970 clauses=373)
#Bound   0.10s best:2972  next:[15,2971]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=194/974 clauses=429)
#Bound   0.10s best:2972  next:[16,2971]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=195/978 clauses=489)
#Bound   0.10s best:2972  next:[17,2971]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=196/982 clauses=553)
#Bound   0.10s best:2972  next:[18,2971]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=197/986 clauses=621)
#Bound   0.10s best:2972  next:[19,2971]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=198/990 clauses=693)
#Bound   0.10s best:2972  next:[20,2971]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=199/994 clauses=769)
#3       0.10s best:2880  next:[35,2879]  no_lp
#4       0.10s best:2874  next:[35,2873]  no_lp
#5       0.11s best:2385  next:[36,2384]  no_lp
#6       0.11s best:2318  next:[36,2317]  no_lp
#7       0.11s best:2300  next:[36,2299]  no_lp
#8       0.11s best:2172  next:[36,2171]  no_lp
#9       0.11s best:2044  next:[36,2043]  no_lp
#10      0.11s best:1978  next:[48,1977]  no_lp
#Done    0.15s no_lp
#Bound   0.15s best:1978  next:[1668,1977] no_lp [skipped_logs=102]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [120.31ms, 120.31ms] 120.31ms   0.00ns 120.31ms         2 [  5.71ms,  12.41ms]   9.06ms   3.35ms  18.12ms
        'default_lp':         1 [120.34ms, 120.34ms] 120.34ms   0.00ns 120.34ms         2 [  9.96ms,  12.41ms]  11.19ms   1.22ms  22.37ms
  'feasibility_pump':         1 [ 25.22ms,  25.22ms]  25.22ms   0.00ns  25.22ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'fj':         1 [165.26ms, 165.26ms] 165.26ms   0.00ns 165.26ms         1 [100.00ms, 100.00ms] 100.00ms   0.00ns 100.00ms
     'graph_arc_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_dec_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'ls':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
             'no_lp':         1 [117.58ms, 117.58ms] 117.58ms   0.00ns 117.58ms         1 [ 30.38ms,  30.38ms]  30.38ms   0.00ns  30.38ms
         'rins/rens':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  1'423        119     4'037         0            2'315      3'331     253'053         55'074
  'default_lp':    921        115     3'833         1            2'059      3'181     165'850         62'883
       'no_lp':    921        450     4'571         2            2'070      3'368     246'637         90'399

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':  1'063    153  1'423      207          1'330                 6                 0
  'default_lp':    212    145    921      564          3'446                90                19
       'no_lp':    728    145    921       48          3'406               247                40

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0         120             0         0
  'default_lp':            65         954               407       1'346             0        10
       'no_lp':           282       2'842             1'177       3'699             0       120

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       30        377        0         0           0               0          0
  'default_lp':       32        466        0         2          19              10          0
       'no_lp':       21        348        0         0           0               0          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':   19'369             0      2'727             0          0              0          0           0            3          1        0           0          0         0        119
    'default_lp':        0             0          0             8          1              0          2           2            0          0        0           0          0        48        115
         'no_lp':        0             0          0           109          5              3         11           0            0          0        0           0          0       196        450

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1         537         75      157        0        0

Lp dimension     Final dimension of first component
  'default_lp':    59 rows, 40 columns, 257 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0   79           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           95        0       11       0          0      0             6     75/104

Lp Cut       default_lp
     CG_FF:           9
      CG_K:           4
      CG_R:           3
     CG_RB:           8
        IB:          48
  MIR_1_FF:           2
  MIR_1_RB:           1

LNS stats           Improv/Calls  Closed  Difficulty  TimeLimit
  'graph_arc_lns':           0/0      0%    5.00e-01       0.10
  'graph_cst_lns':           0/0      0%    5.00e-01       0.10
  'graph_dec_lns':           0/0      0%    5.00e-01       0.10
  'graph_var_lns':           0/0      0%    5.00e-01       0.10
      'rins/rens':           0/0      0%    5.00e-01       0.10
    'rnd_cst_lns':           0/0      0%    5.00e-01       0.10
    'rnd_var_lns':           0/0      0%    5.00e-01       0.10

LS stats         Batches  Restarts/Perturbs  LinMoves  GenMoves  CompoundMoves  Bactracks  WeightUpdates  ScoreComputed
  'fj_restart':        1                  1    65'102         0              0          0         84'528            334

Solutions (10)    Num    Rank
   'default_lp':    2   [1,2]
        'no_lp':   18  [0,10]

Objective bounds     Num
       'bool_core':  119
  'initial_domain':    1
           'no_lp':    4

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     11        0       11
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      0        0

Improving bounds shared    Num  Sym
            'default_lp':    4    0
                 'no_lp':  207    0

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          1          0           38            38
   'default_lp':          4          0           30            38
        'no_lp':         33          0           37            38

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1978
best_bound: 1978
integers: 246
booleans: 921
conflicts: 450
branches: 4571
propagations: 246637
integer_propagations: 90399
restarts: 2
lp_iterations: 0
walltime: 0.223039
usertime: 0.223039
deterministic_time: 0.170868
gap_integral: 0.62312
solution_fingerprint: 0x52971f3dbd7fc854

Price = 1978.0
Time = 0.231413
Wall_Time = 0.223039
Status = OPTIMAL
Conflicts = 450
Branches = 4571


Matrice components x VM
0 0 0 1 0
0 0 1 0 0
0 0 0 0 1
1 0 0 0 0
0 1 0 0 0

VM type vector t
[22, 38, 37, 26, 26]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
5      IDSAgent        1          256          250         
2      Apache          2          512          1000        
1      Balancer        4          2048         500         
3      Nginx           4          2048         1000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   22     1288.00    8        68400      2000      
VM 2   38     58.00      1        1700       1000      
VM 3   37     128.00     2        3750       2000      
VM 4   26     252.00     4        7500       2000      
VM 5   26     252.00     4        7500       2000      
------------------------------------------------------------
Total Calculated: 1978.00

Component Allocation
Component 1 -> VM 4
Component 2 -> VM 3
Component 3 -> VM 5
Component 4 -> VM 1
Component 5 -> VM 2
