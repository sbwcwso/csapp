struct S3 {
    char c;
    int i[2];
    double v;
};

union U3 {
    char c;
    int i[2];
    double v;
};


unsigned long double2bits(double d) {
    union {
	double d;
	unsigned long u;
    } temp;
    temp.d = d;
    return temp.u;
};

unsigned long double2ulong(double d) {
    return (unsigned long) d;
};

double ulong2double(unsigned long u)
{
    union {
	unsigned long u;
	double d;
    } temp;
    temp.u = u;
    return temp.d;
};


double uu2double(unsigned word0, unsigned word1) 
{ 
    union { 
	double d; 
	unsigned u[2]; 
    } temp; 

    temp.u[0] = word0; 
    temp.u[1] = word1; 
    return temp.d; 
} 

double uconvert(unsigned long u) {
    return (double) u;
}

double iconvert(long x) {
    return (double) x;
}
