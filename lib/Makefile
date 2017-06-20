vpath %.h ../include

libcond.a: cond.o
		ar  rc libcond.a cond.o

cond.o: cond.c strcompl.h
		gcc -c cond.c
