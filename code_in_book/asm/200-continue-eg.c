long loop1()
{
    /* Example of for loop using a continue statement */
    /* Sum even numbers between 0 and 9 */
    long sum = 0;
    long i;
    for (i = 0; i < 10; i++) {
	if (i & 1)
	    continue;
	sum += i;
    }
    return sum;

}

long loop2()
{
    /* Naive translation of for loop into while loop */
    /* WARNING: This is buggy code */
    long sum = 0;
    long i = 0;
    while (i < 10) {
	if (i & 1)
	    /* This will cause an infinite loop */
	    continue;
	sum += i;
	i++;
    }
    return sum;
}

long loop32()
{
    /* Correct translation of for loop into while loop */
    long sum = 0;
    long i = 0;
    while (i < 10) {
	if (i & 1)
	    goto update;
	sum += i;
    update:
	i++;
    }
    return sum;
}

