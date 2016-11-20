#include <exception>
#include <cstdint>
#include <cstdio>


class Invalid_address : public std::exception
{
public:
	Invalid_address(uint64_t head, uint64_t addr)
	{
		printf("head addr at 0x%llx, wrong addr at 0x%llx\n", head, addr);
	}
	const char * what() const throw()
	{
		return "Segmentation fault!\n";
	}	
};

class No_permission : public std::exception
{
public:
	No_permission(uint64_t head, uint64_t addr)
	{
		printf("Error occurs between 0x%llx and 0x%llx\n", head, addr);
	}
	const char * what() const throw()
	{
		return "Permission denied!";
	}
	
};
