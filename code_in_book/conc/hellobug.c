/* 
 * hellobug.c - "hello, world" program with a bug
 */
/* WARNING: This code is buggy! */
#include "csapp.h"
void *thread(void *vargp);

int main() 
{
    pthread_t tid;

    Pthread_create(&tid, NULL, thread, NULL);
    exit(0); 
}

/* Thread routine */
void *thread(void *vargp) 
{
    Sleep(1);
    printf("Hello, world!\n"); 
    return NULL;
}
