
Starting CP-SAT solver v9.15.6755
Parameters: max_time_in_seconds: 5000 log_search_progress: true cp_model_presolve: false
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

Starting presolve at 0.01s

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
[Symmetry] Graph for symmetry has 6'480 nodes and 12'830 arcs.
[Symmetry] Symmetry computation done. time: 0.00799 dtime: 0.00523295
[Symmetry] #generators: 19, average support size: 111.053
[Symmetry] 257 orbits on 1300 variables with sizes: 10,10,10,5,5,5,5,5,5,5,...
[Symmetry] Found orbitope of size 260 x 2

Preloading model.
#Bound   0.05s best:inf   next:[0,80000]  initial_domain
#Model   0.05s var:1300/1300 constraints:5060/5060

Starting search at 0.06s with 4 workers.
3 full problem subsolvers: [core, default_lp, no_lp]
1 first solution subsolver: [fj]
9 interleaved subsolvers: [feasibility_pump, graph_arc_lns, graph_cst_lns, graph_dec_lns, graph_var_lns, ls, rins/rens, rnd_cst_lns, rnd_var_lns]
3 helper subsolvers: [neighborhood_helper, synchronization_agent, update_gap_integral]

#1       0.52s best:23105 next:[0,23104]  fj_restart_decay_obj(batch:1 lin{mvs:443 evals:1'546} #w_updates:238 #perturb:0)
#2       0.55s best:15546 next:[0,15545]  rnd_var_lns (d=5.00e-01 s=13 t=0.10 p=0.00 stall=0 h=base) [hint]
#3       0.60s best:15245 next:[0,15244]  rnd_cst_lns (d=5.00e-01 s=14 t=0.10 p=0.00 stall=0 h=base)
#4       0.76s best:10111 next:[0,10110]  graph_var_lns (d=5.00e-01 s=15 t=0.10 p=0.00 stall=0 h=base)
#5       0.78s best:3982  next:[0,3981]   default_lp
#Bound   0.81s best:3982  next:[1,3981]   bool_core (num_cores=1 [size:4 mw:1 d:2] a=2 d=2 fixed=545/3967 clauses=18)
#Bound   0.81s best:3982  next:[2,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=546/3970 clauses=21)
#Bound   0.81s best:3982  next:[3,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=547/3973 clauses=27)
#Bound   0.81s best:3982  next:[4,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=548/3976 clauses=36)
#Bound   0.81s best:3982  next:[5,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=549/3979 clauses=48)
#Bound   0.81s best:3982  next:[6,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=550/3982 clauses=63)
#Bound   0.81s best:3982  next:[7,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=551/3985 clauses=81)
#Bound   0.81s best:3982  next:[8,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=552/3988 clauses=102)
#Bound   0.81s best:3982  next:[9,3981]   bool_core (num_cores=1 [cover] a=2 d=2 fixed=553/3991 clauses=126)
#Bound   0.81s best:3982  next:[10,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=554/3994 clauses=153)
#Bound   0.81s best:3982  next:[11,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=555/3997 clauses=183)
#Bound   0.81s best:3982  next:[12,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=556/4000 clauses=216)
#Bound   0.81s best:3982  next:[13,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=557/4003 clauses=252)
#Bound   0.81s best:3982  next:[14,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=558/4006 clauses=291)
#Bound   0.81s best:3982  next:[15,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=559/4009 clauses=333)
#Bound   0.81s best:3982  next:[16,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=560/4012 clauses=378)
#Bound   0.81s best:3982  next:[17,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=561/4015 clauses=426)
#Bound   0.81s best:3982  next:[18,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=562/4018 clauses=477)
#Bound   0.81s best:3982  next:[19,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=563/4021 clauses=531)
#Bound   0.81s best:3982  next:[20,3981]  bool_core (num_cores=1 [cover] a=2 d=2 fixed=564/4024 clauses=588)
#Model   0.84s var:1115/1300 constraints:4320/5060
#6       0.87s best:2772  next:[125,2771] no_lp
#7       0.91s best:2536  next:[126,2535] graph_cst_lns (d=5.00e-01 s=17 t=0.10 p=0.00 stall=0 h=base) [combined with: no_lp...]
#Model   0.92s var:990/1300 constraints:3820/5060
#8       0.92s best:2326  next:[126,2325] ls_restart_decay(batch:1 lin{mvs:12 evals:228} #w_updates:6 #perturb:0)
#Bound   0.87s best:2772  next:[126,2771] bool_core (num_cores=1 [cover] a=2 d=2 fixed=670/4342 clauses=23'643) [skipped_logs=105]
#9       1.11s best:2300  next:[126,2299] default_lp
#10      1.12s best:2154  next:[126,2153] default_lp
#11      1.12s best:2112  next:[126,2111] no_lp
#12      1.12s best:1766  next:[126,1765] default_lp
#13      1.12s best:1491  next:[126,1490] no_lp
#14      1.12s best:1399  next:[126,1398] no_lp
#15      1.13s best:1253  next:[126,1252] no_lp
#16      1.13s best:1202  next:[126,1201] no_lp
#17      1.14s best:1182  next:[126,1181] no_lp
#18      1.14s best:1162  next:[126,1161] no_lp
#19      1.14s best:1150  next:[126,1149] no_lp
#20      1.15s best:1130  next:[126,1129] no_lp
#Done    1.17s no_lp
#Model   1.17s var:715/1300 constraints:2720/5060

