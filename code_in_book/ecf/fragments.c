#include "csapp.h"

void insert(void *list, int item) 
{
}

void fragments()
{
    int pid=0;
    sigset_t mask, prev;

    volatile sig_atomic_t flag;

    volatile int g;
    
    int cnt = 0;
    flag = 0;
    flag = cnt;
    cnt = flag;

    while (!pid)  /* Race! */
        pause();

    while (!pid) /* Too slow! */
        sleep(1);

    sigprocmask(SIG_BLOCK, &mask, &prev);
    pause();
    sigprocmask(SIG_SETMASK, &prev, NULL);

/* $begin errorcheck */    
    if ((pid = fork()) < 0) {
	fprintf(stderr, "fork error: %s\n", strerror(errno));
	exit(0);
    }
/* $end errorcheck */    

    if ((pid = fork()) < 0)
	unix_error("fork error");

/* $begin forkwrapperuse */    
    pid = Fork();
/* $end forkwrapperuse */    


}

