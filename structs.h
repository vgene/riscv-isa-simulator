/*
decode.h

arg_t -> to_string


NEED TO IMPLEMENT: R64IFM
*/

/*
Several Structures related to decoding

Classes:
  insn_t - holds instruction bits and provide multiple functions to
    extract meaningful information
  regfile_t - holds register file with a template class T, can be assigned
    with integer64 register or float register;
    NXPR/NFPR = number of register(floating) files
  insn_desc_t
    insn_bits_t mask
    insn_bits_t match
    insn_func_t rv32 //which stores the action function of the instruction
    insn_func_t rv64

  insn_func_t

*/
#ifndef RISCV_STRUCT_H
#define RISCV_STRUCT_H

#include "exception.h"
#include <cstdint>
#include <string.h>
#include <strings.h>
#include <cinttypes>

typedef int64_t sreg_t;
typedef uint64_t reg_t;
typedef uint64_t freg_t;

//Typedef: instruction bits
typedef uint64_t insn_bits_t;
//end of instruction bits

//to determine instruction encoding to be 16bits/32bits/48bits/64bits
#define insn_length(x) \
  (((x) & 0x03) < 0x03 ? 2 : \
   ((x) & 0x1f) < 0x1f ? 4 : \
   ((x) & 0x3f) < 0x3f ? 6 : \
   8)

#define MAX_INSN_LENGTH 8
#define PC_ALIGN 2


//Class: instruction
class insn_t
{
public:
  insn_t() = default;
  insn_t(insn_bits_t bits) : b(bits) {}
  insn_bits_t bits() { return b; }
  int length() { return insn_length(b); }
  int64_t i_imm() { return int64_t(b) >> 20; }
  int64_t s_imm() { return x(7, 5) + (xs(25, 7) << 5); }
  int64_t sb_imm() { return (x(8, 4) << 1) + (x(25,6) << 5) + (x(7,1) << 11) + (imm_sign() << 12); }
  int64_t u_imm() { return int64_t(b) >> 12 << 12; }
  int64_t uj_imm() { return (x(21, 10) << 1) + (x(20, 1) << 11) + (x(12, 8) << 12) + (imm_sign() << 20); }
  uint64_t rd() { return x(7, 5); }
  uint64_t rs1() { return x(15, 5); }
  uint64_t rs2() { return x(20, 5); }
  uint64_t rs3() { return x(27, 5); }
  uint64_t rm() { return x(12, 3); }
  uint64_t csr() { return x(20, 12); }

private:
  insn_bits_t b;
  uint64_t x(int lo, int len) { return (b >> lo) & ((insn_bits_t(1) << len)-1); }
  uint64_t xs(int lo, int len) { return int64_t(b) << (64-lo-len) >> (64-len); }
  uint64_t imm_sign() { return xs(63, 1); }
};
//end of instruction bits

//Class: register file, if zero_reg first Register cannot be modify
template <class T, size_t N, bool zero_reg>
class regfile_t
{
public:
  void write(size_t i, T value)
  {
    if (!zero_reg || i != 0)
      data[i] = value;
  }
  const T& operator [] (size_t i) const
  {
    return data[i];
  }
private:
  T data[N];
};
//end of register file



//Helper Macros
#define unlikely(x) __builtin_expect(x, 0)
#define require(x) if (unlikely(!(x))) throw trap_illegal_instruction()

#define sext32(x) ((sreg_t)(int32_t)(x))
#define zext32(x) ((reg_t)(uint32_t)(x))
#define sext_xlen(x) (((sreg_t)(x) << (64-xlen)) >> (64-xlen))
#define zext_xlen(x) (((reg_t)(x) << (64-xlen)) >> (64-xlen))
#define set_pc(x) \
  do { if (unlikely(((x) & 2))) \
         throw trap_instruction_address_misaligned(x); \
       npc = sext_xlen(x); \
     } while(0)

#define MMU (*p->get_mmu())
#define STATE (*p->get_state())
#define READ_REG(reg) STATE.XPR[reg]
#define READ_FREG(reg) STATE.FPR[reg]
#define RS1 READ_REG(insn.rs1())
#define RS2 READ_REG(insn.rs2())
#define WRITE_RD(value) WRITE_REG(insn.rd(), value)
#define WRITE_REG(reg, value) STATE.XPR.write(reg, value)
#define WRITE_FREG(reg, value) DO_WRITE_FREG(reg, value)

#define SHAMT (insn.i_imm() & 0x3F)
#define BRANCH_TARGET (pc + insn.sb_imm())
#define JUMP_TARGET (pc + insn.uj_imm())


#define get_field(reg, mask) (((reg) & (decltype(reg))(mask)) / ((mask) & ~((mask) << 1)))
#define set_field(reg, mask, val) (((reg) & ~(decltype(reg))(mask)) | (((decltype(reg))(val) * ((mask) & ~((mask) << 1))) & (decltype(reg))(mask)))
#define FP_RD_NE  0
#define FP_RD_0   1
#define FP_RD_DN  2
#define FP_RD_UP  3
#define FP_RD_NMM 4

#define FSR_RD_SHIFT 5
#define FSR_RD   (0x7 << FSR_RD_SHIFT)

#define FRS1 READ_FREG(insn.rs1())
#define FRS2 READ_FREG(insn.rs2())
#define FRS3 READ_FREG(insn.rs3())
#define DO_WRITE_FREG(reg, value) (STATE.FPR.write(reg, value))
#define WRITE_FRD(value) WRITE_FREG(insn.rd(), value)

#define RM ({ int rm = insn.rm(); \
              if(rm == 7) rm = STATE.frm; \
              if(rm > 4) throw trap_illegal_instruction(); \
              rm; })


/* Convenience wrappers to simplify softfloat code sequences */
#define f32(x) ((float_t){(uint32_t)x})
#define f64(x) ((double_t){(uint64_t)x})


#endif