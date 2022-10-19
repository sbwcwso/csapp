#if 0
long rfun(unsigned long x) {
    if ( ____ )
	return _____;
    unsigned long nx = _____;
    long rv = rfun(nx);
    return _____;
}
#endif

long rfun(unsigned long x) {
    if (x == 0)
	return 0;
    unsigned long nx = x>>2;
    long rv = rfun(nx);
    return x + rv;
}

