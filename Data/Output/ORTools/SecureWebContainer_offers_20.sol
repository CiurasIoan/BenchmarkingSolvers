
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false symmetry_level: 0
Setting number of workers to 4

Initial optimization model '': (model_fingerprint: 0x3f941c6860eb4cba)
#Variables: 150 (#ints: 5 in objective) (150 primary variables)
  - 130 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kExactlyOne: 5 (#enforced: 5) (#literals: 100)
#kLinear1: 405 (#enforced: 405)
#kLinearN: 25 (#enforced: 5) (#terms: 215)

Starting presolve at 0.01s

Presolve summary:
  - 0 affine relations were detected.

Presolved optimization model '': (model_fingerprint: 0x63e0bbbc0d9ba972)
#Variables: 150 (#ints: 5 in objective) (150 primary variables)
  - 130 Booleans in [0,1]
  - 5 in [0,64]
  - 5 in [0,16000]
  - 5 in [0,24000]
  - 5 in [0,976000]
#kBoolAnd: 25 (#enforced: 25) (#literals: 50)
#kLinear1: 405 (#enforced: 405)
#kLinearN: 30 (#enforced: 10) (#terms: 315)

Preloading model.
#Bound   0.02s best:inf   next:[0,80000]  initial_domain
#Model   0.03s var:150/150 constraints:460/460

Starting search at 0.03s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.07s best:4704  next:[0,4703]   no_lp
#Bound   0.07s best:4704  next:[1,4703]   bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/598 clauses=14)
#2       0.07s best:3076  next:[1,3075]   default_lp
#Bound   0.08s best:3076  next:[2,3075]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=61/602 clauses=14)
#Bound   0.08s best:3076  next:[3,3075]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=107/606 clauses=22)
#Bound   0.08s best:3076  next:[4,3075]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=108/610 clauses=34)
#Bound   0.08s best:3076  next:[5,3075]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=109/614 clauses=50)
#Bound   0.08s best:3076  next:[6,3075]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=110/618 clauses=70)
#Bound   0.08s best:3076  next:[7,3075]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=111/622 clauses=94)
#Bound   0.08s best:3076  next:[8,3075]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=112/626 clauses=122)
#Bound   0.08s best:3076  next:[9,3075]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=113/630 clauses=154)
#3       0.08s best:2931  next:[9,2930]   no_lp
#Bound   0.08s best:2931  next:[10,2930]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=114/634 clauses=190)
#Bound   0.08s best:2931  next:[11,2930]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=115/638 clauses=230)
#Bound   0.08s best:2931  next:[12,2930]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=116/642 clauses=274)
#4       0.08s best:2874  next:[12,2873]  no_lp
#5       0.08s best:2802  next:[12,2801]  no_lp
#6       0.08s best:2788  next:[12,2787]  no_lp
#7       0.08s best:2775  next:[12,2774]  no_lp
#8       0.08s best:2762  next:[12,2761]  no_lp
#9       0.08s best:2680  next:[12,2679]  no_lp
#10      0.08s best:2232  next:[12,2231]  no_lp
#Bound   0.09s best:2232  next:[13,2231]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=117/646 clauses=322)
#Bound   0.09s best:2232  next:[14,2231]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=118/650 clauses=374)
#Bound   0.09s best:2232  next:[15,2231]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=119/654 clauses=430)
#Bound   0.09s best:2232  next:[16,2231]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=120/658 clauses=490)
#Bound   0.09s best:2232  next:[17,2231]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=121/662 clauses=554)
#Bound   0.09s best:2232  next:[18,2231]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=122/666 clauses=622)
#Bound   0.09s best:2232  next:[19,2231]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=123/670 clauses=694)
#Bound   0.09s best:2232  next:[20,2231]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=124/674 clauses=770)
#Done    0.11s no_lp
#Bound   0.11s best:2232  next:[874,2231] no_lp [skipped_logs=72]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [ 79.42ms,  79.42ms]  79.42ms   0.00ns  79.42ms         2 [  3.03ms,   4.67ms]   3.85ms 820.82us   7.71ms
        'default_lp':         1 [ 79.48ms,  79.48ms]  79.48ms   0.00ns  79.48ms         2 [  4.68ms,   5.11ms]   4.89ms 216.78us   9.78ms
  'feasibility_pump':         1 [ 22.20ms,  22.20ms]  22.20ms   0.00ns  22.20ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'fj':         1 [140.18ms, 140.18ms] 140.18ms   0.00ns 140.18ms         1 [100.00ms, 100.00ms] 100.00ms   0.00ns 100.00ms
     'graph_arc_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_dec_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'ls':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
             'no_lp':         1 [ 78.37ms,  78.37ms]  78.37ms   0.00ns  78.37ms         1 [ 15.60ms,  15.60ms]  15.60ms   0.00ns  15.60ms
         'rins/rens':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':    955         88     2'815         0            1'547      2'320     106'030         22'883
  'default_lp':    599         89     2'577         1            1'347      2'160      64'336         25'067
       'no_lp':    601        440     3'321         5            1'372      2'517     119'356         45'212

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':    479     93    955      383          9'370             1'001                 0
  'default_lp':    107     75    599      417          1'778                67                 3
       'no_lp':    427     85    601       89          2'180               202                71

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0         100             0         4
  'default_lp':            55         424               278         526             0        12
       'no_lp':           249       1'731               646       3'072             0       115

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       32        256        0         0           0               0          0
  'default_lp':       37        302        0         0           0              20          0
       'no_lp':       25        222        0         1           6               2          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':   10'960             0      3'713             0          0              0          4           0            3          1        0           0          0         0         88
    'default_lp':        2             0          2            11          3              3          1           0            0          0        0           0          0        19         89
         'no_lp':        0             0          0           106          8              7          9           1            0          0        0           0          0       318        440

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1         422         65      142        0        0

Lp dimension     Final dimension of first component
  'default_lp':    54 rows, 40 columns, 171 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0   15           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           85        0       30       0         27      0             0      65/78

Lp Cut       default_lp
     CG_FF:           3
     CG_RB:           6
        IB:          54
  MIR_1_FF:           1
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
  'fj_restart':        1                  1    79'895         0              0          0        101'979            221

Solutions (10)    Num    Rank
   'default_lp':    2   [1,2]
        'no_lp':   18  [0,10]

Objective bounds     Num
       'bool_core':   87
  'initial_domain':    1
           'no_lp':    6

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     12        0       12
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      0        0

Improving bounds shared    Num  Sym
            'default_lp':   15    0
                 'no_lp':   96    0

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          1          0           52            56
   'default_lp':          5          0           45            56
        'no_lp':         50          0           55            56

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 2232
best_bound: 2232
integers: 146
booleans: 601
conflicts: 440
branches: 3321
propagations: 119356
integer_propagations: 45212
restarts: 5
lp_iterations: 0
walltime: 0.196923
usertime: 0.196923
deterministic_time: 0.133094
gap_integral: 0.281694
solution_fingerprint: 0x8856ae17f7ff6a7b

Price = 2232.0
Time = 0.204675
Wall_Time = 0.196923
Status = OPTIMAL
Conflicts = 440
Branches = 3321


Matrice components x VM
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
1 0 0 0 0
0 0 0 0 1

VM type vector t
[12, 15, 17, 15, 18]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
4      IDSServer       8          16000        2000        
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
3      Nginx           4          2048         1000        
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
Component 1 -> VM 2
Component 2 -> VM 3
Component 3 -> VM 4
Component 4 -> VM 1
Component 5 -> VM 5
