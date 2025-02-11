

typedef int jmp_buf[((14 + 8 + 2) * 2)];
typedef int sigjmp_buf[((14 + 8 + 2) * 2) + 1];
extern int setjmp(jmp_buf);
extern void longjmp(jmp_buf, int) __attribute__((__noreturn__));
int _setjmp(jmp_buf);
void _longjmp(jmp_buf, int) __attribute__((__noreturn__));
int sigsetjmp(sigjmp_buf, int);
void siglongjmp(sigjmp_buf, int) __attribute__((__noreturn__));
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int64_t register_t;
typedef unsigned long uintptr_t;
typedef u_int64_t syscall_arg_t;

typedef __darwin_intptr_t intptr_t;
typedef long int intmax_t;
typedef long unsigned int uintmax_t;
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;
typedef __darwin_ssize_t ssize_t;

typedef __darwin_uid_t uid_t;
typedef __darwin_gid_t gid_t;
int faccessat(int, const char *, int, int) __attribute__((availability(macosx,introduced=10.10)));
int fchownat(int, const char *, uid_t, gid_t, int) __attribute__((availability(macosx,introduced=10.10)));
int linkat(int, const char *, int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
ssize_t readlinkat(int, const char *, char *, size_t) __attribute__((availability(macosx,introduced=10.10)));
int symlinkat(const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));
int unlinkat(int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
typedef __darwin_off_t off_t;
typedef __darwin_pid_t pid_t;
typedef __darwin_useconds_t useconds_t;
void _exit(int) __attribute__((__noreturn__));
int access(const char *, int);
unsigned int
  alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);
