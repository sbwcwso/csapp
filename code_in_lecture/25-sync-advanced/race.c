/* 
 * race.c - demonstrates a race condition
 */
#include "csapp.h"
#define N 4

void *thread(void *vargp);

/* A threaded program with a race */
int main() 
{
    pthread_t tid[N];
    int i;

    for (i = 0; i < N; i++) 
	Pthread_create(&tid[i], NULL, thread, &i); 
    for (i = 0; i < N; i++) 
	Pthread_join(tid[i], NULL);
    exit(0);
}

/* Thread routine */
void *thread(void *vargp) 
{
    int myid = *((int *)vargp);  
    printf("Hello from thread %d\n", myid);
    return NULL;
}
