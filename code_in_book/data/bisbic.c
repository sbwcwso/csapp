#include <stdio.h>
#include <stdlib.h>

/* Declarations of functions implementing operations bis and bic */
int bis(int x, int m);
int bic(int x, int m);


/* Code to implement bis (bit set) and bic (bit clear) */

/* Bit Set */
int bis(int x, int m) {
  int result = x | m;
#if 0
  /* Write an expression in C that computes the effect of bit set */
  int result = ___________;
#endif 
  return result;
}


/* Bit Clear */
int bic(int x, int m) {
  int result = x & ~m;
#if 0
  /* Write an expression in C that computes the effect of bit clear */
  int result = ___________;
#endif 
  return result;
}

/* OR & XOR using bis & bic */

/* Compute x|y using only calls to functions bis and bic */
int bool_or(int x, int y) {
  int result = bis(x,y);
#if 0
  int result = ___________;
#endif
  /* $begin boolop-ans */
  /* $begin boolop-template */
  return result;
}

/* Compute x^y using only calls to functions bis and bic */
int bool_xor(int x, int y) {
  int result = bis(bic(x,y), bic(y,x));
#if 0
  int result = ___________;
#endif
  /* $begin boolop-ans */
  /* $begin boolop-template */
  return result;
}

int main(int argc, char *argv[]) {
  int x, m;
  if (argc != 3) {
    printf("Usage: %s x m\n", argv[0]);
    exit(0);
  }
  sscanf(argv[1], "%x", &x);
  sscanf(argv[2], "%x", &m);
  printf("Bit Set(0x%x, 0x%x) --> 0x%x\n", x, m, bis(x,m));
  printf("Bit Clear(0x%x, 0x%x) --> 0x%x\n", x, m, bic(x,m));
  printf("Or(0x%x, 0x%x) --> 0x%x\n", x, m, bool_or(x,m));
  printf("Xor(0x%x, 0x%x) --> 0x%x\n", x, m, bool_xor(x,m));
  
  return 0;
}