int close(int) __asm("_" "close" );
int dup(int);
int dup2(int, int);
int execl(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execle(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execlp(const char * __file, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execv(const char * __path, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execve(const char * __file, char * const * __argv, char * const * __envp) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execvp(const char * __file, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
pid_t fork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
long fpathconf(int, int);
char *getcwd(char *, size_t);
gid_t getegid(void);
uid_t geteuid(void);
gid_t getgid(void);
int getgroups(int, gid_t []);
char *getlogin(void);
pid_t getpgrp(void);
pid_t getpid(void);
pid_t getppid(void);
uid_t getuid(void);
int isatty(int);
int link(const char *, const char *);
off_t lseek(int, off_t, int);
long pathconf(const char *, int);
int pause(void) __asm("_" "pause" );
int pipe(int [2]);
ssize_t read(int, void *, size_t) __asm("_" "read" );
int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);
unsigned int
  sleep(unsigned int) __asm("_" "sleep" );
long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t) __asm("_" "ttyname_r" );
int unlink(const char *);
ssize_t write(int __fd, const void * __buf, size_t __nbyte) __asm("_" "write" );
size_t confstr(int, char *, size_t) __asm("_" "confstr" );
int getopt(int, char * const [], const char *) __asm("_" "getopt" );
extern char *optarg;
extern int optind, opterr, optopt;
char *ctermid(char *);
char *crypt(const char *, const char *);
void encrypt(char *, int) __asm("_" "encrypt" );
int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);
int lchown(const char *, uid_t, gid_t) __asm("_" "lchown" );
int lockf(int, int, off_t) __asm("_" "lockf" );
int nice(int) __asm("_" "nice" );
ssize_t pread(int __fd, void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pread" );
ssize_t pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pwrite" );
pid_t setpgrp(void) __asm("_" "setpgrp" );
int setregid(gid_t, gid_t) __asm("_" "setregid" );
int setreuid(uid_t, uid_t) __asm("_" "setreuid" );
void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t) __asm("_" "usleep" );
pid_t vfork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsync(int) __asm("_" "fsync" );
int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);
typedef uint64_t zahl_char_t;
struct zahl {
        int sign;
 int padding__;
        size_t used;
        size_t alloced;
        zahl_char_t *chars;
};
extern struct zahl libzahl_tmp_div[1];
extern struct zahl libzahl_tmp_mod[1];
void libzahl_realloc(struct zahl *, size_t);
static inline void
libzahl_memcpy(register zahl_char_t *restrict d, register const zahl_char_t *restrict s, register size_t n)
{
 switch (n) { case 20: d[20 - 1] = s[20 - 1];; case 19: d[19 - 1] = s[19 - 1];; case 18: d[18 - 1] = s[18 - 1];; case 17: d[17 - 1] = s[17 - 1];; case 16: d[16 - 1] = s[16 - 1];; case 15: d[15 - 1] = s[15 - 1];; case 14: d[14 - 1] = s[14 - 1];; case 13: d[13 - 1] = s[13 - 1];; case 12: d[12 - 1] = s[12 - 1];; case 11: d[11 - 1] = s[11 - 1];; case 10: d[10 - 1] = s[10 - 1];; case 9: d[9 - 1] = s[9 - 1];; case 8: d[8 - 1] = s[8 - 1];; case 7: d[7 - 1] = s[7 - 1];; case 6: d[6 - 1] = s[6 - 1];; case 5: d[5 - 1] = s[5 - 1];; case 4: d[4 - 1] = s[4 - 1];; case 3: d[3 - 1] = s[3 - 1];; case 2: d[2 - 1] = s[2 - 1];; case 1: d[1 - 1] = s[1 - 1];; case 0: break; default:;
 {
  size_t i;
  for (i = 0; i < n; i += 4) {
   d[i + 0] = s[i + 0];
   d[i + 1] = s[i + 1];
   d[i + 2] = s[i + 2];
   d[i + 3] = s[i + 3];
  }
 }
 break; };
}
static inline void
libzahl_memset(register zahl_char_t *a, register zahl_char_t v, size_t n)
{
 size_t i;
 for (i = 0; i < n; i += 4) {
  a[i + 0] = v;
  a[i + 1] = v;
  a[i + 2] = v;
  a[i + 3] = v;
 }
}
static inline void
libzahl_memset_precise(register zahl_char_t *a, register zahl_char_t v, size_t n)
{
 size_t i;
 if (n <= 4) {
  if (n >= 1)
   a[0] = v;
  if (n >= 2)
   a[1] = v;
  if (n >= 3)
   a[2] = v;
  if (n >= 4)
   a[3] = v;
 } else {
  for (i = 0; (i += 4) <= n;) {
   a[i - 1] = v;
   a[i - 2] = v;
   a[i - 3] = v;
   a[i - 4] = v;
  }
  if (i > n)
   for (i -= 4; i < n; i++)
    a[i] = v;
 }
}
static inline void
libzahl_memmovef(register zahl_char_t *d, register const zahl_char_t *s, size_t n)
{
 if (n && n < 4) {
  d[0] = s[0];
  d[1] = s[1];
  d[2] = s[2];
 } else {
  size_t i;
  for (i = 0; i < n; i += 4) {
   d[i + 0] = s[i + 0];
   d[i + 1] = s[i + 1];
   d[i + 2] = s[i + 2];
   d[i + 3] = s[i + 3];
  }
 }
}
static inline void
libzahl_memmoveb(register zahl_char_t *d, register const zahl_char_t *s, size_t n)
{
 ssize_t i;
 switch (n) { case 20: d[20 - 1] = s[20 - 1];; case 19: d[19 - 1] = s[19 - 1];; case 18: d[18 - 1] = s[18 - 1];; case 17: d[17 - 1] = s[17 - 1];; case 16: d[16 - 1] = s[16 - 1];; case 15: d[15 - 1] = s[15 - 1];; case 14: d[14 - 1] = s[14 - 1];; case 13: d[13 - 1] = s[13 - 1];; case 12: d[12 - 1] = s[12 - 1];; case 11: d[11 - 1] = s[11 - 1];; case 10: d[10 - 1] = s[10 - 1];; case 9: d[9 - 1] = s[9 - 1];; case 8: d[8 - 1] = s[8 - 1];; case 7: d[7 - 1] = s[7 - 1];; case 6: d[6 - 1] = s[6 - 1];; case 5: d[5 - 1] = s[5 - 1];; case 4: d[4 - 1] = s[4 - 1];; case 3: d[3 - 1] = s[3 - 1];; case 2: d[2 - 1] = s[2 - 1];; case 1: d[1 - 1] = s[1 - 1];; case 0: break; default:;
 for (i = ((ssize_t)n + 3) & ~3; (i -= 4) >= 0;) {
  d[i + 3] = s[i + 3];
  d[i + 2] = s[i + 2];
  d[i + 1] = s[i + 1];
  d[i + 0] = s[i + 0];
 }
 break; };
}
static inline void
libzahl_memmove(register zahl_char_t *d, register const zahl_char_t *s, size_t n)
{
 if (d < s)
  libzahl_memmovef(d, s, n);
 else
  libzahl_memmoveb(d, s, n);
}
typedef struct zahl z_t[1];
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
void zsetup(jmp_buf);
void zunsetup(void);
static inline void zinit(z_t);
static inline void zswap(z_t, z_t);
void zfree(z_t);
static inline size_t zsave(z_t, void *);
size_t zload(z_t, const void *);
static inline void zset(z_t, z_t);
static inline void zsetu(z_t, uint64_t);
static inline void zseti(z_t, int64_t);
static inline int zcmp(z_t, z_t);
static inline int zcmpu(z_t, uint64_t);
static inline int zcmpi(z_t, int64_t);
static inline int zcmpmag(z_t, z_t);
static inline void zabs(z_t, z_t);
static inline void zneg(z_t, z_t);
void zadd(z_t, z_t, z_t);
void zsub(z_t, z_t, z_t);
static inline void zmul(z_t, z_t, z_t);
void zmodmul(z_t, z_t, z_t, z_t);
static inline void zdiv(z_t, z_t, z_t);
void zdivmod(z_t, z_t, z_t, z_t);
static inline void zmod(z_t, z_t, z_t);
static inline void zsqr(z_t, z_t);
void zmodsqr(z_t, z_t, z_t);
void zpow(z_t, z_t, z_t);
void zmodpow(z_t, z_t, z_t, z_t);
void zpowu(z_t, z_t, unsigned long long int);
void zmodpowu(z_t, z_t, unsigned long long int, z_t);
void zadd_unsigned(z_t, z_t, z_t);
void zsub_unsigned(z_t, z_t, z_t);
void zadd_unsigned_assign(z_t, z_t);
void zsub_nonnegative_assign(z_t, z_t);
void zsub_positive_assign(z_t, z_t);
void zand(z_t, z_t, z_t);
void zor(z_t, z_t, z_t);
void zxor(z_t, z_t, z_t);
void znot(z_t, z_t);
void zlsh(z_t, z_t, size_t);
void zrsh(z_t, z_t, size_t);
void ztrunc(z_t, z_t, size_t);
static inline void zsplit(z_t, z_t, z_t, size_t);
static inline int zbtest(z_t, size_t);
static inline size_t zlsb(z_t);
static inline size_t zbits(z_t);
static inline void zbset(z_t, z_t, size_t, int);
static inline int zeven(z_t);
static inline int zodd(z_t);
static inline int zeven_nonzero(z_t);
static inline int zodd_nonzero(z_t);
static inline int zzero(z_t);
static inline int zsignum(z_t);
void zgcd(z_t, z_t, z_t);
enum zprimality zptest(z_t, z_t, int);
void zrand(z_t, enum zranddev, enum zranddist, z_t);
char *zstr(z_t, char *, size_t);
int zsets(z_t, const char *);
size_t zstr_length(z_t, unsigned long long int);
enum zerror zerror(const char **);
void zperror(const char *);
void zbset_ll_set(z_t, size_t);
void zbset_ll_clear(z_t, size_t);
void zbset_ll_flip(z_t, size_t);
void zmul_ll(z_t, z_t, z_t);
void zsqr_ll(z_t, z_t);
static inline void zinit(z_t a) { a->alloced = 0; a->chars = 0; }
static inline int zeven(z_t a) { return !a->sign || (~a->chars[0] & 1); }
static inline int zodd(z_t a) { return a->sign && (a->chars[0] & 1); }
static inline int zeven_nonzero(z_t a) { return ~a->chars[0] & 1; }
static inline int zodd_nonzero(z_t a) { return a->chars[0] & 1; }
static inline int zzero(z_t a) { return !a->sign; }
static inline int zsignum(z_t a) { return a->sign; }
static inline void zneg(z_t a, z_t b) { do { if ((a) != (b)) zset(a, b); } while (0); a->sign = -a->sign; }
static inline void zabs(z_t a, z_t b) { do { if ((a) != (b)) zset(a, b); } while (0); a->sign &= 1; }
static inline void
zswap(z_t a_, z_t b_)
{
 register long t;
 long *a = (long *)a_;
 long *b = (long *)b_;
 t = a[0], a[0] = b[0], b[0] = t;
 t = b[1], b[1] = a[1], a[1] = t;
 t = a[2], a[2] = b[2], b[2] = t;
 t = b[3], b[3] = a[3], a[3] = t;
}
static inline void
zset(z_t a, z_t b)
{
 if (__builtin_expect(!!(b->sign == 0), 0)) {
  a->sign = 0;
 } else {
  a->sign = b->sign;
  a->used = b->used;
  do { if ((a)->alloced < (b->used)) libzahl_realloc(a, (b->used)); } while (0);
  libzahl_memcpy(a->chars, b->chars, b->used);
 }
}
static inline void
zseti(z_t a, int64_t b)
{
 if (__builtin_expect(!!(b >= 0), 0)) {
  zsetu(a, (uint64_t)b);
  return;
 }
 do { if ((a)->alloced < (1)) libzahl_realloc(a, (1)); } while (0);
 ((a)->sign = (-1));
 a->chars[0] = (zahl_char_t)-b;
 a->used = 1;
}
static inline void
zsetu(z_t a, uint64_t b)
{
 if (__builtin_expect(!!(!b), 0)) {
  ((a)->sign = (0));
  return;
 }
 do { if ((a)->alloced < (1)) libzahl_realloc(a, (1)); } while (0);
 ((a)->sign = (1));
 a->chars[0] = (zahl_char_t)b;
 a->used = 1;
}
static inline size_t
zlsb(z_t a)
{
 size_t i = 0;
 if (__builtin_expect(!!(zzero(a)), 0))
  return 18446744073709551615UL;
 for (; !a->chars[i]; i++);
 i *= 8 * sizeof(zahl_char_t);
 ((i) += (size_t)__builtin_ctzll(a->chars[i]));
 return i;
}
static inline size_t
zbits(z_t a)
{
 size_t rc;
 if (__builtin_expect(!!(zzero(a)), 0))
  return 1;
 while (!a->chars[a->used - 1]) a->used--;
 rc = a->used * 8 * sizeof(zahl_char_t);
 ((rc) -= (size_t)__builtin_clzll(a->chars[a->used - 1]));
 return rc;
}
static inline int
zcmpmag(z_t a, z_t b)
{
 size_t i, j;
 if (__builtin_expect(!!(zzero(a)), 0)) return -!zzero(b);
 if (__builtin_expect(!!(zzero(b)), 0)) return 1;
 i = a->used - 1;
 j = b->used - 1;
 for (; i > j; i--) {
  if (a->chars[i])
   return +1;
  a->used--;
 }
 for (; j > i; j--) {
  if (b->chars[j])
   return -1;
  b->used--;
 }
 for (; i && a->chars[i] == b->chars[i]; i--);
 return a->chars[i] < b->chars[i] ? -1 : a->chars[i] > b->chars[i];
}
static inline int
zcmp(z_t a, z_t b)
{
 if (zsignum(a) != zsignum(b))
  return zsignum(a) < zsignum(b) ? -1 : zsignum(a) > zsignum(b);
 return zsignum(a) * zcmpmag(a, b);
}
static inline int
zcmpu(z_t a, uint64_t b)
{
 if (__builtin_expect(!!(!b), 0))
  return zsignum(a);
 if (__builtin_expect(!!(zsignum(a) <= 0), 0))
  return -1;
 while (!a->chars[a->used - 1]) a->used--;
 if (a->used > 1)
  return +1;
 return a->chars[0] < b ? -1 : a->chars[0] > b;
}
static inline int
zcmpi(z_t a, int64_t b)
{
 if (__builtin_expect(!!(!b), 0))
  return zsignum(a);
 if (__builtin_expect(!!(zzero(a)), 0))
  return __builtin_expect(!!(b < 0), 1) ? 1 : -1;
 if (__builtin_expect(!!(b < 0), 1)) {
  if (zsignum(a) > 0)
   return +1;
  while (!a->chars[a->used - 1]) a->used--;
  if (a->used > 1)
   return -1;
  return a->chars[0] > (zahl_char_t)-b ? -1 : a->chars[0] < (zahl_char_t)-b;
 } else {
  if (zsignum(a) < 0)
   return -1;
  while (!a->chars[a->used - 1]) a->used--;
  if (a->used > 1)
   return +1;
  return a->chars[0] < (zahl_char_t)b ? -1 : a->chars[0] > (zahl_char_t)b;
 }
}
static inline void
zbset(z_t a, z_t b, size_t bit, int action)
{
 if (__builtin_expect(!!(a != b), 0))
  zset(a, b);
 if (__builtin_constant_p(action) && __builtin_constant_p(bit)) {
  zahl_char_t mask = 1;
  if (zzero(a) || ((bit) >> 6) >= a->used) {
   if (!action)
    return;
   goto fallback;
  }
  mask <<= ((bit) & (64 - 1));
  if (action > 0) {
   a->chars[((bit) >> 6)] |= mask;
   return;
  } else if (action < 0) {
   a->chars[((bit) >> 6)] ^= mask;
  } else {
   a->chars[((bit) >> 6)] &= ~mask;
  }
  do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); if (!(a)->used) ((a)->sign = (0)); } while (0);
  return;
 }
