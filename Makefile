.SUFFIXES: .c .o
.SUFFIXES: .cpp .o

SRCDIR = SRC/
INCDIR = INCLUDE/
CC = g++

CFLAGS = -g -O2 -std=c++11 -I$(INCDIR) 
CINC   = 
LDFLAGS= -lm 

LD=$(CC) 

OBJS = $(SRCDIR)main.o $(SRCDIR)probs_calculation.o $(SRCDIR)string_manipulations.o $(SRCDIR)queue.o $(SRCDIR)ranking_unr_gt.o 

./ranked: $(OBJS)
	$(LD) $(OBJS) $(LDFLAGS) -o $@ 
.c.o:
	$(CC) -c $(CFLAGS) $(CINC) $< -o $@
.cpp.o:	
	$(CC) -c $(CFLAGS) $(CINC) $< -o $@

clean:
	rm -f $(SRCDIR)*.o ./ranked