Task timing                   n [     min,      max]      avg      dev     time         n [     min,      max]      avg      dev    dtime
              'core':         1 [   1.13s,    1.13s]    1.13s   0.00ns    1.13s         2 [191.67ms, 297.55ms] 244.61ms  52.94ms 489.22ms
        'default_lp':         1 [   1.12s,    1.12s]    1.12s   0.00ns    1.12s         2 [160.03ms, 297.55ms] 228.79ms  68.76ms 457.58ms
  'feasibility_pump':         4 [ 52.00us,  69.52ms]  19.04ms  29.26ms  76.17ms         3 [  3.28us,  84.55us]  30.37us  38.31us  91.12us
                'fj':         3 [  8.40ms, 215.06ms] 118.56ms  84.92ms 355.67ms         3 [  4.67ms, 100.05ms]  68.24ms  44.95ms 204.72ms
     'graph_arc_lns':         2 [ 75.33ms, 117.25ms]  96.29ms  20.96ms 192.59ms         1 [ 41.02us,  41.02us]  41.02us   0.00ns  41.02us
     'graph_cst_lns':         1 [ 72.43ms,  72.43ms]  72.43ms   0.00ns  72.43ms         1 [  4.99ms,   4.99ms]   4.99ms   0.00ns   4.99ms
     'graph_dec_lns':         1 [  1.93ms,   1.93ms]   1.93ms   0.00ns   1.93ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
     'graph_var_lns':         1 [153.71ms, 153.71ms] 153.71ms   0.00ns 153.71ms         1 [  3.68ms,   3.68ms]   3.68ms   0.00ns   3.68ms
                'ls':         1 [  3.72ms,   3.72ms]   3.72ms   0.00ns   3.72ms         1 [256.90us, 256.90us] 256.90us   0.00ns 256.90us
             'no_lp':         1 [   1.11s,    1.11s]    1.11s   0.00ns    1.11s         2 [133.58ms, 297.55ms] 215.57ms  81.98ms 431.13ms
         'rins/rens':         3 [  7.44ms,  10.55ms]   8.53ms   1.43ms  25.58ms         0 [  0.00ns,   0.00ns]   0.00ns   0.00ns   0.00ns
       'rnd_cst_lns':         2 [ 56.77ms, 132.38ms]  94.58ms  37.81ms 189.15ms         2 [ 45.06us, 466.51us] 255.79us 210.73us 511.58us
       'rnd_var_lns':         2 [ 11.68ms,  29.04ms]  20.36ms   8.68ms  40.71ms         2 [247.00ns,   1.67us] 956.50ns 709.50ns   1.91us

Search stats     Bools  Conflicts  Branches  Restarts  BacktrackToRoot  Backtrack  BoolPropag  IntegerPropag
        'core':  4'345          6    14'120         0            9'465     13'355   3'872'182      1'235'093
  'default_lp':  3'971         25    17'290         0            9'088     12'949   3'845'989      1'323'451
       'no_lp':  3'971        189    16'706         2            8'973     12'486   3'678'178      1'289'147

SAT formula      Fixed  Equiv  Total  VarLeft  BinaryClauses  PermanentClauses  TemporaryClauses
        'core':    985    947  4'345    2'413         19'994            -4'846                 1
  'default_lp':  1'700    950  3'971    1'321         22'198                17                14
       'no_lp':  1'705    835  3'971    1'431         19'882                84                54

SAT stats        ClassicMinim  LitRemoved  LitRemovedBinary  LitLearned  LitForgotten  Subsumed
        'core':             1         151               219          78             0         0
  'default_lp':            12         354             1'058       1'212             0         3
       'no_lp':           130       7'571             3'576       5'556             0        42

Vivification     Clauses  Decisions  LitTrue  Subsumed  LitRemoved  DecisionReused  Conflicts
        'core':    3'959        426        0     3'711      11'146           7'370          0
  'default_lp':       21      2'383        0         0           0               0          0
       'no_lp':       21      2'108        0         0           0               0          0

Clause deletion    at_true  l_and_not(l)  to_binary  sub_conflict  sub_extra  sub_decisions  sub_eager  sub_vivify  sub_probing  sub_inpro  blocked  eliminated  forgotten  promoted  conflicts
          'core':    7'875             0          0             0          0              0          0       3'711        3'382      7'080        0           0          0         1          6
    'default_lp':        0             0          0             1          1              0          2           0            0          0        0           0          0        33         25
         'no_lp':        0             0          0            34          0              0          8           0            0          0        0           0          0       181        189

