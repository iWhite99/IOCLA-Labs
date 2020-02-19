#include <stdio.h>
int main()
{
    char charT;
    short shortT;
    int integerT;
    unsigned int unsignedIntegerT;
    long longT;
    long long longlongT;
    void * voidT;

    // TODO - use sizeof to print size of the above types

    printf("%zu\n", sizeof(char));
    printf("%zu\n", sizeof(short));
    printf("%zu\n", sizeof(int));
    printf("%zu\n", sizeof(unsigned int));
    printf("%zu\n", sizeof(long));
    printf("%zu\n", sizeof(long long));
    printf("%zu\n", sizeof(void *));

    return 0;
}