fallback:
 if (action > 0)
  zbset_ll_set(a, bit);
 else if (action < 0)
  zbset_ll_flip(a, bit);
 else
  zbset_ll_clear(a, bit);
}
        static inline int
zbtest(z_t a, size_t bit)
{
 size_t chars;
 if (__builtin_expect(!!(zzero(a)), 0))
  return 0;
 chars = ((bit) >> 6);
 if (__builtin_expect(!!(chars >= a->used), 0))
  return 0;
 bit &= ((bit) & (64 - 1));
 return (a->chars[chars] >> bit) & 1;
}
        static inline void
zsplit(z_t high, z_t low, z_t a, size_t delim)
{
 if (__builtin_expect(!!(high == a), 0)) {
  ztrunc(low, a, delim);
  zrsh(high, a, delim);
 } else {
  zrsh(high, a, delim);
  ztrunc(low, a, delim);
 }
}
static inline size_t
zsave(z_t a, void *buffer)
{
 if (__builtin_expect(!!(buffer), 1)) {
  char *buf = buffer;
  *((long *)buf) = a->sign, buf += sizeof(long);
  *((size_t *)buf) = a->used, buf += sizeof(size_t);
  if (__builtin_expect(!!(!zzero(a)), 1)) {
   a->chars[a->used + 2] = 0;
   a->chars[a->used + 1] = 0;
   a->chars[a->used + 0] = 0;
   libzahl_memcpy((zahl_char_t *)buf, a->chars, a->used);
  }
 }
 return sizeof(long) + sizeof(size_t) +
  (zzero(a) ? 0 :((a->used + 3) & (size_t)~3) * sizeof(zahl_char_t));
}
static inline void
zmul(z_t a, z_t b, z_t c)
{
 int b_sign, c_sign;
 b_sign = b->sign, b->sign *= b_sign;
 c_sign = c->sign, c->sign *= c_sign;
 zmul_ll(a, b, c);
 c->sign = c_sign;
 b->sign = b_sign;
 ((a)->sign = (zsignum(b) * zsignum(c)));
}
static inline void
zsqr(z_t a, z_t b)
{
 if (__builtin_expect(!!(zzero(b)), 0)) {
  ((a)->sign = (0));
 } else {
  zsqr_ll(a, b);
  ((a)->sign = (1));
 }
}
static inline void
zdiv(z_t a, z_t b, z_t c)
{
 zdivmod(a, libzahl_tmp_div, b, c);
}
static inline void
zmod(z_t a, z_t b, z_t c)
{
 zdivmod(libzahl_tmp_mod, a, b, c);
}

