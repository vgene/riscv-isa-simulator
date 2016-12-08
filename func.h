#ifndef RISCV_FUNC_H
#define RISCV_FUNC_H

#define RISCV_brk 214
#define RISCV_write 64
#define RISCV_read 63
#define RISCV_time 1062
#define RISCV_exit 93
#define RISCV_fstat 80
#define RISCV_close 57
#define RISCV_gettimeofday 169
#define RISCV_lseek 62

#include "cpu.h"
#include "multi.h"
#include <math.h>
#include <unistd.h>
#include <cstdint>
#include <sys/syscall.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/time.h>

const int PC_INC = 4;
const int xlen =64;



double d_Rounding(double a, int rm){
    switch(rm){
        case 0:{
            return rint(a);
            break;
        }
        case 1:{
            return trunc(a);
            break;
        }
        case 2:{
            return floor(a); 
            break;
        }
        case 3:{
            return ceil(a);
            break;
        }
        default :{
            return a;
        }
    }
}


void SIM_write(cpu_t* p, uint64_t addr, uint64_t len){
    //char buf[1000000];
    char* buf = (char*)malloc(len);
    for(int i = 0; i < len;i ++){
        buf[i]= (MMU.read_uint8(addr+i));
    }

    WRITE_REG(10, write(1,(void*)buf,len));

    delete buf;

}
void SIM_read(cpu_t* p, uint64_t addr, uint64_t len){
    char* buf=(char*)malloc(len);
    int read_num=read(0,(void*)buf,len);

    for(int i = 0;i < read_num ; i ++){
        MMU.write_8(addr+i,buf[i]);
    }
    delete buf;

    WRITE_REG(10,read_num);
}

reg_t rv64_scall(cpu_t* p, insn_t insn, reg_t pc)
{
    // syscall，系统调用号存在17号寄存器中，
    // 数据大小在R[12]寄存器中，地址在R[11]中


    reg_t npc = sext_xlen(pc + PC_INC);

    uint64_t scall_num= READ_REG(17);
    uint64_t addr = READ_REG(11);
    uint64_t len = READ_REG(12); 


    switch(scall_num)
    {
        case RISCV_write:
            SIM_write(p,addr,len);
            break;
        case RISCV_read://先读到一个数组里，再放入map
            SIM_read(p,addr,len);
            break;
        case RISCV_time:
            WRITE_REG(10,(reg_t)time((time_t*)(addr)));
            break;
        case RISCV_exit:
            #ifdef PRINT_CACHE
            MMU.print_cache_stats();
            #endif

            #ifdef COUNT
            p->print_count();
            #endif
            exit(0);
        case RISCV_brk:
        case RISCV_lseek:
            break;
        case RISCV_fstat:
            // if(addr == READ_REG(2) && READ_REG(12) == 0 && READ_REG(13) == 0)
            //     WRITE_REG(10,isatty(READ_REG(10)));
            // else
                WRITE_REG(10,fstat((int)READ_REG(10), (struct stat*)NULL));

            break;

        case RISCV_close:
            break;
        case RISCV_gettimeofday:{
            uint64_t tv_addr = READ_REG(10);
            // WRITE_REG(10,times((struct tms*)READ_REG(10)));
            struct timeval* tv;
            tv = new timeval;
            WRITE_REG(10,gettimeofday(tv,(struct timezone *)NULL));

            MMU.write_bare(tv_addr, (char*)tv, sizeof(tv));
            delete tv;
            break;
        }
        default:
            printf("Unknown system call! %llx", scall_num);
            exit(1);
    }

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

reg_t rv64_fence(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    return npc;
}


/*
csrrw
csrrc
csrrs*/
// reg_t rv64_csrrw(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// // int csr = validate_csr(insn.csr(), true);
// // reg_t old = p->get_csr(csr);
// // p->set_csr(csr, RS1);
// // WRITE_RD(sext_xlen(old));

//     return npc;
// }


// reg_t rv64_csrrc(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// // int csr = validate_csr(insn.csr(), true);
// // reg_t old = p->get_csr(csr);
// // p->set_csr(csr, old & ~RS1);
// // WRITE_RD(sext_xlen(old));

//     return npc;
// }

// reg_t rv64_csrrs(cpu_t* p, insn_t insn, reg_t pc)
// {
//     reg_t npc = sext_xlen(pc + PC_INC);

// // int csr = validate_csr(insn.csr(), insn.rs1() != 0);
// // reg_t old = p->get_csr(csr);
// // p->set_csr(csr, old | RS1);
// // WRITE_RD(sext_xlen(old));

//     return npc;
// }

/*
fld
flw
fsw
fsd
*/

reg_t rv64_fld(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(MMU.read_int64(RS1 + insn.i_imm()));

    return npc;
}

reg_t rv64_flw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(MMU.read_uint32(RS1 + insn.i_imm()));

    return npc;
}

