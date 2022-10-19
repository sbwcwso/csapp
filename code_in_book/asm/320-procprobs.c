int procprob(int a, short b, long *u, char *v) {
    *u += a;
    *v += b;
    return sizeof(a) + sizeof(b);
}

#if 0
int procprob(int b, short a, long *v, char *u) {
#endif


void argprob(char a,  short b,  int c,  long d,
	     char *e, short *f, int *g, long *h) {
    *g = c - a;
    *h = b - d;
    *e = *f;
}
