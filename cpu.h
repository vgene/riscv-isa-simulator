/*
* CPU template
* 
*
*/

#ifndef RISCV_CPU_T_H
#define RISCV_CPU_T_H

#include "structs.h"
#include "mmu.h"
#include <vector>
#include <stdio.h>

// #define DEBUG
// #define DEBUG_DUMP_REGISTER

// #define DEBUG_DUMP_MEMORY
// #define DUMP_MEM_ADDR 0x00010e60
// #define DUMP_LEN 100

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

// control and status registers
  reg_t mstatus;
  reg_t mepc;
  reg_t mbadaddr;
  reg_t mtimecmp;
  reg_t mscratch;
  reg_t mcause;
  reg_t minstret;
  reg_t mie;
  reg_t mip;
  reg_t sepc;
  reg_t sbadaddr;
  reg_t sscratch;
  reg_t stvec;
  reg_t sptbr;
  reg_t scause;
  reg_t sutime_delta;
  reg_t suinstret_delta;
  reg_t tohost;
  reg_t fromhost;
  uint32_t fflags;
  uint32_t frm;
  bool serialized; // whether timer CSRs are in a well-defined state

  reg_t load_reservation;

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

	// cpu_t(){
	// 	cpu_t("","");
	// }

	cpu_t(const char* isa, const char * path){
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

		for (int step=0;step<steps; step++){

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

reg_t get_csr(int which)
{
  switch (which)
  {
    case CSR_FFLAGS:
      return state.fflags;
    case CSR_FRM:
      return state.frm;
    case CSR_FCSR:
      return (state.fflags << FSR_AEXC_SHIFT) | (state.frm << FSR_RD_SHIFT);
    // case CSR_MTIME:
    // case CSR_STIME:
    // case CSR_STIMEW:
    //   return sim->rtc;
    // case CSR_MTIMEH:
    // case CSR_STIMEH:
    // case CSR_STIMEHW:
    //   return sim->rtc >> 32;
    // case CSR_TIME:
    // case CSR_TIMEW:
    //   return sim->rtc + state.sutime_delta;
    case CSR_CYCLE:
    case CSR_CYCLEW:
    case CSR_INSTRET:
    case CSR_INSTRETW:
      return state.minstret + state.suinstret_delta;
    // case CSR_TIMEH:
    // case CSR_TIMEHW:
    //   if (xlen == 64)
    //     break;
    //   return (sim->rtc + state.sutime_delta) >> 32;
    case CSR_CYCLEH:
    case CSR_INSTRETH:
    case CSR_CYCLEHW:
    case CSR_INSTRETHW:
        break;
    case CSR_SEPC: return state.sepc;
    case CSR_SBADADDR: return state.sbadaddr;
    case CSR_STVEC: return state.stvec;
    case CSR_SCAUSE:
      return state.scause;
    case CSR_SPTBR: return state.sptbr;
    case CSR_SASID: return 0;
    case CSR_SSCRATCH: return state.sscratch;
    case CSR_MSTATUS: return state.mstatus;
    case CSR_MIP: return state.mip;
    case CSR_MIPI: return 0;
    case CSR_MIE: return state.mie;
    case CSR_MEPC: return state.mepc;
    case CSR_MSCRATCH: return state.mscratch;
    case CSR_MCAUSE: return state.mcause;
    case CSR_MBADADDR: return state.mbadaddr;
    case CSR_MTIMECMP: return state.mtimecmp;
    case CSR_MTDELEG: return 0;
  }
  throw trap_illegal_instruction();
}


void set_csr(int which, reg_t val)
{
  switch (which)
  {
    case CSR_FFLAGS:
      state.fflags = val & (FSR_AEXC >> FSR_AEXC_SHIFT);
      break;
    case CSR_FRM:
      state.frm = val & (FSR_RD >> FSR_RD_SHIFT);
      break;
    case CSR_FCSR:
      state.fflags = (val & FSR_AEXC) >> FSR_AEXC_SHIFT;
      state.frm = (val & FSR_RD) >> FSR_RD_SHIFT;
      break;
    // case CSR_MTIME:
    // case CSR_STIMEW:
    //   // this implementation ignores writes to MTIME
    //   break;
    // case CSR_MTIMEH:
    // case CSR_STIMEHW:
    //   // this implementation ignores writes to MTIME
    //   break;
    // case CSR_TIMEW:
    //   val -= sim->rtc;
    //   if (xlen == 32)
    //     state.sutime_delta = (uint32_t)val | (state.sutime_delta >> 32 << 32);
    //   else
    //     state.sutime_delta = val;
    //   break;
    // case CSR_TIMEHW:
    //   val = ((val << 32) - sim->rtc) >> 32;
    //   state.sutime_delta = (val << 32) | (uint32_t)state.sutime_delta;
    //   break;
    case CSR_CYCLEW:
    case CSR_INSTRETW:
      val -= state.minstret;
        state.suinstret_delta = val;
      break;
    case CSR_CYCLEHW:
    case CSR_INSTRETHW:
      val = ((val << 32) - state.minstret) >> 32;
      state.suinstret_delta = (val << 32) | (uint32_t)state.suinstret_delta;
      break;
    case CSR_SEPC: state.sepc = val; break;
    case CSR_STVEC: state.stvec = val >> 2 << 2; break;
    case CSR_SSCRATCH: state.sscratch = val; break;
    case CSR_MEPC: state.mepc = val; break;
    case CSR_MSCRATCH: state.mscratch = val; break;
    case CSR_MCAUSE: state.mcause = val; break;
    case CSR_MBADADDR: state.mbadaddr = val; break;
    case CSR_MTOHOST:
      if (state.tohost == 0)
        state.tohost = val;
      break;
    case CSR_MFROMHOST: state.fromhost = val; break;
  }
}

};

#endif