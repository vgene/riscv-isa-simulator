//绑定指令
void register_instructions()
{

}

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

register_insn({0, 0, &illegal_instruction, &illegal_instruction, "invalid"});
build_opcode_map();