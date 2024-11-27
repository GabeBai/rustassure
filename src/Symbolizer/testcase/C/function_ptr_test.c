struct Class {
	int id;
	int (*fptr)(int);
	int a;
};

void function_ptr_test(struct Class* obj, int a) {
	(*(obj->fptr))(a);
	obj->id = a;
	obj->a = a;
}
