
all: main

CFLAGS += -fPIC -O0 -MMD -Wno-error=implicit-function-declaration

libmister_float.so: mister_float.o
	$(CC) -shared -o $@ $^

main: libmister_float.so main.o
	$(CC) -o $@ $^

test: main
	./$<

%.s:%.c
	$(CC) -S $(CFLAGS) -o $@ $<

asm: mister_float.s main.s

clean:
	rm -f *.o *.s *.so *.d main

-include *.d
