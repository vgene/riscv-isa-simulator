// ADD

reg_t rv64_add(processor_t* p, insn_t insn, reg_t pc)
{
  int xlen = 64;
  reg_t npc = sext_xlen(pc + insn_length(MATCH_ADD));

//
  WRITE_RD(sext_xlen(RS1+RS2));
//
  return npc;
}

/*	SUB */
reg_t rv64_sub(processor_t* p, insn_t insn, reg_t pc)
{
  int xlen = 64;
  reg_t npc = sext_xlen(pc + insn_length(MATCH_SUB));

//
  WRITE_RD(sext_xlen(RS1 - RS2));
//
  return npc;
}
