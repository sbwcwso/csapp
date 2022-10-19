#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include "cachelab.h"

#define TRUE 1
#define FALSE 0
#define ADDRESS_BIT 64

typedef struct LINE
{
  unsigned long tag;
  unsigned long last_used_times;
  int valid_flag;
}Line;

static int hit_count, miss_count, eviction_count;
static unsigned set_bits, block_bits;
static unsigned long S, E;
static unsigned long cache_visit_counter;
static char *file_name;
static int verbose_flag;

void print_help(){
  printf("Usage: ./csim [-hv] -s <num> -E <num> -b <num> -t <file>\n"\
         "Options:\n"\
         "  -h         Print this help message.\n"\
         "  -v         Optional verbose flag.\n"\
         "  -s <num>   Number of set index bits.\n"\
         "  -E <num>   Number of lines per set.\n"\
         "  -b <num>   Number of block offset bits.\n"\
         "  -t <file>  Trace file.\n\n"\
         "Examples:\n"\
         "linux>  ./csim -s 4 -E 1 -b 4 -t traces/yi.trace\n"\
         "linux>  ./csim -v -s 8 -E 2 -b 4 -t traces/yi.trace");
}

void get_opt(int argc, char **argv){
  int opt;
  while ((opt = getopt(argc, argv, "hvs:E:b:t:")) != -1)
    switch (opt){
      case 'h':
        print_help();
        exit(EXIT_SUCCESS);
      case 'v':
        verbose_flag = TRUE;
        break;
      case 's':
        set_bits = atoi(optarg);
        break;
      case 'E':
        E = atoi(optarg);
        break;
      case 'b':
        block_bits = atoi(optarg);
        break;
      case 't':
        file_name = optarg;
        break;
      case '?':
        print_help();
        exit(EXIT_FAILURE);
      }
}

Line *init_cache(){
  Line *cache;
  //Make sure S * E doesn't overflow
  __uint128_t required_size = S * (__uint128_t)E;
  size_t request_size = (size_t)required_size;
  if (request_size != required_size)
  {
    perror("S * E is too big");
    exit(EXIT_FAILURE);
  }
  cache = calloc(request_size, sizeof(Line));
  if (cache == NULL)
    exit(EXIT_FAILURE);
  return cache;
}

void process_instruction(Line *cache, char instruction, unsigned long address){
  unsigned long tag, s, e, block_offset;
  unsigned tag_bits;
  enum {HIT, MISS, EVICTION} status;
  Line *line;
  Line *target;  // The target element for the input address.

  if(instruction != 'L' && instruction != 'S' && instruction != 'M')
    exit(EXIT_FAILURE);

  tag_bits = ADDRESS_BIT - (set_bits + block_bits);
  block_offset = address << (tag_bits + set_bits) >> (ADDRESS_BIT - block_bits);
  s = address << tag_bits >> (ADDRESS_BIT - set_bits);
  tag = address >> (ADDRESS_BIT - tag_bits);
  cache = cache + s * E;  // The s sets cache

  status = EVICTION;
  target = cache;  
  for(e = 0; e < E; e++){
    line = cache + e;

    if(line->valid_flag == FALSE){
      status = MISS;
      target = line;
      break;
    }

    if(line->tag == tag){
      status = HIT;
      target = line;
      break;
    }

    if (line->last_used_times < target->last_used_times)  // leatst recently used
      target = line;
  }

  target->last_used_times = ++cache_visit_counter;

  switch (status){
  case HIT:
    hit_count++;
    if(verbose_flag)
      printf(" hit");
    break;

  case MISS:
    target->tag = tag;
    target->valid_flag = TRUE;
    miss_count++;
    if(verbose_flag)
      printf(" miss");
    break;
  
  case EVICTION:
    target->tag = tag;
    miss_count++;
    eviction_count++;
    if(verbose_flag)
      printf(" miss eviction");
    break;
  
  default:
    break;
  }
  if(instruction == 'M'){
    hit_count++;
    if(verbose_flag)
      printf(" hit");
  }
  if(verbose_flag)
    // For part B use
    printf(" s = %lu, b= %lu\n", s, block_offset);
}

void sim_cache(Line *cache){
  FILE *fp;
  char instruction;
  unsigned long address;
  unsigned size;

  fp = fopen(file_name, "r");
  while(fscanf(fp, " %c %lx,%u", &instruction, &address, &size) != EOF){
    if(instruction != 'I'){
      if(verbose_flag == TRUE)
        printf("%c %lx,%u", instruction, address, size);
      process_instruction(cache, instruction, address);
    }
  }
  fclose(fp);
}

int main(int argc, char **argv){
  Line *cache;

  get_opt(argc, argv);
  if(set_bits==0 || E ==0 ||block_bits ==0 || file_name == NULL)
  {
    printf("Missing required arguments!\n");
    print_help();
    exit(EXIT_FAILURE);
  }

  S = 1 << set_bits;
  cache = init_cache();
  sim_cache(cache);
  free(cache);
  printSummary(hit_count, miss_count, eviction_count);
  return EXIT_SUCCESS;
}
