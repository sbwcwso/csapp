#include "csapp.h"

void *thread(void *vptr) 
{
    return NULL;
}

void fragments()
{
    int pid, retcode;
    pthread_t tid;
    struct addrinfo hints, *result;
    char *host="stuff", *service="stuff";
    if ((pid = wait(NULL)) < 0) {
        fprintf(stderr, "wait error: %s\n", strerror(errno));
        exit(0);
    } 
/* $end unixcheck */ 

    if ((retcode = pthread_create(&tid, NULL, thread, NULL)) != 0) {
        fprintf(stderr, "pthread_create error: %s\n", strerror(retcode));
        exit(0);    	
    }
/* $end posixcheck */ 

    if ((retcode = getaddrinfo(host, service, &hints, &result)) != 0) {
        fprintf(stderr, "getaddrinfo error: %s\n", gai_strerror(retcode));
        exit(0);
    }

    exit(0);
}
