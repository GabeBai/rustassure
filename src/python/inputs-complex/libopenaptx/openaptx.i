typedef long unsigned int size_t;
typedef int wchar_t;
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void*)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ )) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void*)0), 10);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ )) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void*)0), 10);
}
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;

typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));
}
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};

struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;

typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __elision;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  int __cur_writer;
  int __shared;
  signed char __rwelision;
  unsigned char __pad1[7];
  unsigned long int __pad2;
  unsigned int __flags;
};
struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct
{
  int __data ;
} __once_flag;
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
extern long int random (void) __attribute__ ((__nothrow__ ));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));
extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern __uint32_t arc4random (void)
     __attribute__ ((__nothrow__ )) ;
extern void arc4random_buf (void *__buf, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __uint32_t arc4random_uniform (__uint32_t __upper_bound)
     __attribute__ ((__nothrow__ )) ;
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__))
                       ;
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) ;
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ ));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;
  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (const void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 {
   return (void *) __p;
 }
    }
  return ((void*)0);
}
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ))
                                      ;
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ))
                                    ;
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}

typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
};
typedef struct __locale_struct *__locale_t;

typedef __locale_t locale_t;
extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)))
                                           ;
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
                                         ;
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                          ;
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;

typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;

extern const int aptx_major;
extern const int aptx_minor;
extern const int aptx_patch;
struct aptx_context;
struct aptx_context *aptx_init(int hd);
void aptx_reset(struct aptx_context *ctx);
void aptx_finish(struct aptx_context *ctx);
size_t aptx_encode(struct aptx_context *ctx,
                   const unsigned char *input,
                   size_t input_size,
                   unsigned char *output,
                   size_t output_size,
                   size_t *written);
int aptx_encode_finish(struct aptx_context *ctx,
                       unsigned char *output,
                       size_t output_size,
                       size_t *written);
size_t aptx_decode(struct aptx_context *ctx,
                   const unsigned char *input,
                   size_t input_size,
                   unsigned char *output,
                   size_t output_size,
                   size_t *written);
size_t aptx_decode_sync(struct aptx_context *ctx,
                        const unsigned char *input,
                        size_t input_size,
                        unsigned char *output,
                        size_t output_size,
                        size_t *written,
                        int *synced,
                        size_t *dropped);
