#include <stdio.h>
#include <string.h>

struct Student {
	int i; 
	char name[100];
	char *address;
	char **ptrptr;
};

int junction(struct Student** sptr, int d) {
	(*sptr)->i = d / 100;
	strcpy((*sptr)->name, "Hello");
	if ((*sptr)->i > 10) {
		(*sptr)->i = 300;
	}	

	if ((*sptr)->i > 100) {
		printf("%d\n", (*sptr)->i);
	}

	if (strlen((*sptr)->address) > 10) {
		printf("Hello!\n");
	}

	if ((**(*sptr)->ptrptr) == '\a') {
		printf("HI\n");
	}
	return 0;
}

