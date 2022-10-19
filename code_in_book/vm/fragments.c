#include "csapp.h"

void heapify(int **binheap, int size, int pos)
{
}

void misc() 
{
    char *bufp;
    int size=0;

    /* $begin execve */
    Execve("a.out", NULL, NULL);
    /* $end execve */


    /* $begin mmap */
    bufp = Mmap(NULL, size, PROT_READ, MAP_PRIVATE|MAP_ANON, 0, 0);
    /* $end mmap */
}

void garbage() 
{
    int *p = (int *)Malloc(15213);

    return; /* Array p is garbage at this point */
}


/* Return y = Ax */
int *matvec(int **A, int *x, int n) 
{ 
    int i, j;

    int *y = (int *)Malloc(n * sizeof(int));
    
    for (i = 0; i < n; i++)
	for (j = 0; j < n; j++)
            y[i] += A[i][j] * x[j];
    return y;
}

void bufoverflow() 
{
    char buf[64];

    gets(buf); /* Here is the stack buffer overflow bug */
    return;
}

/* Create an nxm array */
int **makeArray1(int n, int m) 
{
    int i;
    int **A = (int **)Malloc(n * sizeof(int)); 

    for (i = 0; i < n; i++)                    
	A[i] = (int *)Malloc(m * sizeof(int)); 
    return A;
}   

/* Create an nxm array */
int **makeArray2(int n, int m) 
{
    int i;
    int **A = (int **)Malloc(n * sizeof(int *)); 

    for (i = 0; i <= n; i++)                   
	A[i] = (int *)Malloc(m * sizeof(int)); 
    return A;
}   


int *binheapDelete(int **binheap, int *size)
{
    int *packet = binheap[0];                
    
    binheap[0] = binheap[*size - 1];         
    *size--; /* This should be (*size)-- */  
    heapify(binheap, *size, 0);              
    return(packet);
}

int *search(int *p, int val) 
{
    while (*p && *p != val)
	p += sizeof(int); /* Should be p++ */ 
    return p;
}

int *stackref () 
{
    int val;

    return &val; 
}  


int *heapref(int n, int m) 
{
    int i;
    int *x, *y;

    x = (int *)Malloc(n * sizeof(int));                       

    /* ... */   /* Other calls to malloc and free go here */

    free(x);                                                  

    y = (int *)Malloc(m * sizeof(int)); 
    for (i = 0; i < m; i++)
	y[i] = x[i]++;  /* Oops! x[i] is a word in a free block */ 

    return y;
}

void leak(int n) 
{
    int *x = (int *)Malloc(n * sizeof(int));
    
    return;  /* x is garbage at this point */
}