reg_t rv64_fsd(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_64(RS1 + insn.s_imm(), FRS2);

    return npc;
}

reg_t rv64_fsw(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

MMU.write_32(RS1 + insn.s_imm(), FRS2);

    return npc;
}

/*

fmul_d
fdiv_d
fmul_s
fdiv_s

*/


reg_t rv64_fmul_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f64_freg(freg_f64(FRS1)*freg_f64(FRS2)));


    return npc;
}

reg_t rv64_fdiv_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f64_freg(freg_f64(FRS1)/freg_f64(FRS2)));

    return npc;
}

reg_t rv64_fmul_s(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f32_freg(freg_f32(FRS1)*freg_f32(FRS2)));

    return npc;
}

reg_t rv64_fdiv_s(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f32_freg(freg_f32(FRS1)/freg_f32(FRS2)));

    return npc;
}


reg_t rv64_fmadd_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f64_freg(freg_f64(FRS1)*freg_f64(FRS2)+freg_f64(FRS3)));

    return npc;
}






/*
fmv_s_x
fcvt_d_l
fcvt_l_d

fcvt.d.s
fcvt.d.w
fcvt.d.wu
fcvt.s.d
fcvt.s.l
fcvt.s.w
fcvt.w.d
fcvt.wu.d

*/


reg_t rv64_fmv_s_x(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(zext32(RS1));

    return npc;
}


reg_t rv64_fcvt_d_l(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f64_freg(i64_f64(RS1)));

    return npc;
}

reg_t rv64_fcvt_l_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(f64_i64(d_Rounding(RS1, insn.rm())));

    return npc;
}

reg_t rv64_fcvt_d_s(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD(f64_freg((double)freg_f32(FRS1)));

    return npc;
}

reg_t rv64_fcvt_d_w(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);
    

    WRITE_FRD(f64_freg(i32_f64(int32_t(RS1))));

    return npc;
}

reg_t rv64_fcvt_d_wu(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f64_freg(i32_f64((uint32_t)(RS1))));

    return npc;
}

reg_t rv64_fcvt_s_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);


    WRITE_FRD(f32_freg((float)freg_f64(FRS1)));

    return npc;
}

reg_t rv64_fcvt_s_l(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f32_freg(i64_f32(RS1)));

    return npc;
}

reg_t rv64_fcvt_s_w(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f32_freg(i32_f32((int32_t)RS1)));

    return npc;
}

reg_t rv64_fcvt_w_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_RD(f64_i32(freg_f64(FRS1)));

    return npc;
}

reg_t rv64_fcvt_wu_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_RD(f64_u32(freg_f64(FRS1)));

    return npc;
}


// fmv.x.d
// fcvt.s.l
// fcvt.s.w
// fcvt.s.d
// fcvt.d.s

reg_t rv64_fmv_x_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_RD(FRS1);

    return npc;
}

reg_t rv64_fmv_d_x(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(RS1);

    return npc;
}

reg_t rv64_fadd_s(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f32_freg(freg_f32(FRS1)+freg_f32(FRS2)));

    return npc;
}


reg_t rv64_fadd_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f64_freg(freg_f64(FRS1)+freg_f64(FRS2)));

    return npc;
}

reg_t rv64_fsub_s(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f32_freg(freg_f32(FRS1)-freg_f32(FRS2)));

    return npc;
}


reg_t rv64_fsub_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

    WRITE_FRD(f64_freg(freg_f64(FRS1)-freg_f64(FRS2)));

    return npc;
}

reg_t rv64_fsgnj_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_FRD((FRS1 &~ INT64_MIN) | (FRS2 & INT64_MIN));

    return npc;
}

reg_t rv64_feq_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(freg_f64(FRS1) == freg_f64(FRS2));

    return npc;
}

reg_t rv64_fle_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(freg_f64(FRS1) <= freg_f64(FRS2));

    return npc;
}

reg_t rv64_flt_d(cpu_t* p, insn_t insn, reg_t pc)
{
    reg_t npc = sext_xlen(pc + PC_INC);

WRITE_RD(freg_f64(FRS1) < freg_f64(FRS2));

    return npc;
}
/*
fmadd.d 
fmv.d
fmv.d.x
fneg.d
fsd
fsub.d
fadd.d
feq.d
fle.d
*/

#endif