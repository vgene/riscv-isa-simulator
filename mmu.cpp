#include "mmu.h"
#include "exception.h"
#include <cstring>

// #define DEBUG
// #define DEBUG_EXT

mmu_t::mmu_t(const char *path)
{
	this->file = fopen(path, "rb");
	if(this->file == NULL)
	{
		printf("Fail to open elf!\n");
		exit(1);
	}

	this->prog_hdrs = NULL;
	this->sec_hdrs = NULL;
	this->symbol_table = NULL;

	this->sh_str_tbl = NULL;
	this->str_tbl = NULL;

	this->index_strtab = -1;
	this->index_symtab = -1;

	this->entry = read_elf(file);

	int cl = fclose(file);
	if(cl == -1)
		printf("Fail to close elf!\n");

}

mmu_t::~mmu_t()
{
	delete [] prog_hdrs;
	delete [] sec_hdrs;
	delete [] sh_str_tbl;
	delete [] str_tbl;
	delete [] symbol_table;	
}

Elf64_Addr mmu_t::start_addr()
{
	return this->entry;
}


Elf64_Addr mmu_t::read_elf(FILE *file)
{

	read_elf_header(file);
	read_prog_headers(file);
	read_sec_headers(file);
	read_sym_tbls(file);

	const int loader_num = 4;
	const char* s_data = ".data";
	const char* s_datal = ".sdata";
	const char* s_rodata = ".rodata";
	const char* s_rodatal = ".rodatal";

	const char* loader[] = {s_data, s_datal, s_rodata, s_rodatal};
	

	int secnum = elf_header.e_shnum;
	for (int i = 0; i < secnum; ++i)
	{
		for (int j = 0;  j < loader_num; ++j)
		{
			if(strcmp(loader[j],&sh_str_tbl[sec_hdrs[i].sh_name]) == 0)
			{
				load_data(this->file, j);
				break;
			}
		}
	}

	load_prog(file, elf_header.e_phnum);

	return elf_header.e_entry;
}


inline void mmu_t::read_elf_header(FILE *file)
{
	fread(&elf_header, sizeof(elf_header), 1, file);
	if(ferror(file))
	{
		printf("Error while reading ELF header.\n");
		exit(EXIT_FAILURE);
	}
}


inline void mmu_t::read_prog_headers(FILE *file)
{
	prog_hdrs = new Elf64_Phdr[elf_header.e_phnum];

	fseek(file, elf_header.e_phoff, SEEK_SET);
	fread(prog_hdrs, sizeof(Elf64_Phdr), elf_header.e_phnum, file);
}

inline void mmu_t::read_sec_headers(FILE *file)
{
	sec_hdrs = new Elf64_Shdr[elf_header.e_shnum];
	fseek(file, elf_header.e_shoff, SEEK_SET);
	fread(sec_hdrs, sizeof(Elf64_Shdr), elf_header.e_shnum, file);

	sh_str_tbl = new char[sec_hdrs[elf_header.e_shstrndx].sh_size];
	fseek(file, sec_hdrs[elf_header.e_shstrndx].sh_offset,SEEK_SET);
	fread(sh_str_tbl, sizeof(char), sec_hdrs[elf_header.e_shstrndx].sh_size, file);
}

void mmu_t::read_sym_tbls(FILE *file)
{
	int secnum = elf_header.e_shnum;

	for (int i = 0; i < secnum; ++i)
	{
		if(strcmp(".strtab", &sh_str_tbl[sec_hdrs[i].sh_name]) == 0)
			index_strtab = i;
		else if(strcmp(".symtab", &sh_str_tbl[sec_hdrs[i].sh_name]) == 0)
			index_symtab = i;
		else
			continue;
	}

	if( (index_strtab == -1) || (index_symtab == -1) )
	{
		printf("Can't find strtab or symtab!\n");
		exit(EXIT_FAILURE);
	}

	/* init string table and symbol table */
	str_tbl = new char[sec_hdrs[index_strtab].sh_size];
	fseek(file, sec_hdrs[index_strtab].sh_offset,SEEK_SET);
	fread(str_tbl, sizeof(char), sec_hdrs[index_strtab].sh_size, file);

	int sym_num = sec_hdrs[index_symtab].sh_size / sec_hdrs[index_symtab].sh_entsize;
	symbol_table = new Elf64_Sym[sym_num];
	fseek(file, sec_hdrs[index_symtab].sh_offset, SEEK_SET);
	fread(symbol_table, sizeof(Elf64_Sym), sym_num, file);

}


