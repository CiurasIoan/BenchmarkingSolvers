\ Model Gurobi_deployment
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xa26075c743c96ceb
Minimize
  0 VM_1 + PriceProv1 + 0 VM1_Type1 + 0 VM1_Type2 + 0 VM1_Type3
   + 0 VM1_Type4 + 0 VM1_Type5 + 0 VM1_Type6 + 0 VM1_Type7 + 0 VM1_Type8
   + 0 VM1_Type9 + 0 VM1_Type10 + 0 VM1_Type11 + 0 VM1_Type12
   + 0 VM1_Type13 + 0 VM1_Type14 + 0 VM1_Type15 + 0 VM1_Type16
   + 0 VM1_Type17 + 0 VM1_Type18 + 0 VM1_Type19 + 0 VM1_Type20 + 0 VM_2
   + PriceProv2 + 0 VM2_Type1 + 0 VM2_Type2 + 0 VM2_Type3 + 0 VM2_Type4
   + 0 VM2_Type5 + 0 VM2_Type6 + 0 VM2_Type7 + 0 VM2_Type8 + 0 VM2_Type9
   + 0 VM2_Type10 + 0 VM2_Type11 + 0 VM2_Type12 + 0 VM2_Type13
   + 0 VM2_Type14 + 0 VM2_Type15 + 0 VM2_Type16 + 0 VM2_Type17
   + 0 VM2_Type18 + 0 VM2_Type19 + 0 VM2_Type20 + 0 VM_3 + PriceProv3
   + 0 VM3_Type1 + 0 VM3_Type2 + 0 VM3_Type3 + 0 VM3_Type4 + 0 VM3_Type5
   + 0 VM3_Type6 + 0 VM3_Type7 + 0 VM3_Type8 + 0 VM3_Type9 + 0 VM3_Type10
   + 0 VM3_Type11 + 0 VM3_Type12 + 0 VM3_Type13 + 0 VM3_Type14
   + 0 VM3_Type15 + 0 VM3_Type16 + 0 VM3_Type17 + 0 VM3_Type18
   + 0 VM3_Type19 + 0 VM3_Type20 + 0 VM_4 + PriceProv4 + 0 VM4_Type1
   + 0 VM4_Type2 + 0 VM4_Type3 + 0 VM4_Type4 + 0 VM4_Type5 + 0 VM4_Type6
   + 0 VM4_Type7 + 0 VM4_Type8 + 0 VM4_Type9 + 0 VM4_Type10 + 0 VM4_Type11
   + 0 VM4_Type12 + 0 VM4_Type13 + 0 VM4_Type14 + 0 VM4_Type15
   + 0 VM4_Type16 + 0 VM4_Type17 + 0 VM4_Type18 + 0 VM4_Type19
   + 0 VM4_Type20 + 0 VM_5 + PriceProv5 + 0 VM5_Type1 + 0 VM5_Type2
   + 0 VM5_Type3 + 0 VM5_Type4 + 0 VM5_Type5 + 0 VM5_Type6 + 0 VM5_Type7
   + 0 VM5_Type8 + 0 VM5_Type9 + 0 VM5_Type10 + 0 VM5_Type11 + 0 VM5_Type12
   + 0 VM5_Type13 + 0 VM5_Type14 + 0 VM5_Type15 + 0 VM5_Type16
   + 0 VM5_Type17 + 0 VM5_Type18 + 0 VM5_Type19 + 0 VM5_Type20
