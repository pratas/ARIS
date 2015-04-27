#============================================================================#
#                  ARIS 2015, IEETA/DETI, UNIVERSITY OF AVEIRO               #
#============================================================================#
BIN    = .
CC     = gcc
CPLP   = -ffast-math -msse2
#-----------------------------------------------------------------------------
CFLAGS = -O3 -Wall $(CPLP) -DPROGRESS
#-----------------------------------------------------------------------------
LIBS   = -lm
PROGS  = $(BIN)/ARIS
OBJS   = bitio.o arith.o arith_aux.o
#-----------------------------------------------------------------------------
all:
	$(MAKE) progs
progs: $(PROGS)
$(BIN)/ARIS: ARIS.c $(OBJS)
	$(CC) $(CFLAGS) -o $(BIN)/ARIS ARIS.c $(OBJS) $(LIBS)
bitio.o: bitio.c bitio.h
	$(CC) -c $(CFLAGS) bitio.c
arith.o: arith.c arith.h
	$(CC) -c $(CFLAGS) arith.c
arith_aux.o: arith_aux.c arith_aux.h
	$(CC) -c $(CFLAGS) arith_aux.c
clean:
	/bin/rm -f *.o
cleanall:
	/bin/rm -f *.o $(PROGS)
#============================================================================
