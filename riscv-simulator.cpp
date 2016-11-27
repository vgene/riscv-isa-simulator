/*-------------
 * DEBUG MACROS
 * DEBUG: 
 * 	Enable Check Instructions
 * 	Enable Elf Dump
 * DEBUG_DUMP_REGISTER:
 *  Enable Register Dump On EACH Step
 * DEBUG_DUMP_MEMORY:
 * 	With DUMP_MEM_ADDR and DUMP_LEN
 * 	Enable Memory Dump On EACH STEP
--------------- */

// #define DEBUG
// #define DEBUG_DUMP_REGISTER

// #define DEBUG_DUMP_MEMORY
// #define DUMP_MEM_ADDR 0x00010e60
// #define DUMP_LEN 100

// #define DEBUG_MMU


#include "cpu.h"
#include "func.h"
#include "mmu.h"
#include "def.h"
int main(int argc, char *argv[])
{
	char* path;

	path = new char[100];
	if (argc < 2){
		printf("Input Elf File Path:");
		scanf("%s",path);
		printf("\n");
	}else{
		path = argv[1];
	}

	printf("START WITH PATH: %s\n\n", path);


	mmu_t* mmu=new mmu_t(path);

	int size = 32 * KB;               //输入以byte为单位
    int block = 8;
    int associativity = 4;
    
	// mmu->set_cache();

	cpu_t* cpu=new cpu_t(mmu);

	cpu->step(0);

	return 0;
}