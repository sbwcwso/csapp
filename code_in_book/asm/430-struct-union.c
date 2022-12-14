typedef union {
    struct {
	long   u;
	short  v;
	char   w;
    } t1;
    struct {
	int a[2];
	char  *p;
    } t2;
} u_type;

#if 0
void get(u_type *up, TYPE *dest) {
    *dest =  EXPR;
}
#endif

#define GETTER(name,type,expr) void name(u_type *up,type *dest) { *dest = expr; }

GETTER(get_u, long, up->t1.u)

GETTER(get_v, short, up->t1.v)

GETTER(get_wp, char *, &up->t1.w)

GETTER(get_a, int *, up->t2.a)

GETTER(get_au, int, up->t2.a[up->t1.u])

GETTER(get_pval, char, *up->t2.p)
