\ Model Gurobi_deployment
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1e2e29be67df2697
Minimize
  Price_VM1 + Price_VM2 + Price_VM3 + Price_VM4 + Price_VM5
Subject To
 BasicAllocation_1: C1_VM1 + C1_VM2 + C1_VM3 + C1_VM4 + C1_VM5 >= 1
 BasicAllocation_2: C2_VM1 + C2_VM2 + C2_VM3 + C2_VM4 + C2_VM5 >= 1
 BasicAllocation_3: C3_VM1 + C3_VM2 + C3_VM3 + C3_VM4 + C3_VM5 >= 1
 BasicAllocation_4: C4_VM1 + C4_VM2 + C4_VM3 + C4_VM4 + C4_VM5 >= 1
 BasicAllocation_5: C5_VM1 + C5_VM2 + C5_VM3 + C5_VM4 + C5_VM5 >= 1
 OccupancyLB_1: C1_VM1 + C2_VM1 + C3_VM1 + C4_VM1 + C5_VM1 - VM_1 >= 0
 OccupancyUB_1: C1_VM1 + C2_VM1 + C3_VM1 + C4_VM1 + C5_VM1 - 5 VM_1 <= 0
 OccupancyLB_2: C1_VM2 + C2_VM2 + C3_VM2 + C4_VM2 + C5_VM2 - VM_2 >= 0
 OccupancyUB_2: C1_VM2 + C2_VM2 + C3_VM2 + C4_VM2 + C5_VM2 - 5 VM_2 <= 0
 OccupancyLB_3: C1_VM3 + C2_VM3 + C3_VM3 + C4_VM3 + C5_VM3 - VM_3 >= 0
 OccupancyUB_3: C1_VM3 + C2_VM3 + C3_VM3 + C4_VM3 + C5_VM3 - 5 VM_3 <= 0
 OccupancyLB_4: C1_VM4 + C2_VM4 + C3_VM4 + C4_VM4 + C5_VM4 - VM_4 >= 0
 OccupancyUB_4: C1_VM4 + C2_VM4 + C3_VM4 + C4_VM4 + C5_VM4 - 5 VM_4 <= 0
 OccupancyLB_5: C1_VM5 + C2_VM5 + C3_VM5 + C4_VM5 + C5_VM5 - VM_5 >= 0
 OccupancyUB_5: C1_VM5 + C2_VM5 + C3_VM5 + C4_VM5 + C5_VM5 - 5 VM_5 <= 0
 Capacity_cpu_VM1: 4 C1_VM1 + 2 C2_VM1 + 4 C3_VM1 + 8 C4_VM1 + C5_VM1
   - 64 VM1_Type1 - 64 VM1_Type2 - 64 VM1_Type3 - 32 VM1_Type4
   - 32 VM1_Type5 - 16 VM1_Type6 - 16 VM1_Type7 - 17 VM1_Type8
   - 16 VM1_Type9 - 8 VM1_Type10 - 8 VM1_Type11 - 8 VM1_Type12
   - 4 VM1_Type13 - 4 VM1_Type14 - 4 VM1_Type15 - 2 VM1_Type16
   - 2 VM1_Type17 - VM1_Type18 - VM1_Type19 - VM1_Type20 <= 0
 Capacity_memory_VM1: 2048 C1_VM1 + 512 C2_VM1 + 2048 C3_VM1 + 16000 C4_VM1
   + 256 C5_VM1 - 976000 VM1_Type1 - 488000 VM1_Type2 - 1952 VM1_Type3
   - 244000 VM1_Type4 - 244000 VM1_Type5 - 122000 VM1_Type6
   - 30000 VM1_Type7 - 117000 VM1_Type8 - 122000 VM1_Type9
   - 61000 VM1_Type10 - 68400 VM1_Type11 - 68400 VM1_Type12
   - 15000 VM1_Type13 - 30500 VM1_Type14 - 30500 VM1_Type15
   - 7500 VM1_Type16 - 3750 VM1_Type17 - 1700 VM1_Type18 - 3750 VM1_Type19
   - 3750 VM1_Type20 <= 0
 Capacity_storage_VM1: 500 C1_VM1 + 1000 C2_VM1 + 1000 C3_VM1 + 2000 C4_VM1
   + 250 C5_VM1 - 1000 VM1_Type1 - 8000 VM1_Type2 - 1000 VM1_Type3
   - 2000 VM1_Type4 - 4000 VM1_Type5 - 2000 VM1_Type6 - 2000 VM1_Type7
   - 24000 VM1_Type8 - 1000 VM1_Type9 - 6000 VM1_Type10 - 2000 VM1_Type11
   - 2000 VM1_Type12 - 2000 VM1_Type13 - 3000 VM1_Type14 - 1000 VM1_Type15
   - 1000 VM1_Type16 - 2000 VM1_Type17 - 1000 VM1_Type18 - 1000 VM1_Type19
   - 1000 VM1_Type20 <= 0
 Capacity_cpu_VM2: 4 C1_VM2 + 2 C2_VM2 + 4 C3_VM2 + 8 C4_VM2 + C5_VM2
   - 64 VM2_Type1 - 64 VM2_Type2 - 64 VM2_Type3 - 32 VM2_Type4
   - 32 VM2_Type5 - 16 VM2_Type6 - 16 VM2_Type7 - 17 VM2_Type8
   - 16 VM2_Type9 - 8 VM2_Type10 - 8 VM2_Type11 - 8 VM2_Type12
   - 4 VM2_Type13 - 4 VM2_Type14 - 4 VM2_Type15 - 2 VM2_Type16
   - 2 VM2_Type17 - VM2_Type18 - VM2_Type19 - VM2_Type20 <= 0
 Capacity_memory_VM2: 2048 C1_VM2 + 512 C2_VM2 + 2048 C3_VM2 + 16000 C4_VM2
   + 256 C5_VM2 - 976000 VM2_Type1 - 488000 VM2_Type2 - 1952 VM2_Type3
   - 244000 VM2_Type4 - 244000 VM2_Type5 - 122000 VM2_Type6
   - 30000 VM2_Type7 - 117000 VM2_Type8 - 122000 VM2_Type9
   - 61000 VM2_Type10 - 68400 VM2_Type11 - 68400 VM2_Type12
   - 15000 VM2_Type13 - 30500 VM2_Type14 - 30500 VM2_Type15
   - 7500 VM2_Type16 - 3750 VM2_Type17 - 1700 VM2_Type18 - 3750 VM2_Type19
   - 3750 VM2_Type20 <= 0
 Capacity_storage_VM2: 500 C1_VM2 + 1000 C2_VM2 + 1000 C3_VM2 + 2000 C4_VM2
   + 250 C5_VM2 - 1000 VM2_Type1 - 8000 VM2_Type2 - 1000 VM2_Type3
   - 2000 VM2_Type4 - 4000 VM2_Type5 - 2000 VM2_Type6 - 2000 VM2_Type7
   - 24000 VM2_Type8 - 1000 VM2_Type9 - 6000 VM2_Type10 - 2000 VM2_Type11
   - 2000 VM2_Type12 - 2000 VM2_Type13 - 3000 VM2_Type14 - 1000 VM2_Type15
   - 1000 VM2_Type16 - 2000 VM2_Type17 - 1000 VM2_Type18 - 1000 VM2_Type19
   - 1000 VM2_Type20 <= 0
 Capacity_cpu_VM3: 4 C1_VM3 + 2 C2_VM3 + 4 C3_VM3 + 8 C4_VM3 + C5_VM3
   - 64 VM3_Type1 - 64 VM3_Type2 - 64 VM3_Type3 - 32 VM3_Type4
   - 32 VM3_Type5 - 16 VM3_Type6 - 16 VM3_Type7 - 17 VM3_Type8
   - 16 VM3_Type9 - 8 VM3_Type10 - 8 VM3_Type11 - 8 VM3_Type12
   - 4 VM3_Type13 - 4 VM3_Type14 - 4 VM3_Type15 - 2 VM3_Type16
   - 2 VM3_Type17 - VM3_Type18 - VM3_Type19 - VM3_Type20 <= 0
 Capacity_memory_VM3: 2048 C1_VM3 + 512 C2_VM3 + 2048 C3_VM3 + 16000 C4_VM3
   + 256 C5_VM3 - 976000 VM3_Type1 - 488000 VM3_Type2 - 1952 VM3_Type3
   - 244000 VM3_Type4 - 244000 VM3_Type5 - 122000 VM3_Type6
   - 30000 VM3_Type7 - 117000 VM3_Type8 - 122000 VM3_Type9
   - 61000 VM3_Type10 - 68400 VM3_Type11 - 68400 VM3_Type12
   - 15000 VM3_Type13 - 30500 VM3_Type14 - 30500 VM3_Type15
   - 7500 VM3_Type16 - 3750 VM3_Type17 - 1700 VM3_Type18 - 3750 VM3_Type19
   - 3750 VM3_Type20 <= 0
 Capacity_storage_VM3: 500 C1_VM3 + 1000 C2_VM3 + 1000 C3_VM3 + 2000 C4_VM3
   + 250 C5_VM3 - 1000 VM3_Type1 - 8000 VM3_Type2 - 1000 VM3_Type3
   - 2000 VM3_Type4 - 4000 VM3_Type5 - 2000 VM3_Type6 - 2000 VM3_Type7
   - 24000 VM3_Type8 - 1000 VM3_Type9 - 6000 VM3_Type10 - 2000 VM3_Type11
   - 2000 VM3_Type12 - 2000 VM3_Type13 - 3000 VM3_Type14 - 1000 VM3_Type15
   - 1000 VM3_Type16 - 2000 VM3_Type17 - 1000 VM3_Type18 - 1000 VM3_Type19
   - 1000 VM3_Type20 <= 0
 Capacity_cpu_VM4: 4 C1_VM4 + 2 C2_VM4 + 4 C3_VM4 + 8 C4_VM4 + C5_VM4
   - 64 VM4_Type1 - 64 VM4_Type2 - 64 VM4_Type3 - 32 VM4_Type4
   - 32 VM4_Type5 - 16 VM4_Type6 - 16 VM4_Type7 - 17 VM4_Type8
   - 16 VM4_Type9 - 8 VM4_Type10 - 8 VM4_Type11 - 8 VM4_Type12
   - 4 VM4_Type13 - 4 VM4_Type14 - 4 VM4_Type15 - 2 VM4_Type16
   - 2 VM4_Type17 - VM4_Type18 - VM4_Type19 - VM4_Type20 <= 0
 Capacity_memory_VM4: 2048 C1_VM4 + 512 C2_VM4 + 2048 C3_VM4 + 16000 C4_VM4
   + 256 C5_VM4 - 976000 VM4_Type1 - 488000 VM4_Type2 - 1952 VM4_Type3
   - 244000 VM4_Type4 - 244000 VM4_Type5 - 122000 VM4_Type6
   - 30000 VM4_Type7 - 117000 VM4_Type8 - 122000 VM4_Type9
   - 61000 VM4_Type10 - 68400 VM4_Type11 - 68400 VM4_Type12
   - 15000 VM4_Type13 - 30500 VM4_Type14 - 30500 VM4_Type15
   - 7500 VM4_Type16 - 3750 VM4_Type17 - 1700 VM4_Type18 - 3750 VM4_Type19
   - 3750 VM4_Type20 <= 0
 Capacity_storage_VM4: 500 C1_VM4 + 1000 C2_VM4 + 1000 C3_VM4 + 2000 C4_VM4
   + 250 C5_VM4 - 1000 VM4_Type1 - 8000 VM4_Type2 - 1000 VM4_Type3
   - 2000 VM4_Type4 - 4000 VM4_Type5 - 2000 VM4_Type6 - 2000 VM4_Type7
   - 24000 VM4_Type8 - 1000 VM4_Type9 - 6000 VM4_Type10 - 2000 VM4_Type11
   - 2000 VM4_Type12 - 2000 VM4_Type13 - 3000 VM4_Type14 - 1000 VM4_Type15
   - 1000 VM4_Type16 - 2000 VM4_Type17 - 1000 VM4_Type18 - 1000 VM4_Type19
   - 1000 VM4_Type20 <= 0
 Capacity_cpu_VM5: 4 C1_VM5 + 2 C2_VM5 + 4 C3_VM5 + 8 C4_VM5 + C5_VM5
   - 64 VM5_Type1 - 64 VM5_Type2 - 64 VM5_Type3 - 32 VM5_Type4
   - 32 VM5_Type5 - 16 VM5_Type6 - 16 VM5_Type7 - 17 VM5_Type8
   - 16 VM5_Type9 - 8 VM5_Type10 - 8 VM5_Type11 - 8 VM5_Type12
   - 4 VM5_Type13 - 4 VM5_Type14 - 4 VM5_Type15 - 2 VM5_Type16
   - 2 VM5_Type17 - VM5_Type18 - VM5_Type19 - VM5_Type20 <= 0
 Capacity_memory_VM5: 2048 C1_VM5 + 512 C2_VM5 + 2048 C3_VM5 + 16000 C4_VM5
   + 256 C5_VM5 - 976000 VM5_Type1 - 488000 VM5_Type2 - 1952 VM5_Type3
   - 244000 VM5_Type4 - 244000 VM5_Type5 - 122000 VM5_Type6
   - 30000 VM5_Type7 - 117000 VM5_Type8 - 122000 VM5_Type9
   - 61000 VM5_Type10 - 68400 VM5_Type11 - 68400 VM5_Type12
   - 15000 VM5_Type13 - 30500 VM5_Type14 - 30500 VM5_Type15
   - 7500 VM5_Type16 - 3750 VM5_Type17 - 1700 VM5_Type18 - 3750 VM5_Type19
   - 3750 VM5_Type20 <= 0
 Capacity_storage_VM5: 500 C1_VM5 + 1000 C2_VM5 + 1000 C3_VM5 + 2000 C4_VM5
   + 250 C5_VM5 - 1000 VM5_Type1 - 8000 VM5_Type2 - 1000 VM5_Type3
   - 2000 VM5_Type4 - 4000 VM5_Type5 - 2000 VM5_Type6 - 2000 VM5_Type7
   - 24000 VM5_Type8 - 1000 VM5_Type9 - 6000 VM5_Type10 - 2000 VM5_Type11
   - 2000 VM5_Type12 - 2000 VM5_Type13 - 3000 VM5_Type14 - 1000 VM5_Type15
   - 1000 VM5_Type16 - 2000 VM5_Type17 - 1000 VM5_Type18 - 1000 VM5_Type19
   - 1000 VM5_Type20 <= 0
 LinkPrice_1: Price_VM1 - 8403 VM1_Type1 - 9152 VM1_Type2 - 16000 VM1_Type3
   - 4105 VM1_Type4 - 4576 VM1_Type5 - 1373 VM1_Type6 - 1430 VM1_Type7
   - 5400 VM1_Type8 - 3079 VM1_Type9 - 1470 VM1_Type10 - 1301 VM1_Type11
   - 1288 VM1_Type12 - 402 VM1_Type13 - 827 VM1_Type14 - 379 VM1_Type15
   - 146 VM1_Type16 - 128 VM1_Type17 - 58 VM1_Type18 - 93 VM1_Type19
   - 98 VM1_Type20 = 0
 LinkPrice_2: Price_VM2 - 8403 VM2_Type1 - 9152 VM2_Type2 - 16000 VM2_Type3
   - 4105 VM2_Type4 - 4576 VM2_Type5 - 1373 VM2_Type6 - 1430 VM2_Type7
   - 5400 VM2_Type8 - 3079 VM2_Type9 - 1470 VM2_Type10 - 1301 VM2_Type11
   - 1288 VM2_Type12 - 402 VM2_Type13 - 827 VM2_Type14 - 379 VM2_Type15
   - 146 VM2_Type16 - 128 VM2_Type17 - 58 VM2_Type18 - 93 VM2_Type19
   - 98 VM2_Type20 = 0
 LinkPrice_3: Price_VM3 - 8403 VM3_Type1 - 9152 VM3_Type2 - 16000 VM3_Type3
   - 4105 VM3_Type4 - 4576 VM3_Type5 - 1373 VM3_Type6 - 1430 VM3_Type7
   - 5400 VM3_Type8 - 3079 VM3_Type9 - 1470 VM3_Type10 - 1301 VM3_Type11
   - 1288 VM3_Type12 - 402 VM3_Type13 - 827 VM3_Type14 - 379 VM3_Type15
   - 146 VM3_Type16 - 128 VM3_Type17 - 58 VM3_Type18 - 93 VM3_Type19
   - 98 VM3_Type20 = 0
 LinkPrice_4: Price_VM4 - 8403 VM4_Type1 - 9152 VM4_Type2 - 16000 VM4_Type3
   - 4105 VM4_Type4 - 4576 VM4_Type5 - 1373 VM4_Type6 - 1430 VM4_Type7
   - 5400 VM4_Type8 - 3079 VM4_Type9 - 1470 VM4_Type10 - 1301 VM4_Type11
   - 1288 VM4_Type12 - 402 VM4_Type13 - 827 VM4_Type14 - 379 VM4_Type15
   - 146 VM4_Type16 - 128 VM4_Type17 - 58 VM4_Type18 - 93 VM4_Type19
   - 98 VM4_Type20 = 0
 LinkPrice_5: Price_VM5 - 8403 VM5_Type1 - 9152 VM5_Type2 - 16000 VM5_Type3
   - 4105 VM5_Type4 - 4576 VM5_Type5 - 1373 VM5_Type6 - 1430 VM5_Type7
   - 5400 VM5_Type8 - 3079 VM5_Type9 - 1470 VM5_Type10 - 1301 VM5_Type11
   - 1288 VM5_Type12 - 402 VM5_Type13 - 827 VM5_Type14 - 379 VM5_Type15
   - 146 VM5_Type16 - 128 VM5_Type17 - 58 VM5_Type18 - 93 VM5_Type19
   - 98 VM5_Type20 = 0
 Vm_Type_1: - VM_1 + VM1_Type1 + VM1_Type2 + VM1_Type3 + VM1_Type4
   + VM1_Type5 + VM1_Type6 + VM1_Type7 + VM1_Type8 + VM1_Type9 + VM1_Type10
   + VM1_Type11 + VM1_Type12 + VM1_Type13 + VM1_Type14 + VM1_Type15
   + VM1_Type16 + VM1_Type17 + VM1_Type18 + VM1_Type19 + VM1_Type20 = 0
 Vm_Type_2: - VM_2 + VM2_Type1 + VM2_Type2 + VM2_Type3 + VM2_Type4
   + VM2_Type5 + VM2_Type6 + VM2_Type7 + VM2_Type8 + VM2_Type9 + VM2_Type10
   + VM2_Type11 + VM2_Type12 + VM2_Type13 + VM2_Type14 + VM2_Type15
   + VM2_Type16 + VM2_Type17 + VM2_Type18 + VM2_Type19 + VM2_Type20 = 0
 Vm_Type_3: - VM_3 + VM3_Type1 + VM3_Type2 + VM3_Type3 + VM3_Type4
   + VM3_Type5 + VM3_Type6 + VM3_Type7 + VM3_Type8 + VM3_Type9 + VM3_Type10
   + VM3_Type11 + VM3_Type12 + VM3_Type13 + VM3_Type14 + VM3_Type15
   + VM3_Type16 + VM3_Type17 + VM3_Type18 + VM3_Type19 + VM3_Type20 = 0
 Vm_Type_4: - VM_4 + VM4_Type1 + VM4_Type2 + VM4_Type3 + VM4_Type4
   + VM4_Type5 + VM4_Type6 + VM4_Type7 + VM4_Type8 + VM4_Type9 + VM4_Type10
   + VM4_Type11 + VM4_Type12 + VM4_Type13 + VM4_Type14 + VM4_Type15
   + VM4_Type16 + VM4_Type17 + VM4_Type18 + VM4_Type19 + VM4_Type20 = 0
 Vm_Type_5: - VM_5 + VM5_Type1 + VM5_Type2 + VM5_Type3 + VM5_Type4
   + VM5_Type5 + VM5_Type6 + VM5_Type7 + VM5_Type8 + VM5_Type9 + VM5_Type10
   + VM5_Type11 + VM5_Type12 + VM5_Type13 + VM5_Type14 + VM5_Type15
   + VM5_Type16 + VM5_Type17 + VM5_Type18 + VM5_Type19 + VM5_Type20 = 0
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
End
