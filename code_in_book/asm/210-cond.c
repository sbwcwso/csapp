#include <stdio.h>
/* Different conditionals */

long max(long x, long y) {
    return (x < y) ? y : x;
}

long wa_max(long x, long y)
{
    return (x < y) ? 17+y : 23+x;
}

long wm_max(long x, long y)
{
    return (x < y) ? 17*y : 23*x;
}

long wm_max2(long x, long y)
{
    return (x < y) ? 16*y : x;
}

long wm_max3(long x, long y)
{
    return (x < y) ? 17*y : x;
}

long intabs(long x)
{
    return (x < 0) ? -x : x;
}

long cmul(long x, long y)
{
    return (y == 0) ? 0 : x*y;
}

long cmul2(long x, long y)
{
    return (y == 1) ? x : x*y;
}

long cdiv(long x, long y)
{
    return (y == 0) ? 0 : x/y;
}

long cdiv2(long x, long y)
{
    return (y == 1) ? x : x/y;
}

long cread(long *xp) {
    return (xp ? *xp : 0);
}

long cread_invalid(long *xp) {
    long x = *xp;
    long xe = 0;
    if (!xp) x = xe;
    return x;
}

long lcount = 0;
long se_max(long x, long y) {
    return (x < y) ? (lcount++, y) : x;
}

#define OP /
#if 0
#define OP _____ /* Unknown operator */

#endif
long arith(long x) {
    return x OP 8;
}
