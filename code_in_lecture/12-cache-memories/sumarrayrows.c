#include <stdio.h>
#include <stdlib.h>

#define M (1<<12)
#define N M

int a[M][N];

int sumarrayrows(int a[M][N]) 
{  	
    int i, j, sum = 0;

    for (i = 0; i < M; i++) 
	for (j = 0; j < N; j++)
	    sum += a[i][j];
    return sum;	
}


int main()
{
    int i, j;

    for (i = 0; i < M; i++) 
	for (j = 0; j < N; j++)
	    a[i][j] = ((j%2 == 0) ? 1 : -1);

    /* should sum to zero */
    printf("sum=%d\n", sumarrayrows(a));
    exit(0);
}
