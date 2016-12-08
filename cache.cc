#include "cache.h"
#include "def.h"
// #define DEBUG

void Cache::visit(uint64_t addr,int len,int read_or_write)
{
    char *content = new char[len];
    int time = 0;
    int hit = 0;

    HandleRequest(addr, len, read_or_write, content, hit, time);

    delete [] content;
}

void Cache::HandleRequest(uint64_t addr, int bytes, int read,
                          char *content, int &hit, int &time) 
{
    hit = 0;
    time = 0;

    stats_.access_counter ++;
    stats_.access_time += latency_.bus_latency;
    time += latency_.bus_latency;

    uint64_t addr_tag = addr >> TAG_OFFSET;
    int block_offset = (int)(addr & BLOCK_MASK);    //假设都是block_size 这样的参数都是4，8 这样2的幂
    int set_index = (int)((addr >> SET_OFFSET) & SET_MASK); //在哪一个组
    int set_way = 0;    //在哪一个路


    #ifdef DEBUG
    printf("BLOCK_MASK %x\n", BLOCK_MASK);
    printf("SET_OFFSET %x\n", SET_OFFSET);
    printf("SET_MASK %x\n", SET_MASK);
    printf("ADDR %x\n", addr);
    printf("Tag, BO, SI: %x %x %x\n", addr_tag, block_offset, set_index);
    #endif


    if(!AccessHit(set_index, addr_tag, set_way))
    {
        stats_.miss_num++;


        if(BypassDecision(addr))
        {
            BypassAlgorithm(addr, bytes, read, 
                            content, hit, time);
        }
        else
        {
            ReplaceAlgorithm(set_index, addr, bytes, read,
                             content,   hit,  time);
        }
        if(PrefetchDecision())
        {
            PrefetchAlgorithm(addr, hit, time);
        }
    }
    else    // hit
    {  
        hit = 1;
            
        if(read == READ_OPERATION)
        {
            memcpy(content, mycache_[set_index].set_st[set_way].block, bytes);
        }
        else
        {
            if(config_.write_through == WRITE_BACK)
            {
                auto& line = mycache_[set_index].set_st[set_way];
            
                line.dirty = 1;
                line.tag = (addr >> TAG_OFFSET);
                memcpy(line.block, content, config_.block_size);
            }
            else
            {
                //Write through
            }
        }

        time += latency_.hit_latency;
        stats_.access_time += latency_.hit_latency;
    }
    

  
    // if (PrefetchDecision()) 
    // {
    //     PrefetchAlgorithm();
    // } 
    // // else 
    // // {
    // //     // Fetch from lower layer
    // //     int lower_hit=0 , lower_time=0;

    // //     lower_->HandleRequest(addr, bytes, read, content,
    // //                           lower_hit, lower_time);
    // //     hit = 0;
    // //     time += latency_.bus_latency + lower_time;
    // //     stats_.access_time += latency_.bus_latency;
    // // }
}

int Cache::AccessHit(int set_index, uint64_t addr_tag, int& set_way)
{
    stats_.access_time += latency_.hit_latency;

    auto& set = mycache_[set_index].set_st;    
    for (int i = 0; i < config_.associativity; ++i)
    {
        if(set[i].valid == VALID && set[i].tag == addr_tag)
        {
            set_way = i;    // to return content.
            set[i].counter = stats_.access_counter; //global counter
            return FALSE;
        }
    }
    return TRUE;    
}

int Cache::BypassDecision(uint64_t addr)
{
    uint64_t addr_tag = addr >> TAG_OFFSET;
    int block_offset = (int)(addr & BLOCK_MASK); 
    int set_index = (int)((addr >> SET_OFFSET) & SET_MASK); 

    
    const auto set_tag = mycache_[set_index].last_hit_tag;
    if(set_tag == addr_tag)     // conflict miss
    {
        return FALSE;
    }
    else    // capacity miss
    {
        return TRUE;
    }

}

void Cache::BypassAlgorithm(uint64_t addr, int bytes, int read, 
                            char* content, int& hit, int& time)
{
    int lower_hit  = 0;
    int lower_time = 0;     // bypass current cache

    lower_->HandleRequest(addr, bytes, read, 
                        content, lower_hit, lower_time);
    
    time += lower_time;
    stats_.access_lower_num += 1;
}

