unsigned f2u(float x);

int float_ge(float x, float y) { 
    unsigned ux = f2u(x); 
    unsigned uy = f2u(y); 

    /* Get the sign bits */ 
    unsigned sx = ux >> 31; 
    unsigned sy = uy >> 31; 

#if 0
    /* Give an expression using only ux, uy, sx, and sy */
    return         ;
#endif

    return sx+sy; /* just to keep gcc happy */

} 

int float_le(float x, float y) { 
    unsigned ux = f2u(x); 
    unsigned uy = f2u(y); 

    /* Get the sign bits */ 
    unsigned sx = ux >> 31; 
    unsigned sy = uy >> 31; 

#if 0
    /* Give an expression using only ux, uy, sx, and sy */
    return           ;
#endif

    return sx+sy; /* just to keep gcc happy */

} 

