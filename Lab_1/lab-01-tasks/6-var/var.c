#include <stdio.h>

int main(void)
{
    short a = 20000; // 100111000100000
    short b = 14000; // 011011010110000

    //              c = 01000010011010000

    short c = a + b;
    unsigned short d = 3 * a + b;
    short e = a << 1;

    // TODO - print variables c, d, e

    printf("%hi %hu %hi\n", c, d, e);

    return 0;
}