void mmu_t::load_data(FILE *file, int data_index)
{
	Elf64_Off offset_from_elf = sec_hdrs[data_index].sh_offset;
	Elf64_Xword size = sec_hdrs[data_index].sh_size;
	Elf64_Addr start_vaddr = sec_hdrs[data_index].sh_addr;
	uint8_t	 cur_data;

	const char* name = &sh_str_tbl[sec_hdrs[data_index].sh_name];
	if(strcmp(name, ".rodata") == 0)
	{
		forbid.insert(std::pair<Elf64_Addr,Elf64_Addr>
					(start_vaddr, start_vaddr + size));
	}
	else if(strcmp(name, ".rodatal") == 0)
	{
		forbid.insert(std::pair<Elf64_Addr,Elf64_Addr>
					(start_vaddr, start_vaddr + size));
	}
	else
	{

	}

	
	fseek(file, offset_from_elf, SEEK_SET);
	
	Elf64_Addr cur_addr = start_vaddr;
	for (int i = 0; i < size; ++i)
	{
		fread(&cur_data, sizeof(uint8_t), 1, file);
		mem.insert(std::pair<Elf64_Addr, uint8_t>(cur_addr, cur_data));
		cur_addr++;
	}
}


void mmu_t::load_prog(FILE *file, int phnum)
{
	Elf64_Addr cur_addr;
	uint8_t cur_inst;

	for (int i = 0; i < phnum; ++i)
	{
		fseek(file, prog_hdrs[i].p_offset, SEEK_SET);
		cur_addr = prog_hdrs[i].p_vaddr;
		for (int j = 0; j < prog_hdrs[i].p_filesz; j++)
		{
			fread(&cur_inst, sizeof(char), 1, file);
			mem.insert(std::pair<uint64_t, uint8_t>(cur_addr, cur_inst));
			cur_addr ++;
		}
	}
}


bool mmu_t::ban(const uint64_t &addr)
{
	for(auto iter = forbid.begin(); iter != forbid.end(); iter++)
	{
		if(addr >= iter->first && addr <= iter->second)
			return true;
	}
	return false;
}

uint64_t mmu_t::read(const uint64_t addr, bool sign, const int len)
{
	uint64_t cur_addr = addr;
	uint64_t retval = 0;
	int shift = 0; 

	for (int i = 0; i < len; ++i, ++cur_addr)
	{
		auto iter = mem.find(cur_addr);


		if(iter != mem.end() || iter->first == cur_addr)
		{
			retval = retval |(((uint64_t)iter->second) << shift);
			shift += 8;
		}
		else
		{
			printf("ADDR/LEN/ITER:%llx/%d/%d\n", addr, len, i);
			// return 0;
			throw invalid_address(addr, cur_addr);
		}
	}
	if(sign)
	{
		uint64_t sign_mask;
		uint64_t ext_mask = 0;
		switch (len)
		{
			case 1:	sign_mask = 0x80; ext_mask = 0xFFFFFFFFFFFFFF00;
					break;
			case 2:	sign_mask = 0x8000; ext_mask = 0xFFFFFFFFFFFF0000;
					break;
			case 4:	sign_mask = 0x80000000; ext_mask = 0xFFFFFFFF00000000;
					break;
			default: sign_mask =0;
		}

		return (retval & sign_mask)?(retval|ext_mask):retval;
	}
	else
	{
		return retval;
	}
}

