SUBDIRS=lib src
OBJECTS=calc.o
vpath %.c src: lib
vpath %.h include
vpath %.o src: lib
CFLAGS= -O2 -Wall -pedantic -ansi
LDFLAGS = -lcond -L/home/2016/karatt24/complex/make_static/lib/ -lm


.PHONY: prepare execute $(SUBDIRS)

all: execute prepare 

execute: $(OBJECTS)
		gcc -o calc $^ $(CFLAGS) $(LDFLAGS)

prepare: $(SUBDIRS)

$(SUBDIRS):
		make -C $@


