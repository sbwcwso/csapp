struct point_color {
    int c;
    int m;
    int y;
    int k;
};

struct point_color square[16][16];
int i, j;

void loops() 
{

    for (i = 0; i < 16; i++){
	for (j = 0; j < 16; j++) {
	    square[i][j].c = 0;
	    square[i][j].m = 0;
	    square[i][j].y = 1;
	    square[i][j].k = 0;
	}
    }

    for (i = 0; i < 16; i++){
	for (j = 0; j < 16; j++) {
	    square[j][i].c = 0;
	    square[j][i].m = 0;
	    square[j][i].y = 1;
	    square[j][i].k = 0;
	}
    }

    for (i = 0; i < 16; i++) {
	for (j = 0; j < 16; j++) {
	    square[i][j].y = 1;
	}
    }
    for (i = 0; i < 16; i++) {
	for (j = 0; j < 16; j++) {
	    square[i][j].c = 0;
	    square[i][j].m = 0;
	    square[i][j].k = 0;
	}
    }

}

    