void mmu_t::write(const uint64_t addr, uint64_t REG, const int len)
{

	#ifdef DEBUG_EXT
	printf("-----\nWRITE MEM:\n\t[ADDR]:\t%llx\n\t[VAL]:\t%llx\n", addr, REG);
	#endif
	uint64_t cur_addr = addr;
	uint64_t val = REG;
	
	

	if(ban(addr) || ban(addr + len - 1))
		throw no_permission(addr, addr + len - 1);


	for (int i = 0; i < len; ++i, ++cur_addr)
	{
		auto iter = mem.find(cur_addr);
		if(iter != mem.end() || iter->first == cur_addr)
		{
			iter->second = val & 0xFF;
			val >>= 8;
		}
		else
		{
			mem.insert(std::pair<uint64_t, uint8_t>(cur_addr, val & 0xFF));
			val >>= 8;
		}

#ifdef DEBUG_EXT
		printf("MEM INSERT%x\n", mem.find(cur_addr)->second); 
#endif
	}
}


void mmu_t::write_8(const reg_t addr, reg_t REG)
{
	write(addr, REG, sizeof(uint8_t));
}

void mmu_t::write_16(const reg_t addr, reg_t REG)
{
	write(addr, REG, sizeof(uint16_t));
}

void mmu_t::write_32(const reg_t addr, reg_t REG)
{
	write(addr, REG, sizeof(uint32_t));
}

void mmu_t::write_64(const reg_t addr, reg_t REG)
{

	write(addr, REG, sizeof(uint64_t));
}


reg_t mmu_t::read_int8(const reg_t addr)
{
	return read(addr, true, sizeof(int8_t));
}

reg_t mmu_t::read_uint8(const reg_t addr)
{
	return read(addr, false, sizeof(uint8_t));
}

reg_t mmu_t::read_int16(const reg_t addr)
{
	return read(addr, true, sizeof(int16_t));
}

reg_t mmu_t::read_uint16(const reg_t addr)
{
	return read(addr, false, sizeof(uint16_t));
}

reg_t mmu_t::read_int32(const reg_t addr)
{
	return read(addr, true, sizeof(int32_t));
}

reg_t mmu_t::read_uint32(const reg_t addr)
{
	return read(addr, false, sizeof(uint32_t));
}

reg_t mmu_t::read_int64(const reg_t addr)
{
	return read(addr, true, sizeof(int64_t));
}

reg_t mmu_t::read_uint64(const reg_t addr)
{
	return read(addr, false, sizeof(uint64_t));
}


insn_bits_t mmu_t::load_insn(reg_t PC)
{
	reg_t cur_addr = PC;
	insn_bits_t retval = 0;
	const int len = sizeof(uint32_t);
	int shift = 0;

	#ifdef DEBUG
	printf("LOADING INSN:\n\t[PC]:\t%llx\n", PC);
	#endif

	for(int i = 0;i < len; ++i, ++cur_addr)
	{

		auto iter = mem.find(cur_addr);

		if(iter != mem.end())
		{
			retval = retval | ((iter->second) << shift);
			shift += 8;

		}
		else
		{
			throw invalid_address(PC, cur_addr);
		}

	}
	#ifdef DEBUG
	printf("\t[VAL]:\t%llx\n", retval);
	#endif
	return retval;
}

void mmu_t::dump(const uint64_t &addr,const int len)
{
	uint64_t cur_addr = addr;
	for (int i = 0; i < len;)
	{
		for (int j=0; j<8; j++){
			if (i<len) i++;
			else return;
			auto iter = mem.find(cur_addr);
			if(iter != mem.end()){
				if (j==0)
					printf("Mem[%llx] = %x", cur_addr, iter->second);
				else{
					printf(" %x", iter->second);
				}
			}
			else{
				printf("Mem[%llx] isn't assigned!\n", cur_addr); 
				return;
			}
			cur_addr++;
		}
		printf("\n");
	}
}

