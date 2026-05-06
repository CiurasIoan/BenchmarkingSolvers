\ Model Gurobi_deployment
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x68bfebe8ee2306aa
Minimize
  PriceProv1 + PriceProv2 + PriceProv3 + PriceProv4 + PriceProv5
Subject To
 R0: - VM_1 + vm1_type1 + vm1_type2 + vm1_type3 + vm1_type4 + vm1_type5
   + vm1_type6 + vm1_type7 + vm1_type8 + vm1_type9 + vm1_type10
   + vm1_type11 + vm1_type12 + vm1_type13 + vm1_type14 + vm1_type15
   + vm1_type16 + vm1_type17 + vm1_type18 + vm1_type19 + vm1_type20 = 0
 Type_VM1: VM1_Type - vm1_type1 - 2 vm1_type2 - 3 vm1_type3 - 4 vm1_type4
   - 5 vm1_type5 - 6 vm1_type6 - 7 vm1_type7 - 8 vm1_type8 - 9 vm1_type9
   - 10 vm1_type10 - 11 vm1_type11 - 12 vm1_type12 - 13 vm1_type13
   - 14 vm1_type14 - 15 vm1_type15 - 16 vm1_type16 - 17 vm1_type17
   - 18 vm1_type18 - 19 vm1_type19 - 20 vm1_type20 = 0
 R2: - VM_2 + vm2_type1 + vm2_type2 + vm2_type3 + vm2_type4 + vm2_type5
   + vm2_type6 + vm2_type7 + vm2_type8 + vm2_type9 + vm2_type10
   + vm2_type11 + vm2_type12 + vm2_type13 + vm2_type14 + vm2_type15
   + vm2_type16 + vm2_type17 + vm2_type18 + vm2_type19 + vm2_type20 = 0
 Type_VM2: VM2_Type - vm2_type1 - 2 vm2_type2 - 3 vm2_type3 - 4 vm2_type4
   - 5 vm2_type5 - 6 vm2_type6 - 7 vm2_type7 - 8 vm2_type8 - 9 vm2_type9
   - 10 vm2_type10 - 11 vm2_type11 - 12 vm2_type12 - 13 vm2_type13
   - 14 vm2_type14 - 15 vm2_type15 - 16 vm2_type16 - 17 vm2_type17
   - 18 vm2_type18 - 19 vm2_type19 - 20 vm2_type20 = 0
 R4: - VM_3 + vm3_type1 + vm3_type2 + vm3_type3 + vm3_type4 + vm3_type5
   + vm3_type6 + vm3_type7 + vm3_type8 + vm3_type9 + vm3_type10
   + vm3_type11 + vm3_type12 + vm3_type13 + vm3_type14 + vm3_type15
   + vm3_type16 + vm3_type17 + vm3_type18 + vm3_type19 + vm3_type20 = 0
 Type_VM3: VM3_Type - vm3_type1 - 2 vm3_type2 - 3 vm3_type3 - 4 vm3_type4
   - 5 vm3_type5 - 6 vm3_type6 - 7 vm3_type7 - 8 vm3_type8 - 9 vm3_type9
   - 10 vm3_type10 - 11 vm3_type11 - 12 vm3_type12 - 13 vm3_type13
   - 14 vm3_type14 - 15 vm3_type15 - 16 vm3_type16 - 17 vm3_type17
   - 18 vm3_type18 - 19 vm3_type19 - 20 vm3_type20 = 0
 R6: - VM_4 + vm4_type1 + vm4_type2 + vm4_type3 + vm4_type4 + vm4_type5
   + vm4_type6 + vm4_type7 + vm4_type8 + vm4_type9 + vm4_type10
   + vm4_type11 + vm4_type12 + vm4_type13 + vm4_type14 + vm4_type15
   + vm4_type16 + vm4_type17 + vm4_type18 + vm4_type19 + vm4_type20 = 0
 Type_VM4: VM4_Type - vm4_type1 - 2 vm4_type2 - 3 vm4_type3 - 4 vm4_type4
   - 5 vm4_type5 - 6 vm4_type6 - 7 vm4_type7 - 8 vm4_type8 - 9 vm4_type9
   - 10 vm4_type10 - 11 vm4_type11 - 12 vm4_type12 - 13 vm4_type13
   - 14 vm4_type14 - 15 vm4_type15 - 16 vm4_type16 - 17 vm4_type17
   - 18 vm4_type18 - 19 vm4_type19 - 20 vm4_type20 = 0
 R8: - VM_5 + vm5_type1 + vm5_type2 + vm5_type3 + vm5_type4 + vm5_type5
   + vm5_type6 + vm5_type7 + vm5_type8 + vm5_type9 + vm5_type10
   + vm5_type11 + vm5_type12 + vm5_type13 + vm5_type14 + vm5_type15
   + vm5_type16 + vm5_type17 + vm5_type18 + vm5_type19 + vm5_type20 = 0
 Type_VM5: VM5_Type - vm5_type1 - 2 vm5_type2 - 3 vm5_type3 - 4 vm5_type4
   - 5 vm5_type5 - 6 vm5_type6 - 7 vm5_type7 - 8 vm5_type8 - 9 vm5_type9
   - 10 vm5_type10 - 11 vm5_type11 - 12 vm5_type12 - 13 vm5_type13
   - 14 vm5_type14 - 15 vm5_type15 - 16 vm5_type16 - 17 vm5_type17
   - 18 vm5_type18 - 19 vm5_type19 - 20 vm5_type20 = 0
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
 Link: vm1_type1 = 1 -> PriceProv1 = 8403
 Link: vm1_type1 = 1 -> VM1_offer_CPU = 64
 Link: vm1_type1 = 1 -> VM1_offer_Memory = 976000
 Link: vm1_type1 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type2 = 1 -> PriceProv1 = 9152
 Link: vm1_type2 = 1 -> VM1_offer_CPU = 64
 Link: vm1_type2 = 1 -> VM1_offer_Memory = 488000
 Link: vm1_type2 = 1 -> VM1_offer_Storage = 8000
 Link: vm1_type3 = 1 -> PriceProv1 = 16000
 Link: vm1_type3 = 1 -> VM1_offer_CPU = 64
 Link: vm1_type3 = 1 -> VM1_offer_Memory = 1952
 Link: vm1_type3 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type4 = 1 -> PriceProv1 = 4105
 Link: vm1_type4 = 1 -> VM1_offer_CPU = 32
 Link: vm1_type4 = 1 -> VM1_offer_Memory = 244000
 Link: vm1_type4 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type5 = 1 -> PriceProv1 = 4576
 Link: vm1_type5 = 1 -> VM1_offer_CPU = 32
 Link: vm1_type5 = 1 -> VM1_offer_Memory = 244000
 Link: vm1_type5 = 1 -> VM1_offer_Storage = 4000
 Link: vm1_type6 = 1 -> PriceProv1 = 1373
 Link: vm1_type6 = 1 -> VM1_offer_CPU = 16
 Link: vm1_type6 = 1 -> VM1_offer_Memory = 122000
 Link: vm1_type6 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type7 = 1 -> PriceProv1 = 1430
 Link: vm1_type7 = 1 -> VM1_offer_CPU = 16
 Link: vm1_type7 = 1 -> VM1_offer_Memory = 30000
 Link: vm1_type7 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type8 = 1 -> PriceProv1 = 5400
 Link: vm1_type8 = 1 -> VM1_offer_CPU = 17
 Link: vm1_type8 = 1 -> VM1_offer_Memory = 117000
 Link: vm1_type8 = 1 -> VM1_offer_Storage = 24000
 Link: vm1_type9 = 1 -> PriceProv1 = 3079
 Link: vm1_type9 = 1 -> VM1_offer_CPU = 16
 Link: vm1_type9 = 1 -> VM1_offer_Memory = 122000
 Link: vm1_type9 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type10 = 1 -> PriceProv1 = 1470
 Link: vm1_type10 = 1 -> VM1_offer_CPU = 8
 Link: vm1_type10 = 1 -> VM1_offer_Memory = 61000
 Link: vm1_type10 = 1 -> VM1_offer_Storage = 6000
 Link: vm1_type11 = 1 -> PriceProv1 = 1301
 Link: vm1_type11 = 1 -> VM1_offer_CPU = 8
 Link: vm1_type11 = 1 -> VM1_offer_Memory = 68400
 Link: vm1_type11 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type12 = 1 -> PriceProv1 = 1288
 Link: vm1_type12 = 1 -> VM1_offer_CPU = 8
 Link: vm1_type12 = 1 -> VM1_offer_Memory = 68400
 Link: vm1_type12 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type13 = 1 -> PriceProv1 = 402
 Link: vm1_type13 = 1 -> VM1_offer_CPU = 4
 Link: vm1_type13 = 1 -> VM1_offer_Memory = 15000
 Link: vm1_type13 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type14 = 1 -> PriceProv1 = 827
 Link: vm1_type14 = 1 -> VM1_offer_CPU = 4
 Link: vm1_type14 = 1 -> VM1_offer_Memory = 30500
 Link: vm1_type14 = 1 -> VM1_offer_Storage = 3000
 Link: vm1_type15 = 1 -> PriceProv1 = 379
 Link: vm1_type15 = 1 -> VM1_offer_CPU = 4
 Link: vm1_type15 = 1 -> VM1_offer_Memory = 30500
 Link: vm1_type15 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type16 = 1 -> PriceProv1 = 146
 Link: vm1_type16 = 1 -> VM1_offer_CPU = 2
 Link: vm1_type16 = 1 -> VM1_offer_Memory = 7500
 Link: vm1_type16 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type17 = 1 -> PriceProv1 = 128
 Link: vm1_type17 = 1 -> VM1_offer_CPU = 2
 Link: vm1_type17 = 1 -> VM1_offer_Memory = 3750
 Link: vm1_type17 = 1 -> VM1_offer_Storage = 2000
 Link: vm1_type18 = 1 -> PriceProv1 = 58
 Link: vm1_type18 = 1 -> VM1_offer_CPU = 1
 Link: vm1_type18 = 1 -> VM1_offer_Memory = 1700
 Link: vm1_type18 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type19 = 1 -> PriceProv1 = 93
 Link: vm1_type19 = 1 -> VM1_offer_CPU = 1
 Link: vm1_type19 = 1 -> VM1_offer_Memory = 3750
 Link: vm1_type19 = 1 -> VM1_offer_Storage = 1000
 Link: vm1_type20 = 1 -> PriceProv1 = 98
 Link: vm1_type20 = 1 -> VM1_offer_CPU = 1
 Link: vm1_type20 = 1 -> VM1_offer_Memory = 3750
 Link: vm1_type20 = 1 -> VM1_offer_Storage = 1000
 Link: vm2_type1 = 1 -> PriceProv2 = 8403
 Link: vm2_type1 = 1 -> VM2_offer_CPU = 64
 Link: vm2_type1 = 1 -> VM2_offer_Memory = 976000
 Link: vm2_type1 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type2 = 1 -> PriceProv2 = 9152
 Link: vm2_type2 = 1 -> VM2_offer_CPU = 64
 Link: vm2_type2 = 1 -> VM2_offer_Memory = 488000
 Link: vm2_type2 = 1 -> VM2_offer_Storage = 8000
 Link: vm2_type3 = 1 -> PriceProv2 = 16000
 Link: vm2_type3 = 1 -> VM2_offer_CPU = 64
 Link: vm2_type3 = 1 -> VM2_offer_Memory = 1952
 Link: vm2_type3 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type4 = 1 -> PriceProv2 = 4105
 Link: vm2_type4 = 1 -> VM2_offer_CPU = 32
 Link: vm2_type4 = 1 -> VM2_offer_Memory = 244000
 Link: vm2_type4 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type5 = 1 -> PriceProv2 = 4576
 Link: vm2_type5 = 1 -> VM2_offer_CPU = 32
 Link: vm2_type5 = 1 -> VM2_offer_Memory = 244000
 Link: vm2_type5 = 1 -> VM2_offer_Storage = 4000
 Link: vm2_type6 = 1 -> PriceProv2 = 1373
 Link: vm2_type6 = 1 -> VM2_offer_CPU = 16
 Link: vm2_type6 = 1 -> VM2_offer_Memory = 122000
 Link: vm2_type6 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type7 = 1 -> PriceProv2 = 1430
 Link: vm2_type7 = 1 -> VM2_offer_CPU = 16
 Link: vm2_type7 = 1 -> VM2_offer_Memory = 30000
 Link: vm2_type7 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type8 = 1 -> PriceProv2 = 5400
 Link: vm2_type8 = 1 -> VM2_offer_CPU = 17
 Link: vm2_type8 = 1 -> VM2_offer_Memory = 117000
 Link: vm2_type8 = 1 -> VM2_offer_Storage = 24000
 Link: vm2_type9 = 1 -> PriceProv2 = 3079
 Link: vm2_type9 = 1 -> VM2_offer_CPU = 16
 Link: vm2_type9 = 1 -> VM2_offer_Memory = 122000
 Link: vm2_type9 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type10 = 1 -> PriceProv2 = 1470
 Link: vm2_type10 = 1 -> VM2_offer_CPU = 8
 Link: vm2_type10 = 1 -> VM2_offer_Memory = 61000
 Link: vm2_type10 = 1 -> VM2_offer_Storage = 6000
 Link: vm2_type11 = 1 -> PriceProv2 = 1301
 Link: vm2_type11 = 1 -> VM2_offer_CPU = 8
 Link: vm2_type11 = 1 -> VM2_offer_Memory = 68400
 Link: vm2_type11 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type12 = 1 -> PriceProv2 = 1288
 Link: vm2_type12 = 1 -> VM2_offer_CPU = 8
 Link: vm2_type12 = 1 -> VM2_offer_Memory = 68400
 Link: vm2_type12 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type13 = 1 -> PriceProv2 = 402
 Link: vm2_type13 = 1 -> VM2_offer_CPU = 4
 Link: vm2_type13 = 1 -> VM2_offer_Memory = 15000
 Link: vm2_type13 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type14 = 1 -> PriceProv2 = 827
 Link: vm2_type14 = 1 -> VM2_offer_CPU = 4
 Link: vm2_type14 = 1 -> VM2_offer_Memory = 30500
 Link: vm2_type14 = 1 -> VM2_offer_Storage = 3000
 Link: vm2_type15 = 1 -> PriceProv2 = 379
 Link: vm2_type15 = 1 -> VM2_offer_CPU = 4
 Link: vm2_type15 = 1 -> VM2_offer_Memory = 30500
 Link: vm2_type15 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type16 = 1 -> PriceProv2 = 146
 Link: vm2_type16 = 1 -> VM2_offer_CPU = 2
 Link: vm2_type16 = 1 -> VM2_offer_Memory = 7500
 Link: vm2_type16 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type17 = 1 -> PriceProv2 = 128
 Link: vm2_type17 = 1 -> VM2_offer_CPU = 2
 Link: vm2_type17 = 1 -> VM2_offer_Memory = 3750
 Link: vm2_type17 = 1 -> VM2_offer_Storage = 2000
 Link: vm2_type18 = 1 -> PriceProv2 = 58
 Link: vm2_type18 = 1 -> VM2_offer_CPU = 1
 Link: vm2_type18 = 1 -> VM2_offer_Memory = 1700
 Link: vm2_type18 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type19 = 1 -> PriceProv2 = 93
 Link: vm2_type19 = 1 -> VM2_offer_CPU = 1
 Link: vm2_type19 = 1 -> VM2_offer_Memory = 3750
 Link: vm2_type19 = 1 -> VM2_offer_Storage = 1000
 Link: vm2_type20 = 1 -> PriceProv2 = 98
 Link: vm2_type20 = 1 -> VM2_offer_CPU = 1
 Link: vm2_type20 = 1 -> VM2_offer_Memory = 3750
 Link: vm2_type20 = 1 -> VM2_offer_Storage = 1000
 Link: vm3_type1 = 1 -> PriceProv3 = 8403
 Link: vm3_type1 = 1 -> VM3_offer_CPU = 64
 Link: vm3_type1 = 1 -> VM3_offer_Memory = 976000
 Link: vm3_type1 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type2 = 1 -> PriceProv3 = 9152
 Link: vm3_type2 = 1 -> VM3_offer_CPU = 64
 Link: vm3_type2 = 1 -> VM3_offer_Memory = 488000
 Link: vm3_type2 = 1 -> VM3_offer_Storage = 8000
 Link: vm3_type3 = 1 -> PriceProv3 = 16000
 Link: vm3_type3 = 1 -> VM3_offer_CPU = 64
 Link: vm3_type3 = 1 -> VM3_offer_Memory = 1952
 Link: vm3_type3 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type4 = 1 -> PriceProv3 = 4105
 Link: vm3_type4 = 1 -> VM3_offer_CPU = 32
 Link: vm3_type4 = 1 -> VM3_offer_Memory = 244000
 Link: vm3_type4 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type5 = 1 -> PriceProv3 = 4576
 Link: vm3_type5 = 1 -> VM3_offer_CPU = 32
 Link: vm3_type5 = 1 -> VM3_offer_Memory = 244000
 Link: vm3_type5 = 1 -> VM3_offer_Storage = 4000
 Link: vm3_type6 = 1 -> PriceProv3 = 1373
 Link: vm3_type6 = 1 -> VM3_offer_CPU = 16
 Link: vm3_type6 = 1 -> VM3_offer_Memory = 122000
 Link: vm3_type6 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type7 = 1 -> PriceProv3 = 1430
 Link: vm3_type7 = 1 -> VM3_offer_CPU = 16
 Link: vm3_type7 = 1 -> VM3_offer_Memory = 30000
 Link: vm3_type7 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type8 = 1 -> PriceProv3 = 5400
 Link: vm3_type8 = 1 -> VM3_offer_CPU = 17
 Link: vm3_type8 = 1 -> VM3_offer_Memory = 117000
 Link: vm3_type8 = 1 -> VM3_offer_Storage = 24000
 Link: vm3_type9 = 1 -> PriceProv3 = 3079
 Link: vm3_type9 = 1 -> VM3_offer_CPU = 16
 Link: vm3_type9 = 1 -> VM3_offer_Memory = 122000
 Link: vm3_type9 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type10 = 1 -> PriceProv3 = 1470
 Link: vm3_type10 = 1 -> VM3_offer_CPU = 8
 Link: vm3_type10 = 1 -> VM3_offer_Memory = 61000
 Link: vm3_type10 = 1 -> VM3_offer_Storage = 6000
 Link: vm3_type11 = 1 -> PriceProv3 = 1301
 Link: vm3_type11 = 1 -> VM3_offer_CPU = 8
 Link: vm3_type11 = 1 -> VM3_offer_Memory = 68400
 Link: vm3_type11 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type12 = 1 -> PriceProv3 = 1288
 Link: vm3_type12 = 1 -> VM3_offer_CPU = 8
 Link: vm3_type12 = 1 -> VM3_offer_Memory = 68400
 Link: vm3_type12 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type13 = 1 -> PriceProv3 = 402
 Link: vm3_type13 = 1 -> VM3_offer_CPU = 4
 Link: vm3_type13 = 1 -> VM3_offer_Memory = 15000
 Link: vm3_type13 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type14 = 1 -> PriceProv3 = 827
 Link: vm3_type14 = 1 -> VM3_offer_CPU = 4
 Link: vm3_type14 = 1 -> VM3_offer_Memory = 30500
 Link: vm3_type14 = 1 -> VM3_offer_Storage = 3000
 Link: vm3_type15 = 1 -> PriceProv3 = 379
 Link: vm3_type15 = 1 -> VM3_offer_CPU = 4
 Link: vm3_type15 = 1 -> VM3_offer_Memory = 30500
 Link: vm3_type15 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type16 = 1 -> PriceProv3 = 146
 Link: vm3_type16 = 1 -> VM3_offer_CPU = 2
 Link: vm3_type16 = 1 -> VM3_offer_Memory = 7500
 Link: vm3_type16 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type17 = 1 -> PriceProv3 = 128
 Link: vm3_type17 = 1 -> VM3_offer_CPU = 2
 Link: vm3_type17 = 1 -> VM3_offer_Memory = 3750
 Link: vm3_type17 = 1 -> VM3_offer_Storage = 2000
 Link: vm3_type18 = 1 -> PriceProv3 = 58
 Link: vm3_type18 = 1 -> VM3_offer_CPU = 1
 Link: vm3_type18 = 1 -> VM3_offer_Memory = 1700
 Link: vm3_type18 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type19 = 1 -> PriceProv3 = 93
 Link: vm3_type19 = 1 -> VM3_offer_CPU = 1
 Link: vm3_type19 = 1 -> VM3_offer_Memory = 3750
 Link: vm3_type19 = 1 -> VM3_offer_Storage = 1000
 Link: vm3_type20 = 1 -> PriceProv3 = 98
 Link: vm3_type20 = 1 -> VM3_offer_CPU = 1
 Link: vm3_type20 = 1 -> VM3_offer_Memory = 3750
 Link: vm3_type20 = 1 -> VM3_offer_Storage = 1000
 Link: vm4_type1 = 1 -> PriceProv4 = 8403
 Link: vm4_type1 = 1 -> VM4_offer_CPU = 64
 Link: vm4_type1 = 1 -> VM4_offer_Memory = 976000
 Link: vm4_type1 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type2 = 1 -> PriceProv4 = 9152
 Link: vm4_type2 = 1 -> VM4_offer_CPU = 64
 Link: vm4_type2 = 1 -> VM4_offer_Memory = 488000
 Link: vm4_type2 = 1 -> VM4_offer_Storage = 8000
 Link: vm4_type3 = 1 -> PriceProv4 = 16000
 Link: vm4_type3 = 1 -> VM4_offer_CPU = 64
 Link: vm4_type3 = 1 -> VM4_offer_Memory = 1952
 Link: vm4_type3 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type4 = 1 -> PriceProv4 = 4105
 Link: vm4_type4 = 1 -> VM4_offer_CPU = 32
 Link: vm4_type4 = 1 -> VM4_offer_Memory = 244000
 Link: vm4_type4 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type5 = 1 -> PriceProv4 = 4576
 Link: vm4_type5 = 1 -> VM4_offer_CPU = 32
 Link: vm4_type5 = 1 -> VM4_offer_Memory = 244000
 Link: vm4_type5 = 1 -> VM4_offer_Storage = 4000
 Link: vm4_type6 = 1 -> PriceProv4 = 1373
 Link: vm4_type6 = 1 -> VM4_offer_CPU = 16
 Link: vm4_type6 = 1 -> VM4_offer_Memory = 122000
 Link: vm4_type6 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type7 = 1 -> PriceProv4 = 1430
 Link: vm4_type7 = 1 -> VM4_offer_CPU = 16
 Link: vm4_type7 = 1 -> VM4_offer_Memory = 30000
 Link: vm4_type7 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type8 = 1 -> PriceProv4 = 5400
 Link: vm4_type8 = 1 -> VM4_offer_CPU = 17
 Link: vm4_type8 = 1 -> VM4_offer_Memory = 117000
 Link: vm4_type8 = 1 -> VM4_offer_Storage = 24000
 Link: vm4_type9 = 1 -> PriceProv4 = 3079
 Link: vm4_type9 = 1 -> VM4_offer_CPU = 16
 Link: vm4_type9 = 1 -> VM4_offer_Memory = 122000
 Link: vm4_type9 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type10 = 1 -> PriceProv4 = 1470
 Link: vm4_type10 = 1 -> VM4_offer_CPU = 8
 Link: vm4_type10 = 1 -> VM4_offer_Memory = 61000
 Link: vm4_type10 = 1 -> VM4_offer_Storage = 6000
 Link: vm4_type11 = 1 -> PriceProv4 = 1301
 Link: vm4_type11 = 1 -> VM4_offer_CPU = 8
 Link: vm4_type11 = 1 -> VM4_offer_Memory = 68400
 Link: vm4_type11 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type12 = 1 -> PriceProv4 = 1288
 Link: vm4_type12 = 1 -> VM4_offer_CPU = 8
 Link: vm4_type12 = 1 -> VM4_offer_Memory = 68400
 Link: vm4_type12 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type13 = 1 -> PriceProv4 = 402
 Link: vm4_type13 = 1 -> VM4_offer_CPU = 4
 Link: vm4_type13 = 1 -> VM4_offer_Memory = 15000
 Link: vm4_type13 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type14 = 1 -> PriceProv4 = 827
 Link: vm4_type14 = 1 -> VM4_offer_CPU = 4
 Link: vm4_type14 = 1 -> VM4_offer_Memory = 30500
 Link: vm4_type14 = 1 -> VM4_offer_Storage = 3000
 Link: vm4_type15 = 1 -> PriceProv4 = 379
 Link: vm4_type15 = 1 -> VM4_offer_CPU = 4
 Link: vm4_type15 = 1 -> VM4_offer_Memory = 30500
 Link: vm4_type15 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type16 = 1 -> PriceProv4 = 146
 Link: vm4_type16 = 1 -> VM4_offer_CPU = 2
 Link: vm4_type16 = 1 -> VM4_offer_Memory = 7500
 Link: vm4_type16 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type17 = 1 -> PriceProv4 = 128
 Link: vm4_type17 = 1 -> VM4_offer_CPU = 2
 Link: vm4_type17 = 1 -> VM4_offer_Memory = 3750
 Link: vm4_type17 = 1 -> VM4_offer_Storage = 2000
 Link: vm4_type18 = 1 -> PriceProv4 = 58
 Link: vm4_type18 = 1 -> VM4_offer_CPU = 1
 Link: vm4_type18 = 1 -> VM4_offer_Memory = 1700
 Link: vm4_type18 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type19 = 1 -> PriceProv4 = 93
 Link: vm4_type19 = 1 -> VM4_offer_CPU = 1
 Link: vm4_type19 = 1 -> VM4_offer_Memory = 3750
 Link: vm4_type19 = 1 -> VM4_offer_Storage = 1000
 Link: vm4_type20 = 1 -> PriceProv4 = 98
 Link: vm4_type20 = 1 -> VM4_offer_CPU = 1
 Link: vm4_type20 = 1 -> VM4_offer_Memory = 3750
 Link: vm4_type20 = 1 -> VM4_offer_Storage = 1000
 Link: vm5_type1 = 1 -> PriceProv5 = 8403
 Link: vm5_type1 = 1 -> VM5_offer_CPU = 64
 Link: vm5_type1 = 1 -> VM5_offer_Memory = 976000
 Link: vm5_type1 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type2 = 1 -> PriceProv5 = 9152
 Link: vm5_type2 = 1 -> VM5_offer_CPU = 64
 Link: vm5_type2 = 1 -> VM5_offer_Memory = 488000
 Link: vm5_type2 = 1 -> VM5_offer_Storage = 8000
 Link: vm5_type3 = 1 -> PriceProv5 = 16000
 Link: vm5_type3 = 1 -> VM5_offer_CPU = 64
 Link: vm5_type3 = 1 -> VM5_offer_Memory = 1952
 Link: vm5_type3 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type4 = 1 -> PriceProv5 = 4105
 Link: vm5_type4 = 1 -> VM5_offer_CPU = 32
 Link: vm5_type4 = 1 -> VM5_offer_Memory = 244000
 Link: vm5_type4 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type5 = 1 -> PriceProv5 = 4576
 Link: vm5_type5 = 1 -> VM5_offer_CPU = 32
 Link: vm5_type5 = 1 -> VM5_offer_Memory = 244000
 Link: vm5_type5 = 1 -> VM5_offer_Storage = 4000
 Link: vm5_type6 = 1 -> PriceProv5 = 1373
 Link: vm5_type6 = 1 -> VM5_offer_CPU = 16
 Link: vm5_type6 = 1 -> VM5_offer_Memory = 122000
 Link: vm5_type6 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type7 = 1 -> PriceProv5 = 1430
 Link: vm5_type7 = 1 -> VM5_offer_CPU = 16
 Link: vm5_type7 = 1 -> VM5_offer_Memory = 30000
 Link: vm5_type7 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type8 = 1 -> PriceProv5 = 5400
 Link: vm5_type8 = 1 -> VM5_offer_CPU = 17
 Link: vm5_type8 = 1 -> VM5_offer_Memory = 117000
 Link: vm5_type8 = 1 -> VM5_offer_Storage = 24000
 Link: vm5_type9 = 1 -> PriceProv5 = 3079
 Link: vm5_type9 = 1 -> VM5_offer_CPU = 16
 Link: vm5_type9 = 1 -> VM5_offer_Memory = 122000
 Link: vm5_type9 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type10 = 1 -> PriceProv5 = 1470
 Link: vm5_type10 = 1 -> VM5_offer_CPU = 8
 Link: vm5_type10 = 1 -> VM5_offer_Memory = 61000
 Link: vm5_type10 = 1 -> VM5_offer_Storage = 6000
 Link: vm5_type11 = 1 -> PriceProv5 = 1301
 Link: vm5_type11 = 1 -> VM5_offer_CPU = 8
 Link: vm5_type11 = 1 -> VM5_offer_Memory = 68400
 Link: vm5_type11 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type12 = 1 -> PriceProv5 = 1288
 Link: vm5_type12 = 1 -> VM5_offer_CPU = 8
 Link: vm5_type12 = 1 -> VM5_offer_Memory = 68400
 Link: vm5_type12 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type13 = 1 -> PriceProv5 = 402
 Link: vm5_type13 = 1 -> VM5_offer_CPU = 4
 Link: vm5_type13 = 1 -> VM5_offer_Memory = 15000
 Link: vm5_type13 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type14 = 1 -> PriceProv5 = 827
 Link: vm5_type14 = 1 -> VM5_offer_CPU = 4
 Link: vm5_type14 = 1 -> VM5_offer_Memory = 30500
 Link: vm5_type14 = 1 -> VM5_offer_Storage = 3000
 Link: vm5_type15 = 1 -> PriceProv5 = 379
 Link: vm5_type15 = 1 -> VM5_offer_CPU = 4
 Link: vm5_type15 = 1 -> VM5_offer_Memory = 30500
 Link: vm5_type15 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type16 = 1 -> PriceProv5 = 146
 Link: vm5_type16 = 1 -> VM5_offer_CPU = 2
 Link: vm5_type16 = 1 -> VM5_offer_Memory = 7500
 Link: vm5_type16 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type17 = 1 -> PriceProv5 = 128
 Link: vm5_type17 = 1 -> VM5_offer_CPU = 2
 Link: vm5_type17 = 1 -> VM5_offer_Memory = 3750
 Link: vm5_type17 = 1 -> VM5_offer_Storage = 2000
 Link: vm5_type18 = 1 -> PriceProv5 = 58
 Link: vm5_type18 = 1 -> VM5_offer_CPU = 1
 Link: vm5_type18 = 1 -> VM5_offer_Memory = 1700
 Link: vm5_type18 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type19 = 1 -> PriceProv5 = 93
 Link: vm5_type19 = 1 -> VM5_offer_CPU = 1
 Link: vm5_type19 = 1 -> VM5_offer_Memory = 3750
 Link: vm5_type19 = 1 -> VM5_offer_Storage = 1000
 Link: vm5_type20 = 1 -> PriceProv5 = 98
 Link: vm5_type20 = 1 -> VM5_offer_CPU = 1
 Link: vm5_type20 = 1 -> VM5_offer_Memory = 3750
 Link: vm5_type20 = 1 -> VM5_offer_Storage = 1000
 Link_Deactivation_1: VM_1 = 0 -> PriceProv1 = 0
 Link_Deactivation_2: VM_2 = 0 -> PriceProv2 = 0
 Link_Deactivation_3: VM_3 = 0 -> PriceProv3 = 0
 Link_Deactivation_4: VM_4 = 0 -> PriceProv4 = 0
 Link_Deactivation_5: VM_5 = 0 -> PriceProv5 = 0
