/* Implementation of functions to generate and manipulate linked lists */

struct ELE {
    long    v;
    struct ELE *p;
};

long fun(struct ELE *ptr);


long fun(struct ELE *ptr) {
    long val = 0;
    while (ptr) {
	val += ptr->v;
	ptr  = ptr->p;
    }
    return val;
}
