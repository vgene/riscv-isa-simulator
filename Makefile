DEBUG := 
# DEBUG += -DDEBUG -DDEBUG_MMU

all : riscv-simulator.cpp mmu.cpp
	g++ $(DEBUG) riscv-simulator.cpp mmu.cpp -o riscv-simulator -w
