#include <stdlib.h>
#include <stdio.h>

struct node_s {
    struct node_s *left;
    struct node_s *right;
    double data[2];
};

union node_u { 
    struct {  
	union node_u *left; 
	union node_u *right; 
    } internal; 
    double data[2]; 
}; 

typedef enum { N_LEAF, N_INTERNAL } nodetype_t;

struct node_t { 
    nodetype_t type;
    union { 
	struct {  
	    struct node_t *left; 
	    struct node_t *right; 
	} internal; 
	double data[2]; 
    } info; 
}; 

void dothings() {
    struct node_s *sp = malloc(sizeof(struct node_s));
    union node_u *up = malloc(sizeof(union node_u));
    struct node_t *tp = malloc(sizeof(struct node_t));
    sp->data[0] = sp->data[1];
    up->internal.left = NULL;
    up->data[0] = 0;
    tp->type = N_INTERNAL;
    tp->info.internal.left = tp->info.internal.right;
    tp->info.data[0] = 1;
}
