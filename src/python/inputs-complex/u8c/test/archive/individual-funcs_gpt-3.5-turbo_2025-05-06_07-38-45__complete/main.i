typedef long unsigned int size_t;
struct _IO_FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
extern FILE *stdout;
extern FILE *stderr;
extern int fflush (FILE *__stream);
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
int u8next_(const char *txt, int *ch);
int u8encode_(int ch, char *s);
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
int main(int argc, char *argv[])
{
  int l,l2;
  int c;
  char buf[8];
  char *s1;
  char *s[] = {"Aa", "èa", "会員", "𧀀𧀍" };
  for (int k=0; k<sizeof(s)/sizeof(char *);k++) {
    s1=s[k];
    l=u8next_(s1, &c);
    do {int e_=!(l == k+1); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == k+1","test4.c",19); if (e_ && *(("Expected length: %d, got %d"))) { fprintf(stderr,"    : " "Expected length: %d, got %d",k+1,l); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
    l2=u8encode_(c, buf);
    do {int e_=!(l == l2); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == l2","test4.c",21); if (e_ && *(("Length should be %d, got %d"))) { fprintf(stderr,"    : " "Length should be %d, got %d",l,l2); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
    do {int e_=!(strncmp(s1,buf,l) == 0); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"strncmp(s1,buf,l) == 0","test4.c",22); if (e_ && *(("Encoding error"))) { fprintf(stderr,"    : " "Encoding error"); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
    do { { if ((*__errno_location ())) { ((fflush(stdout), fprintf(stderr,"    : len=%d [S %02X %02X %02X %02X] [E %02X %02X %02X %02X]",l2,s1[0],s1[1],s1[2],s1[3],buf[0],buf[1],buf[2],buf[3]), fprintf(stderr," \x9%s:%d\n","test4.c",25), fflush(stderr))); } } ; (*__errno_location ()) = 0;} while (0);
    do {int e_=!(buf[l]=='\0'); (*__errno_location ()) = 0; fflush(stdout); fprintf(stderr,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"buf[l]=='\\0'","test4.c",28); if (e_ && *(("Encoding not 0 terminated!"))) { fprintf(stderr,"    : " "Encoding not 0 terminated!"); fputc('\n',stderr); } fflush(stderr); (*__errno_location ()) = e_; } while(0);
  }
}
