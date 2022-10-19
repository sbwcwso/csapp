    int signed_high_prod(int x, int y);

    unsigned unsigned_high_prod(unsigned x, unsigned y); 



unsigned unsigned_high_prod(unsigned x, unsigned y) { 
    unsigned p = (unsigned) signed_high_prod((int) x, (int) y); 
    /* Solution omitted */

    return p; 
} 

