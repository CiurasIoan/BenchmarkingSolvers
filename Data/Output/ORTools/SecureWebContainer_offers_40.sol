
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false
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

Starting presolve at 0.00s

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
[Symmetry] Graph for symmetry has 1'230 nodes and 2'330 arcs.
[Symmetry] Symmetry computation done. time: 0.001678 dtime: 0.00097291
[Symmetry] #generators: 9, average support size: 45.5556
[Symmetry] 49 orbits on 250 variables with sizes: 10,5,5,5,5,5,5,5,5,5,...
[Symmetry] Found orbitope of size 50 x 2

Preloading model.
#Bound   0.01s best:inf   next:[0,80000]  initial_domain
#Model   0.01s var:250/250 constraints:860/860

Starting search at 0.01s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.05s best:3384  next:[0,3383]   no_lp
#Bound   0.05s best:3384  next:[1,3383]   bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/918 clauses=13)
#Bound   0.06s best:3384  next:[2,3383]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=166/922 clauses=13)
#Bound   0.06s best:3384  next:[3,3383]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=182/926 clauses=21)
#Bound   0.06s best:3384  next:[4,3383]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=183/930 clauses=33)
#2       0.06s best:2880  next:[4,2879]   no_lp
#Bound   0.06s best:2880  next:[5,2879]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=184/934 clauses=49)
#Bound   0.06s best:2880  next:[6,2879]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=185/938 clauses=69)
#Bound   0.06s best:2880  next:[7,2879]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=186/942 clauses=93)
#3       0.06s best:2874  next:[7,2873]   no_lp
#Bound   0.06s best:2874  next:[8,2873]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=187/946 clauses=121)
#Bound   0.06s best:2874  next:[9,2873]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=188/950 clauses=153)
#Bound   0.06s best:2874  next:[10,2873]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=189/954 clauses=189)
#Bound   0.06s best:2874  next:[11,2873]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=190/958 clauses=229)
#Bound   0.06s best:2874  next:[12,2873]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=191/962 clauses=273)
#4       0.06s best:2385  next:[12,2384]  no_lp
#Bound   0.06s best:2385  next:[13,2384]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=192/966 clauses=321)
#Bound   0.06s best:2385  next:[14,2384]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=208/970 clauses=373)
#5       0.06s best:2318  next:[14,2317]  no_lp
#Bound   0.06s best:2318  next:[15,2317]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=209/974 clauses=429)
#Bound   0.06s best:2318  next:[16,2317]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=210/978 clauses=489)
#Bound   0.06s best:2318  next:[17,2317]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=211/982 clauses=553)
#6       0.06s best:2300  next:[17,2299]  no_lp
#Bound   0.06s best:2300  next:[18,2299]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=212/986 clauses=621)
#Bound   0.06s best:2300  next:[19,2299]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=213/990 clauses=693)
#7       0.06s best:2172  next:[19,2171]  no_lp
#Bound   0.06s best:2172  next:[20,2171]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=214/994 clauses=769)
#8       0.06s best:2044  next:[25,2043]  no_lp
#9       0.07s best:1978  next:[41,1977]  no_lp
#Done    0.08s no_lp
#Done    0.08s core
#Bound   0.08s best:1978  next:[290,1977] no_lp [skipped_logs=58]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [ 71.40ms,  71.40ms]  71.40ms   0.00ns  71.40ms         1 [ 18.12ms,  18.12ms]  18.12ms   0.00ns  18.12ms
        'default_lp':         1 [ 74.85ms,  74.85ms]  74.85ms   0.00ns  74.85ms         2 [  8.55ms,  12.41ms]  10.48ms   1.93ms  20.96ms
  'feasibility_pump':         1 [  5.40ms,   5.40ms]   5.40ms   0.00ns   5.40ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'fj':         1 [149.21ms, 149.21ms] 149.21ms   0.00ns 149.21ms         1 [100.00ms, 100.00ms] 100.00ms   0.00ns 100.00ms
     'graph_arc_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_dec_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'ls':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
             'no_lp':         1 [ 71.30ms,  71.30ms]  71.30ms   0.00ns  71.30ms         1 [ 23.33ms,  23.33ms]  23.33ms   0.00ns  23.33ms
         'rins/rens':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  1'234         77     3'995         0            2'231      3'247     215'693         54'936
  'default_lp':    921         91     3'713         1            2'054      3'148     159'745         59'664
       'no_lp':    921        213     4'232         2            2'064      3'136     190'028         70'865

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':    599    153  1'234      482          3'116                10                 0
  'default_lp':    195    145    921      581          3'364                55                38
       'no_lp':    280    145    921      496          3'378               124                26

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0          78             0         0
  'default_lp':            52         412               326       1'010             0         6
       'no_lp':           112         847               701       1'755             0        46

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       30        377        0         0           0               0          0
  'default_lp':       21        348        0         0           0               0          0
       'no_lp':       21        348        0         0           0               0          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':   12'323             0          0             0          0              0          0           0            3          1        0           0          0         0         77
    'default_lp':        0             0          0             4          0              0          2           0            0          0        0           0          0        89         91
         'no_lp':        0             0          0            43          1              2          3           0            0          0        0           0          0        94        213

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1         366         46      146        0        0

Lp dimension     Final dimension of first component
  'default_lp':    40 rows, 40 columns, 147 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0    0           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           66        0        0       0          0      0             0      46/54

Lp Cut    default_lp
     IB:          46

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

Solutions (9)    Num   Rank
       'no_lp':   18  [0,9]

Objective bounds     Num
       'bool_core':   78
  'initial_domain':    1
           'no_lp':    1

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     12        0       12
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      0        0

Improving bounds shared    Num  Sym
                 'no_lp':   22   32

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          0          0           24            24
   'default_lp':          2          0           20            24
        'no_lp':         22          0           24            24

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1978
best_bound: 1978
integers: 246
booleans: 1234
conflicts: 77
branches: 3995
propagations: 215693
integer_propagations: 54936
restarts: 0
lp_iterations: 0
walltime: 0.165005
usertime: 0.165005
deterministic_time: 0.162407
gap_integral: 0.608007
solution_fingerprint: 0x52971f3dbd7fc854

Price = 1978.0
Time = 0.169389
Wall_Time = 0.165005
Status = OPTIMAL
Conflicts = 77
Branches = 3995


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
