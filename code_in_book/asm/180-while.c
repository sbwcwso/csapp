
long loop_while(long a, long b)
{
    long result = 1;
    while (a < b) {
	result = result * (a+b);
	a = a+1;
    }
    return result;
}

#if 0
long loop_while(long a, long b)
{
    long result = ________;
    while (______) {
	result = ____________;
	a = ______;
    }
    return result;
}
#endif

long loop_while2(long a, long b)
{
    long result = b;
    while (b > 0) {
	result = result * a;
	b = b-a;
    }
    return result;
}

#if 0
long loop_while2(long a, long b)
{
    long result = ________;
    while (______) {
	result = ____________;
	b = ______;
    }
    return result;
}
#endif
