#include <stdio.h>
#include <string.h>

struct Student {
	int i; 
	char* name;
};

int hunction(struct Student* sptr, int d) {
	sptr->i = d / 100;
	strcpy(sptr->name, "Hello");
	if (sptr->i > 10) {
		sptr->i = 300;
	}	

	if (sptr->i > 100) {
		printf("%d\n", sptr->i);
	}
	return 0;
}

