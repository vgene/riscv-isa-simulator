#ifndef RISCV_EXCEPTION_H
#define RISCV_EXCEPTION_H

#include <exception>   
#include <cstdint>
#include <cstdio>
using namespace std;

class trap_illegal_instruction:public exception  
{  
public:  
   const char* what()const throw()//#1   
   {  
        return "ERROR! Trap Illegal Instruction.\n";  
   }      
}; 


class trap_instruction_address_misaligned:public exception  
{  
private:
	uint64_t PC;
public: 
	trap_instruction_address_misaligned(uint64_t PC){
		this->PC = PC;
	} 
   const char* what()const throw()//#1   
   {  
        return "ERROR! Instruction address misaligned\n";  
   }      
}; 


class invalid_address : public std::exception
{
public:
	invalid_address(uint64_t head, uint64_t addr)
	{
		printf("head addr at 0x%llx, wrong addr at 0x%llx\n", head, addr);
	}
	const char * what() const throw()
	{
		return "Segmentation fault!\n";
	}	
};

class no_permission : public std::exception
{
public:
	no_permission(uint64_t head, uint64_t addr)
	{
		printf("Error occurs between 0x%llx and 0x%llx\n", head, addr);
	}
	const char * what() const throw()
	{
		return "Permission denied!";
	}
	
};

#endif
