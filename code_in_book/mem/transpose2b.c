#include <stdio.h>
#include <stdlib.h>

typedef int array[4][4];

void transpose2(array dst, array src) 
{
    int i, j;
    
    for (i = 0; i < 4; i++) {
	for (j = 0; j < 4; j++) {
	    dst[i][j] = src[j][i];
	}
    }
}
