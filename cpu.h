/*
* CPU template
* By: Ziyang Xu
*
*/

#ifndef RISCV_CPU_T_H
#define RISCV_CPU_T_H

// Headers
#include "structs.h"
#include "mmu.h"
#include <vector>
#include <stdio.h>

/*--------
 *CONSTANTS
 * NXPR: int register size
 * NFPR: float register file size
 * SP_INIT: stack pointer location
----------*/
const int NXPR = 32;
const int NFPR = 32;
const reg_t SP_INIT=0xfffffffffefffb50;



class cpu_t;
//Typedef: instruction function
typedef reg_t (*insn_func_t)(cpu_t*, insn_t, reg_t);
//end of instruction function


struct state_t
{
  reg_t pc;
  regfile_t<reg_t, NXPR, true> XPR;
  regfile_t<freg_t, NFPR, false> FPR;

  uint32_t fflags;
  uint32_t frm;


};

struct insn_desc_t{
  insn_bits_t match;
  insn_bits_t mask;

  insn_func_t rv64;
  char* name;
};


/*
Illegal Instructon:
Make sure illegal instruction bits can match a function pointer!
*/
reg_t illegal_instruction(cpu_t* cpu, insn_t insn, reg_t pc)
{
	//print insn.bits();
	return 0;
}


class cpu_t
{
private:
	state_t state;//state contains PC and register file
	mmu_t* mmu; //MMU

	insn_t c_insn; // current instruction
	insn_desc_t c_desc; //current instruction description
	insn_func_t c_func; //current function

	std::vector<insn_desc_t> instructions;

	// TO DEBUG Instructions
	void check_instructions()
	{

		int size = instructions.size();
		printf("%s\n","START CHECK INSTRUCTIONS");
		printf("Instruction size: %d\n",size);

		for (int i=0;i<size;i++){
			printf("%s\n","----------------");
			printf("INSTRUCTION: %s\n",instructions[i].name);
			printf("MASK/MATCH: %x %x\n", instructions[i].mask,instructions[i].match);
		}

		printf("%s\n\n\n","END CHECK INSTRUCTIONS");
	}


	//register all instructions into vector instructions
	void register_instructions()
	{
		#define REGISTER_INSN(name, match, mask) \
		  extern reg_t rv64_##name(cpu_t*, insn_t, reg_t); \
		  register_insn((insn_desc_t){match, mask, rv64_##name, #name});

		#define DECLARE_INSN(name, match, mask) \
			insn_bits_t name##_match = (match), name##_mask = (mask);
			#include "encoding.h"
		#undef DECLARE_INSN

		#define DEFINE_INSN(name) \
			REGISTER_INSN(name, name##_match, name##_mask)
			#include "insn_list.h"
		#undef DEFINE_INSN

		register_insn((insn_desc_t){0, 0, &illegal_instruction, "illegal"});
	}

	void register_insn(insn_desc_t desc)
	{
		instructions.push_back(desc);
	}

	void dump_register_file(){
		for (int i=0;i<32;i++){
			printf("R[%d]: %llx\n", i, state.XPR[i]);
		}
	}


public:

	cpu_t(const char * path){
		mmu = new mmu_t(path);

#ifdef DEBUG
mmu->Debug_elf();
#endif
		//set pc
		state.pc=mmu->start_addr();

		//set stack pointer
		state.XPR.write(2, SP_INIT);
		mmu->write_64(SP_INIT, 0x0);

		register_instructions();

#ifdef DEBUG
check_instructions();
#endif
	}

	//decode instructions
	void decode_insn()
	{

		//get the first instruction
		insn_desc_t* p = &instructions[0];

		while ((c_insn.bits() & p->mask) != p->match){
#ifdef DEBUG_ALL
printf("INSN: %s\n", p->name);
printf("HAVE: %x\n", c_insn.bits() & p->mask);
printf("WANT: %x\n",p->match);
#endif
			p++;
		}

#ifdef DEBUG_ALL
printf("INSN: %s\n", p->name);
printf("HAVE: %x\n", c_insn.bits() & p->mask);
printf("WANT: %x\n",p->match);
#endif

		c_desc = *p;
		c_func = c_desc.rv64;

#ifdef DEBUG
disasm();
#endif

	}

	void step(int steps)
	{

		int step = 0;

		while (steps==0 || step<steps) {

#ifdef DEBUG
printf("------\nSTEP: %d\n", step);
#endif



			insn_t* insn = new insn_t(mmu->load_insn(state.pc));
			c_insn = *insn;

			decode_insn();
			state.pc = execute_insn();


#ifdef DEBUG_DUMP_REGISTER
dump_register_file();
#endif

#ifdef DEBUG_DUMP_MEMORY
mmu->dump(DUMP_MEM_ADDR,DUMP_LEN);
#endif
		}
	}

	//print char* name
	void disasm(){
		printf("Disasm: %s\n",c_desc.name);
	}

	reg_t execute_insn()
	{
		return c_func(this, c_insn, state.pc);
	}

	state_t* get_state(){
		return &state;
	}

	mmu_t* get_mmu(){
		return mmu;
	}
};

#endif