struct student {
    char *a;
    int b;
};


// case

void baz(char *a) {

}

void bar(struct student *stu) {
    baz(stu->a);
}

void foo(struct student *stu) {
    bar(stu);
}