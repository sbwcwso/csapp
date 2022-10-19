/* Code illustrating security vulnerabilities due to numeric issues */
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

/* 
 * Illustration of code vulnerability similar to that found in
 * FreeBSD's implementation of getpeername()
 */

/* Declaration of library function memcpy */
void *memcpy(void *dest, void *src, size_t n); 

/* Kernel memory region holding user-accessible data */
#define KSIZE 1024
char kbuf[KSIZE];

/* Copy at most maxlen bytes from kernel region to user buffer */
int copy_from_kernel(void *user_dest, int maxlen) { 
    /* Byte count len is minimum of buffer size and maxlen */
    int len = KSIZE < maxlen ? KSIZE : maxlen; 
    memcpy(user_dest, kbuf, len);
    return len;
}

/* 
 * Illustration of code vulnerability similar to that found in
 * Sun's XDR library.
 */
void* copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
    /*
     * Allocate buffer for ele_cnt objects, each of ele_size bytes
     * and copy from locations designated by ele_src
     */
    void *result = malloc(ele_cnt * ele_size); 
    if (result == NULL)
	/* malloc failed */
	return NULL;
    void *next = result;
    int i;
    for (i = 0; i < ele_cnt; i++) { 
        /* Copy object i to destination */
        memcpy(next, ele_src[i], ele_size);
	/* Move pointer to next memory region */
	next += ele_size;
    }
    return result;
}

void* not_safe_copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
    /*
     * Allocate buffer for ele_cnt objects, each of ele_size bytes
     * and copy from locations designated by ele_src
     */
    /* $begin xdr_not_safe */
    uint64_t asize =
	ele_cnt	* (uint64_t) ele_size;
    void *result = malloc(asize);
    /* $end xdr_not_safe */
    if (result == NULL)
	/* malloc failed */
	return NULL;
    void *next = result;
    int i;
    for (i = 0; i < ele_cnt; i++) {
        /* Copy object i to destination */
        memcpy(next, ele_src[i], ele_size); 
	/* Move pointer to next memory region */
	next += ele_size;
    }
    return result;
}


void* safe_copy_elements(void *ele_src[], int ele_cnt, size_t ele_size) {
    /*
     * Allocate buffer for ele_cnt objects, each of ele_size bytes
     * and copy from locations designated by ele_src
     */
    /* $begin xdr_safe */
    uint64_t required_size =
	ele_cnt * (uint64_t) ele_size;
    size_t request_size = (size_t) required_size;
    if (required_size != request_size)
        /* Overflow must have occurred.  Abort operation */
        return NULL;
    void *result = malloc(request_size);
    if (result == NULL)
	/* malloc failed */
	return NULL;
    /* $end xdr_safe */
    void *next = result;
    int i;
    for (i = 0; i < ele_cnt; i++) {
        /* Copy object i to destination */
        memcpy(next, ele_src[i], ele_size); 
	/* Move pointer to next memory region */
	next += ele_size;
    }
    return result;
}


