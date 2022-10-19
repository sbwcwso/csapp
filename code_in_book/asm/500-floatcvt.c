double fcvt(int i, float *fp, double *dp, long *lp)
{
    float f = *fp; double d = *dp; long l = *lp; 
    *lp = (long)    d;
    *fp = (float)   i;
    *dp = (double)  l;
    return (double) f;
}

#define val1 d
#define val2 i
#define val3 l
#define val4 f

double fcvt2(int *ip, float *fp, double *dp, long l)
{
    int i = *ip; float f = *fp; double d = *dp;
    *ip = (int)     val1;
    *fp = (float)   val2;
    *dp = (double)  val3;
    return (double) val4;
}

void mf2md(float *src, double *dest) {
    float f = (double) *src;
    *dest = (double) f;
}

double f2d(float f) {
    return (double) f;
}

float d2f(double d) {
    return (float) d;
}

float float_mov(float v1, float *src, float *dst) {
    float v2 = *src;
    *dst = v1;
    return v2;
}