Subject To
 BasicAllocation_0: C1_VM1 + C1_VM2 + C1_VM3 + C1_VM4 + C1_VM5 >= 1
 BasicAllocation_1: C2_VM1 + C2_VM2 + C2_VM3 + C2_VM4 + C2_VM5 >= 1
 BasicAllocation_2: C3_VM1 + C3_VM2 + C3_VM3 + C3_VM4 + C3_VM5 >= 1
 BasicAllocation_3: C4_VM1 + C4_VM2 + C4_VM3 + C4_VM4 + C4_VM5 >= 1
 BasicAllocation_4: C5_VM1 + C5_VM2 + C5_VM3 + C5_VM4 + C5_VM5 >= 1
 Capacity_CPU_VM1: 4 C1_VM1 + 2 C2_VM1 + 4 C3_VM1 + 8 C4_VM1 + C5_VM1
   - VM1_offer_CPU <= 0
 Capacity_Memory_VM1: 2048 C1_VM1 + 512 C2_VM1 + 2048 C3_VM1 + 16000 C4_VM1
   + 256 C5_VM1 - VM1_offer_Memory <= 0
 Capacity_Storage_VM1: 500 C1_VM1 + 1000 C2_VM1 + 1000 C3_VM1 + 2000 C4_VM1
   + 250 C5_VM1 - VM1_offer_Storage <= 0
 Capacity_CPU_VM2: 4 C1_VM2 + 2 C2_VM2 + 4 C3_VM2 + 8 C4_VM2 + C5_VM2
   - VM2_offer_CPU <= 0
 Capacity_Memory_VM2: 2048 C1_VM2 + 512 C2_VM2 + 2048 C3_VM2 + 16000 C4_VM2
   + 256 C5_VM2 - VM2_offer_Memory <= 0
 Capacity_Storage_VM2: 500 C1_VM2 + 1000 C2_VM2 + 1000 C3_VM2 + 2000 C4_VM2
   + 250 C5_VM2 - VM2_offer_Storage <= 0
 Capacity_CPU_VM3: 4 C1_VM3 + 2 C2_VM3 + 4 C3_VM3 + 8 C4_VM3 + C5_VM3
   - VM3_offer_CPU <= 0
 Capacity_Memory_VM3: 2048 C1_VM3 + 512 C2_VM3 + 2048 C3_VM3 + 16000 C4_VM3
   + 256 C5_VM3 - VM3_offer_Memory <= 0
 Capacity_Storage_VM3: 500 C1_VM3 + 1000 C2_VM3 + 1000 C3_VM3 + 2000 C4_VM3
   + 250 C5_VM3 - VM3_offer_Storage <= 0
 Capacity_CPU_VM4: 4 C1_VM4 + 2 C2_VM4 + 4 C3_VM4 + 8 C4_VM4 + C5_VM4
   - VM4_offer_CPU <= 0
 Capacity_Memory_VM4: 2048 C1_VM4 + 512 C2_VM4 + 2048 C3_VM4 + 16000 C4_VM4
   + 256 C5_VM4 - VM4_offer_Memory <= 0
 Capacity_Storage_VM4: 500 C1_VM4 + 1000 C2_VM4 + 1000 C3_VM4 + 2000 C4_VM4
   + 250 C5_VM4 - VM4_offer_Storage <= 0
 Capacity_CPU_VM5: 4 C1_VM5 + 2 C2_VM5 + 4 C3_VM5 + 8 C4_VM5 + C5_VM5
   - VM5_offer_CPU <= 0
 Capacity_Memory_VM5: 2048 C1_VM5 + 512 C2_VM5 + 2048 C3_VM5 + 16000 C4_VM5
   + 256 C5_VM5 - VM5_offer_Memory <= 0
 Capacity_Storage_VM5: 500 C1_VM5 + 1000 C2_VM5 + 1000 C3_VM5 + 2000 C4_VM5
   + 250 C5_VM5 - VM5_offer_Storage <= 0
 Occupancy_VM1: C1_VM1 = 1 -> VM_1 = 1
 Occupancy_VM1: C2_VM1 = 1 -> VM_1 = 1
 Occupancy_VM1: C3_VM1 = 1 -> VM_1 = 1
 Occupancy_VM1: C4_VM1 = 1 -> VM_1 = 1
 Occupancy_VM1: C5_VM1 = 1 -> VM_1 = 1
 Occupancy_VM2: C1_VM2 = 1 -> VM_2 = 1
 Occupancy_VM2: C2_VM2 = 1 -> VM_2 = 1
 Occupancy_VM2: C3_VM2 = 1 -> VM_2 = 1
 Occupancy_VM2: C4_VM2 = 1 -> VM_2 = 1
 Occupancy_VM2: C5_VM2 = 1 -> VM_2 = 1
 Occupancy_VM3: C1_VM3 = 1 -> VM_3 = 1
 Occupancy_VM3: C2_VM3 = 1 -> VM_3 = 1
 Occupancy_VM3: C3_VM3 = 1 -> VM_3 = 1
 Occupancy_VM3: C4_VM3 = 1 -> VM_3 = 1
 Occupancy_VM3: C5_VM3 = 1 -> VM_3 = 1
 Occupancy_VM4: C1_VM4 = 1 -> VM_4 = 1
 Occupancy_VM4: C2_VM4 = 1 -> VM_4 = 1
 Occupancy_VM4: C3_VM4 = 1 -> VM_4 = 1
 Occupancy_VM4: C4_VM4 = 1 -> VM_4 = 1
 Occupancy_VM4: C5_VM4 = 1 -> VM_4 = 1
 Occupancy_VM5: C1_VM5 = 1 -> VM_5 = 1
 Occupancy_VM5: C2_VM5 = 1 -> VM_5 = 1
 Occupancy_VM5: C3_VM5 = 1 -> VM_5 = 1
 Occupancy_VM5: C4_VM5 = 1 -> VM_5 = 1
 Occupancy_VM5: C5_VM5 = 1 -> VM_5 = 1
 Link: VM1_Type1 = 1 -> PriceProv1 = 8403
 Link: VM1_Type1 = 1 -> VM1_offer_CPU = 64
 Link: VM1_Type1 = 1 -> VM1_offer_Memory = 976000
 Link: VM1_Type1 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type2 = 1 -> PriceProv1 = 9152
 Link: VM1_Type2 = 1 -> VM1_offer_CPU = 64
 Link: VM1_Type2 = 1 -> VM1_offer_Memory = 488000
 Link: VM1_Type2 = 1 -> VM1_offer_Storage = 8000
 Link: VM1_Type3 = 1 -> PriceProv1 = 16000
 Link: VM1_Type3 = 1 -> VM1_offer_CPU = 64
 Link: VM1_Type3 = 1 -> VM1_offer_Memory = 1952
 Link: VM1_Type3 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type4 = 1 -> PriceProv1 = 4105
 Link: VM1_Type4 = 1 -> VM1_offer_CPU = 32
 Link: VM1_Type4 = 1 -> VM1_offer_Memory = 244000
 Link: VM1_Type4 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type5 = 1 -> PriceProv1 = 4576
 Link: VM1_Type5 = 1 -> VM1_offer_CPU = 32
 Link: VM1_Type5 = 1 -> VM1_offer_Memory = 244000
 Link: VM1_Type5 = 1 -> VM1_offer_Storage = 4000
 Link: VM1_Type6 = 1 -> PriceProv1 = 1373
 Link: VM1_Type6 = 1 -> VM1_offer_CPU = 16
 Link: VM1_Type6 = 1 -> VM1_offer_Memory = 122000
 Link: VM1_Type6 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type7 = 1 -> PriceProv1 = 1430
 Link: VM1_Type7 = 1 -> VM1_offer_CPU = 16
 Link: VM1_Type7 = 1 -> VM1_offer_Memory = 30000
 Link: VM1_Type7 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type8 = 1 -> PriceProv1 = 5400
 Link: VM1_Type8 = 1 -> VM1_offer_CPU = 17
 Link: VM1_Type8 = 1 -> VM1_offer_Memory = 117000
 Link: VM1_Type8 = 1 -> VM1_offer_Storage = 24000
 Link: VM1_Type9 = 1 -> PriceProv1 = 3079
 Link: VM1_Type9 = 1 -> VM1_offer_CPU = 16
 Link: VM1_Type9 = 1 -> VM1_offer_Memory = 122000
 Link: VM1_Type9 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type10 = 1 -> PriceProv1 = 1470
 Link: VM1_Type10 = 1 -> VM1_offer_CPU = 8
 Link: VM1_Type10 = 1 -> VM1_offer_Memory = 61000
 Link: VM1_Type10 = 1 -> VM1_offer_Storage = 6000
 Link: VM1_Type11 = 1 -> PriceProv1 = 1301
 Link: VM1_Type11 = 1 -> VM1_offer_CPU = 8
 Link: VM1_Type11 = 1 -> VM1_offer_Memory = 68400
 Link: VM1_Type11 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type12 = 1 -> PriceProv1 = 1288
 Link: VM1_Type12 = 1 -> VM1_offer_CPU = 8
 Link: VM1_Type12 = 1 -> VM1_offer_Memory = 68400
 Link: VM1_Type12 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type13 = 1 -> PriceProv1 = 402
 Link: VM1_Type13 = 1 -> VM1_offer_CPU = 4
 Link: VM1_Type13 = 1 -> VM1_offer_Memory = 15000
 Link: VM1_Type13 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type14 = 1 -> PriceProv1 = 827
 Link: VM1_Type14 = 1 -> VM1_offer_CPU = 4
 Link: VM1_Type14 = 1 -> VM1_offer_Memory = 30500
 Link: VM1_Type14 = 1 -> VM1_offer_Storage = 3000
 Link: VM1_Type15 = 1 -> PriceProv1 = 379
 Link: VM1_Type15 = 1 -> VM1_offer_CPU = 4
 Link: VM1_Type15 = 1 -> VM1_offer_Memory = 30500
 Link: VM1_Type15 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type16 = 1 -> PriceProv1 = 146
 Link: VM1_Type16 = 1 -> VM1_offer_CPU = 2
 Link: VM1_Type16 = 1 -> VM1_offer_Memory = 7500
 Link: VM1_Type16 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type17 = 1 -> PriceProv1 = 128
 Link: VM1_Type17 = 1 -> VM1_offer_CPU = 2
 Link: VM1_Type17 = 1 -> VM1_offer_Memory = 3750
 Link: VM1_Type17 = 1 -> VM1_offer_Storage = 2000
 Link: VM1_Type18 = 1 -> PriceProv1 = 58
 Link: VM1_Type18 = 1 -> VM1_offer_CPU = 1
 Link: VM1_Type18 = 1 -> VM1_offer_Memory = 1700
 Link: VM1_Type18 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type19 = 1 -> PriceProv1 = 93
 Link: VM1_Type19 = 1 -> VM1_offer_CPU = 1
 Link: VM1_Type19 = 1 -> VM1_offer_Memory = 3750
 Link: VM1_Type19 = 1 -> VM1_offer_Storage = 1000
 Link: VM1_Type20 = 1 -> PriceProv1 = 98
 Link: VM1_Type20 = 1 -> VM1_offer_CPU = 1
 Link: VM1_Type20 = 1 -> VM1_offer_Memory = 3750
 Link: VM1_Type20 = 1 -> VM1_offer_Storage = 1000
 Link: VM2_Type1 = 1 -> PriceProv2 = 8403
 Link: VM2_Type1 = 1 -> VM2_offer_CPU = 64
 Link: VM2_Type1 = 1 -> VM2_offer_Memory = 976000
 Link: VM2_Type1 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type2 = 1 -> PriceProv2 = 9152
 Link: VM2_Type2 = 1 -> VM2_offer_CPU = 64
 Link: VM2_Type2 = 1 -> VM2_offer_Memory = 488000
 Link: VM2_Type2 = 1 -> VM2_offer_Storage = 8000
 Link: VM2_Type3 = 1 -> PriceProv2 = 16000
 Link: VM2_Type3 = 1 -> VM2_offer_CPU = 64
 Link: VM2_Type3 = 1 -> VM2_offer_Memory = 1952
 Link: VM2_Type3 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type4 = 1 -> PriceProv2 = 4105
 Link: VM2_Type4 = 1 -> VM2_offer_CPU = 32
 Link: VM2_Type4 = 1 -> VM2_offer_Memory = 244000
 Link: VM2_Type4 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type5 = 1 -> PriceProv2 = 4576
 Link: VM2_Type5 = 1 -> VM2_offer_CPU = 32
 Link: VM2_Type5 = 1 -> VM2_offer_Memory = 244000
 Link: VM2_Type5 = 1 -> VM2_offer_Storage = 4000
 Link: VM2_Type6 = 1 -> PriceProv2 = 1373
 Link: VM2_Type6 = 1 -> VM2_offer_CPU = 16
 Link: VM2_Type6 = 1 -> VM2_offer_Memory = 122000
 Link: VM2_Type6 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type7 = 1 -> PriceProv2 = 1430
 Link: VM2_Type7 = 1 -> VM2_offer_CPU = 16
 Link: VM2_Type7 = 1 -> VM2_offer_Memory = 30000
 Link: VM2_Type7 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type8 = 1 -> PriceProv2 = 5400
 Link: VM2_Type8 = 1 -> VM2_offer_CPU = 17
 Link: VM2_Type8 = 1 -> VM2_offer_Memory = 117000
 Link: VM2_Type8 = 1 -> VM2_offer_Storage = 24000
 Link: VM2_Type9 = 1 -> PriceProv2 = 3079
 Link: VM2_Type9 = 1 -> VM2_offer_CPU = 16
 Link: VM2_Type9 = 1 -> VM2_offer_Memory = 122000
 Link: VM2_Type9 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type10 = 1 -> PriceProv2 = 1470
 Link: VM2_Type10 = 1 -> VM2_offer_CPU = 8
 Link: VM2_Type10 = 1 -> VM2_offer_Memory = 61000
 Link: VM2_Type10 = 1 -> VM2_offer_Storage = 6000
 Link: VM2_Type11 = 1 -> PriceProv2 = 1301
 Link: VM2_Type11 = 1 -> VM2_offer_CPU = 8
 Link: VM2_Type11 = 1 -> VM2_offer_Memory = 68400
 Link: VM2_Type11 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type12 = 1 -> PriceProv2 = 1288
 Link: VM2_Type12 = 1 -> VM2_offer_CPU = 8
 Link: VM2_Type12 = 1 -> VM2_offer_Memory = 68400
 Link: VM2_Type12 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type13 = 1 -> PriceProv2 = 402
 Link: VM2_Type13 = 1 -> VM2_offer_CPU = 4
 Link: VM2_Type13 = 1 -> VM2_offer_Memory = 15000
 Link: VM2_Type13 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type14 = 1 -> PriceProv2 = 827
 Link: VM2_Type14 = 1 -> VM2_offer_CPU = 4
 Link: VM2_Type14 = 1 -> VM2_offer_Memory = 30500
 Link: VM2_Type14 = 1 -> VM2_offer_Storage = 3000
 Link: VM2_Type15 = 1 -> PriceProv2 = 379
 Link: VM2_Type15 = 1 -> VM2_offer_CPU = 4
 Link: VM2_Type15 = 1 -> VM2_offer_Memory = 30500
 Link: VM2_Type15 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type16 = 1 -> PriceProv2 = 146
 Link: VM2_Type16 = 1 -> VM2_offer_CPU = 2
 Link: VM2_Type16 = 1 -> VM2_offer_Memory = 7500
 Link: VM2_Type16 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type17 = 1 -> PriceProv2 = 128
 Link: VM2_Type17 = 1 -> VM2_offer_CPU = 2
 Link: VM2_Type17 = 1 -> VM2_offer_Memory = 3750
 Link: VM2_Type17 = 1 -> VM2_offer_Storage = 2000
 Link: VM2_Type18 = 1 -> PriceProv2 = 58
 Link: VM2_Type18 = 1 -> VM2_offer_CPU = 1
 Link: VM2_Type18 = 1 -> VM2_offer_Memory = 1700
 Link: VM2_Type18 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type19 = 1 -> PriceProv2 = 93
 Link: VM2_Type19 = 1 -> VM2_offer_CPU = 1
 Link: VM2_Type19 = 1 -> VM2_offer_Memory = 3750
 Link: VM2_Type19 = 1 -> VM2_offer_Storage = 1000
 Link: VM2_Type20 = 1 -> PriceProv2 = 98
 Link: VM2_Type20 = 1 -> VM2_offer_CPU = 1
 Link: VM2_Type20 = 1 -> VM2_offer_Memory = 3750
 Link: VM2_Type20 = 1 -> VM2_offer_Storage = 1000
 Link: VM3_Type1 = 1 -> PriceProv3 = 8403
 Link: VM3_Type1 = 1 -> VM3_offer_CPU = 64
 Link: VM3_Type1 = 1 -> VM3_offer_Memory = 976000
 Link: VM3_Type1 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type2 = 1 -> PriceProv3 = 9152
 Link: VM3_Type2 = 1 -> VM3_offer_CPU = 64
 Link: VM3_Type2 = 1 -> VM3_offer_Memory = 488000
 Link: VM3_Type2 = 1 -> VM3_offer_Storage = 8000
 Link: VM3_Type3 = 1 -> PriceProv3 = 16000
 Link: VM3_Type3 = 1 -> VM3_offer_CPU = 64
 Link: VM3_Type3 = 1 -> VM3_offer_Memory = 1952
 Link: VM3_Type3 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type4 = 1 -> PriceProv3 = 4105
 Link: VM3_Type4 = 1 -> VM3_offer_CPU = 32
 Link: VM3_Type4 = 1 -> VM3_offer_Memory = 244000
 Link: VM3_Type4 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type5 = 1 -> PriceProv3 = 4576
 Link: VM3_Type5 = 1 -> VM3_offer_CPU = 32
 Link: VM3_Type5 = 1 -> VM3_offer_Memory = 244000
 Link: VM3_Type5 = 1 -> VM3_offer_Storage = 4000
 Link: VM3_Type6 = 1 -> PriceProv3 = 1373
 Link: VM3_Type6 = 1 -> VM3_offer_CPU = 16
 Link: VM3_Type6 = 1 -> VM3_offer_Memory = 122000
 Link: VM3_Type6 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type7 = 1 -> PriceProv3 = 1430
 Link: VM3_Type7 = 1 -> VM3_offer_CPU = 16
 Link: VM3_Type7 = 1 -> VM3_offer_Memory = 30000
 Link: VM3_Type7 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type8 = 1 -> PriceProv3 = 5400
 Link: VM3_Type8 = 1 -> VM3_offer_CPU = 17
 Link: VM3_Type8 = 1 -> VM3_offer_Memory = 117000
 Link: VM3_Type8 = 1 -> VM3_offer_Storage = 24000
 Link: VM3_Type9 = 1 -> PriceProv3 = 3079
 Link: VM3_Type9 = 1 -> VM3_offer_CPU = 16
 Link: VM3_Type9 = 1 -> VM3_offer_Memory = 122000
 Link: VM3_Type9 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type10 = 1 -> PriceProv3 = 1470
 Link: VM3_Type10 = 1 -> VM3_offer_CPU = 8
 Link: VM3_Type10 = 1 -> VM3_offer_Memory = 61000
 Link: VM3_Type10 = 1 -> VM3_offer_Storage = 6000
 Link: VM3_Type11 = 1 -> PriceProv3 = 1301
 Link: VM3_Type11 = 1 -> VM3_offer_CPU = 8
 Link: VM3_Type11 = 1 -> VM3_offer_Memory = 68400
 Link: VM3_Type11 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type12 = 1 -> PriceProv3 = 1288
 Link: VM3_Type12 = 1 -> VM3_offer_CPU = 8
 Link: VM3_Type12 = 1 -> VM3_offer_Memory = 68400
 Link: VM3_Type12 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type13 = 1 -> PriceProv3 = 402
 Link: VM3_Type13 = 1 -> VM3_offer_CPU = 4
 Link: VM3_Type13 = 1 -> VM3_offer_Memory = 15000
 Link: VM3_Type13 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type14 = 1 -> PriceProv3 = 827
 Link: VM3_Type14 = 1 -> VM3_offer_CPU = 4
 Link: VM3_Type14 = 1 -> VM3_offer_Memory = 30500
 Link: VM3_Type14 = 1 -> VM3_offer_Storage = 3000
 Link: VM3_Type15 = 1 -> PriceProv3 = 379
 Link: VM3_Type15 = 1 -> VM3_offer_CPU = 4
 Link: VM3_Type15 = 1 -> VM3_offer_Memory = 30500
 Link: VM3_Type15 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type16 = 1 -> PriceProv3 = 146
 Link: VM3_Type16 = 1 -> VM3_offer_CPU = 2
 Link: VM3_Type16 = 1 -> VM3_offer_Memory = 7500
 Link: VM3_Type16 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type17 = 1 -> PriceProv3 = 128
 Link: VM3_Type17 = 1 -> VM3_offer_CPU = 2
 Link: VM3_Type17 = 1 -> VM3_offer_Memory = 3750
 Link: VM3_Type17 = 1 -> VM3_offer_Storage = 2000
 Link: VM3_Type18 = 1 -> PriceProv3 = 58
 Link: VM3_Type18 = 1 -> VM3_offer_CPU = 1
 Link: VM3_Type18 = 1 -> VM3_offer_Memory = 1700
 Link: VM3_Type18 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type19 = 1 -> PriceProv3 = 93
 Link: VM3_Type19 = 1 -> VM3_offer_CPU = 1
 Link: VM3_Type19 = 1 -> VM3_offer_Memory = 3750
 Link: VM3_Type19 = 1 -> VM3_offer_Storage = 1000
 Link: VM3_Type20 = 1 -> PriceProv3 = 98
 Link: VM3_Type20 = 1 -> VM3_offer_CPU = 1
 Link: VM3_Type20 = 1 -> VM3_offer_Memory = 3750
 Link: VM3_Type20 = 1 -> VM3_offer_Storage = 1000
 Link: VM4_Type1 = 1 -> PriceProv4 = 8403
 Link: VM4_Type1 = 1 -> VM4_offer_CPU = 64
 Link: VM4_Type1 = 1 -> VM4_offer_Memory = 976000
 Link: VM4_Type1 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type2 = 1 -> PriceProv4 = 9152
 Link: VM4_Type2 = 1 -> VM4_offer_CPU = 64
 Link: VM4_Type2 = 1 -> VM4_offer_Memory = 488000
 Link: VM4_Type2 = 1 -> VM4_offer_Storage = 8000
 Link: VM4_Type3 = 1 -> PriceProv4 = 16000
 Link: VM4_Type3 = 1 -> VM4_offer_CPU = 64
 Link: VM4_Type3 = 1 -> VM4_offer_Memory = 1952
 Link: VM4_Type3 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type4 = 1 -> PriceProv4 = 4105
 Link: VM4_Type4 = 1 -> VM4_offer_CPU = 32
 Link: VM4_Type4 = 1 -> VM4_offer_Memory = 244000
 Link: VM4_Type4 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type5 = 1 -> PriceProv4 = 4576
 Link: VM4_Type5 = 1 -> VM4_offer_CPU = 32
 Link: VM4_Type5 = 1 -> VM4_offer_Memory = 244000
 Link: VM4_Type5 = 1 -> VM4_offer_Storage = 4000
 Link: VM4_Type6 = 1 -> PriceProv4 = 1373
 Link: VM4_Type6 = 1 -> VM4_offer_CPU = 16
 Link: VM4_Type6 = 1 -> VM4_offer_Memory = 122000
 Link: VM4_Type6 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type7 = 1 -> PriceProv4 = 1430
 Link: VM4_Type7 = 1 -> VM4_offer_CPU = 16
 Link: VM4_Type7 = 1 -> VM4_offer_Memory = 30000
 Link: VM4_Type7 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type8 = 1 -> PriceProv4 = 5400
 Link: VM4_Type8 = 1 -> VM4_offer_CPU = 17
 Link: VM4_Type8 = 1 -> VM4_offer_Memory = 117000
 Link: VM4_Type8 = 1 -> VM4_offer_Storage = 24000
 Link: VM4_Type9 = 1 -> PriceProv4 = 3079
 Link: VM4_Type9 = 1 -> VM4_offer_CPU = 16
 Link: VM4_Type9 = 1 -> VM4_offer_Memory = 122000
 Link: VM4_Type9 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type10 = 1 -> PriceProv4 = 1470
 Link: VM4_Type10 = 1 -> VM4_offer_CPU = 8
 Link: VM4_Type10 = 1 -> VM4_offer_Memory = 61000
 Link: VM4_Type10 = 1 -> VM4_offer_Storage = 6000
 Link: VM4_Type11 = 1 -> PriceProv4 = 1301
 Link: VM4_Type11 = 1 -> VM4_offer_CPU = 8
 Link: VM4_Type11 = 1 -> VM4_offer_Memory = 68400
 Link: VM4_Type11 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type12 = 1 -> PriceProv4 = 1288
 Link: VM4_Type12 = 1 -> VM4_offer_CPU = 8
 Link: VM4_Type12 = 1 -> VM4_offer_Memory = 68400
 Link: VM4_Type12 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type13 = 1 -> PriceProv4 = 402
 Link: VM4_Type13 = 1 -> VM4_offer_CPU = 4
 Link: VM4_Type13 = 1 -> VM4_offer_Memory = 15000
 Link: VM4_Type13 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type14 = 1 -> PriceProv4 = 827
 Link: VM4_Type14 = 1 -> VM4_offer_CPU = 4
 Link: VM4_Type14 = 1 -> VM4_offer_Memory = 30500
 Link: VM4_Type14 = 1 -> VM4_offer_Storage = 3000
 Link: VM4_Type15 = 1 -> PriceProv4 = 379
 Link: VM4_Type15 = 1 -> VM4_offer_CPU = 4
 Link: VM4_Type15 = 1 -> VM4_offer_Memory = 30500
 Link: VM4_Type15 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type16 = 1 -> PriceProv4 = 146
 Link: VM4_Type16 = 1 -> VM4_offer_CPU = 2
 Link: VM4_Type16 = 1 -> VM4_offer_Memory = 7500
 Link: VM4_Type16 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type17 = 1 -> PriceProv4 = 128
 Link: VM4_Type17 = 1 -> VM4_offer_CPU = 2
 Link: VM4_Type17 = 1 -> VM4_offer_Memory = 3750
 Link: VM4_Type17 = 1 -> VM4_offer_Storage = 2000
 Link: VM4_Type18 = 1 -> PriceProv4 = 58
 Link: VM4_Type18 = 1 -> VM4_offer_CPU = 1
 Link: VM4_Type18 = 1 -> VM4_offer_Memory = 1700
 Link: VM4_Type18 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type19 = 1 -> PriceProv4 = 93
 Link: VM4_Type19 = 1 -> VM4_offer_CPU = 1
 Link: VM4_Type19 = 1 -> VM4_offer_Memory = 3750
 Link: VM4_Type19 = 1 -> VM4_offer_Storage = 1000
 Link: VM4_Type20 = 1 -> PriceProv4 = 98
 Link: VM4_Type20 = 1 -> VM4_offer_CPU = 1
 Link: VM4_Type20 = 1 -> VM4_offer_Memory = 3750
 Link: VM4_Type20 = 1 -> VM4_offer_Storage = 1000
 Link: VM5_Type1 = 1 -> PriceProv5 = 8403
 Link: VM5_Type1 = 1 -> VM5_offer_CPU = 64
 Link: VM5_Type1 = 1 -> VM5_offer_Memory = 976000
 Link: VM5_Type1 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type2 = 1 -> PriceProv5 = 9152
 Link: VM5_Type2 = 1 -> VM5_offer_CPU = 64
 Link: VM5_Type2 = 1 -> VM5_offer_Memory = 488000
 Link: VM5_Type2 = 1 -> VM5_offer_Storage = 8000
 Link: VM5_Type3 = 1 -> PriceProv5 = 16000
 Link: VM5_Type3 = 1 -> VM5_offer_CPU = 64
 Link: VM5_Type3 = 1 -> VM5_offer_Memory = 1952
 Link: VM5_Type3 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type4 = 1 -> PriceProv5 = 4105
 Link: VM5_Type4 = 1 -> VM5_offer_CPU = 32
 Link: VM5_Type4 = 1 -> VM5_offer_Memory = 244000
 Link: VM5_Type4 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type5 = 1 -> PriceProv5 = 4576
 Link: VM5_Type5 = 1 -> VM5_offer_CPU = 32
 Link: VM5_Type5 = 1 -> VM5_offer_Memory = 244000
 Link: VM5_Type5 = 1 -> VM5_offer_Storage = 4000
 Link: VM5_Type6 = 1 -> PriceProv5 = 1373
 Link: VM5_Type6 = 1 -> VM5_offer_CPU = 16
 Link: VM5_Type6 = 1 -> VM5_offer_Memory = 122000
 Link: VM5_Type6 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type7 = 1 -> PriceProv5 = 1430
 Link: VM5_Type7 = 1 -> VM5_offer_CPU = 16
 Link: VM5_Type7 = 1 -> VM5_offer_Memory = 30000
 Link: VM5_Type7 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type8 = 1 -> PriceProv5 = 5400
 Link: VM5_Type8 = 1 -> VM5_offer_CPU = 17
 Link: VM5_Type8 = 1 -> VM5_offer_Memory = 117000
 Link: VM5_Type8 = 1 -> VM5_offer_Storage = 24000
 Link: VM5_Type9 = 1 -> PriceProv5 = 3079
 Link: VM5_Type9 = 1 -> VM5_offer_CPU = 16
 Link: VM5_Type9 = 1 -> VM5_offer_Memory = 122000
 Link: VM5_Type9 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type10 = 1 -> PriceProv5 = 1470
 Link: VM5_Type10 = 1 -> VM5_offer_CPU = 8
 Link: VM5_Type10 = 1 -> VM5_offer_Memory = 61000
 Link: VM5_Type10 = 1 -> VM5_offer_Storage = 6000
 Link: VM5_Type11 = 1 -> PriceProv5 = 1301
 Link: VM5_Type11 = 1 -> VM5_offer_CPU = 8
 Link: VM5_Type11 = 1 -> VM5_offer_Memory = 68400
 Link: VM5_Type11 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type12 = 1 -> PriceProv5 = 1288
 Link: VM5_Type12 = 1 -> VM5_offer_CPU = 8
 Link: VM5_Type12 = 1 -> VM5_offer_Memory = 68400
 Link: VM5_Type12 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type13 = 1 -> PriceProv5 = 402
 Link: VM5_Type13 = 1 -> VM5_offer_CPU = 4
 Link: VM5_Type13 = 1 -> VM5_offer_Memory = 15000
 Link: VM5_Type13 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type14 = 1 -> PriceProv5 = 827
 Link: VM5_Type14 = 1 -> VM5_offer_CPU = 4
 Link: VM5_Type14 = 1 -> VM5_offer_Memory = 30500
 Link: VM5_Type14 = 1 -> VM5_offer_Storage = 3000
 Link: VM5_Type15 = 1 -> PriceProv5 = 379
 Link: VM5_Type15 = 1 -> VM5_offer_CPU = 4
 Link: VM5_Type15 = 1 -> VM5_offer_Memory = 30500
 Link: VM5_Type15 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type16 = 1 -> PriceProv5 = 146
 Link: VM5_Type16 = 1 -> VM5_offer_CPU = 2
 Link: VM5_Type16 = 1 -> VM5_offer_Memory = 7500
 Link: VM5_Type16 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type17 = 1 -> PriceProv5 = 128
 Link: VM5_Type17 = 1 -> VM5_offer_CPU = 2
 Link: VM5_Type17 = 1 -> VM5_offer_Memory = 3750
 Link: VM5_Type17 = 1 -> VM5_offer_Storage = 2000
 Link: VM5_Type18 = 1 -> PriceProv5 = 58
 Link: VM5_Type18 = 1 -> VM5_offer_CPU = 1
 Link: VM5_Type18 = 1 -> VM5_offer_Memory = 1700
 Link: VM5_Type18 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type19 = 1 -> PriceProv5 = 93
 Link: VM5_Type19 = 1 -> VM5_offer_CPU = 1
 Link: VM5_Type19 = 1 -> VM5_offer_Memory = 3750
 Link: VM5_Type19 = 1 -> VM5_offer_Storage = 1000
 Link: VM5_Type20 = 1 -> PriceProv5 = 98
 Link: VM5_Type20 = 1 -> VM5_offer_CPU = 1
 Link: VM5_Type20 = 1 -> VM5_offer_Memory = 3750
 Link: VM5_Type20 = 1 -> VM5_offer_Storage = 1000
 Link_Deactivation_1: VM_1 = 0 -> PriceProv1 = 0
 Link_Deactivation_2: VM_2 = 0 -> PriceProv2 = 0
 Link_Deactivation_3: VM_3 = 0 -> PriceProv3 = 0
 Link_Deactivation_4: VM_4 = 0 -> PriceProv4 = 0
 Link_Deactivation_5: VM_5 = 0 -> PriceProv5 = 0
