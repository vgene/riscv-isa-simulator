all : riscv-simulator.cpp mmu.cpp
	g++ riscv-simulator.cpp mmu.cpp -o riscv-simulator -w
