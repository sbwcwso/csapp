#include <stdio.h>

void cond(long a, long *p)
{
    if (p && a > *p)
	*p = a;
}


void goto_cond(long a, long *p) {
    if (p == 0)
	goto done;
    if (*p >= a)
	goto done;
    *p = a;
 done:
    return;
}


void cond2(long a, long *p)
{
    if (p && a > 0)
	*p = a;
}
