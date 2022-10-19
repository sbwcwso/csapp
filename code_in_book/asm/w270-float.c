/* Experiments with floating point code */

/* Return minimum of x and y */
double dmin(double x, double y);

/* Return sqrt(x) */
double dsqrt(double x);


double mult(double x, double y) {
    return x * y;
}

double amult(double x, double y) {
    double result;
    asm("vmulsd %[x], %[y], %[r]   # Compute r = x * y\n\t"
	: [r] "=x" (result)         /* Outputs */
	: [x] "x" (x), [y] "x" (y)  /* Inputs */
	);
    return result;
}

/* Return minimum of x and y */
double dmin(double x, double y) {
    double result;
    asm("vminsd %[x], %[y], %[r]   # Compute r = min(x,y)\n\t"
	: [r] "=x" (result)         /* Outputs */
	: [x] "x" (x), [y] "x" (y)  /* Inputs */
	);
    return result;
}

/* Return sqrt(x) */
double dsqrt(double x) {
    double result;
    asm("sqrtsd %[x], %[r]   # Compute r = sqrt(x)\n\t"
	: [r] "=x" (result)         /* Output */
	: [x] "x" (x)               /* Input */
	);
    return result;
    
}
