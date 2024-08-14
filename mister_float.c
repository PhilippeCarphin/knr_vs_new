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
    fprintf(stderr, "0x%016lx : f=%e\033[0m\n", i, f);


// Will be called undeclared or with a KNR declaration
int mister_float_knr(f)
    float f;
{
    CHECK
    return 0;
}

// Same as above except at the call site, there will be new-style declaration
// `int mister_float_mix(float f);`
int mister_float_mix(f)
    float f;
{
    CHECK
    return 0;
}

// Will be called undeclared or with a KNR declaration
int mister_float_new(float f)
{
    CHECK
    return 0;
}

// Same as above except at the call site, there will be new-style declaration
// `int mister_float_new_decl(float f);`
int mister_float_new_decl(float f)
{
    CHECK
    return 0;
}
