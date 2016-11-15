/*
* CPU template
* 
*
*/

// chain是一个链表
// 
#ifndef RISCV_CPU_T_H
#define RISCV_CPU_T_H

#define DEBUG

#include "structs.h"
#include "mmu.h"
#include <vector>
#include <stdio.h>


const int NXPR = 32;
const int NFPR = 32;

class cpu_t;
//Typedef: instruction function
typedef reg_t (*insn_func_t)(cpu_t*, insn_t, reg_t);
//end of instruction function


struct state_t
{
  reg_t pc;
  regfile_t<reg_t, NXPR, true> XPR;
  regfile_t<freg_t, NFPR, false> FPR;
};

struct insn_desc_t{
  insn_bits_t match;
  insn_bits_t mask;

  insn_func_t rv64;
  char* name;
};



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
	// disasm_insn_t c_disasm; //current instruction diassembled
	insn_func_t c_func; //current function
	std::vector<insn_desc_t> instructions;

	// DEBUG
	void check_instructions()
	{
		printf("%s\n","START CHECK INSTRUCTIONS");
		printf("%s\n",instructions[0].name);
		printf("MASK/MATCH: %x %x\n", instructions[0].mask,instructions[0].match);

		printf("%s\n",instructions[1].name);
		printf("MASK/MATCH: %x %x\n", instructions[1].mask, instructions[1].match);

		printf("%s%d\n","check instruction size:",instructions.size());
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



public:

	cpu_t(){
		cpu_t("");
	}

	cpu_t(char* isa){
		mmu = new mmu_t();
		state.pc=0;
		register_instructions();
		check_instructions();
	}

	void decode_insn()
	{
		insn_desc_t* p = &instructions[0];

		while ((c_insn.bits() & p->mask) != p->match){
			#ifdef DEBUG
			printf("INSN: %s\n", p->name);
			printf("HAVE: %x\n", c_insn.bits() & p->mask);
			printf("WANT: %x\n",p->match);
			#endif
			p++;
		}

		#ifdef DEBUG
		printf("INSN: %s\n", p->name);
		printf("HAVE: %x\n", c_insn.bits() & p->mask);
		printf("WANT: %x\n",p->match);
		#endif

		c_desc = *p;

		printf("Instruction is: %s\n", c_desc.name);
		c_func = c_desc.rv64;

		#ifdef DEBUG
		disasm();
		#endif

	}


	void step(int steps)
	{
		while (steps>0){
			printf("%d\n", instructions.size());

			insn_t* insn = new insn_t(mmu->load_insn(state.pc));
			c_insn = *insn;

			decode_insn();
			state.pc = execute_insn();
			#ifdef DEBUG
			printf("PC: %x\n", state.pc);
			#endif
			steps--;
		}
	}

	//print char* name
	void disasm(){
		printf("%s%s\n", "disasm: ",c_desc.name);
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