size_t aptx_decode_sync_finish(struct aptx_context *ctx);
static inline int32_t clip_intp2(int32_t a, unsigned p)
{
    if (((uint32_t)a + ((uint32_t)1 << p)) & ~(((uint32_t)2 << p) - 1))
        return (a >> 31) ^ ((1 << p) - 1);
    else
        return a;
}
static inline int32_t clip(int32_t a, int32_t amin, int32_t amax)
{
    if (a < amin) return amin;
    else if (a > amax) return amax;
    else return a;
}
static inline int32_t sign_extend(int32_t val, unsigned bits)
{
    const unsigned shift = 8 * sizeof(val) - bits;
    union { uint32_t u; int32_t s; } v;
    v.u = (uint32_t)val << shift;
    return v.s >> shift;
}
enum channels {
    LEFT,
    RIGHT,
    NB_CHANNELS
};
struct aptx_filter_signal {
    int32_t buffer[2*16];
    uint8_t pos;
};
struct aptx_QMF_analysis {
    struct aptx_filter_signal outer_filter_signal[2];
    struct aptx_filter_signal inner_filter_signal[2][2];
};
struct aptx_quantize {
    int32_t quantized_sample;
    int32_t quantized_sample_parity_change;
    int32_t error;
};
struct aptx_invert_quantize {
    int32_t quantization_factor;
    int32_t factor_select;
    int32_t reconstructed_difference;
};
struct aptx_prediction {
    int32_t prev_sign[2];
    int32_t s_weight[2];
    int32_t d_weight[24];
    int32_t pos;
    int32_t reconstructed_differences[48];
    int32_t previous_reconstructed_sample;
    int32_t predicted_difference;
    int32_t predicted_sample;
};
struct aptx_channel {
    int32_t codeword_history;
    int32_t dither_parity;
    int32_t dither[4];
    struct aptx_QMF_analysis qmf;
    struct aptx_quantize quantize[4];
    struct aptx_invert_quantize invert_quantize[4];
    struct aptx_prediction prediction[4];
};
struct aptx_context {
    size_t decode_sync_packets;
    size_t decode_dropped;
    struct aptx_channel channels[NB_CHANNELS];
    uint8_t hd;
    uint8_t sync_idx;
    uint8_t encode_remaining;
    uint8_t decode_skip_leading;
    uint8_t decode_sync_buffer_len;
    unsigned char decode_sync_buffer[6];
};
static const int32_t quantize_intervals_LF[65] = {
      -9948, 9948, 29860, 49808, 69822, 89926, 110144, 130502,
     151026, 171738, 192666, 213832, 235264, 256982, 279014, 301384,
     324118, 347244, 370790, 394782, 419250, 444226, 469742, 495832,
     522536, 549890, 577936, 606720, 636290, 666700, 698006, 730270,
     763562, 797958, 833538, 870398, 908640, 948376, 989740, 1032874,
    1077948, 1125150, 1174700, 1226850, 1281900, 1340196, 1402156, 1468282,
    1539182, 1615610, 1698514, 1789098, 1888944, 2000168, 2125700, 2269750,
    2438670, 2642660, 2899462, 3243240, 3746078, 4535138, 5664098, 7102424,
    8897462,
};
static const int32_t invert_quantize_dither_factors_LF[65] = {
       9948, 9948, 9962, 9988, 10026, 10078, 10142, 10218,
      10306, 10408, 10520, 10646, 10784, 10934, 11098, 11274,
      11462, 11664, 11880, 12112, 12358, 12618, 12898, 13194,
      13510, 13844, 14202, 14582, 14988, 15422, 15884, 16380,
      16912, 17484, 18098, 18762, 19480, 20258, 21106, 22030,
      23044, 24158, 25390, 26760, 28290, 30008, 31954, 34172,
      36728, 39700, 43202, 47382, 52462, 58762, 66770, 77280,
      91642, 112348, 144452, 199326, 303512, 485546, 643414, 794914,
    1000124,
};
static const int32_t quantize_dither_factors_LF[65] = {
        0, 4, 7, 10, 13, 16, 19, 22,
       26, 28, 32, 35, 38, 41, 44, 47,
       51, 54, 58, 62, 65, 70, 74, 79,
       84, 90, 95, 102, 109, 116, 124, 133,
      143, 154, 166, 180, 195, 212, 231, 254,
      279, 308, 343, 383, 430, 487, 555, 639,
      743, 876, 1045, 1270, 1575, 2002, 2628, 3591,
     5177, 8026, 13719, 26047, 45509, 39467, 37875, 51303,
        0,
};
static const int16_t quantize_factor_select_offset_LF[65] = {
      0, -21, -19, -17, -15, -12, -10, -8,
     -6, -4, -1, 1, 3, 6, 8, 10,
     13, 15, 18, 20, 23, 26, 29, 31,
     34, 37, 40, 43, 47, 50, 53, 57,
     60, 64, 68, 72, 76, 80, 85, 89,
     94, 99, 105, 110, 116, 123, 129, 136,
    144, 152, 161, 171, 182, 194, 207, 223,
    241, 263, 291, 328, 382, 467, 522, 522,
    522,
};
static const int32_t quantize_intervals_MLF[9] = {
    -89806, 89806, 278502, 494338, 759442, 1113112, 1652322, 2720256, 5190186,
};
static const int32_t invert_quantize_dither_factors_MLF[9] = {
    89806, 89806, 98890, 116946, 148158, 205512, 333698, 734236, 1735696,
};
static const int32_t quantize_dither_factors_MLF[9] = {
    0, 2271, 4514, 7803, 14339, 32047, 100135, 250365, 0,
};
static const int16_t quantize_factor_select_offset_MLF[9] = {
    0, -14, 6, 29, 58, 96, 154, 270, 521,
};
static const int32_t quantize_intervals_MHF[3] = {
    -194080, 194080, 890562,
};
static const int32_t invert_quantize_dither_factors_MHF[3] = {
    194080, 194080, 502402,
};
static const int32_t quantize_dither_factors_MHF[3] = {
    0, 77081, 0,
};
static const int16_t quantize_factor_select_offset_MHF[3] = {
    0, -33, 136,
};
static const int32_t quantize_intervals_HF[5] = {
    -163006, 163006, 542708, 1120554, 2669238,
};
static const int32_t invert_quantize_dither_factors_HF[5] = {
    163006, 163006, 216698, 361148, 1187538,
};
static const int32_t quantize_dither_factors_HF[5] = {
    0, 13423, 36113, 206598, 0,
};
static const int16_t quantize_factor_select_offset_HF[5] = {
    0, -8, 33, 95, 262,
};
static const int32_t hd_quantize_intervals_LF[257] = {
      -2436, 2436, 7308, 12180, 17054, 21930, 26806, 31686,
      36566, 41450, 46338, 51230, 56124, 61024, 65928, 70836,
      75750, 80670, 85598, 90530, 95470, 100418, 105372, 110336,
     115308, 120288, 125278, 130276, 135286, 140304, 145334, 150374,
     155426, 160490, 165566, 170654, 175756, 180870, 185998, 191138,
     196294, 201466, 206650, 211850, 217068, 222300, 227548, 232814,
     238096, 243396, 248714, 254050, 259406, 264778, 270172, 275584,
     281018, 286470, 291944, 297440, 302956, 308496, 314056, 319640,
     325248, 330878, 336532, 342212, 347916, 353644, 359398, 365178,
     370986, 376820, 382680, 388568, 394486, 400430, 406404, 412408,
     418442, 424506, 430600, 436726, 442884, 449074, 455298, 461554,
     467844, 474168, 480528, 486922, 493354, 499820, 506324, 512866,
     519446, 526064, 532722, 539420, 546160, 552940, 559760, 566624,
     573532, 580482, 587478, 594520, 601606, 608740, 615920, 623148,
     630426, 637754, 645132, 652560, 660042, 667576, 675164, 682808,
     690506, 698262, 706074, 713946, 721876, 729868, 737920, 746036,
     754216, 762460, 770770, 779148, 787594, 796108, 804694, 813354,
     822086, 830892, 839774, 848736, 857776, 866896, 876100, 885386,
     894758, 904218, 913766, 923406, 933138, 942964, 952886, 962908,
     973030, 983254, 993582, 1004020, 1014566, 1025224, 1035996, 1046886,
    1057894, 1069026, 1080284, 1091670, 1103186, 1114838, 1126628, 1138558,
    1150634, 1162858, 1175236, 1187768, 1200462, 1213320, 1226346, 1239548,
    1252928, 1266490, 1280242, 1294188, 1308334, 1322688, 1337252, 1352034,
    1367044, 1382284, 1397766, 1413494, 1429478, 1445728, 1462252, 1479058,
    1496158, 1513562, 1531280, 1549326, 1567710, 1586446, 1605550, 1625034,
    1644914, 1665208, 1685932, 1707108, 1728754, 1750890, 1773542, 1796732,
    1820488, 1844840, 1869816, 1895452, 1921780, 1948842, 1976680, 2005338,
    2034868, 2065322, 2096766, 2129260, 2162880, 2197708, 2233832, 2271352,
    2310384, 2351050, 2393498, 2437886, 2484404, 2533262, 2584710, 2639036,
    2696578, 2757738, 2822998, 2892940, 2968278, 3049896, 3138912, 3236760,
    3345312, 3467068, 3605434, 3765154, 3952904, 4177962, 4452178, 4787134,
    5187290, 5647128, 6159120, 6720518, 7332904, 8000032, 8726664, 9518152,
    10380372,
};
static const int32_t hd_invert_quantize_dither_factors_LF[257] = {
      2436, 2436, 2436, 2436, 2438, 2438, 2438, 2440,
      2442, 2442, 2444, 2446, 2448, 2450, 2454, 2456,
      2458, 2462, 2464, 2468, 2472, 2476, 2480, 2484,
      2488, 2492, 2498, 2502, 2506, 2512, 2518, 2524,
      2528, 2534, 2540, 2548, 2554, 2560, 2568, 2574,
      2582, 2588, 2596, 2604, 2612, 2620, 2628, 2636,
      2646, 2654, 2664, 2672, 2682, 2692, 2702, 2712,
      2722, 2732, 2742, 2752, 2764, 2774, 2786, 2798,
      2810, 2822, 2834, 2846, 2858, 2870, 2884, 2896,
      2910, 2924, 2938, 2952, 2966, 2980, 2994, 3010,
      3024, 3040, 3056, 3070, 3086, 3104, 3120, 3136,
      3154, 3170, 3188, 3206, 3224, 3242, 3262, 3280,
      3300, 3320, 3338, 3360, 3380, 3400, 3422, 3442,
      3464, 3486, 3508, 3532, 3554, 3578, 3602, 3626,
      3652, 3676, 3702, 3728, 3754, 3780, 3808, 3836,
      3864, 3892, 3920, 3950, 3980, 4010, 4042, 4074,
      4106, 4138, 4172, 4206, 4240, 4276, 4312, 4348,
      4384, 4422, 4460, 4500, 4540, 4580, 4622, 4664,
      4708, 4752, 4796, 4842, 4890, 4938, 4986, 5036,
      5086, 5138, 5192, 5246, 5300, 5358, 5416, 5474,
      5534, 5596, 5660, 5726, 5792, 5860, 5930, 6002,
      6074, 6150, 6226, 6306, 6388, 6470, 6556, 6644,
      6736, 6828, 6924, 7022, 7124, 7228, 7336, 7448,
      7562, 7680, 7802, 7928, 8058, 8192, 8332, 8476,
      8624, 8780, 8940, 9106, 9278, 9458, 9644, 9840,
     10042, 10252, 10472, 10702, 10942, 11194, 11458, 11734,
     12024, 12328, 12648, 12986, 13342, 13720, 14118, 14540,
     14990, 15466, 15976, 16520, 17102, 17726, 18398, 19124,
     19908, 20760, 21688, 22702, 23816, 25044, 26404, 27922,
     29622, 31540, 33720, 36222, 39116, 42502, 46514, 51334,
     57218, 64536, 73830, 85890, 101860, 123198, 151020, 183936,
    216220, 243618, 268374, 293022, 319362, 347768, 378864, 412626, 449596,
};
static const int32_t hd_quantize_dither_factors_LF[256] = {
       0, 0, 0, 1, 0, 0, 1, 1,
       0, 1, 1, 1, 1, 1, 1, 1,
       1, 1, 1, 1, 1, 1, 1, 1,
       1, 2, 1, 1, 2, 2, 2, 1,
       2, 2, 2, 2, 2, 2, 2, 2,
       2, 2, 2, 2, 2, 2, 2, 3,
       2, 3, 2, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 3, 3, 3,
       3, 3, 3, 3, 3, 4, 3, 4,
       4, 4, 4, 4, 4, 4, 4, 4,
       4, 4, 4, 4, 5, 4, 4, 5,
       4, 5, 5, 5, 5, 5, 5, 5,
       5, 5, 6, 5, 5, 6, 5, 6,
       6, 6, 6, 6, 6, 6, 6, 7,
       6, 7, 7, 7, 7, 7, 7, 7,
       7, 7, 8, 8, 8, 8, 8, 8,
       8, 9, 9, 9, 9, 9, 9, 9,
      10, 10, 10, 10, 10, 11, 11, 11,
      11, 11, 12, 12, 12, 12, 13, 13,
      13, 14, 14, 14, 15, 15, 15, 15,
      16, 16, 17, 17, 17, 18, 18, 18,
      19, 19, 20, 21, 21, 22, 22, 23,
      23, 24, 25, 26, 26, 27, 28, 29,
      30, 31, 32, 33, 34, 35, 36, 37,
      39, 40, 42, 43, 45, 47, 49, 51,
      53, 55, 58, 60, 63, 66, 69, 73,
      76, 80, 85, 89, 95, 100, 106, 113,
     119, 128, 136, 146, 156, 168, 182, 196,
     213, 232, 254, 279, 307, 340, 380, 425,
     480, 545, 626, 724, 847, 1003, 1205, 1471,
    1830, 2324, 3015, 3993, 5335, 6956, 8229, 8071,
    6850, 6189, 6162, 6585, 7102, 7774, 8441, 9243,
};
static const int16_t hd_quantize_factor_select_offset_LF[257] = {
      0, -22, -21, -21, -20, -20, -19, -19,
    -18, -18, -17, -17, -16, -16, -15, -14,
    -14, -13, -13, -12, -12, -11, -11, -10,
    -10, -9, -9, -8, -7, -7, -6, -6,
     -5, -5, -4, -4, -3, -3, -2, -1,
     -1, 0, 0, 1, 1, 2, 2, 3,
      4, 4, 5, 5, 6, 6, 7, 8,
      8, 9, 9, 10, 11, 11, 12, 12,
     13, 14, 14, 15, 15, 16, 17, 17,
     18, 19, 19, 20, 20, 21, 22, 22,
     23, 24, 24, 25, 26, 26, 27, 28,
     28, 29, 30, 30, 31, 32, 33, 33,
     34, 35, 35, 36, 37, 38, 38, 39,
     40, 41, 41, 42, 43, 44, 44, 45,
     46, 47, 48, 48, 49, 50, 51, 52,
     52, 53, 54, 55, 56, 57, 58, 58,
     59, 60, 61, 62, 63, 64, 65, 66,
     67, 68, 69, 69, 70, 71, 72, 73,
     74, 75, 77, 78, 79, 80, 81, 82,
     83, 84, 85, 86, 87, 89, 90, 91,
     92, 93, 94, 96, 97, 98, 99, 101,
    102, 103, 105, 106, 107, 109, 110, 112,
    113, 115, 116, 118, 119, 121, 122, 124,
    125, 127, 129, 130, 132, 134, 136, 137,
    139, 141, 143, 145, 147, 149, 151, 153,
    155, 158, 160, 162, 164, 167, 169, 172,
    174, 177, 180, 182, 185, 188, 191, 194,
    197, 201, 204, 208, 211, 215, 219, 223,
    227, 232, 236, 241, 246, 251, 257, 263,
    269, 275, 283, 290, 298, 307, 317, 327,
    339, 352, 367, 384, 404, 429, 458, 494,
    522, 522, 522, 522, 522, 522, 522, 522, 522,
};
static const int32_t hd_quantize_intervals_MLF[33] = {
      -21236, 21236, 63830, 106798, 150386, 194832, 240376, 287258,
      335726, 386034, 438460, 493308, 550924, 611696, 676082, 744626,
      817986, 896968, 982580, 1076118, 1179278, 1294344, 1424504, 1574386,
     1751090, 1966260, 2240868, 2617662, 3196432, 4176450, 5658260, 7671068,
    10380372,
};
static const int32_t hd_invert_quantize_dither_factors_MLF[33] = {
    21236, 21236, 21360, 21608, 21978, 22468, 23076, 23806,
    24660, 25648, 26778, 28070, 29544, 31228, 33158, 35386,
    37974, 41008, 44606, 48934, 54226, 60840, 69320, 80564,
    96140, 119032, 155576, 221218, 357552, 622468, 859344, 1153464, 1555840,
};
static const int32_t hd_quantize_dither_factors_MLF[32] = {
       0, 31, 62, 93, 123, 152, 183, 214,
     247, 283, 323, 369, 421, 483, 557, 647,
     759, 900, 1082, 1323, 1654, 2120, 2811, 3894,
    5723, 9136, 16411, 34084, 66229, 59219, 73530, 100594,
};
static const int16_t hd_quantize_factor_select_offset_MLF[33] = {
      0, -21, -16, -12, -7, -2, 3, 8,
     13, 19, 24, 30, 36, 43, 50, 57,
     65, 74, 83, 93, 104, 117, 131, 147,
    166, 189, 219, 259, 322, 427, 521, 521, 521,
};
static const int32_t hd_quantize_intervals_MHF[9] = {
    -95044, 95044, 295844, 528780, 821332, 1226438, 1890540, 3344850, 6450664,
};
static const int32_t hd_invert_quantize_dither_factors_MHF[9] = {
    95044, 95044, 105754, 127180, 165372, 39736, 424366, 1029946, 2075866,
};
static const int32_t hd_quantize_dither_factors_MHF[8] = {
    0, 2678, 5357, 9548, -31409, 96158, 151395, 261480,
};
static const int16_t hd_quantize_factor_select_offset_MHF[9] = {
    0, -17, 5, 30, 62, 105, 177, 334, 518,
};
static const int32_t hd_quantize_intervals_HF[17] = {
     -45754, 45754, 138496, 234896, 337336, 448310, 570738, 708380,
     866534, 1053262, 1281958, 1577438, 1993050, 2665984, 3900982, 5902844,
    8897462,
};
static const int32_t hd_invert_quantize_dither_factors_HF[17] = {
    45754, 45754, 46988, 49412, 53026, 57950, 64478, 73164,
    84988, 101740, 126958, 168522, 247092, 425842, 809154, 1192708, 1801910,
};
static const int32_t hd_quantize_dither_factors_HF[16] = {
       0, 309, 606, 904, 1231, 1632, 2172, 2956,
    4188, 6305, 10391, 19643, 44688, 95828, 95889, 152301,
};
static const int16_t hd_quantize_factor_select_offset_HF[17] = {
     0, -18, -8, 2, 13, 25, 38, 53,
    70, 90, 115, 147, 192, 264, 398, 521, 521,
};
struct aptx_tables {
    const int32_t *quantize_intervals;
    const int32_t *invert_quantize_dither_factors;
    const int32_t *quantize_dither_factors;
    const int16_t *quantize_factor_select_offset;
    int tables_size;
    int32_t factor_max;
    int prediction_order;
};
static const struct aptx_tables all_tables[2][4] = {
    {
        {
            quantize_intervals_LF,
            invert_quantize_dither_factors_LF,
            quantize_dither_factors_LF,
            quantize_factor_select_offset_LF,
            (sizeof(quantize_intervals_LF) / sizeof(*(quantize_intervals_LF))),
            0x11FF,
            24
        },
        {
            quantize_intervals_MLF,
            invert_quantize_dither_factors_MLF,
            quantize_dither_factors_MLF,
            quantize_factor_select_offset_MLF,
            (sizeof(quantize_intervals_MLF) / sizeof(*(quantize_intervals_MLF))),
            0x14FF,
            12
        },
        {
            quantize_intervals_MHF,
            invert_quantize_dither_factors_MHF,
            quantize_dither_factors_MHF,
            quantize_factor_select_offset_MHF,
            (sizeof(quantize_intervals_MHF) / sizeof(*(quantize_intervals_MHF))),
            0x16FF,
            6
        },
        {
            quantize_intervals_HF,
            invert_quantize_dither_factors_HF,
            quantize_dither_factors_HF,
            quantize_factor_select_offset_HF,
            (sizeof(quantize_intervals_HF) / sizeof(*(quantize_intervals_HF))),
            0x15FF,
            12
        },
    },
    {
        {
            hd_quantize_intervals_LF,
            hd_invert_quantize_dither_factors_LF,
            hd_quantize_dither_factors_LF,
            hd_quantize_factor_select_offset_LF,
            (sizeof(hd_quantize_intervals_LF) / sizeof(*(hd_quantize_intervals_LF))),
            0x11FF,
            24
        },
        {
            hd_quantize_intervals_MLF,
            hd_invert_quantize_dither_factors_MLF,
            hd_quantize_dither_factors_MLF,
            hd_quantize_factor_select_offset_MLF,
            (sizeof(hd_quantize_intervals_MLF) / sizeof(*(hd_quantize_intervals_MLF))),
            0x14FF,
            12
        },
        {
            hd_quantize_intervals_MHF,
            hd_invert_quantize_dither_factors_MHF,
            hd_quantize_dither_factors_MHF,
            hd_quantize_factor_select_offset_MHF,
            (sizeof(hd_quantize_intervals_MHF) / sizeof(*(hd_quantize_intervals_MHF))),
            0x16FF,
            6
        },
        {
            hd_quantize_intervals_HF,
            hd_invert_quantize_dither_factors_HF,
            hd_quantize_dither_factors_HF,
            hd_quantize_factor_select_offset_HF,
            (sizeof(hd_quantize_intervals_HF) / sizeof(*(hd_quantize_intervals_HF))),
            0x15FF,
            12
        },
    }
};
static const int16_t quantization_factors[32] = {
    2048, 2093, 2139, 2186, 2233, 2282, 2332, 2383,
    2435, 2489, 2543, 2599, 2656, 2714, 2774, 2834,
    2896, 2960, 3025, 3091, 3158, 3228, 3298, 3371,
    3444, 3520, 3597, 3676, 3756, 3838, 3922, 4008,
};
static inline int32_t rshift32(int32_t value, unsigned shift) { const int32_t rounding = (int32_t)1 << (shift - 1); const int32_t mask = ((int32_t)1 << (shift + 1)) - 1; return ((value + rounding) >> shift) - ((value & mask) == rounding); } static inline int32_t rshift32_clip24(int32_t value, unsigned shift) { return clip_intp2((int32_t)rshift32(value, shift), 23); }
static inline int64_t rshift64(int64_t value, unsigned shift) { const int64_t rounding = (int64_t)1 << (shift - 1); const int64_t mask = ((int64_t)1 << (shift + 1)) - 1; return ((value + rounding) >> shift) - ((value & mask) == rounding); } static inline int32_t rshift64_clip24(int64_t value, unsigned shift) { return clip_intp2((int32_t)rshift64(value, shift), 23); }
static inline void aptx_update_codeword_history(struct aptx_channel *channel)
{
    const int32_t cw = ((channel->quantize[0].quantized_sample & 3) << 0) +
                       ((channel->quantize[1].quantized_sample & 2) << 1) +
                       ((channel->quantize[2].quantized_sample & 1) << 3);
    channel->codeword_history = (cw << 8) + (int32_t)((uint32_t)channel->codeword_history << 4);
}
static void aptx_generate_dither(struct aptx_channel *channel)
{
    unsigned subband;
    int64_t m;
    int32_t d;
    aptx_update_codeword_history(channel);
    m = (int64_t)5184443 * (channel->codeword_history >> 7);
    d = (int32_t)((m * 4) + (m >> 22));
    for (subband = 0; subband < 4; subband++)
        channel->dither[subband] = (int32_t)((uint32_t)d << (23 - 5*subband));
    channel->dither_parity = (d >> 25) & 1;
}
static const int32_t aptx_qmf_outer_coeffs[2][16] = {
    {
        730, -413, -9611, 43626, -121026, 269973, -585547, 2801966,
        697128, -160481, 27611, 8478, -10043, 3511, 688, -897,
    },
    {
        -897, 688, 3511, -10043, 8478, 27611, -160481, 697128,
        2801966, -585547, 269973, -121026, 43626, -9611, -413, 730,
    },
};
static const int32_t aptx_qmf_inner_coeffs[2][16] = {
    {
       1033, -584, -13592, 61697, -171156, 381799, -828088, 3962579,
       985888, -226954, 39048, 11990, -14203, 4966, 973, -1268,
    },
    {
      -1268, 973, 4966, -14203, 11990, 39048, -226954, 985888,
      3962579, -828088, 381799, -171156, 61697, -13592, -584, 1033,
    },
};
static inline void aptx_qmf_filter_signal_push(struct aptx_filter_signal *signal,
                                               int32_t sample)
{
    signal->buffer[signal->pos ] = sample;
    signal->buffer[signal->pos+16] = sample;
    signal->pos = (signal->pos + 1) & (16 - 1);
}
static inline int32_t aptx_qmf_convolution(const struct aptx_filter_signal *signal,
                                           const int32_t coeffs[16],
                                           unsigned shift)
{
    const int32_t *sig = &signal->buffer[signal->pos];
    int64_t e = 0;
    unsigned i;
    for (i = 0; i < 16; i++)
        e += (int64_t)sig[i] * (int64_t)coeffs[i];
    return rshift64_clip24(e, shift);
}
static inline void aptx_qmf_polyphase_analysis(struct aptx_filter_signal signal[2],
                                               const int32_t coeffs[2][16],
                                               unsigned shift,
                                               const int32_t samples[2],
                                               int32_t *low_subband_output,
                                               int32_t *high_subband_output)
{
    int32_t subbands[2];
    unsigned i;
    for (i = 0; i < 2; i++) {
        aptx_qmf_filter_signal_push(&signal[i], samples[2 -1-i]);
        subbands[i] = aptx_qmf_convolution(&signal[i], coeffs[i], shift);
    }
    *low_subband_output = clip_intp2(subbands[0] + subbands[1], 23);
    *high_subband_output = clip_intp2(subbands[0] - subbands[1], 23);
}
static void aptx_qmf_tree_analysis(struct aptx_QMF_analysis *qmf,
                                   const int32_t samples[4],
                                   int32_t subband_samples[4])
{
    int32_t intermediate_samples[4];
    unsigned i;
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_analysis(qmf->outer_filter_signal,
                                    aptx_qmf_outer_coeffs, 23,
                                    &samples[2*i],
                                    &intermediate_samples[0+i],
                                    &intermediate_samples[2+i]);
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_analysis(qmf->inner_filter_signal[i],
                                    aptx_qmf_inner_coeffs, 23,
                                    &intermediate_samples[2*i],
                                    &subband_samples[2*i+0],
                                    &subband_samples[2*i+1]);
}
static inline void aptx_qmf_polyphase_synthesis(struct aptx_filter_signal signal[2],
                                                const int32_t coeffs[2][16],
                                                unsigned shift,
                                                int32_t low_subband_input,
                                                int32_t high_subband_input,
                                                int32_t samples[2])
{
    int32_t subbands[2];
    unsigned i;
    subbands[0] = low_subband_input + high_subband_input;
    subbands[1] = low_subband_input - high_subband_input;
    for (i = 0; i < 2; i++) {
        aptx_qmf_filter_signal_push(&signal[i], subbands[1-i]);
        samples[i] = aptx_qmf_convolution(&signal[i], coeffs[i], shift);
    }
}
static void aptx_qmf_tree_synthesis(struct aptx_QMF_analysis *qmf,
                                    const int32_t subband_samples[4],
                                    int32_t samples[4])
{
    int32_t intermediate_samples[4];
    unsigned i;
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->inner_filter_signal[i],
                                     aptx_qmf_inner_coeffs, 22,
                                     subband_samples[2*i+0],
                                     subband_samples[2*i+1],
                                     &intermediate_samples[2*i]);
    for (i = 0; i < 2; i++)
        aptx_qmf_polyphase_synthesis(qmf->outer_filter_signal,
                                     aptx_qmf_outer_coeffs, 21,
                                     intermediate_samples[0+i],
                                     intermediate_samples[2+i],
                                     &samples[2*i]);
}
static inline int32_t aptx_bin_search(int32_t value, int32_t factor,
                                      const int32_t *intervals, int nb_intervals)
{
    int32_t idx = 0;
    int i;
    for (i = nb_intervals >> 1; i > 0; i >>= 1)
        if ((int64_t)factor * (int64_t)intervals[idx + i] <= ((int64_t)value << 24))
            idx += i;
    return idx;
}
static void aptx_quantize_difference(struct aptx_quantize *quantize,
                                     int32_t sample_difference,
                                     int32_t dither,
                                     int32_t quantization_factor,
                                     const struct aptx_tables *tables)
{
    const int32_t *intervals = tables->quantize_intervals;
    int32_t quantized_sample, dithered_sample, parity_change;
    int32_t d, mean, interval, inv, sample_difference_abs;
    int64_t error;
    sample_difference_abs = sample_difference;
    if (sample_difference_abs < 0)
        sample_difference_abs = -sample_difference_abs;
    if (sample_difference_abs > ((int32_t)1 << 23) - 1)
        sample_difference_abs = ((int32_t)1 << 23) - 1;
    quantized_sample = aptx_bin_search(sample_difference_abs >> 4,
                                       quantization_factor,
                                       intervals, tables->tables_size);
    d = rshift32_clip24((int32_t)(((int64_t)dither * (int64_t)dither) >> 32), 7) - ((int32_t)1 << 23);
    d = (int32_t)rshift64((int64_t)d * (int64_t)tables->quantize_dither_factors[quantized_sample], 23);
    intervals += quantized_sample;
    mean = (intervals[1] + intervals[0]) / 2;
    interval = (intervals[1] - intervals[0]) * (-(sample_difference < 0) | 1);
    dithered_sample = rshift64_clip24((int64_t)dither * (int64_t)interval + ((int64_t)clip_intp2(mean + d, 23) << 32), 32);
    error = ((int64_t)sample_difference_abs << 20) - (int64_t)dithered_sample * (int64_t)quantization_factor;
    quantize->error = (int32_t)rshift64(error, 23);
    if (quantize->error < 0)
        quantize->error = -quantize->error;
    parity_change = quantized_sample;
    if (error < 0)
        quantized_sample--;
    else
        parity_change--;
    inv = -(sample_difference < 0);
    quantize->quantized_sample = quantized_sample ^ inv;
    quantize->quantized_sample_parity_change = parity_change ^ inv;
}
static void aptx_encode_channel(struct aptx_channel *channel, const int32_t samples[4], int hd)
{
    int32_t subband_samples[4];
    int32_t diff;
    unsigned subband;
    aptx_qmf_tree_analysis(&channel->qmf, samples, subband_samples);
    aptx_generate_dither(channel);
    for (subband = 0; subband < 4; subband++) {
        diff = clip_intp2(subband_samples[subband] - channel->prediction[subband].predicted_sample, 23);
        aptx_quantize_difference(&channel->quantize[subband], diff,
                                 channel->dither[subband],
                                 channel->invert_quantize[subband].quantization_factor,
                                 &all_tables[hd][subband]);
    }
}
static void aptx_decode_channel(struct aptx_channel *channel, int32_t samples[4])
{
    int32_t subband_samples[4];
    unsigned subband;
    for (subband = 0; subband < 4; subband++)
        subband_samples[subband] = channel->prediction[subband].previous_reconstructed_sample;
    aptx_qmf_tree_synthesis(&channel->qmf, subband_samples, samples);
}
static void aptx_invert_quantization(struct aptx_invert_quantize *invert_quantize,
                                     int32_t quantized_sample, int32_t dither,
                                     const struct aptx_tables *tables)
{
    int32_t qr, idx, shift, factor_select;
    idx = (quantized_sample ^ -(quantized_sample < 0)) + 1;
    qr = tables->quantize_intervals[idx] / 2;
    if (quantized_sample < 0)
        qr = -qr;
    qr = rshift64_clip24(((int64_t)qr * ((int64_t)1<<32)) + (int64_t)dither * (int64_t)tables->invert_quantize_dither_factors[idx], 32);
    invert_quantize->reconstructed_difference = (int32_t)(((int64_t)invert_quantize->quantization_factor * (int64_t)qr) >> 19);
    factor_select = 32620 * invert_quantize->factor_select;
    factor_select = rshift32(factor_select + (tables->quantize_factor_select_offset[idx] * (1 << 15)), 15);
    invert_quantize->factor_select = clip(factor_select, 0, tables->factor_max);
    idx = (invert_quantize->factor_select & 0xFF) >> 3;
    shift = (tables->factor_max - invert_quantize->factor_select) >> 8;
    invert_quantize->quantization_factor = (quantization_factors[idx] << 11) >> shift;
}
static int32_t *aptx_reconstructed_differences_update(struct aptx_prediction *prediction,
                                                      int32_t reconstructed_difference,
                                                      int order)
{
    int32_t *rd1 = prediction->reconstructed_differences, *rd2 = rd1 + order;
    int p = prediction->pos;
    rd1[p] = rd2[p];
    prediction->pos = p = (p + 1) % order;
    rd2[p] = reconstructed_difference;
    return &rd2[p];
}
static void aptx_prediction_filtering(struct aptx_prediction *prediction,
                                      int32_t reconstructed_difference,
                                      int order)
{
    int32_t reconstructed_sample, predictor, srd0, srd;
    int32_t *reconstructed_differences;
    int64_t predicted_difference = 0;
    int i;
    reconstructed_sample = clip_intp2(reconstructed_difference + prediction->predicted_sample, 23);
    predictor = clip_intp2((int32_t)(((int64_t)prediction->s_weight[0] * (int64_t)prediction->previous_reconstructed_sample
                                    + (int64_t)prediction->s_weight[1] * (int64_t)reconstructed_sample) >> 22), 23);
    prediction->previous_reconstructed_sample = reconstructed_sample;
    reconstructed_differences = aptx_reconstructed_differences_update(prediction, reconstructed_difference, order);
    srd0 = (int32_t)(((reconstructed_difference)>(0)) - ((reconstructed_difference)<(0))) * ((int32_t)1 << 23);
    for (i = 0; i < order; i++) {
        srd = (reconstructed_differences[-i-1] >> 31) | 1;
        prediction->d_weight[i] -= rshift32(prediction->d_weight[i] - srd*srd0, 8);
        predicted_difference += (int64_t)reconstructed_differences[-i] * (int64_t)prediction->d_weight[i];
    }
    prediction->predicted_difference = clip_intp2((int32_t)(predicted_difference >> 22), 23);
    prediction->predicted_sample = clip_intp2(predictor + prediction->predicted_difference, 23);
}
static void aptx_process_subband(struct aptx_invert_quantize *invert_quantize,
                                 struct aptx_prediction *prediction,
                                 int32_t quantized_sample, int32_t dither,
                                 const struct aptx_tables *tables)
{
    int32_t sign, same_sign[2], weight[2], sw1, range;
    aptx_invert_quantization(invert_quantize, quantized_sample, dither, tables);
    sign = (((invert_quantize->reconstructed_difference)>(-prediction->predicted_difference)) - ((invert_quantize->reconstructed_difference)<(-prediction->predicted_difference)));
    same_sign[0] = sign * prediction->prev_sign[0];
    same_sign[1] = sign * prediction->prev_sign[1];
    prediction->prev_sign[0] = prediction->prev_sign[1];
    prediction->prev_sign[1] = sign | 1;
    range = 0x100000;
    sw1 = rshift32(-same_sign[1] * prediction->s_weight[1], 1);
    sw1 = (clip(sw1, -range, range) & ~0xF) * 16;
    range = 0x300000;
    weight[0] = 254 * prediction->s_weight[0] + 0x800000*same_sign[0] + sw1;
    prediction->s_weight[0] = clip(rshift32(weight[0], 8), -range, range);
    range = 0x3C0000 - prediction->s_weight[0];
    weight[1] = 255 * prediction->s_weight[1] + 0xC00000*same_sign[1];
    prediction->s_weight[1] = clip(rshift32(weight[1], 8), -range, range);
    aptx_prediction_filtering(prediction,
                              invert_quantize->reconstructed_difference,
                              tables->prediction_order);
}
static void aptx_invert_quantize_and_prediction(struct aptx_channel *channel, int hd)
{
    unsigned subband;
    for (subband = 0; subband < 4; subband++)
        aptx_process_subband(&channel->invert_quantize[subband],
                             &channel->prediction[subband],
                             channel->quantize[subband].quantized_sample,
                             channel->dither[subband],
                             &all_tables[hd][subband]);
}
static int32_t aptx_quantized_parity(const struct aptx_channel *channel)
{
    int32_t parity = channel->dither_parity;
    unsigned subband;
    for (subband = 0; subband < 4; subband++)
        parity ^= channel->quantize[subband].quantized_sample;
    return parity & 1;
}
static int aptx_check_parity(const struct aptx_channel channels[NB_CHANNELS], uint8_t *sync_idx)
{
    const int32_t parity = aptx_quantized_parity(&channels[LEFT])
                         ^ aptx_quantized_parity(&channels[RIGHT]);
    const int32_t eighth = *sync_idx == 7;
    *sync_idx = (*sync_idx + 1) & 7;
    return parity ^ eighth;
}
static void aptx_insert_sync(struct aptx_channel channels[NB_CHANNELS], uint8_t *sync_idx)
{
    unsigned i;
    struct aptx_channel *c;
    static const unsigned map[] = { 1, 2, 0, 3 };
    struct aptx_quantize *min = &channels[NB_CHANNELS-1].quantize[map[0]];
    if (aptx_check_parity(channels, sync_idx)) {
        for (c = &channels[NB_CHANNELS-1]; c >= channels; c--)
            for (i = 0; i < 4; i++)
                if (c->quantize[map[i]].error < min->error)
                    min = &c->quantize[map[i]];
        min->quantized_sample = min->quantized_sample_parity_change;
    }
}
static uint16_t aptx_pack_codeword(const struct aptx_channel *channel)
{
    const int32_t parity = aptx_quantized_parity(channel);
    return (uint16_t)((((channel->quantize[3].quantized_sample & 0x06) | parity) << 13)
                    | (((channel->quantize[2].quantized_sample & 0x03) ) << 11)
                    | (((channel->quantize[1].quantized_sample & 0x0F) ) << 7)
                    | (((channel->quantize[0].quantized_sample & 0x7F) ) << 0));
}
static uint32_t aptxhd_pack_codeword(const struct aptx_channel *channel)
{
    const int32_t parity = aptx_quantized_parity(channel);
    return (uint32_t)((((channel->quantize[3].quantized_sample & 0x01E) | parity) << 19)
                    | (((channel->quantize[2].quantized_sample & 0x00F) ) << 15)
                    | (((channel->quantize[1].quantized_sample & 0x03F) ) << 9)
                    | (((channel->quantize[0].quantized_sample & 0x1FF) ) << 0));
}
static void aptx_unpack_codeword(struct aptx_channel *channel, uint16_t codeword)
{
    channel->quantize[0].quantized_sample = sign_extend(codeword >> 0, 7);
    channel->quantize[1].quantized_sample = sign_extend(codeword >> 7, 4);
    channel->quantize[2].quantized_sample = sign_extend(codeword >> 11, 2);
    channel->quantize[3].quantized_sample = sign_extend(codeword >> 13, 3);
    channel->quantize[3].quantized_sample = (channel->quantize[3].quantized_sample & ~1)
                                          | aptx_quantized_parity(channel);
}
static void aptxhd_unpack_codeword(struct aptx_channel *channel, uint32_t codeword)
{
    channel->quantize[0].quantized_sample = sign_extend((int32_t)(codeword >> 0), 9);
    channel->quantize[1].quantized_sample = sign_extend((int32_t)(codeword >> 9), 6);
    channel->quantize[2].quantized_sample = sign_extend((int32_t)(codeword >> 15), 4);
    channel->quantize[3].quantized_sample = sign_extend((int32_t)(codeword >> 19), 5);
    channel->quantize[3].quantized_sample = (channel->quantize[3].quantized_sample & ~1)
                                          | aptx_quantized_parity(channel);
}
static void aptx_encode_samples(struct aptx_context *ctx,
                                int32_t samples[NB_CHANNELS][4],
                                uint8_t *output)
{
    unsigned channel;
    for (channel = 0; channel < NB_CHANNELS; channel++)
        aptx_encode_channel(&ctx->channels[channel], samples[channel], ctx->hd);
    aptx_insert_sync(ctx->channels, &ctx->sync_idx);
    for (channel = 0; channel < NB_CHANNELS; channel++) {
        aptx_invert_quantize_and_prediction(&ctx->channels[channel], ctx->hd);
        if (ctx->hd) {
            uint32_t codeword = aptxhd_pack_codeword(&ctx->channels[channel]);
            output[3*channel+0] = (uint8_t)((codeword >> 16) & 0xFF);
            output[3*channel+1] = (uint8_t)((codeword >> 8) & 0xFF);
            output[3*channel+2] = (uint8_t)((codeword >> 0) & 0xFF);
        } else {
            uint16_t codeword = aptx_pack_codeword(&ctx->channels[channel]);
            output[2*channel+0] = (uint8_t)((codeword >> 8) & 0xFF);
            output[2*channel+1] = (uint8_t)((codeword >> 0) & 0xFF);
        }
    }
}
static int aptx_decode_samples(struct aptx_context *ctx,
                                const uint8_t *input,
                                int32_t samples[NB_CHANNELS][4])
{
    unsigned channel;
    int ret;
    for (channel = 0; channel < NB_CHANNELS; channel++) {
        aptx_generate_dither(&ctx->channels[channel]);
        if (ctx->hd)
            aptxhd_unpack_codeword(&ctx->channels[channel],
                                   ((uint32_t)input[3*channel+0] << 16) |
                                   ((uint32_t)input[3*channel+1] << 8) |
                                   ((uint32_t)input[3*channel+2] << 0));
        else
            aptx_unpack_codeword(&ctx->channels[channel], (uint16_t)(
                                 ((uint16_t)input[2*channel+0] << 8) |
                                 ((uint16_t)input[2*channel+1] << 0)));
        aptx_invert_quantize_and_prediction(&ctx->channels[channel], ctx->hd);
    }
    ret = aptx_check_parity(ctx->channels, &ctx->sync_idx);
    for (channel = 0; channel < NB_CHANNELS; channel++)
        aptx_decode_channel(&ctx->channels[channel], samples[channel]);
    return ret;
}
static void aptx_reset_decode_sync(struct aptx_context *ctx)
{
    const size_t decode_dropped = ctx->decode_dropped;
    const size_t decode_sync_packets = ctx->decode_sync_packets;
    const uint8_t decode_sync_buffer_len = ctx->decode_sync_buffer_len;
    unsigned char decode_sync_buffer[6];
    unsigned i;
    for (i = 0; i < 6; i++)
        decode_sync_buffer[i] = ctx->decode_sync_buffer[i];
    aptx_reset(ctx);
    for (i = 0; i < 6; i++)
        ctx->decode_sync_buffer[i] = decode_sync_buffer[i];
    ctx->decode_sync_buffer_len = decode_sync_buffer_len;
    ctx->decode_sync_packets = decode_sync_packets;
    ctx->decode_dropped = decode_dropped;
}
const int aptx_major = 0;
const int aptx_minor = 2;
const int aptx_patch = 1;
struct aptx_context *aptx_init(int hd)
{
    struct aptx_context *ctx;
    ctx = (struct aptx_context *)malloc(sizeof(*ctx));
    if (!ctx)
        return ((void*)0);
    ctx->hd = hd ? 1 : 0;
    aptx_reset(ctx);
    return ctx;
}
void aptx_reset(struct aptx_context *ctx)
{
    const uint8_t hd = ctx->hd;
    unsigned i, chan, subband;
    struct aptx_channel *channel;
    struct aptx_prediction *prediction;
    for (i = 0; i < sizeof(*ctx); i++)
        ((unsigned char *)ctx)[i] = 0;
    ctx->hd = hd;
    ctx->decode_skip_leading = (90 +3)/4;
    ctx->encode_remaining = (90 +3)/4;
    for (chan = 0; chan < NB_CHANNELS; chan++) {
        channel = &ctx->channels[chan];
        for (subband = 0; subband < 4; subband++) {
            prediction = &channel->prediction[subband];
            prediction->prev_sign[0] = 1;
            prediction->prev_sign[1] = 1;
        }
    }
}
void aptx_finish(struct aptx_context *ctx)
{
    free(ctx);
}
size_t aptx_encode(struct aptx_context *ctx, const unsigned char *input, size_t input_size, unsigned char *output, size_t output_size, size_t *written)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    int32_t samples[NB_CHANNELS][4];
    unsigned sample, channel;
    size_t ipos, opos;
    for (ipos = 0, opos = 0; ipos + 3*NB_CHANNELS*4 <= input_size && opos + sample_size <= output_size; opos += sample_size) {
        for (sample = 0; sample < 4; sample++) {
            for (channel = 0; channel < NB_CHANNELS; channel++, ipos += 3) {
                samples[channel][sample] = (int32_t)(((uint32_t)input[ipos+0] << 0) |
                                                     ((uint32_t)input[ipos+1] << 8) |
                                                     ((uint32_t)(int8_t)input[ipos+2] << 16));
            }
        }
        aptx_encode_samples(ctx, samples, output + opos);
    }
    *written = opos;
    return ipos;
}
int aptx_encode_finish(struct aptx_context *ctx, unsigned char *output, size_t output_size, size_t *written)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    int32_t samples[NB_CHANNELS][4] = { { 0 } };
    size_t opos;
    if (ctx->encode_remaining == 0) {
        *written = 0;
        return 1;
    }
    for (opos = 0; ctx->encode_remaining > 0 && opos + sample_size <= output_size; ctx->encode_remaining--, opos += sample_size)
        aptx_encode_samples(ctx, samples, output + opos);
    *written = opos;
    if (ctx->encode_remaining > 0)
        return 0;
    aptx_reset(ctx);
    return 1;
}
size_t aptx_decode(struct aptx_context *ctx, const unsigned char *input, size_t input_size, unsigned char *output, size_t output_size, size_t *written)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    int32_t samples[NB_CHANNELS][4];
    unsigned sample, channel;
    size_t ipos, opos;
    for (ipos = 0, opos = 0; ipos + sample_size <= input_size && (opos + 3*NB_CHANNELS*4 <= output_size || ctx->decode_skip_leading > 0); ipos += sample_size) {
        if (aptx_decode_samples(ctx, input + ipos, samples))
            break;
        sample = 0;
        if (ctx->decode_skip_leading > 0) {
            ctx->decode_skip_leading--;
            if (ctx->decode_skip_leading > 0)
                continue;
            sample = 90%4;
        }
        for (; sample < 4; sample++) {
            for (channel = 0; channel < NB_CHANNELS; channel++, opos += 3) {
                output[opos+0] = (uint8_t)(((uint32_t)samples[channel][sample] >> 0) & 0xFF);
                output[opos+1] = (uint8_t)(((uint32_t)samples[channel][sample] >> 8) & 0xFF);
                output[opos+2] = (uint8_t)(((uint32_t)samples[channel][sample] >> 16) & 0xFF);
            }
        }
    }
    *written = opos;
    return ipos;
}
size_t aptx_decode_sync(struct aptx_context *ctx, const unsigned char *input, size_t input_size, unsigned char *output, size_t output_size, size_t *written, int *synced, size_t *dropped)
{
    const size_t sample_size = ctx->hd ? 6 : 4;
    size_t input_size_step;
    size_t processed_step;
    size_t written_step;
    size_t ipos = 0;
    size_t opos = 0;
    size_t i;
    *synced = 0;
    *dropped = 0;
    if (ctx->decode_sync_buffer_len > 0 && sample_size-1 - ctx->decode_sync_buffer_len <= input_size) {
        while (ctx->decode_sync_buffer_len < sample_size-1)
            ctx->decode_sync_buffer[ctx->decode_sync_buffer_len++] = input[ipos++];
    }
    while (ctx->decode_sync_buffer_len == sample_size-1 && ipos < sample_size && ipos < input_size && (opos + 3*NB_CHANNELS*4 <= output_size || ctx->decode_skip_leading > 0 || ctx->decode_dropped > 0)) {
        ctx->decode_sync_buffer[sample_size-1] = input[ipos++];
        processed_step = aptx_decode(ctx, ctx->decode_sync_buffer, sample_size, output + opos, output_size - opos, &written_step);
        opos += written_step;
        if (ctx->decode_dropped > 0 && processed_step == sample_size) {
            ctx->decode_dropped += processed_step;
            ctx->decode_sync_packets++;
            if (ctx->decode_sync_packets >= (90 +3)/4) {
                *dropped += ctx->decode_dropped;
                ctx->decode_dropped = 0;
                ctx->decode_sync_packets = 0;
            }
        }
        if (processed_step < sample_size) {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ctx->decode_dropped++;
            ctx->decode_sync_packets = 0;
            for (i = 0; i < sample_size-1; i++)
                ctx->decode_sync_buffer[i] = ctx->decode_sync_buffer[i+1];
        } else {
            if (ctx->decode_dropped == 0)
                *synced = 1;
            ctx->decode_sync_buffer_len = 0;
        }
    }
    if (ctx->decode_sync_buffer_len == sample_size-1 && ipos == sample_size) {
        ipos = 0;
        ctx->decode_sync_buffer_len = 0;
    }
    while (ipos + sample_size <= input_size && (opos + 3*NB_CHANNELS*4 <= output_size || ctx->decode_skip_leading > 0 || ctx->decode_dropped > 0)) {
        input_size_step = (((output_size - opos) / 3*NB_CHANNELS*4) + ctx->decode_skip_leading) * sample_size;
        if (input_size_step > ((input_size - ipos) / sample_size) * sample_size)
            input_size_step = ((input_size - ipos) / sample_size) * sample_size;
        if (input_size_step > ((90 +3)/4 - ctx->decode_sync_packets) * sample_size && ctx->decode_dropped > 0)
            input_size_step = ((90 +3)/4 - ctx->decode_sync_packets) * sample_size;
        processed_step = aptx_decode(ctx, input + ipos, input_size_step, output + opos, output_size - opos, &written_step);
        ipos += processed_step;
        opos += written_step;
        if (ctx->decode_dropped > 0 && processed_step / sample_size > 0) {
            ctx->decode_dropped += processed_step;
            ctx->decode_sync_packets += processed_step / sample_size;
            if (ctx->decode_sync_packets >= (90 +3)/4) {
                *dropped += ctx->decode_dropped;
                ctx->decode_dropped = 0;
                ctx->decode_sync_packets = 0;
            }
        }
        if (processed_step < input_size_step) {
            aptx_reset_decode_sync(ctx);
            *synced = 0;
            ipos++;
            ctx->decode_dropped++;
            ctx->decode_sync_packets = 0;
        } else if (ctx->decode_dropped == 0) {
            *synced = 1;
        }
    }
    if (ipos + sample_size > input_size) {
        while (ipos < input_size)
            ctx->decode_sync_buffer[ctx->decode_sync_buffer_len++] = input[ipos++];
    }
    *written = opos;
    return ipos;
}
size_t aptx_decode_sync_finish(struct aptx_context *ctx)
{
    const uint8_t dropped = ctx->decode_sync_buffer_len;
    aptx_reset(ctx);
    return dropped;
}