void mmu_t::Debug_elf()
{
	printf("\n\nContent of ELF header:\ne_ident:\n\t");

	for (int i = 0; i < EI_NIDENT; i++)
		printf("0x%x  ",elf_header.e_ident[i]);
	printf("\n");

	printf("%-20s\t\t%d\n", "e_type:", elf_header.e_type);

	if (elf_header.e_machine == 243)
		printf("e_machine:\tRISC-V\n");
	else
		printf("%-20s\t%d\n", "e_machine:", elf_header.e_machine);
	
	printf("%-20s\t%d\n", "e_version:", elf_header.e_version);
	printf("%-20s\t0x%llx\n", "e_entry:", elf_header.e_entry);
	printf("%-20s\t%lld\n", "e_phoff:", elf_header.e_phoff);
	printf("%-20s\t%lld\n", "e_shoff:", elf_header.e_shoff);
	printf("%-20s\t0x%x\n", "e_flags:", elf_header.e_flags);
	printf("%-20s\t%d\n", "e_ehsize:", elf_header.e_ehsize);
	printf("%-20s\t%d\n", "e_phentsize:", elf_header.e_phentsize);
	printf("%-20s\t%d\n", "e_phnum:", elf_header.e_phnum);
	printf("%-20s\t%d\n", "e_shentsize:", elf_header.e_shentsize);
	printf("%-20s\t%d\n", "e_shnum:", elf_header.e_shnum);
	printf("%-20s\t%d\n", "e_shstrndx:", elf_header.e_shstrndx);



	if (elf_header.e_phnum > 0)
		{
			printf("\n\nContent of Program header:\n");
			printf("%-10s  %-8s  %-10s  %-10s  %-8s  %-8s  %-3s  %s\n", 
				   "Type", "Offset", "VirtAddr", "PhysAddr", "FileSize", "MemSize", "Flg", "Align");
			for (int i = 0; i < elf_header.e_phnum; ++i)
				printf("%-10x  0x%06llx  0x%08llx  0x%08llx  0x%06llx  0x%06llx  %-3x  0x%llx\n", 
					   prog_hdrs[i].p_type, prog_hdrs[i].p_offset, prog_hdrs[i].p_vaddr,
					   prog_hdrs[i].p_paddr, prog_hdrs[i].p_filesz, prog_hdrs[i].p_memsz,
					   prog_hdrs[i].p_flags, prog_hdrs[i].p_align);
		}
	else
		printf("No prog_header found!!!\n");



	if (elf_header.e_shnum > 0)
	{
		printf("\n\nContent of section header \n");
		printf("%4s  %-20s  %-20s  %-8s  %-6s  %-6s  %2s  %3s  %2s  %3s  %2s\n",
			   "[Nr]", "Name", "Type", "Addr", "Off", "Size", "ES", "Flg", "Lk", "Inf", "Al");
	
		for (int i = 0; i < elf_header.e_shnum ; ++i)
			printf("[%2d]  %-20s  %-20x  %08llx  %06llx  %06llx  %02llx  %-3llx  %2d  %3d  %2lld\n", 
				   i, &sh_str_tbl[sec_hdrs[i].sh_name], sec_hdrs[i].sh_type, sec_hdrs[i].sh_addr,
				   sec_hdrs[i].sh_offset, sec_hdrs[i].sh_size, sec_hdrs[i].sh_entsize,
				   sec_hdrs[i].sh_flags, sec_hdrs[i].sh_link, sec_hdrs[i].sh_info,
				   sec_hdrs[i].sh_addralign);
	
	}
	else
		printf("No sec_header found!!!\n");




	printf("\n\nContent of symbol table entry:\n");	
	printf("Num:  %8s  Size  %-10s  %-6s  %-10s  Ndx  Name\n", 
				"Value", "Type", "Bind", "Vis");
	int sym_num = sec_hdrs[index_symtab].sh_size / sec_hdrs[index_symtab].sh_entsize;
	for (int i = 0; i < sym_num; ++i)
		printf("%3d:  %8llx  %4lld  %-10x  %-6x  %-10x  %3x  %s\n", 
				i, symbol_table[i].st_value, symbol_table[i].st_size, symbol_table[i].st_info,
				symbol_table[i].st_info, symbol_table[i].st_info, symbol_table[i].st_shndx,
				&str_tbl[symbol_table[i].st_name]);		
}
