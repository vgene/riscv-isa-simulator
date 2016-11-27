#ifndef RISCV_MMU_H
#define RISCV_MMU_H

#include "structs.h"
#include "storage.h"
#include "cache.h"
#include "memory.h"

#include <cstdint>
#include <cstdlib>
#include <cstdio>
#include <map>

typedef uint64_t Elf64_Addr;
typedef uint16_t Elf64_Half;
typedef uint32_t Elf64_Word;
typedef uint64_t Elf64_Off;
typedef uint64_t Elf64_Xword;

const int EI_NIDENT	= 16;


struct Elf64_Ehdr 	/* ELf header : 64 byte */
{
  unsigned char	e_ident[EI_NIDENT];	/* ELF "magic number" */
  Elf64_Half e_type;
  Elf64_Half e_machine;
  Elf64_Word e_version;
  Elf64_Addr e_entry;		/* Entry point virtual address */
  Elf64_Off e_phoff;		/* Program header table file offset */
  Elf64_Off e_shoff;		/* Section header table file offset */
  Elf64_Word e_flags;
  Elf64_Half e_ehsize;
  Elf64_Half e_phentsize;
  Elf64_Half e_phnum;
  Elf64_Half e_shentsize;
  Elf64_Half e_shnum;
  Elf64_Half e_shstrndx;
};

struct Elf64_Phdr	/* Program header : 56 bytes */
{
  Elf64_Word p_type;
  Elf64_Word p_flags;
  Elf64_Off p_offset;		/* Segment file offset */
  Elf64_Addr p_vaddr;		/* Segment virtual address */
  Elf64_Addr p_paddr;		/* Segment physical address */
  Elf64_Xword p_filesz;		/* Segment size in file */
  Elf64_Xword p_memsz;		/* Segment size in memory */
  Elf64_Xword p_align;		/* Segment alignment, file & memory */
};

struct Elf64_Shdr 	/* Section header : 64 bytes */
{
  Elf64_Word sh_name;		/* Section name, index in string tbl */
  Elf64_Word sh_type;		/* Type of section */
  Elf64_Xword sh_flags;		/* Miscellaneous section attributes */
  Elf64_Addr sh_addr;		/* Section virtual addr at execution */
  Elf64_Off sh_offset;		/* Section file offset */
  Elf64_Xword sh_size;		/* Size of section in bytes */
  Elf64_Word sh_link;		/* Index of another section */
  Elf64_Word sh_info;		/* Additional section information */
  Elf64_Xword sh_addralign;	/* Section alignment */
  Elf64_Xword sh_entsize;	/* Entry size if section holds table */
};

struct Elf64_Sym /* Symbol table : 24 bytes */
{
  Elf64_Word st_name;		/* Symbol name, index in string tbl */
  unsigned char	st_info;	/* Type and binding attributes */
  unsigned char	st_other;	/* No defined meaning, 0 */
  Elf64_Half st_shndx;		/* Associated section index */
  Elf64_Addr st_value;		/* Value of the symbol */
  Elf64_Xword st_size;		/* Associated symbol size */
};



class mmu_t{

private:
  FILE *file;

  Cache* l1_cache;
  Cache* l2_cache;
  Cache* l3_cache;
  Memory* memory;


  std::map<uint64_t, uint8_t> mem;
  std::map<Elf64_Addr, Elf64_Addr> forbid;  // [a,b] is forbidden block
  
  Elf64_Addr entry;

  Elf64_Ehdr elf_header;
  Elf64_Phdr *prog_hdrs;  // stores the structs of program header
  Elf64_Shdr *sec_hdrs;   // stores the structs of section header
  Elf64_Sym  *symbol_table;// each symbol is stored with a Sym struct
  
  char *sh_str_tbl;   // stores the names of sections
  char *str_tbl;      // store the symbols with 
  int index_strtab;   // index of section .strtab in sec_hdrs
  int index_symtab;   // index of sectoin .symtab in sec_hdrs


  Elf64_Addr read_elf(FILE *file);
  inline void read_elf_header(FILE *file);
  inline void read_prog_headers(FILE *file);
  inline void read_sec_headers(FILE *file);
  void read_sym_tbls(FILE *file);

  // Elf64_Addr get_func_addr(const char *func_name);
  // const char *get_func_name(Elf64_Addr func_addr);

  int find_data_sec(int begin);
  void load_data(FILE *file, int data_index);
  void load_prog(FILE *file, int phnum);

  bool ban(const uint64_t &addr);  // hava no right to write





public:
  mmu_t(const char * path); // elf file's path
  ~mmu_t();
  void set_cache();
  void print_cache_stats();

  Elf64_Addr start_addr();
  insn_bits_t load_insn(reg_t PC);

  uint64_t read(const uint64_t addr, bool sign, const int len);
  void write(const uint64_t addr, uint64_t REG, const int len);
  void write_bare(const uint64_t addr, char* val, const int len);


  void write_8(const reg_t addr, reg_t REG);
  void write_16(const reg_t addr, reg_t REG);
  void write_32(const reg_t addr, reg_t REG);
  void write_64(const reg_t addr, reg_t REG);


  reg_t read_int8(const reg_t addr);
  reg_t read_uint8(const reg_t addr);

  reg_t read_int16(const reg_t addr);
  reg_t read_uint16(const reg_t addr);

  reg_t read_int32(const reg_t addr);
  reg_t read_uint32(const reg_t addr);

  reg_t read_int64(const reg_t addr);
  reg_t read_uint64(const reg_t addr);


  //Debug
  void Debug_elf();

  void dump(const uint64_t& addr, const int len=4);
 
};

#endif