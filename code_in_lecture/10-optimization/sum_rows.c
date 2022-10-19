/* Sum rows of n X n matrix a
   and store in vector b */
void sum_rows1(double *a, double *b, long n) {
    long i, j;
    for (i = 0; i < n; i++) {
	b[i] = 0;
	for (j = 0; j < n; j++)
	    b[i] += a[i*n + j];
    }
}

/* Sum rows of n X n matrix a
   and store in vector b */
void sum_rows2(double *a, double *b, long n) {
    long i, j;
    for (i = 0; i < n; i++) {
	double val = 0;
	for (j = 0; j < n; j++)
	    val += a[i*n + j];
	b[i] = val;
    }
}

#include <stdio.h>

int main(void)
{
  double A[9] = {0,
                 1,
                 2,
                 4,
                 8,
                 16,
                 32,
                 64,
                 128};
  double *B = A + 3;
  sum_rows1(A, B, 3);
  int i;
  for (i = 0; i < 3; i++)
    printf("%f ", B[i]);
  printf("\n");
}