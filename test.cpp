#include "cpu.h"
#include "func.h"

#define DEBUG

int main(){
	cpu_t* cpu=new cpu_t("","/Users/zyxu/Desktop/school/体系实习/riscv-simulator/sort_rv64");

	cpu->step(1000);

	return 0;
}