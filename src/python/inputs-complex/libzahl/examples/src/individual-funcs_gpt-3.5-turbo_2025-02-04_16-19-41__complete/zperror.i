typedef long long __int64_t;
typedef __int64_t __darwin_off_t;
1];
enum zprimality {
 NONPRIME = 0,
 PROBABLY_PRIME,
 PRIME
};
enum zranddev {
 FAST_RANDOM = 0,
 SECURE_RANDOM,
 DEFAULT_RANDOM,
 FASTEST_RANDOM,
 LIBC_RAND_RANDOM,
 LIBC_RANDOM_RANDOM,
 LIBC_RAND48_RANDOM
};
enum zranddist {
 QUASIUNIFORM = 0,
 UNIFORM,
 MODUNIFORM
};
enum zerror {
 ZERROR_ERRNO_SET = 0,
 ZERROR_0_POW_0,
 ZERROR_0_DIV_0,
 ZERROR_DIV_0,
 ZERROR_NEGATIVE,
 ZERROR_INVALID_RADIX
};
enum zerror zerror(const char **);
void zperror(const char *);
extern int * __error(void);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
extern int libzahl_error;
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
extern FILE *__stderrp;
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
void perror(const char *) __attribute__((__cold__));
void
zperror(const char *prefix)
{
 if (libzahl_error >= 0) {
  (*__error()) = libzahl_error;
  perror(prefix);
 } else {
  const char *desc;
  zerror(&desc);
  if (prefix && *prefix)
   fprintf(__stderrp, "%s: %s\n", prefix, desc);
  else
   fprintf(__stderrp, "%s\n", desc);
 }
}
