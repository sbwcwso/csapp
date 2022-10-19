/* Experiments getting GCC to use leaq instruction */

long scale(long x, long y, long z) {
    long t = x + 4 * y + 12 * z;
    return t;
}

long scale2(long x, long y, long z) {
#if 0
    long t = _____________________;
#endif
    long t = 5 * x + 2 * y + 8 * z;
    return t;
}
