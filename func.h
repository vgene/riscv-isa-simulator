#ifndef RISCV_FUNC_H
#define RISCV_FUNC_H

#include "cpu.h"

// ADD
const int PC_INC = 4;
const int xlen =4;
reg_t rv64_add(cpu_t* p, insn_t insn, reg_t pc)
{

  reg_t npc = sext_xlen(pc + PC_INC);

//
  WRITE_RD(sext_xlen(RS1+RS2));
//
  return npc;
}

/*	SUB */
reg_t rv64_sub(cpu_t* p, insn_t insn, reg_t pc)
{
  reg_t npc = sext_xlen(pc + PC_INC);

//
  WRITE_RD(sext_xlen(RS1 - RS2));
//
  return npc;
}

reg_t rv64_sll(cpu_t* p, insn_t insn, reg_t pc)
{
  reg_t npc = sext_xlen(pc + PC_INC);

//
	WRITE_RD(sext_xlen(RS1 << (RS2 & (xlen-1))));
//
  return npc;
}

reg_t rv64_slt(cpu_t* p, insn_t insn, reg_t pc)
{
  reg_t npc = sext_xlen(pc + PC_INC);

//

//
  return npc;
}

	// SLTU
	// XOR
	// SRL
	// SRA
	// OR
	// AND

#endif