
struct pixel {
    char r;
    char g;
    char b;
    char a;
};

struct pixel buffer[480][640];
int i, j;
char *cptr;
int *iptr;

void loops() 
{

    for (j = 0; j < 640; j++) {
	for (i = 0; i < 480; i++){
	    buffer[i][j].r = 0;
	    buffer[i][j].g = 0;
	    buffer[i][j].b = 0;
	    buffer[i][j].a = 0;
	}
    }


{
    char *cptr = (char *) buffer;
    for (; cptr < (((char *) buffer) + 640 * 480 * 4); cptr++)
	*cptr = 0;
}

{
    int *iptr = (int *)buffer;
    for (; iptr < ((int *)buffer + 640*480); iptr++)
	*iptr = 0;
}


}