Bounds
 VM1_Type <= 20
 VM2_Type <= 20
 VM3_Type <= 20
 VM4_Type <= 20
 VM5_Type <= 20
Binaries
 C1_VM1 C1_VM2 C1_VM3 C1_VM4 C1_VM5 C2_VM1 C2_VM2 C2_VM3 C2_VM4 C2_VM5
 C3_VM1 C3_VM2 C3_VM3 C3_VM4 C3_VM5 C4_VM1 C4_VM2 C4_VM3 C4_VM4 C4_VM5
 C5_VM1 C5_VM2 C5_VM3 C5_VM4 C5_VM5 VM_1 vm1_type1 vm1_type2 vm1_type3
 vm1_type4 vm1_type5 vm1_type6 vm1_type7 vm1_type8 vm1_type9 vm1_type10
 vm1_type11 vm1_type12 vm1_type13 vm1_type14 vm1_type15 vm1_type16
 vm1_type17 vm1_type18 vm1_type19 vm1_type20 VM_2 vm2_type1 vm2_type2
 vm2_type3 vm2_type4 vm2_type5 vm2_type6 vm2_type7 vm2_type8 vm2_type9
 vm2_type10 vm2_type11 vm2_type12 vm2_type13 vm2_type14 vm2_type15
 vm2_type16 vm2_type17 vm2_type18 vm2_type19 vm2_type20 VM_3 vm3_type1
 vm3_type2 vm3_type3 vm3_type4 vm3_type5 vm3_type6 vm3_type7 vm3_type8
 vm3_type9 vm3_type10 vm3_type11 vm3_type12 vm3_type13 vm3_type14
 vm3_type15 vm3_type16 vm3_type17 vm3_type18 vm3_type19 vm3_type20 VM_4
 vm4_type1 vm4_type2 vm4_type3 vm4_type4 vm4_type5 vm4_type6 vm4_type7
 vm4_type8 vm4_type9 vm4_type10 vm4_type11 vm4_type12 vm4_type13 vm4_type14
 vm4_type15 vm4_type16 vm4_type17 vm4_type18 vm4_type19 vm4_type20 VM_5
 vm5_type1 vm5_type2 vm5_type3 vm5_type4 vm5_type5 vm5_type6 vm5_type7
 vm5_type8 vm5_type9 vm5_type10 vm5_type11 vm5_type12 vm5_type13 vm5_type14
 vm5_type15 vm5_type16 vm5_type17 vm5_type18 vm5_type19 vm5_type20
