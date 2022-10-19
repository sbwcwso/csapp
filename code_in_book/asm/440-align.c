#include <stdlib.h>

struct S1 { 
    int  i; 
    char c; 
    int  j; 
}; 

struct S2 { 
    int  i; 
    int  j; 
    char c; 
}; 

struct {
    char     *a;
    short     b;
    double    c;
    char      d;
    float     e;
    char      f;
    long      g;
    int       h;
} rec_a;

struct {
    char     *a;
    double    c;
    long      g;
    float     e;
    int       h;
    short     b;
    char      d;
    char      f;
} rec;

size_t bsize() {
    return sizeof(rec_a);
}

size_t lsize() {
    return sizeof(rec);
}
