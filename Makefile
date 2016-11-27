### !!! UNCOMMENT FOLLOWING LINES TO ENABLE DEBUG MODE
 # DEBUG += -DDEBUG
# DEBUG += -DDEBUG_DUMP_REGISTER  # Enable Register Dump On EACH Step
# DEBUG += -DDEBUG_MMU

### COUNT INSTRUCTIONS
# DEBUG += -DCOUNT

DEBUG += -DPRINT_CACHE

### !!! UNCOMMENT NEXT LINE IF LINUX AND LEGACY GCC SETTING
### !!! Comment it on Mac OS
#STD := -std=c++11

### Optimization Level
OPT := -O3 
# all : riscv-simulator.cpp mmu.cpp
# 	g++ $(DEBUG) $(STD) $(OPT) riscv-simulator.cpp mmu.cpp -o riscv-simulator -w

CC=g++

all: clean riscv-simulator

riscv-simulator: riscv-simulator.o cache.o memory.o mmu.o cpu.h
	$(CC) $(DEBUG) $(STD) $(OPT) riscv-simulator.cpp mmu.cpp cache.cc memory.cc -o riscv-simulator -w

# #include "cpu.h"
# #include "func.h"
# #include "mmu.h"
# riscv-simulator.o: cpu.h func.h mmu.h riscv-simulator.cpp
# 	$(CC) -o $@ riscv-simulator.cpp $(STD)
# #include "structs.h"
# #include "storage.h"
# #include "cache.h"
# #include "memory.h"
# mmu.o: structs.h storage.h cache.h memory.h mmu.cpp
# 	$(CC) -o $@ $^ $(STD)

# cache.o: cache.h def.h cache.cc
# 	$(CC) -o $@ mmu.cpp $(STD)

# memory.o: memory.h memory.cc 
# 	$(CC) -o $@ memory.cc  $(STD)

.PHONY: clean

clean:
	rm -rf riscv-simulator *.o
