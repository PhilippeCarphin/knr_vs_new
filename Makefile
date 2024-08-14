
all: main mainf

CFLAGS += -DVALUE=$(val) -MMD -Wno-deprecated-non-prototype -g3 -O0
FFLAGS += -DVALUE=$(val) -O0 -g3

ifeq ($(FC), f77)
	FC = gfortran
endif

FC ?= gfortran

VALUE ?= 88.88
val = $(VALUE)
ifeq ($(findstring .,$(VALUE)),)
	val := $(VALUE).0
endif

.PHONY: libmister_float.a main.o mainf.o main mainf mister_float.o
mister_float.o: mister_float.c
	$(CC) $(CFLAGS) -c $< -o $@
libmister_float.a: mister_float.o
	ar rcs $@ $^

main.o:main.c
	$(CC) $(CFLAGS) -c $< -o $@

main: main.o libmister_float.a
	$(CC) -o $@ $^

# I don't think I can give Fortran a KNR declaration using bind(C...)
# so I think the best I can do is add -fno-underscoring.
mainf.o:main.f90 value.h
	$(CC) -cpp -fno-underscoring -c $(FFLAGS) $< -o $@

mainf: mainf.o libmister_float.a
	$(FC) -o $@ $^

testc: main
	@echo -e "\033[1;35m===================== Running C test\033[0m"
	./main
testf: mainf
	@echo -e "\033[1;35m===================== Running FORTRAN test\033[0m"
	./mainf

test: testc testf

%.s:%.c
	$(CC) -S $(CFLAGS) -o $@ $<

asm: mister_float.s main.s

clean:
	rm -f *.o *.s *.so *.d *.a
	rm -f main mainf

-include *.d
