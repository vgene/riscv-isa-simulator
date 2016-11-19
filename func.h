#ifndef RISCV_FUNC_H
#define RISCV_FUNC_H

#include "cpu.h"
#include "multi.h"

const int PC_INC = 4;
const int xlen =64;


reg_t rv64_scall(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    exit(0);
    return npc;
}

reg_t rv64_add(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(RS1+RS2));
    return npc;
}

/*  SUB */
reg_t rv64_sub(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(RS1 - RS2));
    return npc;
}

reg_t rv64_sll(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(RS1 << (RS2 & (xlen-1))));
    return npc;
}

reg_t rv64_slt(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sreg_t(RS1) < sreg_t(RS2));
    return npc;
}

reg_t rv64_sltu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(RS1 < reg_t(insn.i_imm()));
    return npc;
}


reg_t rv64_xor(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(RS1 ^ RS2);
    return npc;
}


reg_t rv64_srl(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(zext_xlen(RS1) >> (RS2 & (xlen-1))));
    return npc;
}

reg_t rv64_sra(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(sext_xlen(RS1) >> (RS2 & (xlen-1))));
    return npc;
}

reg_t rv64_or(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(RS1 | RS2);
    return npc;
}

reg_t rv64_and(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(RS1 & RS2);
    return npc;
}

// SLLI
// SLTI
// SLTIU
// XORI
// SRLI
// SRAI
// ORI
// ANDI


reg_t rv64_addi(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(sext_xlen(RS1 + insn.i_imm()));
    return npc;
}
reg_t rv64_slli(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    require(SHAMT < xlen);
    WRITE_RD(sext_xlen(RS1 << SHAMT));
    return npc;
}
reg_t rv64_slti(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_RD(sreg_t(RS1) < sreg_t(insn.i_imm()));
    return npc;
}
reg_t rv64_sltiu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(RS1 < reg_t(insn.i_imm()));
    return npc;
}
reg_t rv64_xori(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    WRITE_RD(insn.i_imm() ^ RS1);
    return npc;
}
reg_t rv64_srli(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

require(SHAMT < xlen);
WRITE_RD(sext_xlen(zext_xlen(RS1) >> SHAMT));

    return npc;
}
reg_t rv64_srai(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

require(SHAMT < xlen);
WRITE_RD(sext_xlen(sext_xlen(RS1) >> SHAMT));

    return npc;
}
reg_t rv64_ori(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(insn.i_imm() | RS1);

    return npc;
}
reg_t rv64_andi(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(insn.i_imm() & RS1);

    return npc;
}

    // BEQ
    // BNE
    // BLT
    // BGE
    // BLEU
    // BGEU

reg_t rv64_beq(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(RS1 == RS2)
    set_pc(BRANCH_TARGET);

    return npc;
}
reg_t rv64_bne(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(RS1 != RS2)
  set_pc(BRANCH_TARGET);

    return npc;
}
reg_t rv64_blt(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(sreg_t(RS1) < sreg_t(RS2))
  set_pc(BRANCH_TARGET);

    return npc;
}
reg_t rv64_bge(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(sreg_t(RS1) >= sreg_t(RS2))
  set_pc(BRANCH_TARGET);

    return npc;
}
reg_t rv64_bltu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(RS1 < RS2)
  set_pc(BRANCH_TARGET);

    return npc;
}
reg_t rv64_bgeu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if(RS1 >= RS2)
  set_pc(BRANCH_TARGET);

    return npc;
}

/*
LB
LH
LW
LD
LBU
LHU
LWU
*/
reg_t rv64_lb(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_int8(RS1 + insn.i_imm()));

    return npc;
}
reg_t rv64_lh(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_int16(RS1 + insn.i_imm()));

    return npc;
}
reg_t rv64_lw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_int32(RS1 + insn.i_imm()));

    return npc;
}


reg_t rv64_ld(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_int64(RS1 + insn.i_imm()));

    return npc;
}

reg_t rv64_lbu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_uint8(RS1 + insn.i_imm()));


    return npc;
}
reg_t rv64_lhu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_uint16(RS1 + insn.i_imm()));

    return npc;
}
reg_t rv64_lwu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(MMU.read_uint32(RS1 + insn.i_imm()));

    return npc;
}

/*
SB
SH
SW
SD
*/
reg_t rv64_sb(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_8(RS1 + insn.s_imm(), RS2);

    return npc;
}
reg_t rv64_sh(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_16(RS1 + insn.s_imm(), RS2);

    return npc;
}
reg_t rv64_sw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_32(RS1 + insn.s_imm(), RS2);

    return npc;
}

reg_t rv64_sd(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_64(RS1 + insn.s_imm(), RS2);

    return npc;
}

// JAL
// JALR
// AUIPC
// LUI
reg_t rv64_jal(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t tmp = npc;
set_pc(JUMP_TARGET);
WRITE_RD(tmp);

    return npc;
}

reg_t rv64_jalr(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t tmp = npc;
set_pc((RS1 + insn.i_imm()) & ~reg_t(1));
WRITE_RD(tmp);

    return npc;
}
reg_t rv64_auipc(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext_xlen(insn.u_imm() + pc));

    return npc;
}

reg_t rv64_lui(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(insn.u_imm());

    return npc;
}

// ADDW
// SUBW
// SLLW
// SRLW
// SRAW

reg_t rv64_addw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(RS1 + RS2));

    return npc;
}
reg_t rv64_subw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(RS1 - RS2));

    return npc;
}
reg_t rv64_sllw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext_xlen(RS1 << (RS2 & (xlen-1))));

    return npc;
}

reg_t rv64_srlw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32((uint32_t)RS1 >> (RS2 & 0x1F)));

    return npc;
}

