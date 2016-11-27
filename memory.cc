#include "memory.h"

void Memory::HandleRequest(uint64_t addr, int bytes, int read,
                          char *content, int &hit, int &time) {
	stats_.access_counter ++;
	  hit = 1;
	  time = latency_.hit_latency + latency_.bus_latency;
	  stats_.access_time += time;
}



// uint64_t Memory::read(const uint64_t addr, bool sign, const int len)
// {
// 	uint64_t cur_addr = addr;
// 	uint64_t retval = 0;
// 	int shift = 0; 


// 	for (int i = 0; i < len; ++i, ++cur_addr)
// 	{
// 		//char* content = new char[1];
// 		//int hit;
// 		//int time;
// 		//l1_cache->HandleRequest(cur_addr, 1, 1,
// 		//				content, &hit, &time);
// 		auto iter = mem.find(cur_addr);


// 		if(iter != mem.end() || iter->first == cur_addr)
// 		{
// 			retval = retval |(((uint64_t)iter->second) << shift);
// 			shift += 8;
// 		}
// 		else
// 		{
// 			// printf("ADDR/LEN/ITER:%llx/%d/%d\n", addr, len, i);

// 			continue;
// 			// return 0;
// 			throw invalid_address(addr, cur_addr);
// 		}
// 	}
// 	if(sign)
// 	{
// 		uint64_t sign_mask;
// 		uint64_t ext_mask = 0;
// 		switch (len)
// 		{
// 			case 1:	sign_mask = 0x80; ext_mask = 0xFFFFFFFFFFFFFF00;
// 					break;
// 			case 2:	sign_mask = 0x8000; ext_mask = 0xFFFFFFFFFFFF0000;
// 					break;
// 			case 4:	sign_mask = 0x80000000; ext_mask = 0xFFFFFFFF00000000;
// 					break;
// 			default: sign_mask =0;
// 		}

// 		return (retval & sign_mask)?(retval|ext_mask):retval;
// 	}
// 	else
// 	{
// 		return retval;
// 	}
// }

// void Memory::write(const uint64_t addr, uint64_t REG, const int len)
// {


// 	// if (addr == 0x26e50){
// 	// 	printf("0x26e50\n");
// 	// 	dump(0x26e50, 16);
// 	// 	printf("REG: %llx\n", REG);
// 	// 	pause();
// 	// }

// 	#ifdef DEBUG_EXT
// 	printf("-----\nWRITE MEM:\n\t[ADDR]:\t%llx\n\t[VAL]:\t%llx\n", addr, REG);
// 	#endif
// 	uint64_t cur_addr = addr;
// 	uint64_t val = REG;
	
	

// 	if(ban(addr) || ban(addr + len - 1))
// 		throw no_permission(addr, addr + len - 1);


// 	for (int i = 0; i < len; ++i, ++cur_addr)
// 	{
// 		auto iter = mem.find(cur_addr);
// 		if(iter != mem.end() || iter->first == cur_addr)
// 		{
// 			iter->second = val & 0xFF;
// 			val >>= 8;
// 		}
// 		else
// 		{
// 			mem.insert(std::pair<uint64_t, uint8_t>(cur_addr, val & 0xFF));
// 			val >>= 8;
// 		}

// #ifdef DEBUG_EXT
// 		printf("MEM INSERT%x\n", mem.find(cur_addr)->second); 
// #endif
// 	}
// }


// void Memory::write_bare(const uint64_t addr, char* val, const int len)
// {

// 	uint64_t cur_addr = addr;

// 	if(ban(addr) || ban(addr + len - 1))
// 		throw no_permission(addr, addr + len - 1);

// 	for (int i = 0; i < len; ++i, ++cur_addr)
// 		{
// 			auto iter = mem.find(cur_addr);
// 			if(iter != mem.end() || iter->first == cur_addr)
// 			{
// 				iter->second = val[i];
// 			}
// 			else
// 			{
// 				mem.insert(std::pair<uint64_t, uint8_t>(cur_addr, val[i]));
// 			}

// 	#ifdef DEBUG_EXT
// 			printf("MEM INSERT%x\n", mem.find(cur_addr)->second); 
// 	#endif
// 		}
// }
