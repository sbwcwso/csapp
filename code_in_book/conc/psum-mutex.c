/* 
 * psum-mutex.c - A simple parallel sum program where each thread sums
 *                into a global variable protected by a mutex
 */
#include "csapp.h"
#define MAXTHREADS 32    

void *sum_mutex(void *vargp); /* Thread routine */

/* Global shared variables */
long gsum = 0;           /* Global sum */
long nelems_per_thread;  /* Number of elements to sum */
sem_t mutex;             /* Mutex to protect global sum */

int main(int argc, char **argv) 
{
    long i, nelems, log_nelems, nthreads, myid[MAXTHREADS];
    pthread_t tid[MAXTHREADS];

    /* Get input arguments */
    if (argc != 3) { 
        printf("Usage: %s <nthreads> <log_nelems>\n", argv[0]);
        exit(0);
    }
    nthreads = atoi(argv[1]);
    log_nelems = atoi(argv[2]);
    nelems = (1L << log_nelems);
    /* $end psummutex */
    /* Check input arguments */
    if  ((nelems % nthreads) != 0 || (log_nelems > 31)) {
	    printf("Error: invalid nelems\n");
	    exit(0);
    }
    /* $begin psummutex */
    nelems_per_thread = nelems / nthreads;
    sem_init(&mutex, 0, 1);

    /* Create peer threads and wait for them to finish */
    for (i = 0; i < nthreads; i++) {                  
        myid[i] = i;                                  
        Pthread_create(&tid[i], NULL, sum_mutex, &myid[i]); 
    }                                                 
    for (i = 0; i < nthreads; i++)                    
	    Pthread_join(tid[i], NULL);                   
    
    /* Check final answer */
    if (gsum != (nelems * (nelems-1))/2)     
	    printf("Error: result=%ld\n", gsum); 

    exit(0);
}

/* Thread routine for psum-mutex.c */
void *sum_mutex(void *vargp) 
{
    long myid = *((long *)vargp);          /* Extract the thread ID */ 
    long start = myid * nelems_per_thread; /* Start element index */ 
    long end = start + nelems_per_thread;  /* End element index */ 
    long i;

    for (i = start; i < end; i++) {        
        P(&mutex);                     
	    gsum += i;                     
        V(&mutex);                     
    }	                               
    return NULL;
}