void Cache::ReplaceAlgorithm(int set_index, uint64_t addr, int bytes, int read_or_write,
                          char *content, int &hit, int &time)
{       

    switch (strategy)
    {
        case LRU:
        {   
            auto& set = mycache_[set_index].set_st;
            //      cache is not full
            for (int i = 0; i < config_.associativity; ++i) 
            {
                if(set[i].valid == UNVALID)
                {
                    set[i].counter = stats_.access_counter; //找到确定的缓存块目标

                    if(read_or_write == READ_OPERATION)
                    {
                        int lower_hit = 0, lower_time = 0;

                        stats_.access_lower_num ++;
                        lower_->HandleRequest(addr, config_.block_size, read_or_write
                                            , set[i].block, lower_hit, lower_time);
                        
                        set[i].dirty = 0;
                        set[i].valid = 1;
                        set[i].tag = (uint64_t)(addr >> TAG_OFFSET);


                        time += lower_time;
                    }
                    else    
                    {
                        if(config_.write_allocate == WRITE_ALLOCATE)
                        {
                            //注意更新的内容大小，bytes.s
                            set[i].valid = 1;
                            set[i].tag   = (addr >> TAG_OFFSET);
                            
                            memcpy(set[i].block, content, config_.block_size);

                            if(config_.write_through == WRITE_BACK)
                            {
                                set[i].dirty = 1;
                            }


                        }
                        // else    
                        // {
                        //     // write non allocate
                        // }
                    }

                    
                    
                    
                    return;
                }
            }



            //      cache is full, find LRU
            int cnt = 0;
            for (int i = 1; i < config_.associativity; ++i) 
            {
                cnt = set[cnt].counter < set[i].counter ? cnt : i;
            }
            set[cnt].counter = stats_.access_counter;
            stats_.replace_num ++;

            int lower_hit = 0, lower_time = 0;

            if(read_or_write == WRITE_OPERATION)
            {
                if(config_.write_through == WRITE_BACK)
                {
                    set[cnt].dirty = 1;
                    set[cnt].tag = (addr >> TAG_OFFSET);

                    memcpy(set[cnt].block, content, bytes);
                }
                else
                {
                    // write through

                }


            }
            else    // read
            {
                set[cnt].dirty = 0;
               
                
                stats_.access_lower_num ++;
                lower_->HandleRequest(addr, config_.block_size, READ_OPERATION
                                    , set[cnt].block, lower_hit, lower_time);

                set[cnt].tag = (uint64_t)(addr >> TAG_OFFSET);

                time += lower_time;
            }


            lower_hit = 0;
            lower_time = 0;
            //  write back policy
            if(set[cnt].dirty == 1 && config_.write_through == WRITE_BACK)
            {
                uint64_t tmp_addr = set[cnt].tag;
                tmp_addr = (tmp_addr << SET_BITS) | set_index;
                tmp_addr = (tmp_addr << BLOCK_BITS) ;//block 字节对齐

                
                lower_->HandleRequest(tmp_addr, config_.block_size, 
                                      WRITE_OPERATION, set[cnt].block, 
                                      lower_hit, lower_time);
             
                time += lower_time;
            }


            time += latency_.bus_latency;
    

            return;
            break;
        }
        default:
            printf("non-exist cache replacement strategy %d\n", strategy);
    }

}

inline int Cache::PrefetchDecision() 
{

    return TRUE;
}

void Cache::PrefetchAlgorithm(uint64_t addr, int &hit,int &time) 
{
    

    stats_.prefetch_num += prefetch_blocks;
    stats_.access_lower_num += prefetch_blocks;

    for (int i = 0; i < prefetch_blocks; ++i)
    {
        uint64_t cur_addr = addr + prefetch_blocks * config_.block_size;
        
        int lower_hit = 0, lower_time = 0;
        char *content = new char[config_.block_size];


        lower_->HandleRequest(cur_addr, config_.block_size, READ_OPERATION, 
                                content, lower_hit, lower_time);

        time += lower_time;
        

        int set_index = (int)((cur_addr >> SET_OFFSET) & SET_MASK); 
        ReplaceAlgorithm(set_index, cur_addr, config_.block_size, WRITE_OPERATION,
                             content,  hit, time);

        delete [] content;
    }
}