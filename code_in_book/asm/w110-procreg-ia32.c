void proc(int   a2, int   *a2p,
	  short a3, short *a3p,
	  char  a4, char  *a4p)
{
    *a2p += a2;
    *a3p += a3;
    *a4p += a4;
}

long call_proc()
{
    int  x2 = 2;
    short x3 = 3; char x4 = 4;
    proc(x2, &x2, x3, &x3, x4, &x4);
    return x1*(x3-x4);
}

