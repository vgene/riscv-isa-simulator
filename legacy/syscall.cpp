#include<unistd.h>
#include<mem.h>


#define RISCV_brk 214
#define RISCV_write 64
#define RISCV_read 63
#define RISCV_time 1062
#define RISCV_exit 93

void syscall(){//syscall，系统调用号存在17号寄存器中，数据大小在R[12]寄存器中，地址在R[11]中
	switch(x[17])
	{
		case RISCV_write:
			SIM_write();
			break;
		case RISCV_read://先读到一个数组里，再放入map
			SIM_read();
			break;
		case RISCV_time:
			x[10]=time((time_t*)(x[11]));
			break;
		case RISCV_exit:
			exit(0);
		default:
			printf("Unknown system call! %d", x[17]);
	}
}

void SIM_write(){
	//char buf[1000000];
	(char*)buf = (char*)malloc(x[12]);
	for(int i = 0;i < x[12];i ++){
		buf[i]=map[x[11]+i];
	}
	x[10]=write(1,(const void*)buf,x[12]);
	delete buf;

}
void SIM_read(){
	(char*)buf=(char*)malloc(x[12]);
	int read_num=read(0,(const void*)buf,x[12]);
	for(int i = 0;i < read_num ; i ++){
				mem.insert(pair<Elf64_Addr,uint8_t>(x[11]+i,buf[i]));
	delete buf;
	x[10]=read_num;
}