OBJF = main.o sosil1.o sosil2.o sosil3.o sosil4.o sosil5.o

test: $(OBJF)
	gcc -o $@ $^
main.o: main.c sosil1.h sosil2.h sosil3.h sosil4.h sosil5.h
	gcc -c $<
.c.o:
	gcc -c $< $(CFLAGS)
clean:
	rm -f *.o test

