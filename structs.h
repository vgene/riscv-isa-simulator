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


#include <cstdint>
#include <string.h>
#include <strings.h>
#include <cinttypes>

typedef int64_t sreg_t;
typedef uint64_t reg_t;
typedef uint64_t freg_t;


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

//Typedef: instruction bits
typedef uint64_t insn_bits_t;
//end of instruction bits

//Typedef: instruction function
typedef reg_t (*insn_func_t)(insn_t, reg_t);
//end of instruction function

typedef int64_t sreg_t;
typedef uint64_t reg_t;
typedef uint64_t freg_t;

const int NXPR = 32;
const int NFPR = 32;

struct state_t
{
  reg_t pc;
  regfile_t<reg_t, NXPR, true> XPR;
  regfile_t<freg_t, NFPR, false> FPR;
};

struct insn_desc_t{
  insn_bits_t mask;
  insn_bits_t match;

  insn_func_t rv64;
  char* name;
};

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

  int64_t rvc_imm() { return x(2, 5) + (xs(12, 1) << 5); }
  int64_t rvc_zimm() { return x(2, 5) + (x(12, 1) << 5); }
  int64_t rvc_addi4spn_imm() { return (x(6, 1) << 2) + (x(5, 1) << 3) + (x(11, 2) << 4) + (x(7, 4) << 6); }
  int64_t rvc_addi16sp_imm() { return (x(6, 1) << 4) + (x(2, 1) << 5) + (x(5, 1) << 6) + (x(3, 2) << 7) + (xs(12, 1) << 9); }
  int64_t rvc_lwsp_imm() { return (x(4, 3) << 2) + (x(12, 1) << 5) + (x(2, 2) << 6); }
  int64_t rvc_ldsp_imm() { return (x(5, 2) << 3) + (x(12, 1) << 5) + (x(2, 3) << 6); }
  int64_t rvc_swsp_imm() { return (x(9, 4) << 2) + (x(7, 2) << 6); }
  int64_t rvc_sdsp_imm() { return (x(10, 3) << 3) + (x(7, 3) << 6); }
  int64_t rvc_lw_imm() { return (x(6, 1) << 2) + (x(10, 3) << 3) + (x(5, 1) << 6); }
  int64_t rvc_ld_imm() { return (x(10, 3) << 3) + (x(5, 2) << 6); }
  int64_t rvc_j_imm() { return (x(3, 3) << 1) + (x(11, 1) << 4) + (x(2, 1) << 5) + (x(7, 1) << 6) + (x(6, 1) << 7) + (x(9, 2) << 8) + (x(8, 1) << 10) + (xs(12, 1) << 11); }
  int64_t rvc_b_imm() { return (x(3, 2) << 1) + (x(10, 2) << 3) + (x(2, 1) << 5) + (x(5, 2) << 6) + (xs(12, 1) << 8); }
  int64_t rvc_simm3() { return x(10, 3); }
  uint64_t rvc_rd() { return rd(); }
  uint64_t rvc_rs1() { return rd(); }
  uint64_t rvc_rs2() { return x(2, 5); }
  uint64_t rvc_rs1s() { return 8 + x(7, 3); }
  uint64_t rvc_rs2s() { return 8 + x(2, 3); }
private:
  insn_bits_t b;
  uint64_t x(int lo, int len) { return (b >> lo) & ((insn_bits_t(1) << len)-1); }
  uint64_t xs(int lo, int len) { return int64_t(b) << (64-lo-len) >> (64-len); }
  uint64_t imm_sign() { return xs(63, 1); }
};
//end of instruction bits

//Helper Macros
#define sext32(x) ((sreg_t)(int32_t)(x))
#define zext32(x) ((reg_t)(uint32_t)(x))
#define sext_xlen(x) (((sreg_t)(x) << (64-xlen)) >> (64-xlen))
#define zext_xlen(x) (((reg_t)(x) << (64-xlen)) >> (64-xlen))
#define set_pc(x) \
  do { if (unlikely(((x) & 2)) && !p->supports_extension('C')) \
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


struct insn_fetch_t{
  insn_func_t func;
  insn_t insn;
}