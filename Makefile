### !!! UNCOMMENT FOLLOWING LINES TO ENABLE DEBUG MODE
# DEBUG += -DDEBUG
# DEBUG += -DDEBUG_DUMP_REGISTER  # Enable Register Dump On EACH Step
# DEBUG += -DDEBUG_MMU

### COUNT INSTRUCTIONS
DEBUG += -DCOUNT


### !!! UNCOMMENT NEXT LINE IF LINUX AND LEGACY GCC SETTING
### !!! Comment it on Mac OS
#STD := -std=c++11

### Optimization Level
OPT := -O3 
all : riscv-simulator.cpp mmu.cpp
	g++ $(DEBUG) $(STD) $(OPT) riscv-simulator.cpp mmu.cpp -o riscv-simulator -w
