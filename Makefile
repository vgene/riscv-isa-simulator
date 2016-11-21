all : test.cpp mmu.cpp
	g++ test.cpp mmu.cpp -o test -w
