/* 
 * Naive readers-writers solution 
*/
#include "csapp.h"

/* Global variable */
sem_t w; /* Initially = 1 */

void reader(void) 
{
    while (1) {
	P(&w);

	/* Critical section: */
	/* Reading happens   */

	V(&w);
    }
}



void writer(void) 
{
    while (1) {
	P(&w);

	/* Critical section: */
	/* Writing happens   */

	V(&w);
    }
}
