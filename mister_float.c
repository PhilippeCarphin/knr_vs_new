#include <stdio.h>
#include "value.h"
#include "math.h"

#define CHECK \
    unsigned long int i = *(unsigned long int*)&f; \
    fprintf(stderr, "%22s(): ", __func__); \
    if(fabsl(f - VALUE) < 0.01){         \
        fprintf(stderr, "\033[32m");     \
    } else {                             \
        fprintf(stderr, "\033[31m");     \
    }                                    \
    fprintf(stderr, "0x%016lx : f=%f\033[0m\n", i, f);


int mister_float_knr(f)
    float f;
{
    CHECK
    return 0;
}

int mister_float_mix(f)
    float f;
{
    CHECK
    return 0;
}

int mister_float_new(float f)
{
    CHECK
    return 0;
}

int mister_float_new_decl(float f)
{
    CHECK
    return 0;
}
