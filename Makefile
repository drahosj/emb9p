all: emb9p.a

OBJECTS=convD2M.o convM2D.o convM2S.o convS2M.o
IFLAGS=-I./inc

CFLAGS=$(IFLAGS)

%.o: src/%.c
	$(CC)  $(CFLAGS) -o $@ -c $<

clean: 
	rm -f *.o *.a

emb9p.a: $(OBJECTS)
	ar emb9p.a $(OBJECTS)
