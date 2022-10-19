/* Functions to demonstrate IA32 procedure handling */


int fun(int a, int *bp) {
    return a + *bp;
}


int call_fun(int x, int y) {
    return fun(x, &y);
}


int afun(int t) {
    int a[2] = {33, 515};
    return a[t];
}