Generals
 VM1_offer_CPU VM1_offer_Memory VM1_offer_Storage VM1_Type VM2_offer_CPU
 VM2_offer_Memory VM2_offer_Storage VM2_Type VM3_offer_CPU VM3_offer_Memory
 VM3_offer_Storage VM3_Type VM4_offer_CPU VM4_offer_Memory
 VM4_offer_Storage VM4_Type VM5_offer_CPU VM5_offer_Memory
 VM5_offer_Storage VM5_Type
SOS
 s0:  S1 :: vm1_type1:1 vm1_type2:2 vm1_type3:3 vm1_type4:4 vm1_type5:5
     vm1_type6:6 vm1_type7:7 vm1_type8:8 vm1_type9:9 vm1_type10:10
     vm1_type11:11 vm1_type12:12 vm1_type13:13 vm1_type14:14 vm1_type15:15
     vm1_type16:16 vm1_type17:17 vm1_type18:18 vm1_type19:19 vm1_type20:20
 s1:  S1 :: vm2_type1:1 vm2_type2:2 vm2_type3:3 vm2_type4:4 vm2_type5:5
     vm2_type6:6 vm2_type7:7 vm2_type8:8 vm2_type9:9 vm2_type10:10
     vm2_type11:11 vm2_type12:12 vm2_type13:13 vm2_type14:14 vm2_type15:15
     vm2_type16:16 vm2_type17:17 vm2_type18:18 vm2_type19:19 vm2_type20:20
 s2:  S1 :: vm3_type1:1 vm3_type2:2 vm3_type3:3 vm3_type4:4 vm3_type5:5
     vm3_type6:6 vm3_type7:7 vm3_type8:8 vm3_type9:9 vm3_type10:10
     vm3_type11:11 vm3_type12:12 vm3_type13:13 vm3_type14:14 vm3_type15:15
     vm3_type16:16 vm3_type17:17 vm3_type18:18 vm3_type19:19 vm3_type20:20
 s3:  S1 :: vm4_type1:1 vm4_type2:2 vm4_type3:3 vm4_type4:4 vm4_type5:5
     vm4_type6:6 vm4_type7:7 vm4_type8:8 vm4_type9:9 vm4_type10:10
     vm4_type11:11 vm4_type12:12 vm4_type13:13 vm4_type14:14 vm4_type15:15
     vm4_type16:16 vm4_type17:17 vm4_type18:18 vm4_type19:19 vm4_type20:20
 s4:  S1 :: vm5_type1:1 vm5_type2:2 vm5_type3:3 vm5_type4:4 vm5_type5:5
     vm5_type6:6 vm5_type7:7 vm5_type8:8 vm5_type9:9 vm5_type10:10
     vm5_type11:11 vm5_type12:12 vm5_type13:13 vm5_type14:14 vm5_type15:15
     vm5_type16:16 vm5_type17:17 vm5_type18:18 vm5_type19:19 vm5_type20:20
End