reg_t rv64_sraw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(int32_t(RS1) >> (RS2 & 0x1F)));

    return npc;
}

// ADDIW
// SLLIW
// SRLIW
// SRAIW

reg_t rv64_addiw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(insn.i_imm() + RS1));

    return npc;
}

reg_t rv64_slliw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(RS1 << SHAMT));

    return npc;
}
reg_t rv64_srliw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32((uint32_t)RS1 >> SHAMT));

    return npc;
}
reg_t rv64_sraiw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(int32_t(RS1) >> SHAMT));

    return npc;
}


    // MUL
    // MULW
    // MULH
    // MULHU
    // MULHSU
    
    // DIV
    // DIVU
    // DIVW
    // DIVUW
    // REM
    // REMU
    // REMW
    // REMUW

reg_t rv64_mul(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext_xlen(RS1 * RS2));

    return npc;
}


reg_t rv64_mulw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(sext32(RS1 * RS2));

    return npc;
}


reg_t rv64_mulh(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);


if (xlen == 64)
  WRITE_RD(mulh(RS1, RS2));
else
  WRITE_RD(sext32((sext32(RS1) * sext32(RS2)) >> 32));


    return npc;
}

reg_t rv64_mulhu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if (xlen == 64)
  WRITE_RD(mulhu(RS1, RS2));
else
  WRITE_RD(sext32(((uint64_t)(uint32_t)RS1 * (uint64_t)(uint32_t)RS2) >> 32));

    return npc;
}

reg_t rv64_mulhsu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

if (xlen == 64)
  WRITE_RD(mulhsu(RS1, RS2));
else
  WRITE_RD(sext32((sext32(RS1) * reg_t((uint32_t)RS2)) >> 32));

    return npc;
}
reg_t rv64_div(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

sreg_t lhs = sext_xlen(RS1);
sreg_t rhs = sext_xlen(RS2);
if(rhs == 0)
  WRITE_RD(UINT64_MAX);
else if(lhs == INT64_MIN && rhs == -1)
  WRITE_RD(lhs);
else
  WRITE_RD(sext_xlen(lhs / rhs));

    return npc;
}

reg_t rv64_divu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t lhs = zext_xlen(RS1);
reg_t rhs = zext_xlen(RS2);
if(rhs == 0)
  WRITE_RD(UINT64_MAX);
else
  WRITE_RD(sext_xlen(lhs / rhs));

    return npc;
}
reg_t rv64_divw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

sreg_t lhs = sext32(RS1);
sreg_t rhs = sext32(RS2);
if(rhs == 0)
  WRITE_RD(UINT64_MAX);
else
  WRITE_RD(sext32(lhs / rhs));


    return npc;
}

reg_t rv64_divuw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t lhs = zext32(RS1);
reg_t rhs = zext32(RS2);
if(rhs == 0)
  WRITE_RD(UINT64_MAX);
else
  WRITE_RD(sext32(lhs / rhs));


    return npc;
}

reg_t rv64_rem(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

sreg_t lhs = sext_xlen(RS1);
sreg_t rhs = sext_xlen(RS2);
if(rhs == 0)
  WRITE_RD(lhs);
else if(lhs == INT64_MIN && rhs == -1)
  WRITE_RD(0);
else
  WRITE_RD(sext_xlen(lhs % rhs));

    return npc;
}

reg_t rv64_remu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t lhs = zext_xlen(RS1);
reg_t rhs = zext_xlen(RS2);
if(rhs == 0)
  WRITE_RD(sext_xlen(RS1));
else
  WRITE_RD(sext_xlen(lhs % rhs));

    return npc;
}

reg_t rv64_remw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

sreg_t lhs = sext32(RS1);
sreg_t rhs = sext32(RS2);
if(rhs == 0)
  WRITE_RD(lhs);
else
  WRITE_RD(sext32(lhs % rhs));


    return npc;
}

reg_t rv64_remuw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

reg_t lhs = zext32(RS1);
reg_t rhs = zext32(RS2);
if(rhs == 0)
  WRITE_RD(sext32(lhs));
else
  WRITE_RD(sext32(lhs % rhs));


    return npc;
}


/*
FLW
FSW
FMADD
FMSUB.S
FNMSUB.S
FNMSUB.S
FNMADD.S
FADD.S
FSUB.S
FMUL.S
FDIV.S
FSQRT.S
FSGNJ.S
FSGNJX.S
FMIN.S
FMAX.S
FCVT.W.S
FCVT.WU.S
FMV.X.S
FEQ.S
FLT.S
FLE.S
FCLASS.S
FCVT.S.W
FCVT.S.WU
FMV.S.X
FRCSR
FRRM
FRFLAGS
FSCSR
FSRM
FSFLAGS
FSRMI
FSFLAGSI
FCVT.L.S
FCVT.LU.S
FCVT.S.L
FCVT.S.LU
*/


// reg_t rv64_flw(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// WRITE_FRD(MMU.read_uint32(RS1 + insn.i_imm()));

//     return npc;
// }

// reg_t rv64_fsw(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// MMU.write_32(RS1 + insn.s_imm(), FRS2);

//     return npc;
// }

// reg_t rv64_fmadd_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// softfloat_roundingMode = RM;
// WRITE_FRD(f32_mulAdd(f32(FRS1), f32(FRS2), f32(FRS3)).v);
// set_fp_exceptions;

//     return npc;
// }

// reg_t rv64_fmsub_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }


// reg_t rv64_fnmsub_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }

// reg_t rv64_fnmadd_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fadd_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fsub_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fmul_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fdiv_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fsqrt_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fsgnj_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fsgnjx_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fmin_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_fmax_s(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
// reg_t rv64_(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);


//     return npc;
// }
#endif