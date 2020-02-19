#include <stdio.h>

int main(void)
{
    unsigned int a = 4127;
    int b = -27714;
    unsigned int c = 0x12345678;
    char d[] = {'I', 'O', 'C', 'L', 'A'};

    // TODO

    unsigned char *p = (unsigned char *) &a;
    printf("a: 0x%02x 0x%02x 0x%02x 0x%02x\n", p[0], p[1], p[2], p[3]);

    p = (unsigned char *) &b;
    printf("b: 0x%02x 0x%02x 0x%02x 0x%02x\n", p[0], p[1], p[2], p[3]);

    p = (unsigned char *) &c;
    printf("c: 0x%02x 0x%02x 0x%02x 0x%02x\n", p[0], p[1], p[2], p[3]);

    p = (unsigned char *) &d;
    printf("d: 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", p[0], p[1], p[2], p[3], p[4], p[5]);

    return 0;
}