Lp stats         Component  Iterations  AddedCuts  OPTIMAL  DUAL_F.  DUAL_U.
  'default_lp':          1         621         92      263        0        0

Lp dimension     Final dimension of first component
  'default_lp':    43 rows, 40 columns, 182 entries

Lp debug         CutPropag  CutEqPropag  Adjust  Overflow  Bad  BadScaling
  'default_lp':          0            0       0         0  109           0

Lp pool          Constraints  Updates  Simplif  Merged  Shortened  Split  Strengthened  Cuts/Call
  'default_lp':          112        0        0       0          0      0             0     92/148

Lp Cut       default_lp
     CG_FF:           5
     CG_RB:          20
        IB:          54
  MIR_1_FF:           3
  MIR_1_RB:           4
  MIR_2_FF:           2
   MIR_2_K:           1
  MIR_2_RB:           3

LNS stats           Improv/Calls  Closed  Difficulty  TimeLimit
  'graph_arc_lns':           0/1    100%    7.07e-01       0.10
  'graph_cst_lns':           1/1    100%    7.07e-01       0.10
  'graph_dec_lns':           0/0      0%    5.00e-01       0.10
  'graph_var_lns':           1/1    100%    7.07e-01       0.10
      'rins/rens':           3/3    100%    8.76e-01       0.10
    'rnd_cst_lns':           1/2    100%    8.14e-01       0.10
    'rnd_var_lns':           1/2    100%    8.14e-01       0.10

LS stats                          Batches  Restarts/Perturbs  LinMoves  GenMoves  CompoundMoves  Bactracks  WeightUpdates  ScoreComputed
                   'fj_restart':        1                  1     9'680         0              0          0         19'822          1'388
  'fj_restart_compound_perturb':        1                  1         0    10'296            545      4'875            125        264'436
         'fj_restart_decay_obj':        1                  1       443         0              0          0            238          2'153
             'ls_restart_decay':        1                  1        12         0              0          0              6            267

Solutions (20)             Num    Rank
            'default_lp':    8  [4,12]
  'fj_restart_decay_obj':    2   [0,1]
         'graph_cst_lns':    2   [6,7]
         'graph_var_lns':    2   [3,4]
      'ls_restart_decay':    2   [7,8]
                 'no_lp':   20  [5,20]
           'rnd_cst_lns':    2   [2,3]
           'rnd_var_lns':    2   [1,2]

Objective bounds     Num
       'bool_core':  126
  'initial_domain':    1

Solution repositories    Added  Queried  Synchro
    'alternative_path':      1        0        1
      'best_solutions':     38       10       29
   'fj solution hints':      0        0        0
        'lp solutions':      0        0        0
                'pump':      3        3

Improving bounds shared    Num  Sym
            'default_lp':   48   24
                 'no_lp':   83  196

Clauses shared    #Exported  #Imported  #BinaryRead  #BinaryTotal
         'core':          0          0            9            52
   'default_lp':         17          0           50            52
        'no_lp':         35          0           52            52

LRAT_status: NA
CpSolverResponse summary:
status: OPTIMAL
objective: 1130
best_bound: 1130
integers: 1296
booleans: 3971
conflicts: 189
branches: 16706
propagations: 3678178
integer_propagations: 1289147
restarts: 2
lp_iterations: 0
walltime: 1.19017
usertime: 1.19017
deterministic_time: 1.59222
gap_integral: 11.3708
solution_fingerprint: 0x816b0287dd736d47

Price = 1130.0
Time = 1.196307
Wall_Time = 1.190168
Status = OPTIMAL
Conflicts = 189
Branches = 16706


Matrice components x VM
1 0 0 0 0
0 1 0 0 0
0 0 1 0 0
0 0 0 0 1
0 0 0 1 0

VM type vector t
[182, 225, 182, 245, 134]

Component Requirements
C ID   Name            Req CPU    Req Memory   Req Storage 
------------------------------------------------------------
1      Balancer        4          2048         500         
2      Apache          2          512          1000        
3      Nginx           4          2048         1000        
5      IDSAgent        1          256          250         
4      IDSServer       8          16000        2000        
------------------------------------------------------------

VM Detailed Specs
VM ID  Type   Price      CPU      Memory     Storage   
------------------------------------------------------------
VM 1   182    210.00     4        7500       2000      
VM 2   225    126.00     2        3750       2000      
VM 3   182    210.00     4        7500       2000      
VM 4   245    52.00      1        1700       1000      
VM 5   134    532.00     8        30000      2000      
------------------------------------------------------------
Total Calculated: 1130.00

Component Allocation
Component 1 -> VM 1
Component 2 -> VM 2
Component 3 -> VM 3
Component 4 -> VM 5
Component 5 -> VM 4
