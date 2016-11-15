#include "cpu.h"
#include "func.h"

int main(){
	cpu_t* cpu=new cpu_t("");

	printf("%s\n", "hello world");
	cpu->step(1);

	return 0;
}