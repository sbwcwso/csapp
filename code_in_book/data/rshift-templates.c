unsigned srl(unsigned x, int k) { 
    /* Perform shift arithmetically */ 
    unsigned xsra = (int) x >> k; 



    return xsra; /* keeps gcc from complaining */
} 

/* $begin sra-template */   
int sra(int x, int k) { 
    /* Perform shift logically */ 
    int xsrl = (unsigned) x >> k; 



    return xsrl; /* keeps gcc from complaining */
}
/* $end sra-template */   