extern int * __error(void);
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
typedef __darwin_id_t id_t;
typedef int sig_atomic_t;
struct __darwin_arm_exception_state
{
 __uint32_t __exception;
 __uint32_t __fsr;
 __uint32_t __far;
};
struct __darwin_arm_exception_state64
{
 __uint64_t __far;
 __uint32_t __esr;
 __uint32_t __exception;
};
struct __darwin_arm_thread_state
{
 __uint32_t __r[13];
 __uint32_t __sp;
 __uint32_t __lr;
 __uint32_t __pc;
 __uint32_t __cpsr;
};
struct __darwin_arm_thread_state64
{
 __uint64_t __x[29];
 __uint64_t __fp;
 __uint64_t __lr;
 __uint64_t __sp;
 __uint64_t __pc;
 __uint32_t __cpsr;
 __uint32_t __pad;
};
struct __darwin_arm_vfp_state
{
 __uint32_t __r[64];
 __uint32_t __fpscr;
};
struct __darwin_arm_neon_state64
{
 __uint128_t __v[32];
 __uint32_t __fpsr;
 __uint32_t __fpcr;
};
struct __darwin_arm_neon_state
{
 __uint128_t __v[16];
 __uint32_t __fpsr;
 __uint32_t __fpcr;
};
struct __arm_pagein_state
{
 int __pagein_error;
};
struct __arm_legacy_debug_state
{
 __uint32_t __bvr[16];
 __uint32_t __bcr[16];
 __uint32_t __wvr[16];
 __uint32_t __wcr[16];
};
struct __darwin_arm_debug_state32
{
 __uint32_t __bvr[16];
 __uint32_t __bcr[16];
 __uint32_t __wvr[16];
 __uint32_t __wcr[16];
 __uint64_t __mdscr_el1;
};
struct __darwin_arm_debug_state64
{
 __uint64_t __bvr[16];
 __uint64_t __bcr[16];
 __uint64_t __wvr[16];
 __uint64_t __wcr[16];
 __uint64_t __mdscr_el1;
};
struct __darwin_arm_cpmu_state64
{
 __uint64_t __ctrs[16];
};
struct __darwin_mcontext32
{
 struct __darwin_arm_exception_state __es;
 struct __darwin_arm_thread_state __ss;
 struct __darwin_arm_vfp_state __fs;
};
struct __darwin_mcontext64
{
 struct __darwin_arm_exception_state64 __es;
 struct __darwin_arm_thread_state64 __ss;
 struct __darwin_arm_neon_state64 __ns;
};
typedef struct __darwin_mcontext64 *mcontext_t;

