#include "structs.h"
class mmu_t{
	mmu_t(){

	}

	insn_bits_t load_insn(reg_t pc){
		return 0x001121B3; //add r3,r2,r1
	}
}