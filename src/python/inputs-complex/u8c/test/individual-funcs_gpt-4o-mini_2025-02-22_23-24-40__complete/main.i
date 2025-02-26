typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (* _Nullable _close)(void *);
 int (* _Nullable _read) (void *, char *, int);
 fpos_t (* _Nullable _seek) (void *, fpos_t, int);
 int (* _Nullable _write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;
extern FILE *__stdoutp;
extern FILE *__stderrp;
int fflush(FILE *);
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int fputc(int, FILE *);
int strncmp(const char *__s1, const char *__s2, size_t __n);
int u8next_(const char *txt, int *ch);
int u8encode_(int ch, char *s);
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
extern int * __error(void);
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
    do {int e_=!(l == k+1); (*__error()) = 0; fflush(__stdoutp); fprintf(__stderrp,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == k+1","test4.c",19); if (e_ && *(("Expected length: %d, got %d"))) { fprintf(__stderrp,"    : " "Expected length: %d, got %d",k+1,l); fputc('\n',__stderrp); } fflush(__stderrp); (*__error()) = e_; } while(0);
    l2=u8encode_(c, buf);
    do {int e_=!(l == l2); (*__error()) = 0; fflush(__stdoutp); fprintf(__stderrp,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"l == l2","test4.c",21); if (e_ && *(("Length should be %d, got %d"))) { fprintf(__stderrp,"    : " "Length should be %d, got %d",l,l2); fputc('\n',__stderrp); } fflush(__stderrp); (*__error()) = e_; } while(0);
    do {int e_=!(strncmp(s1,buf,l) == 0); (*__error()) = 0; fflush(__stdoutp); fprintf(__stderrp,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"strncmp(s1,buf,l) == 0","test4.c",22); if (e_ && *(("Encoding error"))) { fprintf(__stderrp,"    : " "Encoding error"); fputc('\n',__stderrp); } fflush(__stderrp); (*__error()) = e_; } while(0);
    do { { if ((*__error())) { ((fflush(__stdoutp), fprintf(__stderrp,"    : len=%d [S %02X %02X %02X %02X] [E %02X %02X %02X %02X]",l2,s1[0],s1[1],s1[2],s1[3],buf[0],buf[1],buf[2],buf[3]), fprintf(__stderrp," \x9%s:%d\n","test4.c",25), fflush(__stderrp))); } } ; (*__error()) = 0;} while (0);
    do {int e_=!(buf[l]=='\0'); (*__error()) = 0; fflush(__stdoutp); fprintf(__stderrp,"%s: (%s) \x9%s:%d\n",(e_?"FAIL":"PASS"),"buf[l]=='\\0'","test4.c",28); if (e_ && *(("Encoding not 0 terminated!"))) { fprintf(__stderrp,"    : " "Encoding not 0 terminated!"); fputc('\n',__stderrp); } fflush(__stderrp); (*__error()) = e_; } while(0);
  }
}
