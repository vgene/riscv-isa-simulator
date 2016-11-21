#include "cpu.h"
#include "func.h"

#define DEBUG

int main(){
	cpu_t* cpu=new cpu_t("","/Users/zyxu/Desktop/school/体系实习/riscv-simulator/tests/gcc_dry2_2");


	cpu->step(1000000);

	return 0;
}