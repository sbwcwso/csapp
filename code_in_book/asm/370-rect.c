struct rect {
    long llx;         /* X coordinate of lower-left corner */
    long lly;         /* Y coordinate of lower-left corner */
    unsigned long width;  /* Width (in pixels)                 */
    unsigned long height; /* Height (in pixels)                */
    unsigned color;       /* Coding of color                   */
};


struct rect nothing() {
    /* $begin 370-rect-init-c */
    struct rect r;
    r.llx = r.lly = 0;
    r.color = 0xFF00FF;
    r.width = 10;
    r.height = 20;  
    /* $end 370-rect-init-c */
    return r;
}

struct rect nothing2() {
    /* $begin 370-rect-init2-c */
    struct rect r = { 0, 0, 10, 20, 0xFF00FF };
    /* $end 370-rect-init2-c */
    return r;
}

long area(struct rect *rp) {
    return (*rp).width * (*rp).height;
}

void rotate_left(struct rect *rp) {
    /* Exchange width and height */
    long t = rp->height;
    rp->height = rp->width;
    rp->width  = t;
    /* Shift to new lower-left corner */
    rp->llx   -= t; 
}