Bounds
Binaries
 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5
 C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5
 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 VM_1 VM1_Type1 VM1_Type2 VM1_Type3
 VM1_Type4 VM1_Type5 VM1_Type6 VM1_Type7 VM1_Type8 VM1_Type9 VM1_Type10
 VM1_Type11 VM1_Type12 VM1_Type13 VM1_Type14 VM1_Type15 VM1_Type16
 VM1_Type17 VM1_Type18 VM1_Type19 VM1_Type20 VM_2 VM2_Type1 VM2_Type2
 VM2_Type3 VM2_Type4 VM2_Type5 VM2_Type6 VM2_Type7 VM2_Type8 VM2_Type9
 VM2_Type10 VM2_Type11 VM2_Type12 VM2_Type13 VM2_Type14 VM2_Type15
 VM2_Type16 VM2_Type17 VM2_Type18 VM2_Type19 VM2_Type20 VM_3 VM3_Type1
 VM3_Type2 VM3_Type3 VM3_Type4 VM3_Type5 VM3_Type6 VM3_Type7 VM3_Type8
 VM3_Type9 VM3_Type10 VM3_Type11 VM3_Type12 VM3_Type13 VM3_Type14
 VM3_Type15 VM3_Type16 VM3_Type17 VM3_Type18 VM3_Type19 VM3_Type20 VM_4
 VM4_Type1 VM4_Type2 VM4_Type3 VM4_Type4 VM4_Type5 VM4_Type6 VM4_Type7
 VM4_Type8 VM4_Type9 VM4_Type10 VM4_Type11 VM4_Type12 VM4_Type13 VM4_Type14
 VM4_Type15 VM4_Type16 VM4_Type17 VM4_Type18 VM4_Type19 VM4_Type20 VM_5
 VM5_Type1 VM5_Type2 VM5_Type3 VM5_Type4 VM5_Type5 VM5_Type6 VM5_Type7
 VM5_Type8 VM5_Type9 VM5_Type10 VM5_Type11 VM5_Type12 VM5_Type13 VM5_Type14
 VM5_Type15 VM5_Type16 VM5_Type17 VM5_Type18 VM5_Type19 VM5_Type20
