/*
* CPU template
* 
*
*/

// chain是一个链表
// 

#define DEBUG

#include "structs.h"
#include "mmu.h"

#typedef uint64_t insn_bits_t;

class cpu_t
{
public:
	cpu_t(char* isa){
		mmu = new mmu_t();
		state.pc=0;
		register_instructions();
	}

	bool decode_insn()
	{
		insn_desc_t *p = &instructions[0];

		//find right instruction
		while ((c_insn.bits() & p->mask) != p->match)
			p++;

		c_desc = *p;
		c_func = p.rv64;

		#ifdef DEBUG
		disasm();
		#endif

	}

	reg_t illegal_instruction(insn_t insn, reg_t pc)
	{
		//print insn.bits();
		return 0;
	}

	bool step()
	{
		insn_t* insn = new insn_t(mmu->load_insn(state.pc));
		c_insn = *insn;

		if (!decode_insn()){

			return false;
		}else{

			pc = execute_insn();
			return true;
		}
	}

	//print char* name
	void disasm(){
		printf("%s%s\n", "disasm:?",c_desc.name);
	}

	reg_t execute_insn()
	{
		return c_func(insn, pc);
	}

	//register all instructions into vector instructions
	void register_instructions()
	{
		#define REGISTER_INSN(name, match, mask) \
		  extern reg_t rv64_##name(insn_t, reg_t); \
		  register_insn((insn_desc_t){match, mask, rv64_##name, #name});

		#define DECLARE_INSN(name, match, mask) \
			insn_bits_t name##_match = (match), name##_mask = (mask);
			#include "encoding.h"
		#undef DECLARE_INSN

		#define DEFINE_INSN(name) \
			REGISTER_INSN(name, name##_match, name##_mask)
			#include "insn_list.h"
		#undef DEFINE_INSN

		register_insn({0, 0, &illegal_instruction, &illegal_instruction, "illegal"});
	}

	void register_insn(insn_desc_t desc)
	{
		instructions.push_back(desc);
	}

	// DEBUG
	void check_instructions()
	{

	}

private:
	state_t state;//state contains PC and register file
	mmu_t* mmu; //MMU

	insn_t c_insn; // current instruction
	insn_desc_t c_desc; //current instruction description
	// disasm_insn_t c_disasm; //current instruction diassembled
	insn_func_t c_func; //current function
	std::vector<insn_desc_t> instructions;
}