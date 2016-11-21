# !!! UNCOMMENT NEXT LINE TO ENABLE DEBUG MODE
# DEBUG += -DDEBUG -DDEBUG_MMU

# !!! UNCOMMENT NEXT LINE IF LINUX AND LEGACY GCC SETTING
# STD += -std=c++11
all : riscv-simulator.cpp mmu.cpp
	g++ $(DEBUG) $(STD) riscv-simulator.cpp mmu.cpp -o riscv-simulator -w
