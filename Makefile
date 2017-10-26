all: test_bst

test_bst: bst.o test_bst.c
	gcc -std=c99 -g test_bst.c bst.o -o test_bst

bst.o: bst.c bst.h
	gcc -std=c99 -g -c bst.c

clean:
	rm -f bst.o test_bst
	rm -rf *.dSYM/