typedef __darwin_pthread_attr_t pthread_attr_t;

struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;
 struct __darwin_mcontext64 __mcontext_data;
};
typedef struct __darwin_ucontext ucontext_t;
typedef __darwin_sigset_t sigset_t;
union sigval {
 int sival_int;
 void *sival_ptr;
};
struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};
typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};
struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
void(*signal(int, void (*)(int)))(int);
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
typedef __uint64_t rlim_t;
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_opaque[14];
};
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
int getpriority(int, id_t);
int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" );
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" );
pid_t wait(int *) __asm("_" "wait" );
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" );
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" );

typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
extern int __mb_cur_max;
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
void *calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2))) ;
void free(void * );
void *realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
void *reallocf(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
int posix_memalign(void * *__memptr, size_t __alignment, size_t __size) __attribute__((availability(macosx,introduced=10.6)));
void abort(void) __attribute__((__cold__)) __attribute__((__noreturn__));
int abs(int) __attribute__((__const__));
int atexit(void (* _Nonnull)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long
  atoll(const char *);
void *bsearch(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (* _Nonnull __compar)(const void *, const void *));
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
char *getenv(const char *);
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));
long long
  llabs(long long);
lldiv_t lldiv(long long, long long);
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
void qsort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));
int rand(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
void srand(unsigned) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
double strtod(const char *, char **) __asm("_" "strtod" );
float strtof(const char *, char **) __asm("_" "strtof" );
long strtol(const char *__str, char **__endptr, int __base);
long double
  strtold(const char *, char **);
long long
  strtoll(const char *__str, char **__endptr, int __base);
unsigned long
  strtoul(const char *__str, char **__endptr, int __base);
unsigned long long
  strtoull(const char *__str, char **__endptr, int __base);
__attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)")))
__attribute__((availability(macos,introduced=10.0))) __attribute__((availability(ios,unavailable)))
__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
int system(const char *) __asm("_" "system" );
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);
void _Exit(int) __attribute__((__noreturn__));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);
char *initstate(unsigned, char *, size_t);
long jrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
long nrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) __asm("_" "putenv" );
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" );
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("_" "setenv" );
void setkey(const char *) __asm("_" "setkey" );
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("_" "unsetenv" );
void *memchr(const void *__s, int __c, size_t __n);
int memcmp(const void *__s1, const void *__s2, size_t __n);
void *memcpy(void *__dst, const void *__src, size_t __n);
void *memmove(void *__dst, const void *__src, size_t __len);
void *memset(void *__b, int __c, size_t __len);
char *strcat(char *__s1, const char *__s2);
char *strchr(const char *__s, int __c);
int strcmp(const char *__s1, const char *__s2);
int strcoll(const char *__s1, const char *__s2);
char *strcpy(char *__dst, const char *__src);
size_t strcspn(const char *__s, const char *__charset);
char *strerror(int __errnum) __asm("_" "strerror" );
size_t strlen(const char *__s);
char *strncat(char *__s1, const char *__s2, size_t __n);
int strncmp(const char *__s1, const char *__s2, size_t __n);
char *strncpy(char *__dst, const char *__src, size_t __n);
char *strpbrk(const char *__s, const char *__charset);
char *strrchr(const char *__s, int __c);
size_t strspn(const char *__s, const char *__charset);
char *strstr(const char *__big, const char *__little);
char *strtok(char *__str, const char *__sep);
size_t strxfrm(char *__s1, const char *__s2, size_t __n);
char *strtok_r(char *__str, const char *__sep, char **__lasts);
int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen);
char *strdup(const char *__s1);
void *memccpy(void *__dst, const void *__src, int __c, size_t __n);
char *stpcpy(char *__dst, const char *__src);
char *stpncpy(char *__dst, const char *__src, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strndup(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
size_t strnlen(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strsignal(int __sig);
extern z_t libzahl_tmp_str_num; extern z_t libzahl_tmp_str_mag; extern z_t libzahl_tmp_str_div; extern z_t libzahl_tmp_str_rem; extern z_t libzahl_tmp_gcd_u; extern z_t libzahl_tmp_gcd_v; extern z_t libzahl_tmp_sub; extern z_t libzahl_tmp_modmul; extern z_t libzahl_tmp_pow_b; extern z_t libzahl_tmp_pow_c; extern z_t libzahl_tmp_pow_d; extern z_t libzahl_tmp_modsqr; extern z_t libzahl_tmp_divmod_a; extern z_t libzahl_tmp_divmod_b; extern z_t libzahl_tmp_divmod_d; extern z_t libzahl_tmp_ptest_x; extern z_t libzahl_tmp_ptest_a; extern z_t libzahl_tmp_ptest_d; extern z_t libzahl_tmp_ptest_n1; extern z_t libzahl_tmp_ptest_n4;
extern z_t libzahl_const_1e19; extern z_t libzahl_const_1; extern z_t libzahl_const_2; extern z_t libzahl_const_4;
extern z_t libzahl_tmp_divmod_ds[64];
extern jmp_buf libzahl_jmp_buf;
extern int libzahl_set_up;
extern int libzahl_error;
extern zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
extern size_t libzahl_pool_n[sizeof(size_t) * 8];
extern size_t libzahl_pool_alloc[sizeof(size_t) * 8];
extern struct zahl **libzahl_temp_stack;
extern struct zahl **libzahl_temp_stack_head;
extern struct zahl **libzahl_temp_stack_end;
extern void *libzahl_temp_allocation;
static inline int
zzero1(z_t a, z_t b)
{
 return zzero(a) || zzero(b);
}
static inline void
zmemcpy_range(register zahl_char_t *restrict d, register const zahl_char_t *restrict s, size_t i, size_t n)
{
 d += i;
 s += i;
 n -= i;
 libzahl_memcpy(d, s, n);
}
static void
libzahl_failure(int error)
{
 libzahl_error = (error);
 if (libzahl_temp_stack)
  while (libzahl_temp_stack_head != libzahl_temp_stack)
   zfree(*--libzahl_temp_stack_head);
 free(libzahl_temp_allocation);
 libzahl_temp_allocation = 0;
 longjmp(libzahl_jmp_buf, 1);
}
static inline void
libzahl_memfailure(void)
{
 if (!(*__error()))
  (*__error()) = 2;
 libzahl_failure((*__error()));
}
static inline void
zsplit_pz(z_t high, z_t low, z_t a, size_t delim)
{
 if (__builtin_expect(!!(zzero(a)), 0)) {
  ((high)->sign = (0));
  ((low)->sign = (0));
 } else {
  zsplit(high, low, a, delim);
 }
}
static inline void
zrsh_taint(z_t a, size_t bits)
{
 size_t i, chars, cbits;
 if (__builtin_expect(!!(!bits), 0))
  return;
 if (__builtin_expect(!!(zzero(a)), 0))
  return;
 chars = ((bits) >> 6);
 if (__builtin_expect(!!(chars >= a->used || zbits(a) <= bits), 0)) {
  ((a)->sign = (0));
  return;
 }
 bits = ((bits) & (64 - 1));
 cbits = 64 - bits;
 if (__builtin_expect(!!(chars), 1)) {
  a->used -= chars;
  a->chars += chars;
 }
 if (__builtin_expect(!!(bits), 0)) {
  a->chars[0] >>= bits;
  for (i = 1; i < a->used; i++) {
   a->chars[i - 1] |= a->chars[i] << cbits;
   a->chars[i] >>= bits;
  }
  for (; !(a)->chars[(a)->used - 1]; (a)->used--);
 }
}
static inline void
zswap_tainted_unsigned(z_t a, z_t b)
{
 z_t t;
 ((t)->used = (a)->used, (a)->used = (b)->used, (b)->used = (t)->used);
 ((t)->chars = (b)->chars, (b)->chars = (a)->chars, (a)->chars = (t)->chars);
}
static inline void
zsplit_unsigned_fast_large_taint(z_t high, z_t low, z_t a, size_t n)
{
 n >>= 6;
 high->sign = 1;
 high->used = a->used - n;
 high->chars = a->chars + n;
 low->sign = 1;
 low->used = n;
 low->chars = a->chars;
 do { for (; (low)->used && !(low)->chars[(low)->used - 1]; (low)->used--); if (!(low)->used) ((low)->sign = (0)); } while (0);
}
static inline void
zsplit_unsigned_fast_small_auto(z_t high, z_t low, z_t a, size_t n)
{
 zahl_char_t mask = 1;
 mask = (mask << n) - 1;
 high->sign = 1;
 high->used = 1;
 high->chars[0] = a->chars[0] >> n;
 if (a->used == 2) {
  high->chars[1] = a->chars[1] >> n;
  high->used += !!high->chars[1];
  n = 64 - n;
  high->chars[0] |= (a->chars[1] & mask) << n;
 }
 low->sign = 1;
 low->used = 1;
 low->chars[0] = a->chars[0] & mask;
 if (__builtin_expect(!!(!low->chars[0]), 0))
  low->sign = 0;
}
static inline void
zinit_temp(z_t a)
{
 zinit(a);
 if (__builtin_expect(!!(libzahl_temp_stack_head == libzahl_temp_stack_end), 0)) {
  size_t n = (size_t)(libzahl_temp_stack_end - libzahl_temp_stack);
  void* old = libzahl_temp_stack;
  libzahl_temp_stack = realloc(old, 2 * n * sizeof(*libzahl_temp_stack));
  if (__builtin_expect(!!(!libzahl_temp_stack), 0)) {
   libzahl_temp_stack = old;
   libzahl_memfailure();
  }
  libzahl_temp_stack_head = libzahl_temp_stack + n;
  libzahl_temp_stack_end = libzahl_temp_stack_head + n;
 }
 *libzahl_temp_stack_head++ = a;
}
static inline void
zfree_temp(z_t a)
{
 zfree(a);
 libzahl_temp_stack_head--;
}
enum zprimality
zptest(z_t witness, z_t n, int t)
{
 size_t i, r;
 if (__builtin_expect(!!(zcmpu(n, 3) <= 0), 0)) {
  if (zcmpu(n, 1) <= 0) {
   if (witness)
    do { if ((witness) != (n)) zset(witness, n); } while (0);
   return NONPRIME;
  } else {
   return PRIME;
  }
 }
 if (__builtin_expect(!!(zeven(n)), 0)) {
  if (witness)
   zsetu(witness, 2);
  return NONPRIME;
 }
 zsub_unsigned(libzahl_tmp_ptest_n1, n, libzahl_const_1);
 zsub_unsigned(libzahl_tmp_ptest_n4, n, libzahl_const_4);
 r = zlsb(libzahl_tmp_ptest_n1);
 zrsh(libzahl_tmp_ptest_d, libzahl_tmp_ptest_n1, r);
 while (t--) {
  zrand(libzahl_tmp_ptest_a, DEFAULT_RANDOM, UNIFORM, libzahl_tmp_ptest_n4);
  zadd_unsigned(libzahl_tmp_ptest_a, libzahl_tmp_ptest_a, libzahl_const_2);
  zmodpow(libzahl_tmp_ptest_x, libzahl_tmp_ptest_a, libzahl_tmp_ptest_d, n);
  if (!zcmp(libzahl_tmp_ptest_x, libzahl_const_1) || !zcmp(libzahl_tmp_ptest_x, libzahl_tmp_ptest_n1))
   continue;
  for (i = 1; i < r; i++) {
   zmodsqr(libzahl_tmp_ptest_x, libzahl_tmp_ptest_x, n);
   if (!zcmp(libzahl_tmp_ptest_x, libzahl_const_1)) {
    if (witness)
     zswap(witness, libzahl_tmp_ptest_a);
    return NONPRIME;
   }
   if (!zcmp(libzahl_tmp_ptest_x, libzahl_tmp_ptest_n1))
    break;
  }
  if (i == r) {
   if (witness)
    zswap(witness, libzahl_tmp_ptest_a);
   return NONPRIME;
  }
 }
 return PROBABLY_PRIME;
}
