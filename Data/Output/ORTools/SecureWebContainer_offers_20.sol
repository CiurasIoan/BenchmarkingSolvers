
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false
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
[Symmetry] Graph for symmetry has 730 nodes and 1'330 arcs.
[Symmetry] Symmetry computation done. time: 0.001972 dtime: 0.00054704
[Symmetry] #generators: 4, average support size: 60
[Symmetry] 30 orbits on 150 variables with sizes: 5,5,5,5,5,5,5,5,5,5,...
[Symmetry] Found orbitope of size 30 x 5

Preloading model.
#Bound   0.03s best:inf   next:[0,80000]  initial_domain
#Model   0.04s var:150/150 constraints:460/460

Starting search at 0.04s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.08s best:4704  next:[0,4703]   no_lp
#Bound   0.09s best:4704  next:[1,4703]   bool_core (num_cores=1 [size:5 mw:1 d:3] a=1 d=3 fixed=0/598 clauses=14)
#2       0.09s best:3222  next:[1,3221]   default_lp
#Bound   0.09s best:3222  next:[2,3221]   bool_core (num_cores=2 [size:1 mw:1] a=1 d=3 fixed=61/602 clauses=14)
#Bound   0.09s best:3222  next:[3,3221]   bool_core (num_cores=3 [size:1 mw:1] a=1 d=3 fixed=77/606 clauses=22)
#Bound   0.09s best:3222  next:[4,3221]   bool_core (num_cores=4 [size:1 mw:1] a=1 d=3 fixed=78/610 clauses=34)
#3       0.09s best:3182  next:[4,3181]   no_lp
#Bound   0.09s best:3182  next:[5,3181]   bool_core (num_cores=5 [size:1 mw:1] a=1 d=3 fixed=79/614 clauses=50)
#Bound   0.09s best:3182  next:[6,3181]   bool_core (num_cores=6 [size:1 mw:1] a=1 d=3 fixed=95/618 clauses=70)
#Bound   0.09s best:3182  next:[7,3181]   bool_core (num_cores=7 [size:1 mw:1] a=1 d=3 fixed=96/622 clauses=94)
#4       0.09s best:2931  next:[7,2930]   no_lp
#Bound   0.09s best:2931  next:[8,2930]   bool_core (num_cores=8 [size:1 mw:1] a=1 d=3 fixed=97/626 clauses=122)
#Bound   0.10s best:2931  next:[9,2930]   bool_core (num_cores=9 [size:1 mw:1] a=1 d=3 fixed=113/630 clauses=154)
#Bound   0.10s best:2931  next:[10,2930]  bool_core (num_cores=10 [size:1 mw:1] a=1 d=3 fixed=114/634 clauses=190)
#5       0.10s best:2874  next:[10,2873]  no_lp
#Bound   0.10s best:2874  next:[11,2873]  bool_core (num_cores=11 [size:1 mw:1] a=1 d=3 fixed=115/638 clauses=230)
#Bound   0.10s best:2874  next:[12,2873]  bool_core (num_cores=12 [size:1 mw:1] a=1 d=3 fixed=116/642 clauses=274)
#Bound   0.10s best:2874  next:[13,2873]  bool_core (num_cores=13 [size:1 mw:1] a=1 d=3 fixed=117/646 clauses=322)
#6       0.10s best:2802  next:[13,2801]  no_lp
#Bound   0.10s best:2802  next:[14,2801]  bool_core (num_cores=14 [size:1 mw:1] a=1 d=3 fixed=118/650 clauses=374)
#Bound   0.10s best:2802  next:[15,2801]  bool_core (num_cores=15 [size:1 mw:1] a=1 d=3 fixed=119/654 clauses=430)
#Bound   0.10s best:2802  next:[16,2801]  bool_core (num_cores=16 [size:1 mw:1] a=1 d=3 fixed=120/658 clauses=490)
#7       0.10s best:2788  next:[16,2787]  no_lp
#Bound   0.10s best:2788  next:[17,2787]  bool_core (num_cores=17 [size:1 mw:1] a=1 d=3 fixed=121/662 clauses=554)
#Bound   0.10s best:2788  next:[18,2787]  bool_core (num_cores=18 [size:1 mw:1] a=1 d=3 fixed=122/666 clauses=622)
#Bound   0.10s best:2788  next:[19,2787]  bool_core (num_cores=19 [size:1 mw:1] a=1 d=3 fixed=123/670 clauses=694)
#Bound   0.10s best:2788  next:[20,2787]  bool_core (num_cores=20 [size:1 mw:1] a=1 d=3 fixed=124/674 clauses=770)
#8       0.10s best:2775  next:[20,2774]  no_lp
#9       0.10s best:2762  next:[22,2761]  no_lp
#10      0.10s best:2680  next:[25,2679]  no_lp
#11      0.10s best:2232  next:[26,2231]  no_lp
#Done    0.10s no_lp
#Done    0.10s core
#Bound   0.10s best:2232  next:[53,2231]  bool_core (num_cores=53 [size:1 mw:1] a=1 d=3 fixed=157/806 clauses=5'522) [skipped_logs=32]

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [ 61.95ms,  61.95ms]  61.95ms   0.00ns  61.95ms         1 [  4.67ms,   4.67ms]   4.67ms   0.00ns   4.67ms
        'default_lp':         1 [ 63.80ms,  63.80ms]  63.80ms   0.00ns  63.80ms         2 [  1.65ms,   4.68ms]   3.16ms   1.51ms   6.33ms
  'feasibility_pump':         1 [ 30.42ms,  30.42ms]  30.42ms   0.00ns  30.42ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'fj':         1 [127.50ms, 127.50ms] 127.50ms   0.00ns 127.50ms         1 [100.00ms, 100.00ms] 100.00ms   0.00ns 100.00ms
     'graph_arc_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_dec_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
                'ls':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
             'no_lp':         1 [ 61.87ms,  61.87ms]  61.87ms   0.00ns  61.87ms         1 [  9.41ms,   9.41ms]   9.41ms   0.00ns   9.41ms
         'rins/rens':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_var_lns':         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':    810         53     2'780         0            1'478      2'250      85'738         22'827
  'default_lp':    599         11     1'550         0            1'212      1'475      47'470         18'691
       'no_lp':    601        116     2'859         2            1'361      2'199      72'416         28'493

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':    157     93    810      560          2'900             4'409                 0
  'default_lp':    105     80    599      414          2'202                18                 1
       'no_lp':    110     85    601      406          2'232                47                20

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             0           0                 0          65             0         0
  'default_lp':             2           9                39         101             0         0
       'no_lp':            60         398               240         732             0        34

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':       32        256        0         0           0               0          0
  'default_lp':        0          0        0         0           0               0          0
       'no_lp':       25        222        0         1           6               2          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':    1'325             0          0             0          0              0          0           0            3          1        0           0          0         0         53
    'default_lp':        0             0          0             0          0              0          0           0            1          0        0           0          0         2         11
         'no_lp':        0             0          0            29          1              5          5           1            0          0        0           0          0        90        116

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1         123         55       36        0        0

Lp dimension     Final dimension of first component
  'default_lp':    51 rows, 40 columns, 188 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0   22           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':           75        0        0       0          0      0             0      55/68

Lp Cut       default_lp
     CG_FF:           4
     CG_RB:           4
        IB:          45
  MIR_1_FF:           1
  MIR_3_RB:           1

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

Solutions (11)    Num    Rank
   'default_lp':    2   [1,2]
        'no_lp':   20  [0,11]

Objective bounds     Num
       'bool_core':   53
  'initial_domain':    1

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     11        0       11
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      0        0

Improving bounds shared    Num  Sym
                 'no_lp':   12   20

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          0          0           85            87
   'default_lp':         51          0           34            87
        'no_lp':         36          0           87            87

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 2232
best_bound: 2232
integers: 146
booleans: 810
conflicts: 53
branches: 2780
propagations: 85738
integer_propagations: 22827
restarts: 0
lp_iterations: 0
walltime: 0.202303
usertime: 0.202304
deterministic_time: 0.120409
gap_integral: 0.21175
solution_fingerprint: 0x8856ae17f7ff6a7b

Price = 2232.0
Time = 0.213190
Wall_Time = 0.202303
Status = OPTIMAL
Conflicts = 53
Branches = 2780


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