Generals
 VM1_offer_CPU VM1_offer_Memory VM1_offer_Storage VM2_offer_CPU
 VM2_offer_Memory VM2_offer_Storage VM3_offer_CPU VM3_offer_Memory
 VM3_offer_Storage VM4_offer_CPU VM4_offer_Memory VM4_offer_Storage
 VM5_offer_CPU VM5_offer_Memory VM5_offer_Storage
General Constraints
 VM_Active_Logic_1: VM_1 = OR ( VM1_Type1 , VM1_Type2 , VM1_Type3 ,
   VM1_Type4 , VM1_Type5 , VM1_Type6 , VM1_Type7 , VM1_Type8 , VM1_Type9 ,
   VM1_Type10 , VM1_Type11 , VM1_Type12 , VM1_Type13 , VM1_Type14 ,
   VM1_Type15 , VM1_Type16 , VM1_Type17 , VM1_Type18 , VM1_Type19 ,
   VM1_Type20 )
 VM_Active_Logic_2: VM_2 = OR ( VM2_Type1 , VM2_Type2 , VM2_Type3 ,
   VM2_Type4 , VM2_Type5 , VM2_Type6 , VM2_Type7 , VM2_Type8 , VM2_Type9 ,
   VM2_Type10 , VM2_Type11 , VM2_Type12 , VM2_Type13 , VM2_Type14 ,
   VM2_Type15 , VM2_Type16 , VM2_Type17 , VM2_Type18 , VM2_Type19 ,
   VM2_Type20 )
 VM_Active_Logic_3: VM_3 = OR ( VM3_Type1 , VM3_Type2 , VM3_Type3 ,
   VM3_Type4 , VM3_Type5 , VM3_Type6 , VM3_Type7 , VM3_Type8 , VM3_Type9 ,
   VM3_Type10 , VM3_Type11 , VM3_Type12 , VM3_Type13 , VM3_Type14 ,
   VM3_Type15 , VM3_Type16 , VM3_Type17 , VM3_Type18 , VM3_Type19 ,
   VM3_Type20 )
 VM_Active_Logic_4: VM_4 = OR ( VM4_Type1 , VM4_Type2 , VM4_Type3 ,
   VM4_Type4 , VM4_Type5 , VM4_Type6 , VM4_Type7 , VM4_Type8 , VM4_Type9 ,
   VM4_Type10 , VM4_Type11 , VM4_Type12 , VM4_Type13 , VM4_Type14 ,
   VM4_Type15 , VM4_Type16 , VM4_Type17 , VM4_Type18 , VM4_Type19 ,
   VM4_Type20 )
 VM_Active_Logic_5: VM_5 = OR ( VM5_Type1 , VM5_Type2 , VM5_Type3 ,
   VM5_Type4 , VM5_Type5 , VM5_Type6 , VM5_Type7 , VM5_Type8 , VM5_Type9 ,
   VM5_Type10 , VM5_Type11 , VM5_Type12 , VM5_Type13 , VM5_Type14 ,
   VM5_Type15 , VM5_Type16 , VM5_Type17 , VM5_Type18 , VM5_Type19 ,
   VM5_Type20 )
End
