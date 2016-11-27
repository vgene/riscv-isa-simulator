#ifndef CACHE_MEMORY_H_
#define CACHE_MEMORY_H_

#include <stdint.h>
#include <map>
#include "storage.h"

class Memory: public Storage {
 public:
  Memory() {}
  ~Memory() {}
  uint64_t read(const uint64_t addr, bool sign, const int len);
  void write(const uint64_t addr, uint64_t REG, const int len);
  void write_bare(const uint64_t addr, char* val, const int len);


  // Main access process
  void HandleRequest(uint64_t addr, int bytes, int read,
                     char *content, int &hit, int &time);

 private:
  // Memory implement
  // std::map<uint64_t, uint8_t> mem;
  // std::map<Elf64_Addr, Elf64_Addr> forbid;  // [a,b] is forbidden block
  // bool ban(const uint64_t &addr);  // hava no right to write

  DISALLOW_COPY_AND_ASSIGN(Memory);
};

#endif //CACHE_MEMORY_H_ 
