#include <stdio.h>
#include "value.h"
#include "mister_float.h"

float MY_FLOAT = VALUE;

#ifdef DECLARE_NEW
#endif

int print_bits(double d)
{
    unsigned long int di = *(unsigned long int*)&d;
    int nbits = 8*sizeof(d);
    char bits[nbits+1];
    char *bytes = (char *)&di;
    unsigned int sz = sizeof(di);
    printf("sz = %lu\n", sizeof(short unsigned int));
    fprintf(stderr, "Bytes:  ");
    for(int i = sz-1; i >=0 ; i--){
        //    7  6  5  4  3  2  1  0
        // 0xDE|AD|BE|EF|11|22|33|44
        // << 8*(sz - i - 1) (i = 3)
        // -------------------------
        // 0x11|22|33|44|00|00|00|00
        // >> 8*(sz - 1)
        // -------------------------
        // 0x00|00|00|00|00|00|00|11
        long unsigned int x = (di << 8*(sz-i-1)) >> (8*(sz-1));
        // unsigned short s = bytes[i];
        // fprintf(stderr, "byte[%d] = %d\n", i, s);
        fprintf(stderr, "%lx       ", x);
    }
    putc('\n', stderr);
    unsigned long int one = 1;
    for(int i = nbits-1; i >= 0 ; i--){
        char bit;
        if(di & (one << i)) {
            bit = '1';
        } else {
            bit = '0';
        }
        bits[nbits-i-1] = bit;
    }
    fputs("Bits:", stderr);
    for(int i = 0; i < nbits ; i++){
        if(i%8 == 0){
            putc(' ', stderr);
        }
        putc(bits[i], stderr);
    }
    putc('\n', stderr);
    fputs("Bits: ", stderr);
    for(int i = 0; i < nbits ; i++){
        switch(i){
            case 1: case 12: putc('|', stderr); break;
            default: ;
        }
        putc(bits[i], stderr);
    }
    putc('\n', stderr);
    return 0;
}


int main(void){
    unsigned int i = *(unsigned long int*)&MY_FLOAT;
    double MY_DOUBLE = MY_FLOAT;
    unsigned long int di = *(unsigned long int*)&MY_DOUBLE;
    fprintf(stderr, "%s() :           The true value: %08x,          MY_FLOAT=%f\n", __func__, i, MY_FLOAT);
    fprintf(stderr, "%s() : The true value as double: %016lx, MY_DOUBLE=%f\n", __func__, di, MY_DOUBLE);
    print_bits(MY_DOUBLE);
    // int nbits = 8 * sizeof(MY_DOUBLE);
    // for(int i = 0; i < nbits ; i++){
    //     if(i % 8 == 0){
    //         putc(' ', stderr);
    //     }
    //     putc(
    //             (di & (1 << i))
    //             ? '1'
    //             : '0',
    //             stderr
    //     );
    // }
    // putc('\n', stderr);
    int x = 8;
    printf("(1 << %d) = %d = 0x%x\n", x, (1 << x), (1 << x));
    mister_float_knr(MY_FLOAT);
    mister_float_new(MY_FLOAT);
    mister_float_new_decl(MY_FLOAT);
    mister_float_mix(MY_FLOAT);
}
