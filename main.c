#include <stdio.h>
#include "value.h"

float MY_FLOAT = VALUE;

#ifdef DECLARE_NEW
#endif

int mister_float_new_decl(float f);
int mister_float_mix(float f);

int main(void){
    unsigned int i = *(unsigned long int*)&MY_FLOAT;
    double MY_DOUBLE = MY_FLOAT;
    unsigned long int di = *(unsigned long int*)&MY_DOUBLE;
    fprintf(stderr, "%s() :           The true value: %08x,          MY_FLOAT=%f\n", __func__, i, MY_FLOAT);
    fprintf(stderr, "%s() : The true value as double: %016lx, MY_DOUBLE=%f\n", __func__, di, MY_DOUBLE);
    mister_float_knr(MY_FLOAT);
    mister_float_new(MY_FLOAT);
    mister_float_new_decl(MY_FLOAT);
    mister_float_mix(MY_FLOAT);
}
