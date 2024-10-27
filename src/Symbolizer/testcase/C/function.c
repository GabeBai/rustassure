#include <stdio.h>
#include <klee/klee.h>

int function(int a) {
	int b = a + 222;
	int c = 20*b;
	if (c > 111) 
		return c + 101;
	else
		return c;
}
