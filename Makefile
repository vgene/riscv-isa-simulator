all : riscv-simulator.cpp mmu.cpp
	g++ -std=c++11 riscv-simulator.cpp mmu.cpp -o riscv-simulator -w
