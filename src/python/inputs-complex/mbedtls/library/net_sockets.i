typedef int mbedtls_iso_c_forbids_empty_translation_units;
typedef long unsigned int size_t;
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
typedef __clock_t clock_t;
typedef __time_t time_t;
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int __tm_gmtoff;
  const char *__tm_zone;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
typedef __pid_t pid_t;
extern clock_t clock (void) __attribute__ ((__nothrow__ ));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));
extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ ));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__ ));
extern int daylight;
extern long int timezone;
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int getdate_err;
extern struct tm *getdate (const char *__string);
typedef time_t mbedtls_time_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef __gnuc_va_list va_list;
typedef __off64_t off_t;
typedef __fpos64_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream);
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64")
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")
       ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                         ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off64_t __off, int __whence) __asm__ ("" "fseeko64");
extern __off64_t ftello (FILE *__stream) __asm__ ("" "ftello64");
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos) __asm__ ("" "fgetpos64");
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __asm__ ("" "fsetpos64");
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void perror (const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int pclose (FILE *__stream);
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) ;
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ))
                                     ;
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
typedef int wchar_t;
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
typedef __ino64_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __key_t key_t;
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
typedef __blksize_t blksize_t;
typedef __blkcnt64_t blkcnt_t;
typedef __fsblkcnt64_t fsblkcnt_t;
typedef __fsfilcnt64_t fsfilcnt_t;

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
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;
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
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int posix_openpt (int __oflag) ;
extern int grantpt (int __fd) __attribute__ ((__nothrow__ ));
extern int unlockpt (int __fd) __attribute__ ((__nothrow__ ));
extern char *ptsname (int __fd) __attribute__ ((__nothrow__ )) ;
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
typedef struct mbedtls_platform_context
{
    char dummy;
}
mbedtls_platform_context;
int mbedtls_platform_setup( mbedtls_platform_context *ctx );
void mbedtls_platform_teardown( mbedtls_platform_context *ctx );
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;

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
 typedef int64_t mbedtls_mpi_sint;
        typedef uint64_t mbedtls_mpi_uint;
            typedef unsigned int mbedtls_t_udbl __attribute__((mode(TI)));
typedef struct mbedtls_mpi
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
void mbedtls_mpi_init( mbedtls_mpi *X );
void mbedtls_mpi_free( mbedtls_mpi *X );
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs );
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs );
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y );
void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y );
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign );
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char assign );
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z );
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos );
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val );
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X );
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X );
size_t mbedtls_mpi_size( const mbedtls_mpi *X );
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s );
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen );
int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin );
int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X,
                            int radix, FILE *fout );
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf,
                             size_t buflen );
int mbedtls_mpi_read_binary_le( mbedtls_mpi *X,
                                const unsigned char *buf, size_t buflen );
int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf,
                              size_t buflen );
int mbedtls_mpi_write_binary_le( const mbedtls_mpi *X,
                                 unsigned char *buf, size_t buflen );
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count );
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count );
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y );
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y );
int mbedtls_mpi_lt_mpi_ct( const mbedtls_mpi *X, const mbedtls_mpi *Y,
        unsigned *ret );
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z );
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_uint b );
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *E, const mbedtls_mpi *N,
                         mbedtls_mpi *_RR );
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A,
                     const mbedtls_mpi *B );
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *N );
                   int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                          int (*f_rng)(void *, unsigned char *, size_t),
                          void *p_rng );
int mbedtls_mpi_is_prime_ext( const mbedtls_mpi *X, int rounds,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng );
typedef enum {
    MBEDTLS_MPI_GEN_PRIME_FLAG_DH = 0x0001,
    MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR = 0x0002,
} mbedtls_mpi_gen_prime_flag_t;
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int flags,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng );
int mbedtls_mpi_self_test( int verbose );
typedef enum
{
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_CURVE448,
} mbedtls_ecp_group_id;
typedef enum
{
    MBEDTLS_ECP_TYPE_NONE = 0,
    MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS,
    MBEDTLS_ECP_TYPE_MONTGOMERY,
} mbedtls_ecp_curve_type;
typedef struct mbedtls_ecp_curve_info
{
    mbedtls_ecp_group_id grp_id;
    uint16_t tls_id;
    uint16_t bit_size;
    const char *name;
} mbedtls_ecp_curve_info;
typedef struct mbedtls_ecp_point
{
    mbedtls_mpi X;
    mbedtls_mpi Y;
    mbedtls_mpi Z;
}
mbedtls_ecp_point;
typedef struct mbedtls_ecp_group
{
    mbedtls_ecp_group_id id;
    mbedtls_mpi P;
    mbedtls_mpi A;
    mbedtls_mpi B;
    mbedtls_ecp_point G;
    mbedtls_mpi N;
    size_t pbits;
    size_t nbits;
    unsigned int h;
    int (*modp)(mbedtls_mpi *);
    int (*t_pre)(mbedtls_ecp_point *, void *);
    int (*t_post)(mbedtls_ecp_point *, void *);
    void *t_data;
    mbedtls_ecp_point *T;
    size_t T_size;
}
mbedtls_ecp_group;
typedef void mbedtls_ecp_restart_ctx;
typedef struct mbedtls_ecp_keypair
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
}
mbedtls_ecp_keypair;
mbedtls_ecp_curve_type mbedtls_ecp_get_type( const mbedtls_ecp_group *grp );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void );
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name );
void mbedtls_ecp_point_init( mbedtls_ecp_point *pt );
void mbedtls_ecp_group_init( mbedtls_ecp_group *grp );
void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key );
void mbedtls_ecp_point_free( mbedtls_ecp_point *pt );
void mbedtls_ecp_group_free( mbedtls_ecp_group *grp );
void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key );
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q );
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst,
                            const mbedtls_ecp_group *src );
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt );
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt );
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q );
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y );
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp,
                                    const mbedtls_ecp_point *P,
                                    int format, size_t *olen,
                                    unsigned char *buf, size_t buflen );
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *P,
                                   const unsigned char *buf, size_t ilen );
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point *pt,
                                const unsigned char **buf, size_t len );
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp,
                                 const mbedtls_ecp_point *pt,
                                 int format, size_t *olen,
                                 unsigned char *buf, size_t blen );
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id );
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp,
                                const unsigned char **buf, size_t len );
int mbedtls_ecp_tls_read_group_id( mbedtls_ecp_group_id *grp,
                                   const unsigned char **buf,
                                   size_t len );
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp,
                                 size_t *olen,
                                 unsigned char *buf, size_t blen );
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecp_mul_restartable( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_ecp_restart_ctx *rs_ctx );
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q );
int mbedtls_ecp_muladd_restartable(
             mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q,
             mbedtls_ecp_restart_ctx *rs_ctx );
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp,
                              const mbedtls_ecp_point *pt );
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp,
                               const mbedtls_mpi *d );
int mbedtls_ecp_gen_privkey( const mbedtls_ecp_group *grp,
                     mbedtls_mpi *d,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                                  const mbedtls_ecp_point *G,
                                  mbedtls_mpi *d, mbedtls_ecp_point *Q,
                                  int (*f_rng)(void *, unsigned char *, size_t),
                                  void *p_rng );
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp, mbedtls_mpi *d,
                             mbedtls_ecp_point *Q,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng );
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
int mbedtls_ecp_read_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                          const unsigned char *buf, size_t buflen );
int mbedtls_ecp_write_key( mbedtls_ecp_keypair *key,
                           unsigned char *buf, size_t buflen );
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub,
                                const mbedtls_ecp_keypair *prv );
int mbedtls_ecp_self_test( int verbose );

typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
} mbedtls_md_type_t;
typedef struct mbedtls_md_info_t mbedtls_md_info_t;
typedef struct mbedtls_md_context_t
{
    const mbedtls_md_info_t *md_info;
    void *md_ctx;
    void *hmac_ctx;
} mbedtls_md_context_t;
const int *mbedtls_md_list( void );
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );
void mbedtls_md_init( mbedtls_md_context_t *ctx );
void mbedtls_md_free( mbedtls_md_context_t *ctx );
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac );
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path,
                     unsigned char *output );
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );
int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
typedef struct mbedtls_rsa_context
{
    int ver;
    size_t len;
    mbedtls_mpi N;
    mbedtls_mpi E;
    mbedtls_mpi D;
    mbedtls_mpi P;
    mbedtls_mpi Q;
    mbedtls_mpi DP;
    mbedtls_mpi DQ;
    mbedtls_mpi QP;
    mbedtls_mpi RN;
    mbedtls_mpi RP;
    mbedtls_mpi RQ;
    mbedtls_mpi Vi;
    mbedtls_mpi Vf;
    int padding;
    int hash_id;
}
mbedtls_rsa_context;
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
                       int padding,
                       int hash_id );
int mbedtls_rsa_import( mbedtls_rsa_context *ctx,
                        const mbedtls_mpi *N,
                        const mbedtls_mpi *P, const mbedtls_mpi *Q,
                        const mbedtls_mpi *D, const mbedtls_mpi *E );
int mbedtls_rsa_import_raw( mbedtls_rsa_context *ctx,
                            unsigned char const *N, size_t N_len,
                            unsigned char const *P, size_t P_len,
                            unsigned char const *Q, size_t Q_len,
                            unsigned char const *D, size_t D_len,
                            unsigned char const *E, size_t E_len );
int mbedtls_rsa_complete( mbedtls_rsa_context *ctx );
int mbedtls_rsa_export( const mbedtls_rsa_context *ctx,
                        mbedtls_mpi *N, mbedtls_mpi *P, mbedtls_mpi *Q,
                        mbedtls_mpi *D, mbedtls_mpi *E );
int mbedtls_rsa_export_raw( const mbedtls_rsa_context *ctx,
                            unsigned char *N, size_t N_len,
                            unsigned char *P, size_t P_len,
                            unsigned char *Q, size_t Q_len,
                            unsigned char *D, size_t D_len,
                            unsigned char *E, size_t E_len );
int mbedtls_rsa_export_crt( const mbedtls_rsa_context *ctx,
                            mbedtls_mpi *DP, mbedtls_mpi *DQ, mbedtls_mpi *QP );
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding,
                              int hash_id );
size_t mbedtls_rsa_get_len( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         unsigned int nbits, int exponent );
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub,
                                const mbedtls_rsa_context *prv );
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output );
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output );
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output );
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output );
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len );
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len );
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len );
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig );
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig );
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig );
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig );
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig );
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig );
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig );
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src );
void mbedtls_rsa_free( mbedtls_rsa_context *ctx );
int mbedtls_rsa_self_test( int verbose );
typedef mbedtls_ecp_keypair mbedtls_ecdsa_context;
typedef void mbedtls_ecdsa_restart_ctx;
int mbedtls_ecdsa_can_do( mbedtls_ecp_group_id gid );
int mbedtls_ecdsa_sign( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecdsa_sign_det( mbedtls_ecp_group *grp, mbedtls_mpi *r,
                            mbedtls_mpi *s, const mbedtls_mpi *d,
                            const unsigned char *buf, size_t blen,
                            mbedtls_md_type_t md_alg ) ;
int mbedtls_ecdsa_sign_det_ext( mbedtls_ecp_group *grp, mbedtls_mpi *r,
                            mbedtls_mpi *s, const mbedtls_mpi *d,
                            const unsigned char *buf, size_t blen,
                            mbedtls_md_type_t md_alg,
                            int (*f_rng_blind)(void *, unsigned char *, size_t),
                            void *p_rng_blind );
int mbedtls_ecdsa_verify( mbedtls_ecp_group *grp,
                          const unsigned char *buf, size_t blen,
                          const mbedtls_ecp_point *Q, const mbedtls_mpi *r,
                          const mbedtls_mpi *s);
int mbedtls_ecdsa_write_signature( mbedtls_ecdsa_context *ctx,
                                   mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng );
int mbedtls_ecdsa_write_signature_restartable( mbedtls_ecdsa_context *ctx,
                           mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           mbedtls_ecdsa_restart_ctx *rs_ctx );
int mbedtls_ecdsa_write_signature_det( mbedtls_ecdsa_context *ctx,
                               const unsigned char *hash, size_t hlen,
                               unsigned char *sig, size_t *slen,
                               mbedtls_md_type_t md_alg ) ;
int mbedtls_ecdsa_read_signature( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen );
int mbedtls_ecdsa_read_signature_restartable( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen,
                          mbedtls_ecdsa_restart_ctx *rs_ctx );
int mbedtls_ecdsa_genkey( mbedtls_ecdsa_context *ctx, mbedtls_ecp_group_id gid,
                  int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecdsa_from_keypair( mbedtls_ecdsa_context *ctx,
                                const mbedtls_ecp_keypair *key );
void mbedtls_ecdsa_init( mbedtls_ecdsa_context *ctx );
void mbedtls_ecdsa_free( mbedtls_ecdsa_context *ctx );
typedef enum {
    MBEDTLS_PK_NONE=0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
} mbedtls_pk_type_t;
typedef struct mbedtls_pk_rsassa_pss_options
{
    mbedtls_md_type_t mgf1_hash_id;
    int expected_salt_len;
} mbedtls_pk_rsassa_pss_options;
typedef enum
{
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
} mbedtls_pk_debug_type;
typedef struct mbedtls_pk_debug_item
{
    mbedtls_pk_debug_type type;
    const char *name;
    void *value;
} mbedtls_pk_debug_item;
typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;
typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
typedef void mbedtls_pk_restart_ctx;
static inline mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
static inline mbedtls_ecp_keypair *mbedtls_pk_ec( const mbedtls_pk_context pk )
{
    return( (mbedtls_ecp_keypair *) (pk).pk_ctx );
}
typedef int (*mbedtls_pk_rsa_alt_decrypt_func)( void *ctx, int mode, size_t *olen,
                    const unsigned char *input, unsigned char *output,
                    size_t output_max_len );
typedef int (*mbedtls_pk_rsa_alt_sign_func)( void *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
                    int mode, mbedtls_md_type_t md_alg, unsigned int hashlen,
                    const unsigned char *hash, unsigned char *sig );
typedef size_t (*mbedtls_pk_rsa_alt_key_len_func)( void *ctx );
const mbedtls_pk_info_t *mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type );
void mbedtls_pk_init( mbedtls_pk_context *ctx );
void mbedtls_pk_free( mbedtls_pk_context *ctx );
int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info );
int mbedtls_pk_setup_rsa_alt( mbedtls_pk_context *ctx, void * key,
                         mbedtls_pk_rsa_alt_decrypt_func decrypt_func,
                         mbedtls_pk_rsa_alt_sign_func sign_func,
                         mbedtls_pk_rsa_alt_key_len_func key_len_func );
size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );
static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type );
int mbedtls_pk_verify( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len );
int mbedtls_pk_verify_restartable( mbedtls_pk_context *ctx,
               mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len,
               mbedtls_pk_restart_ctx *rs_ctx );
int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len );
int mbedtls_pk_sign( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_sign_restartable( mbedtls_pk_context *ctx,
             mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_pk_restart_ctx *rs_ctx );
int mbedtls_pk_decrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_encrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_check_pair( const mbedtls_pk_context *pub, const mbedtls_pk_context *prv );
int mbedtls_pk_debug( const mbedtls_pk_context *ctx, mbedtls_pk_debug_item *items );
const char * mbedtls_pk_get_name( const mbedtls_pk_context *ctx );
mbedtls_pk_type_t mbedtls_pk_get_type( const mbedtls_pk_context *ctx );
int mbedtls_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );
int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen );
int mbedtls_pk_parse_keyfile( mbedtls_pk_context *ctx,
                      const char *path, const char *password );
int mbedtls_pk_parse_public_keyfile( mbedtls_pk_context *ctx, const char *path );
int mbedtls_pk_write_key_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_pubkey_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_pubkey_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_key_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );
int mbedtls_pk_write_pubkey( unsigned char **p, unsigned char *start,
                     const mbedtls_pk_context *key );
int mbedtls_pk_load_file( const char *path, unsigned char **buf, size_t *n );
void mbedtls_platform_zeroize( void *buf, size_t len );
struct tm *mbedtls_platform_gmtime_r( const mbedtls_time_t *tt,
                                      struct tm *tm_buf );
typedef enum {
    MBEDTLS_CIPHER_ID_NONE = 0,
    MBEDTLS_CIPHER_ID_NULL,
    MBEDTLS_CIPHER_ID_AES,
    MBEDTLS_CIPHER_ID_DES,
    MBEDTLS_CIPHER_ID_3DES,
    MBEDTLS_CIPHER_ID_CAMELLIA,
    MBEDTLS_CIPHER_ID_BLOWFISH,
    MBEDTLS_CIPHER_ID_ARC4,
    MBEDTLS_CIPHER_ID_ARIA,
    MBEDTLS_CIPHER_ID_CHACHA20,
} mbedtls_cipher_id_t;
typedef enum {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_CIPHER_ARIA_128_ECB,
    MBEDTLS_CIPHER_ARIA_192_ECB,
    MBEDTLS_CIPHER_ARIA_256_ECB,
    MBEDTLS_CIPHER_ARIA_128_CBC,
    MBEDTLS_CIPHER_ARIA_192_CBC,
    MBEDTLS_CIPHER_ARIA_256_CBC,
    MBEDTLS_CIPHER_ARIA_128_CFB128,
    MBEDTLS_CIPHER_ARIA_192_CFB128,
    MBEDTLS_CIPHER_ARIA_256_CFB128,
    MBEDTLS_CIPHER_ARIA_128_CTR,
    MBEDTLS_CIPHER_ARIA_192_CTR,
    MBEDTLS_CIPHER_ARIA_256_CTR,
    MBEDTLS_CIPHER_ARIA_128_GCM,
    MBEDTLS_CIPHER_ARIA_192_GCM,
    MBEDTLS_CIPHER_ARIA_256_GCM,
    MBEDTLS_CIPHER_ARIA_128_CCM,
    MBEDTLS_CIPHER_ARIA_192_CCM,
    MBEDTLS_CIPHER_ARIA_256_CCM,
    MBEDTLS_CIPHER_AES_128_OFB,
    MBEDTLS_CIPHER_AES_192_OFB,
    MBEDTLS_CIPHER_AES_256_OFB,
    MBEDTLS_CIPHER_AES_128_XTS,
    MBEDTLS_CIPHER_AES_256_XTS,
    MBEDTLS_CIPHER_CHACHA20,
    MBEDTLS_CIPHER_CHACHA20_POLY1305,
    MBEDTLS_CIPHER_AES_128_KW,
    MBEDTLS_CIPHER_AES_192_KW,
    MBEDTLS_CIPHER_AES_256_KW,
    MBEDTLS_CIPHER_AES_128_KWP,
    MBEDTLS_CIPHER_AES_192_KWP,
    MBEDTLS_CIPHER_AES_256_KWP,
} mbedtls_cipher_type_t;
typedef enum {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
    MBEDTLS_MODE_XTS,
    MBEDTLS_MODE_CHACHAPOLY,
    MBEDTLS_MODE_KW,
    MBEDTLS_MODE_KWP,
} mbedtls_cipher_mode_t;
typedef enum {
    MBEDTLS_PADDING_PKCS7 = 0,
    MBEDTLS_PADDING_ONE_AND_ZEROS,
    MBEDTLS_PADDING_ZEROS_AND_LEN,
    MBEDTLS_PADDING_ZEROS,
    MBEDTLS_PADDING_NONE,
} mbedtls_cipher_padding_t;
typedef enum {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
} mbedtls_operation_t;
enum {
    MBEDTLS_KEY_LENGTH_NONE = 0,
    MBEDTLS_KEY_LENGTH_DES = 64,
    MBEDTLS_KEY_LENGTH_DES_EDE = 128,
    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
typedef struct mbedtls_cipher_base_t mbedtls_cipher_base_t;
typedef struct mbedtls_cmac_context_t mbedtls_cmac_context_t;
typedef struct mbedtls_cipher_info_t
{
    mbedtls_cipher_type_t type;
    mbedtls_cipher_mode_t mode;
    unsigned int key_bitlen;
    const char * name;
    unsigned int iv_size;
    int flags;
    unsigned int block_size;
    const mbedtls_cipher_base_t *base;
} mbedtls_cipher_info_t;
typedef struct mbedtls_cipher_context_t
{
    const mbedtls_cipher_info_t *cipher_info;
    int key_bitlen;
    mbedtls_operation_t operation;
    void (*add_padding)( unsigned char *output, size_t olen, size_t data_len );
    int (*get_padding)( unsigned char *input, size_t ilen, size_t *data_len );
    unsigned char unprocessed_data[16];
    size_t unprocessed_len;
    unsigned char iv[16];
    size_t iv_size;
    void *cipher_ctx;
} mbedtls_cipher_context_t;
const int *mbedtls_cipher_list( void );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_values( const mbedtls_cipher_id_t cipher_id,
                                              int key_bitlen,
                                              const mbedtls_cipher_mode_t mode );
void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx );
void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx );
int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx,
                          const mbedtls_cipher_info_t *cipher_info );
static inline unsigned int mbedtls_cipher_get_block_size(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    return ctx->cipher_info->block_size;
}
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_MODE_NONE;
    return ctx->cipher_info->mode;
}
static inline int mbedtls_cipher_get_iv_size(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;
    return (int) ctx->cipher_info->iv_size;
}
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_CIPHER_NONE;
    return ctx->cipher_info->type;
}
static inline const char *mbedtls_cipher_get_name(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    return ctx->cipher_info->name;
}
static inline int mbedtls_cipher_get_key_bitlen(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_KEY_LENGTH_NONE;
    return (int) ctx->cipher_info->key_bitlen;
}
static inline mbedtls_operation_t mbedtls_cipher_get_operation(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_OPERATION_NONE;
    return ctx->operation;
}
int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx,
                           const unsigned char *key,
                           int key_bitlen,
                           const mbedtls_operation_t operation );
int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx,
                                     mbedtls_cipher_padding_t mode );
int mbedtls_cipher_set_iv( mbedtls_cipher_context_t *ctx,
                           const unsigned char *iv,
                           size_t iv_len );
int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx );
int mbedtls_cipher_update_ad( mbedtls_cipher_context_t *ctx,
                      const unsigned char *ad, size_t ad_len );
int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx,
                           const unsigned char *input,
                           size_t ilen, unsigned char *output,
                           size_t *olen );
int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen );
int mbedtls_cipher_write_tag( mbedtls_cipher_context_t *ctx,
                      unsigned char *tag, size_t tag_len );
int mbedtls_cipher_check_tag( mbedtls_cipher_context_t *ctx,
                      const unsigned char *tag, size_t tag_len );
int mbedtls_cipher_crypt( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen );
int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len );
int mbedtls_cipher_auth_decrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         const unsigned char *tag, size_t tag_len );
typedef enum {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,
} mbedtls_key_exchange_type_t;
typedef struct mbedtls_ssl_ciphersuite_t mbedtls_ssl_ciphersuite_t;
struct mbedtls_ssl_ciphersuite_t
{
    int id;
    const char * name;
    mbedtls_cipher_type_t cipher;
    mbedtls_md_type_t mac;
    mbedtls_key_exchange_type_t key_exchange;
    int min_major_ver;
    int min_minor_ver;
    int max_major_ver;
    int max_minor_ver;
    unsigned char flags;
};
const int *mbedtls_ssl_list_ciphersuites( void );
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_string( const char *ciphersuite_name );
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite_id );
mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_pk_alg( const mbedtls_ssl_ciphersuite_t *info );
mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_alg( const mbedtls_ssl_ciphersuite_t *info );
int mbedtls_ssl_ciphersuite_uses_ec( const mbedtls_ssl_ciphersuite_t *info );
int mbedtls_ssl_ciphersuite_uses_psk( const mbedtls_ssl_ciphersuite_t *info );
static inline int mbedtls_ssl_ciphersuite_has_pfs( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_DHE_PSK:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECJPAKE:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_no_pfs( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_RSA:
        case MBEDTLS_KEY_EXCHANGE_PSK:
        case MBEDTLS_KEY_EXCHANGE_RSA_PSK:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_uses_ecdh( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_cert_req_allowed( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_RSA:
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_uses_srv_cert( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_RSA:
        case MBEDTLS_KEY_EXCHANGE_RSA_PSK:
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_uses_dhe( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_DHE_PSK:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_uses_ecdhe( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
            return( 1 );
        default:
            return( 0 );
    }
}
static inline int mbedtls_ssl_ciphersuite_uses_server_signature( const mbedtls_ssl_ciphersuite_t *info )
{
    switch( info->key_exchange )
    {
        case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
        case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
            return( 1 );
        default:
            return( 0 );
    }
}
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;
typedef struct mbedtls_asn1_bitstring
{
    size_t len;
    unsigned char unused_bits;
    unsigned char *p;
}
mbedtls_asn1_bitstring;
typedef struct mbedtls_asn1_sequence
{
    mbedtls_asn1_buf buf;
    struct mbedtls_asn1_sequence *next;
}
mbedtls_asn1_sequence;
typedef struct mbedtls_asn1_named_data
{
    mbedtls_asn1_buf oid;
    mbedtls_asn1_buf val;
    struct mbedtls_asn1_named_data *next;
    unsigned char next_merged;
}
mbedtls_asn1_named_data;
int mbedtls_asn1_get_len( unsigned char **p,
                          const unsigned char *end,
                          size_t *len );
int mbedtls_asn1_get_tag( unsigned char **p,
                          const unsigned char *end,
                          size_t *len, int tag );
int mbedtls_asn1_get_bool( unsigned char **p,
                           const unsigned char *end,
                           int *val );
int mbedtls_asn1_get_int( unsigned char **p,
                          const unsigned char *end,
                          int *val );
int mbedtls_asn1_get_enum( unsigned char **p,
                           const unsigned char *end,
                           int *val );
int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                                mbedtls_asn1_bitstring *bs );
int mbedtls_asn1_get_bitstring_null( unsigned char **p,
                                     const unsigned char *end,
                                     size_t *len );
int mbedtls_asn1_get_sequence_of( unsigned char **p,
                                  const unsigned char *end,
                                  mbedtls_asn1_sequence *cur,
                                  int tag );
void mbedtls_asn1_sequence_free( mbedtls_asn1_sequence *seq );
int mbedtls_asn1_traverse_sequence_of(
    unsigned char **p,
    const unsigned char *end,
    unsigned char tag_must_mask, unsigned char tag_must_val,
    unsigned char tag_may_mask, unsigned char tag_may_val,
    int (*cb)( void *ctx, int tag,
               unsigned char* start, size_t len ),
    void *ctx );
int mbedtls_asn1_get_mpi( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_mpi *X );
int mbedtls_asn1_get_alg( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_asn1_buf *alg, mbedtls_asn1_buf *params );
int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg );
mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len );
void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *entry );
void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head );
typedef mbedtls_asn1_buf mbedtls_x509_buf;
typedef mbedtls_asn1_bitstring mbedtls_x509_bitstring;
typedef mbedtls_asn1_named_data mbedtls_x509_name;
typedef mbedtls_asn1_sequence mbedtls_x509_sequence;
typedef struct mbedtls_x509_time
{
    int year, mon, day;
    int hour, min, sec;
}
mbedtls_x509_time;
int mbedtls_x509_dn_gets( char *buf, size_t size, const mbedtls_x509_name *dn );
int mbedtls_x509_serial_gets( char *buf, size_t size, const mbedtls_x509_buf *serial );
int mbedtls_x509_time_is_past( const mbedtls_x509_time *to );
int mbedtls_x509_time_is_future( const mbedtls_x509_time *from );
int mbedtls_x509_self_test( int verbose );
int mbedtls_x509_get_name( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_name *cur );
int mbedtls_x509_get_alg_null( unsigned char **p, const unsigned char *end,
                       mbedtls_x509_buf *alg );
int mbedtls_x509_get_alg( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *alg, mbedtls_x509_buf *params );
int mbedtls_x509_get_rsassa_pss_params( const mbedtls_x509_buf *params,
                                mbedtls_md_type_t *md_alg, mbedtls_md_type_t *mgf_md,
                                int *salt_len );
int mbedtls_x509_get_sig( unsigned char **p, const unsigned char *end, mbedtls_x509_buf *sig );
int mbedtls_x509_get_sig_alg( const mbedtls_x509_buf *sig_oid, const mbedtls_x509_buf *sig_params,
                      mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg,
                      void **sig_opts );
int mbedtls_x509_get_time( unsigned char **p, const unsigned char *end,
                   mbedtls_x509_time *t );
int mbedtls_x509_get_serial( unsigned char **p, const unsigned char *end,
                     mbedtls_x509_buf *serial );
int mbedtls_x509_get_ext( unsigned char **p, const unsigned char *end,
                  mbedtls_x509_buf *ext, int tag );
int mbedtls_x509_sig_alg_gets( char *buf, size_t size, const mbedtls_x509_buf *sig_oid,
                       mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                       const void *sig_opts );
int mbedtls_x509_key_size_helper( char *buf, size_t buf_size, const char *name );
int mbedtls_x509_string_to_names( mbedtls_asn1_named_data **head, const char *name );
int mbedtls_x509_set_extension( mbedtls_asn1_named_data **head, const char *oid, size_t oid_len,
                        int critical, const unsigned char *val,
                        size_t val_len );
int mbedtls_x509_write_extensions( unsigned char **p, unsigned char *start,
                           mbedtls_asn1_named_data *first );
int mbedtls_x509_write_names( unsigned char **p, unsigned char *start,
                      mbedtls_asn1_named_data *first );
int mbedtls_x509_write_sig( unsigned char **p, unsigned char *start,
                    const char *oid, size_t oid_len,
                    unsigned char *sig, size_t size );
typedef struct mbedtls_x509_crl_entry
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf serial;
    mbedtls_x509_time revocation_date;
    mbedtls_x509_buf entry_ext;
    struct mbedtls_x509_crl_entry *next;
}
mbedtls_x509_crl_entry;
typedef struct mbedtls_x509_crl
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;
    int version;
    mbedtls_x509_buf sig_oid;
    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_name issuer;
    mbedtls_x509_time this_update;
    mbedtls_x509_time next_update;
    mbedtls_x509_crl_entry entry;
    mbedtls_x509_buf crl_ext;
    mbedtls_x509_buf sig_oid2;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;
    struct mbedtls_x509_crl *next;
}
mbedtls_x509_crl;
int mbedtls_x509_crl_parse_der( mbedtls_x509_crl *chain,
                        const unsigned char *buf, size_t buflen );
int mbedtls_x509_crl_parse( mbedtls_x509_crl *chain, const unsigned char *buf, size_t buflen );
int mbedtls_x509_crl_parse_file( mbedtls_x509_crl *chain, const char *path );
int mbedtls_x509_crl_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crl *crl );
void mbedtls_x509_crl_init( mbedtls_x509_crl *crl );
void mbedtls_x509_crl_free( mbedtls_x509_crl *crl );
typedef struct mbedtls_x509_crt
{
    int own_buffer;
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;
    int version;
    mbedtls_x509_buf serial;
    mbedtls_x509_buf sig_oid;
    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_buf subject_raw;
    mbedtls_x509_name issuer;
    mbedtls_x509_name subject;
    mbedtls_x509_time valid_from;
    mbedtls_x509_time valid_to;
    mbedtls_x509_buf pk_raw;
    mbedtls_pk_context pk;
    mbedtls_x509_buf issuer_id;
    mbedtls_x509_buf subject_id;
    mbedtls_x509_buf v3_ext;
    mbedtls_x509_sequence subject_alt_names;
    mbedtls_x509_sequence certificate_policies;
    int ext_types;
    int ca_istrue;
    int max_pathlen;
    unsigned int key_usage;
    mbedtls_x509_sequence ext_key_usage;
    unsigned char ns_cert_type;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;
    struct mbedtls_x509_crt *next;
}
mbedtls_x509_crt;
typedef struct mbedtls_x509_san_other_name
{
    mbedtls_x509_buf type_id;
    union
    {
        struct
        {
            mbedtls_x509_buf oid;
            mbedtls_x509_buf val;
        }
        hardware_module_name;
    }
    value;
}
mbedtls_x509_san_other_name;
typedef struct mbedtls_x509_subject_alternative_name
{
    int type;
    union {
        mbedtls_x509_san_other_name other_name;
        mbedtls_x509_buf unstructured_name;
    }
    san;
}
mbedtls_x509_subject_alternative_name;
typedef struct mbedtls_x509_crt_profile
{
    uint32_t allowed_mds;
    uint32_t allowed_pks;
    uint32_t allowed_curves;
    uint32_t rsa_min_bitlen;
}
mbedtls_x509_crt_profile;
typedef struct mbedtls_x509write_cert
{
    int version;
    mbedtls_mpi serial;
    mbedtls_pk_context *subject_key;
    mbedtls_pk_context *issuer_key;
    mbedtls_asn1_named_data *subject;
    mbedtls_asn1_named_data *issuer;
    mbedtls_md_type_t md_alg;
    char not_before[15 + 1];
    char not_after[15 + 1];
    mbedtls_asn1_named_data *extensions;
}
mbedtls_x509write_cert;
typedef struct {
    mbedtls_x509_crt *crt;
    uint32_t flags;
} mbedtls_x509_crt_verify_chain_item;
typedef struct
{
    mbedtls_x509_crt_verify_chain_item items[( 8 + 2 )];
    unsigned len;
} mbedtls_x509_crt_verify_chain;
typedef void mbedtls_x509_crt_restart_ctx;
extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_default;
extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_next;
extern const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_suiteb;
int mbedtls_x509_crt_parse_der( mbedtls_x509_crt *chain,
                                const unsigned char *buf,
                                size_t buflen );
typedef int (*mbedtls_x509_crt_ext_cb_t)( void *p_ctx,
                                          mbedtls_x509_crt const *crt,
                                          mbedtls_x509_buf const *oid,
                                          int critical,
                                          const unsigned char *p,
                                          const unsigned char *end );
int mbedtls_x509_crt_parse_der_with_ext_cb( mbedtls_x509_crt *chain,
                                            const unsigned char *buf,
                                            size_t buflen,
                                            int make_copy,
                                            mbedtls_x509_crt_ext_cb_t cb,
                                            void *p_ctx );
int mbedtls_x509_crt_parse_der_nocopy( mbedtls_x509_crt *chain,
                                       const unsigned char *buf,
                                       size_t buflen );
int mbedtls_x509_crt_parse( mbedtls_x509_crt *chain, const unsigned char *buf, size_t buflen );
int mbedtls_x509_crt_parse_file( mbedtls_x509_crt *chain, const char *path );
int mbedtls_x509_crt_parse_path( mbedtls_x509_crt *chain, const char *path );
int mbedtls_x509_parse_subject_alt_name( const mbedtls_x509_buf *san_buf,
                                         mbedtls_x509_subject_alternative_name *san );
int mbedtls_x509_crt_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crt *crt );
int mbedtls_x509_crt_verify_info( char *buf, size_t size, const char *prefix,
                          uint32_t flags );
int mbedtls_x509_crt_verify( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
int mbedtls_x509_crt_verify_with_profile( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
int mbedtls_x509_crt_verify_restartable( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy,
                     mbedtls_x509_crt_restart_ctx *rs_ctx );
typedef int (*mbedtls_x509_crt_ca_cb_t)( void *p_ctx,
                                         mbedtls_x509_crt const *child,
                                         mbedtls_x509_crt **candidate_cas );
int mbedtls_x509_crt_check_key_usage( const mbedtls_x509_crt *crt,
                                      unsigned int usage );
int mbedtls_x509_crt_check_extended_key_usage( const mbedtls_x509_crt *crt,
                                               const char *usage_oid,
                                               size_t usage_len );
int mbedtls_x509_crt_is_revoked( const mbedtls_x509_crt *crt, const mbedtls_x509_crl *crl );
void mbedtls_x509_crt_init( mbedtls_x509_crt *crt );
void mbedtls_x509_crt_free( mbedtls_x509_crt *crt );
void mbedtls_x509write_crt_init( mbedtls_x509write_cert *ctx );
void mbedtls_x509write_crt_set_version( mbedtls_x509write_cert *ctx, int version );
int mbedtls_x509write_crt_set_serial( mbedtls_x509write_cert *ctx, const mbedtls_mpi *serial );
int mbedtls_x509write_crt_set_validity( mbedtls_x509write_cert *ctx, const char *not_before,
                                const char *not_after );
int mbedtls_x509write_crt_set_issuer_name( mbedtls_x509write_cert *ctx,
                                   const char *issuer_name );
int mbedtls_x509write_crt_set_subject_name( mbedtls_x509write_cert *ctx,
                                    const char *subject_name );
void mbedtls_x509write_crt_set_subject_key( mbedtls_x509write_cert *ctx, mbedtls_pk_context *key );
void mbedtls_x509write_crt_set_issuer_key( mbedtls_x509write_cert *ctx, mbedtls_pk_context *key );
void mbedtls_x509write_crt_set_md_alg( mbedtls_x509write_cert *ctx, mbedtls_md_type_t md_alg );
int mbedtls_x509write_crt_set_extension( mbedtls_x509write_cert *ctx,
                                 const char *oid, size_t oid_len,
                                 int critical,
                                 const unsigned char *val, size_t val_len );
int mbedtls_x509write_crt_set_basic_constraints( mbedtls_x509write_cert *ctx,
                                         int is_ca, int max_pathlen );
int mbedtls_x509write_crt_set_subject_key_identifier( mbedtls_x509write_cert *ctx );
int mbedtls_x509write_crt_set_authority_key_identifier( mbedtls_x509write_cert *ctx );
int mbedtls_x509write_crt_set_key_usage( mbedtls_x509write_cert *ctx,
                                         unsigned int key_usage );
int mbedtls_x509write_crt_set_ns_cert_type( mbedtls_x509write_cert *ctx,
                                    unsigned char ns_cert_type );
void mbedtls_x509write_crt_free( mbedtls_x509write_cert *ctx );
int mbedtls_x509write_crt_der( mbedtls_x509write_cert *ctx, unsigned char *buf, size_t size,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng );
int mbedtls_x509write_crt_pem( mbedtls_x509write_cert *ctx, unsigned char *buf, size_t size,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng );
typedef struct mbedtls_dhm_context
{
    size_t len;
    mbedtls_mpi P;
    mbedtls_mpi G;
    mbedtls_mpi X;
    mbedtls_mpi GX;
    mbedtls_mpi GY;
    mbedtls_mpi K;
    mbedtls_mpi RP;
    mbedtls_mpi Vi;
    mbedtls_mpi Vf;
    mbedtls_mpi pX;
}
mbedtls_dhm_context;
void mbedtls_dhm_init( mbedtls_dhm_context *ctx );
int mbedtls_dhm_read_params( mbedtls_dhm_context *ctx,
                             unsigned char **p,
                             const unsigned char *end );
int mbedtls_dhm_make_params( mbedtls_dhm_context *ctx, int x_size,
                     unsigned char *output, size_t *olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_dhm_set_group( mbedtls_dhm_context *ctx,
                           const mbedtls_mpi *P,
                           const mbedtls_mpi *G );
int mbedtls_dhm_read_public( mbedtls_dhm_context *ctx,
                     const unsigned char *input, size_t ilen );
int mbedtls_dhm_make_public( mbedtls_dhm_context *ctx, int x_size,
                     unsigned char *output, size_t olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_dhm_calc_secret( mbedtls_dhm_context *ctx,
                     unsigned char *output, size_t output_size, size_t *olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
void mbedtls_dhm_free( mbedtls_dhm_context *ctx );
int mbedtls_dhm_parse_dhm( mbedtls_dhm_context *dhm, const unsigned char *dhmin,
                           size_t dhminlen );
int mbedtls_dhm_parse_dhmfile( mbedtls_dhm_context *dhm, const char *path );
int mbedtls_dhm_self_test( int verbose );
typedef enum
{
    MBEDTLS_ECDH_OURS,
    MBEDTLS_ECDH_THEIRS,
} mbedtls_ecdh_side;
typedef struct mbedtls_ecdh_context
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
    mbedtls_ecp_point Qp;
    mbedtls_mpi z;
    int point_format;
    mbedtls_ecp_point Vi;
    mbedtls_ecp_point Vf;
    mbedtls_mpi _d;
}
mbedtls_ecdh_context;
int mbedtls_ecdh_can_do( mbedtls_ecp_group_id gid );
int mbedtls_ecdh_gen_public( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_ecdh_compute_shared( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
void mbedtls_ecdh_init( mbedtls_ecdh_context *ctx );
int mbedtls_ecdh_setup( mbedtls_ecdh_context *ctx,
                        mbedtls_ecp_group_id grp_id );
void mbedtls_ecdh_free( mbedtls_ecdh_context *ctx );
int mbedtls_ecdh_make_params( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
int mbedtls_ecdh_read_params( mbedtls_ecdh_context *ctx,
                              const unsigned char **buf,
                              const unsigned char *end );
int mbedtls_ecdh_get_params( mbedtls_ecdh_context *ctx,
                             const mbedtls_ecp_keypair *key,
                             mbedtls_ecdh_side side );
int mbedtls_ecdh_make_public( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
int mbedtls_ecdh_read_public( mbedtls_ecdh_context *ctx,
                              const unsigned char *buf, size_t blen );
int mbedtls_ecdh_calc_secret( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
union mbedtls_ssl_premaster_secret
{
    unsigned char _pms_rsa[48];
    unsigned char _pms_dhm[1024];
    unsigned char _pms_ecdh[( ( 521 + 7 ) / 8 )];
    unsigned char _pms_psk[4 + 2 * 32];
    unsigned char _pms_dhe_psk[4 + 1024
                                 + 32];
    unsigned char _pms_rsa_psk[52 + 32];
    unsigned char _pms_ecdhe_psk[4 + ( ( 521 + 7 ) / 8 )
                                   + 32];
};
typedef enum
{
    MBEDTLS_SSL_HELLO_REQUEST,
    MBEDTLS_SSL_CLIENT_HELLO,
    MBEDTLS_SSL_SERVER_HELLO,
    MBEDTLS_SSL_SERVER_CERTIFICATE,
    MBEDTLS_SSL_SERVER_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_REQUEST,
    MBEDTLS_SSL_SERVER_HELLO_DONE,
    MBEDTLS_SSL_CLIENT_CERTIFICATE,
    MBEDTLS_SSL_CLIENT_KEY_EXCHANGE,
    MBEDTLS_SSL_CERTIFICATE_VERIFY,
    MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_CLIENT_FINISHED,
    MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC,
    MBEDTLS_SSL_SERVER_FINISHED,
    MBEDTLS_SSL_FLUSH_BUFFERS,
    MBEDTLS_SSL_HANDSHAKE_WRAPUP,
    MBEDTLS_SSL_HANDSHAKE_OVER,
    MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET,
    MBEDTLS_SSL_SERVER_HELLO_VERIFY_REQUEST_SENT,
}
mbedtls_ssl_states;
typedef enum
{
   MBEDTLS_SSL_TLS_PRF_NONE,
   MBEDTLS_SSL_TLS_PRF_SSL3,
   MBEDTLS_SSL_TLS_PRF_TLS1,
   MBEDTLS_SSL_TLS_PRF_SHA384,
   MBEDTLS_SSL_TLS_PRF_SHA256
}
mbedtls_tls_prf_types;
typedef int mbedtls_ssl_send_t( void *ctx,
                                const unsigned char *buf,
                                size_t len );
typedef int mbedtls_ssl_recv_t( void *ctx,
                                unsigned char *buf,
                                size_t len );
typedef int mbedtls_ssl_recv_timeout_t( void *ctx,
                                        unsigned char *buf,
                                        size_t len,
                                        uint32_t timeout );
typedef void mbedtls_ssl_set_timer_t( void * ctx,
                                      uint32_t int_ms,
                                      uint32_t fin_ms );
typedef int mbedtls_ssl_get_timer_t( void * ctx );
typedef struct mbedtls_ssl_session mbedtls_ssl_session;
typedef struct mbedtls_ssl_context mbedtls_ssl_context;
typedef struct mbedtls_ssl_config mbedtls_ssl_config;
typedef struct mbedtls_ssl_transform mbedtls_ssl_transform;
typedef struct mbedtls_ssl_handshake_params mbedtls_ssl_handshake_params;
typedef struct mbedtls_ssl_sig_hash_set_t mbedtls_ssl_sig_hash_set_t;
typedef struct mbedtls_ssl_key_cert mbedtls_ssl_key_cert;
typedef struct mbedtls_ssl_flight_item mbedtls_ssl_flight_item;
struct mbedtls_ssl_session
{
    mbedtls_time_t start;
    int ciphersuite;
    int compression;
    size_t id_len;
    unsigned char id[32];
    unsigned char master[48];
    mbedtls_x509_crt *peer_cert;
    uint32_t verify_result;
    unsigned char *ticket;
    size_t ticket_len;
    uint32_t ticket_lifetime;
    unsigned char mfl_code;
    int trunc_hmac;
    int encrypt_then_mac;
};
struct mbedtls_ssl_config
{
    const int *ciphersuite_list[4];
    void (*f_dbg)(void *, int, const char *, int, const char *);
    void *p_dbg;
    int (*f_rng)(void *, unsigned char *, size_t);
    void *p_rng;
    int (*f_get_cache)(void *, mbedtls_ssl_session *);
    int (*f_set_cache)(void *, const mbedtls_ssl_session *);
    void *p_cache;
    int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_sni;
    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
    int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_psk;
    int (*f_cookie_write)( void *, unsigned char **, unsigned char *,
                           const unsigned char *, size_t );
    int (*f_cookie_check)( void *, const unsigned char *, size_t,
                           const unsigned char *, size_t );
    void *p_cookie;
    int (*f_ticket_write)( void *, const mbedtls_ssl_session *,
            unsigned char *, const unsigned char *, size_t *, uint32_t * );
    int (*f_ticket_parse)( void *, mbedtls_ssl_session *, unsigned char *, size_t);
    void *p_ticket;
    int (*f_export_keys)( void *, const unsigned char *,
            const unsigned char *, size_t, size_t, size_t );
    int (*f_export_keys_ext)( void *, const unsigned char *,
                const unsigned char *, size_t, size_t, size_t,
                const unsigned char[32], const unsigned char[32],
                mbedtls_tls_prf_types );
    void *p_export_keys;
    const mbedtls_x509_crt_profile *cert_profile;
    mbedtls_ssl_key_cert *key_cert;
    mbedtls_x509_crt *ca_chain;
    mbedtls_x509_crl *ca_crl;
    const int *sig_hashes;
    const mbedtls_ecp_group_id *curve_list;
    mbedtls_mpi dhm_P;
    mbedtls_mpi dhm_G;
    unsigned char *psk;
    size_t psk_len;
    unsigned char *psk_identity;
    size_t psk_identity_len;
    const char **alpn_list;
    uint32_t read_timeout;
    uint32_t hs_timeout_min;
    uint32_t hs_timeout_max;
    int renego_max_records;
    unsigned char renego_period[8];
    unsigned int badmac_limit;
    unsigned int dhm_min_bitlen;
    unsigned char max_major_ver;
    unsigned char max_minor_ver;
    unsigned char min_major_ver;
    unsigned char min_minor_ver;
    unsigned int endpoint : 1;
    unsigned int transport : 1;
    unsigned int authmode : 2;
    unsigned int allow_legacy_renegotiation : 2 ;
    unsigned int arc4_disabled : 1;
    unsigned int mfl_code : 3;
    unsigned int encrypt_then_mac : 1 ;
    unsigned int extended_ms : 1;
    unsigned int anti_replay : 1;
    unsigned int cbc_record_splitting : 1;
    unsigned int disable_renegotiation : 1;
    unsigned int trunc_hmac : 1;
    unsigned int session_tickets : 1;
    unsigned int fallback : 1;
    unsigned int cert_req_ca_list : 1;
};
struct mbedtls_ssl_context
{
    const mbedtls_ssl_config *conf;
    int state;
    int renego_status;
    int renego_records_seen;
    int major_ver;
    int minor_ver;
    unsigned badmac_seen;
    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
    mbedtls_ssl_send_t *f_send;
    mbedtls_ssl_recv_t *f_recv;
    mbedtls_ssl_recv_timeout_t *f_recv_timeout;
    void *p_bio;
    mbedtls_ssl_session *session_in;
    mbedtls_ssl_session *session_out;
    mbedtls_ssl_session *session;
    mbedtls_ssl_session *session_negotiate;
    mbedtls_ssl_handshake_params *handshake;
    mbedtls_ssl_transform *transform_in;
    mbedtls_ssl_transform *transform_out;
    mbedtls_ssl_transform *transform;
    mbedtls_ssl_transform *transform_negotiate;
    void *p_timer;
    mbedtls_ssl_set_timer_t *f_set_timer;
    mbedtls_ssl_get_timer_t *f_get_timer;
    unsigned char *in_buf;
    unsigned char *in_ctr;
    unsigned char *in_hdr;
    unsigned char *in_len;
    unsigned char *in_iv;
    unsigned char *in_msg;
    unsigned char *in_offt;
    int in_msgtype;
    size_t in_msglen;
    size_t in_left;
    uint16_t in_epoch;
    size_t next_record_offset;
    uint64_t in_window_top;
    uint64_t in_window;
    size_t in_hslen;
    int nb_zero;
    int keep_current_message;
    uint8_t disable_datagram_packing;
    unsigned char *out_buf;
    unsigned char *out_ctr;
    unsigned char *out_hdr;
    unsigned char *out_len;
    unsigned char *out_iv;
    unsigned char *out_msg;
    int out_msgtype;
    size_t out_msglen;
    size_t out_left;
    unsigned char cur_out_ctr[8];
    uint16_t mtu;
    signed char split_done;
    int client_auth;
    char *hostname;
    const char *alpn_chosen;
    unsigned char *cli_id;
    size_t cli_id_len;
    int secure_renegotiation;
    size_t verify_data_len;
    char own_verify_data[12];
    char peer_verify_data[12];
};
const char *mbedtls_ssl_get_ciphersuite_name( const int ciphersuite_id );
int mbedtls_ssl_get_ciphersuite_id( const char *ciphersuite_name );
void mbedtls_ssl_init( mbedtls_ssl_context *ssl );
int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                       const mbedtls_ssl_config *conf );
int mbedtls_ssl_session_reset( mbedtls_ssl_context *ssl );
void mbedtls_ssl_conf_endpoint( mbedtls_ssl_config *conf, int endpoint );
void mbedtls_ssl_conf_transport( mbedtls_ssl_config *conf, int transport );
void mbedtls_ssl_conf_authmode( mbedtls_ssl_config *conf, int authmode );
void mbedtls_ssl_conf_verify( mbedtls_ssl_config *conf,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
void mbedtls_ssl_conf_rng( mbedtls_ssl_config *conf,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng );
void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg );
void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
                          void *p_bio,
                          mbedtls_ssl_send_t *f_send,
                          mbedtls_ssl_recv_t *f_recv,
                          mbedtls_ssl_recv_timeout_t *f_recv_timeout );
void mbedtls_ssl_set_mtu( mbedtls_ssl_context *ssl, uint16_t mtu );
void mbedtls_ssl_set_verify( mbedtls_ssl_context *ssl,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy );
void mbedtls_ssl_conf_read_timeout( mbedtls_ssl_config *conf, uint32_t timeout );
int mbedtls_ssl_check_record( mbedtls_ssl_context const *ssl,
                              unsigned char *buf,
                              size_t buflen );
void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer );
typedef int mbedtls_ssl_ticket_write_t( void *p_ticket,
                                        const mbedtls_ssl_session *session,
                                        unsigned char *start,
                                        const unsigned char *end,
                                        size_t *tlen,
                                        uint32_t *lifetime );
typedef int mbedtls_ssl_export_keys_t( void *p_expkey,
                                const unsigned char *ms,
                                const unsigned char *kb,
                                size_t maclen,
                                size_t keylen,
                                size_t ivlen );
typedef int mbedtls_ssl_export_keys_ext_t( void *p_expkey,
                                           const unsigned char *ms,
                                           const unsigned char *kb,
                                           size_t maclen,
                                           size_t keylen,
                                           size_t ivlen,
                                           const unsigned char client_random[32],
                                           const unsigned char server_random[32],
                                           mbedtls_tls_prf_types tls_prf_type );
typedef int mbedtls_ssl_ticket_parse_t( void *p_ticket,
                                        mbedtls_ssl_session *session,
                                        unsigned char *buf,
                                        size_t len );
void mbedtls_ssl_conf_session_tickets_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_ticket_write_t *f_ticket_write,
        mbedtls_ssl_ticket_parse_t *f_ticket_parse,
        void *p_ticket );
void mbedtls_ssl_conf_export_keys_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_t *f_export_keys,
        void *p_export_keys );
void mbedtls_ssl_conf_export_keys_ext_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_ext_t *f_export_keys_ext,
        void *p_export_keys );
typedef int mbedtls_ssl_cookie_write_t( void *ctx,
                                unsigned char **p, unsigned char *end,
                                const unsigned char *info, size_t ilen );
typedef int mbedtls_ssl_cookie_check_t( void *ctx,
                                const unsigned char *cookie, size_t clen,
                                const unsigned char *info, size_t ilen );
void mbedtls_ssl_conf_dtls_cookies( mbedtls_ssl_config *conf,
                           mbedtls_ssl_cookie_write_t *f_cookie_write,
                           mbedtls_ssl_cookie_check_t *f_cookie_check,
                           void *p_cookie );
int mbedtls_ssl_set_client_transport_id( mbedtls_ssl_context *ssl,
                                 const unsigned char *info,
                                 size_t ilen );
void mbedtls_ssl_conf_dtls_anti_replay( mbedtls_ssl_config *conf, char mode );
void mbedtls_ssl_conf_dtls_badmac_limit( mbedtls_ssl_config *conf, unsigned limit );
void mbedtls_ssl_set_datagram_packing( mbedtls_ssl_context *ssl,
                                       unsigned allow_packing );
void mbedtls_ssl_conf_handshake_timeout( mbedtls_ssl_config *conf, uint32_t min, uint32_t max );
void mbedtls_ssl_conf_session_cache( mbedtls_ssl_config *conf,
        void *p_cache,
        int (*f_get_cache)(void *, mbedtls_ssl_session *),
        int (*f_set_cache)(void *, const mbedtls_ssl_session *) );
int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session );
int mbedtls_ssl_session_load( mbedtls_ssl_session *session,
                              const unsigned char *buf,
                              size_t len );
int mbedtls_ssl_session_save( const mbedtls_ssl_session *session,
                              unsigned char *buf,
                              size_t buf_len,
                              size_t *olen );
const mbedtls_ssl_session *mbedtls_ssl_get_session_pointer( const mbedtls_ssl_context *ssl );
void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites );
void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor );
void mbedtls_ssl_conf_cert_profile( mbedtls_ssl_config *conf,
                                    const mbedtls_x509_crt_profile *profile );
void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl );
int mbedtls_ssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key );
int mbedtls_ssl_conf_psk( mbedtls_ssl_config *conf,
                const unsigned char *psk, size_t psk_len,
                const unsigned char *psk_identity, size_t psk_identity_len );
int mbedtls_ssl_set_hs_psk( mbedtls_ssl_context *ssl,
                            const unsigned char *psk, size_t psk_len );
void mbedtls_ssl_conf_psk_cb( mbedtls_ssl_config *conf,
                     int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *,
                                  size_t),
                     void *p_psk );
                   int mbedtls_ssl_conf_dh_param( mbedtls_ssl_config *conf,
                                                  const char *dhm_P,
                                                  const char *dhm_G );
int mbedtls_ssl_conf_dh_param_bin( mbedtls_ssl_config *conf,
                                   const unsigned char *dhm_P, size_t P_len,
                                   const unsigned char *dhm_G, size_t G_len );
int mbedtls_ssl_conf_dh_param_ctx( mbedtls_ssl_config *conf, mbedtls_dhm_context *dhm_ctx );
void mbedtls_ssl_conf_dhm_min_bitlen( mbedtls_ssl_config *conf,
                                      unsigned int bitlen );
void mbedtls_ssl_conf_curves( mbedtls_ssl_config *conf,
                              const mbedtls_ecp_group_id *curves );
void mbedtls_ssl_conf_sig_hashes( mbedtls_ssl_config *conf,
                                  const int *hashes );
int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname );
int mbedtls_ssl_set_hs_own_cert( mbedtls_ssl_context *ssl,
                                 mbedtls_x509_crt *own_cert,
                                 mbedtls_pk_context *pk_key );
void mbedtls_ssl_set_hs_ca_chain( mbedtls_ssl_context *ssl,
                                  mbedtls_x509_crt *ca_chain,
                                  mbedtls_x509_crl *ca_crl );
void mbedtls_ssl_set_hs_authmode( mbedtls_ssl_context *ssl,
                                  int authmode );
void mbedtls_ssl_conf_sni( mbedtls_ssl_config *conf,
                  int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *,
                               size_t),
                  void *p_sni );
int mbedtls_ssl_conf_alpn_protocols( mbedtls_ssl_config *conf, const char **protos );
const char *mbedtls_ssl_get_alpn_protocol( const mbedtls_ssl_context *ssl );
void mbedtls_ssl_conf_max_version( mbedtls_ssl_config *conf, int major, int minor );
void mbedtls_ssl_conf_min_version( mbedtls_ssl_config *conf, int major, int minor );
void mbedtls_ssl_conf_fallback( mbedtls_ssl_config *conf, char fallback );
void mbedtls_ssl_conf_encrypt_then_mac( mbedtls_ssl_config *conf, char etm );
void mbedtls_ssl_conf_extended_master_secret( mbedtls_ssl_config *conf, char ems );
void mbedtls_ssl_conf_arc4_support( mbedtls_ssl_config *conf, char arc4 );
void mbedtls_ssl_conf_cert_req_ca_list( mbedtls_ssl_config *conf,
                                          char cert_req_ca_list );
int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code );
void mbedtls_ssl_conf_truncated_hmac( mbedtls_ssl_config *conf, int truncate );
void mbedtls_ssl_conf_cbc_record_splitting( mbedtls_ssl_config *conf, char split );
void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets );
void mbedtls_ssl_conf_renegotiation( mbedtls_ssl_config *conf, int renegotiation );
void mbedtls_ssl_conf_legacy_renegotiation( mbedtls_ssl_config *conf, int allow_legacy );
void mbedtls_ssl_conf_renegotiation_enforced( mbedtls_ssl_config *conf, int max_records );
void mbedtls_ssl_conf_renegotiation_period( mbedtls_ssl_config *conf,
                                   const unsigned char period[8] );
int mbedtls_ssl_check_pending( const mbedtls_ssl_context *ssl );
size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl );
uint32_t mbedtls_ssl_get_verify_result( const mbedtls_ssl_context *ssl );
const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl );
const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl );
int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl );
size_t mbedtls_ssl_get_output_max_frag_len( const mbedtls_ssl_context *ssl );
size_t mbedtls_ssl_get_input_max_frag_len( const mbedtls_ssl_context *ssl );
                   size_t mbedtls_ssl_get_max_frag_len(
                                        const mbedtls_ssl_context *ssl );
int mbedtls_ssl_get_max_out_record_payload( const mbedtls_ssl_context *ssl );
const mbedtls_x509_crt *mbedtls_ssl_get_peer_cert( const mbedtls_ssl_context *ssl );
int mbedtls_ssl_get_session( const mbedtls_ssl_context *ssl, mbedtls_ssl_session *session );
int mbedtls_ssl_handshake( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl );
int mbedtls_ssl_renegotiate( mbedtls_ssl_context *ssl );
int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len );
int mbedtls_ssl_write( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len );
int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message );
int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl );
void mbedtls_ssl_free( mbedtls_ssl_context *ssl );
int mbedtls_ssl_context_save( mbedtls_ssl_context *ssl,
                              unsigned char *buf,
                              size_t buf_len,
                              size_t *olen );
int mbedtls_ssl_context_load( mbedtls_ssl_context *ssl,
                              const unsigned char *buf,
                              size_t len );
void mbedtls_ssl_config_init( mbedtls_ssl_config *conf );
int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset );
void mbedtls_ssl_config_free( mbedtls_ssl_config *conf );
void mbedtls_ssl_session_init( mbedtls_ssl_session *session );
void mbedtls_ssl_session_free( mbedtls_ssl_session *session );
int mbedtls_ssl_tls_prf( const mbedtls_tls_prf_types prf,
                          const unsigned char *secret, size_t slen,
                          const char *label,
                          const unsigned char *random, size_t rlen,
                          unsigned char *dstbuf, size_t dlen );

typedef struct mbedtls_net_context
{
    int fd;
}
mbedtls_net_context;
void mbedtls_net_init( mbedtls_net_context *ctx );
int mbedtls_net_connect( mbedtls_net_context *ctx, const char *host, const char *port, int proto );
int mbedtls_net_bind( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto );
int mbedtls_net_accept( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len );
int mbedtls_net_poll( mbedtls_net_context *ctx, uint32_t rw, uint32_t timeout );
int mbedtls_net_set_block( mbedtls_net_context *ctx );
int mbedtls_net_set_nonblock( mbedtls_net_context *ctx );
void mbedtls_net_usleep( unsigned long usec );
int mbedtls_net_recv( void *ctx, unsigned char *buf, size_t len );
int mbedtls_net_send( void *ctx, const unsigned char *buf, size_t len );
int mbedtls_net_recv_timeout( void *ctx, unsigned char *buf, size_t len,
                      uint32_t timeout );
void mbedtls_net_close( mbedtls_net_context *ctx );
void mbedtls_net_free( mbedtls_net_context *ctx );
void mbedtls_strerror( int errnum, char *buffer, size_t buflen );
const char * mbedtls_high_level_strerr( int error_code );
const char * mbedtls_low_level_strerr( int error_code );

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
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
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
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                          ;
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };

typedef __socklen_t socklen_t;
enum __socket_type
{
  SOCK_STREAM = 1,
  SOCK_DGRAM = 2,
  SOCK_RAW = 3,
  SOCK_RDM = 4,
  SOCK_SEQPACKET = 5,
  SOCK_DCCP = 6,
  SOCK_PACKET = 10,
  SOCK_CLOEXEC = 02000000,
  SOCK_NONBLOCK = 00004000
};
typedef unsigned short int sa_family_t;
struct sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
struct sockaddr_storage
  {
    sa_family_t ss_family;
    char __ss_padding[(128 - (sizeof (unsigned short int)) - sizeof (unsigned long int))];
    unsigned long int __ss_align;
  };
enum
  {
    MSG_OOB = 0x01,
    MSG_PEEK = 0x02,
    MSG_DONTROUTE = 0x04,
    MSG_CTRUNC = 0x08,
    MSG_PROXY = 0x10,
    MSG_TRUNC = 0x20,
    MSG_DONTWAIT = 0x40,
    MSG_EOR = 0x80,
    MSG_WAITALL = 0x100,
    MSG_FIN = 0x200,
    MSG_SYN = 0x400,
    MSG_CONFIRM = 0x800,
    MSG_RST = 0x1000,
    MSG_ERRQUEUE = 0x2000,
    MSG_NOSIGNAL = 0x4000,
    MSG_MORE = 0x8000,
    MSG_WAITFORONE = 0x10000,
    MSG_BATCH = 0x40000,
    MSG_ZEROCOPY = 0x4000000,
    MSG_FASTOPEN = 0x20000000,
    MSG_CMSG_CLOEXEC = 0x40000000
  };
struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  {
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ ));
extern __inline __attribute__ ((__gnu_inline__)) struct cmsghdr *
__attribute__ ((__nothrow__ )) __cmsg_nxthdr (struct msghdr *__mhdr, struct cmsghdr *__cmsg)
{
  if ((size_t) __cmsg->cmsg_len < sizeof (struct cmsghdr))
    return (struct cmsghdr *) 0;
  __cmsg = (struct cmsghdr *) ((unsigned char *) __cmsg
          + (((__cmsg->cmsg_len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1)));
  if ((unsigned char *) (__cmsg + 1) > ((unsigned char *) __mhdr->msg_control
     + __mhdr->msg_controllen)
      || ((unsigned char *) __cmsg + (((__cmsg->cmsg_len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1))
   > ((unsigned char *) __mhdr->msg_control + __mhdr->msg_controllen)))
    return (struct cmsghdr *) 0;
  return __cmsg;
}
enum
  {
    SCM_RIGHTS = 0x01
  };
struct linger
  {
    int l_onoff;
    int l_linger;
  };
enum
{
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ ));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ ));
extern int bind (int __fd, const struct sockaddr * __addr, socklen_t __len)
     __attribute__ ((__nothrow__ ));
extern int getsockname (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ ));
extern int connect (int __fd, const struct sockaddr * __addr, socklen_t __len);
extern int getpeername (int __fd, struct sockaddr *__restrict __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ ));
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, const struct sockaddr * __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, struct sockaddr *__restrict __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ ));
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ ));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ ));
extern int accept (int __fd, struct sockaddr *__restrict __addr,
     socklen_t *__restrict __addr_len);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ ));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__ ));
typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
enum
  {
    IPPROTO_IP = 0,
    IPPROTO_ICMP = 1,
    IPPROTO_IGMP = 2,
    IPPROTO_IPIP = 4,
    IPPROTO_TCP = 6,
    IPPROTO_EGP = 8,
    IPPROTO_PUP = 12,
    IPPROTO_UDP = 17,
    IPPROTO_IDP = 22,
    IPPROTO_TP = 29,
    IPPROTO_DCCP = 33,
    IPPROTO_IPV6 = 41,
    IPPROTO_RSVP = 46,
    IPPROTO_GRE = 47,
    IPPROTO_ESP = 50,
    IPPROTO_AH = 51,
    IPPROTO_MTP = 92,
    IPPROTO_BEETPH = 94,
    IPPROTO_ENCAP = 98,
    IPPROTO_PIM = 103,
    IPPROTO_COMP = 108,
    IPPROTO_SCTP = 132,
    IPPROTO_UDPLITE = 136,
    IPPROTO_MPLS = 137,
    IPPROTO_ETHERNET = 143,
    IPPROTO_RAW = 255,
    IPPROTO_MPTCP = 262,
    IPPROTO_MAX
  };
enum
  {
    IPPROTO_HOPOPTS = 0,
    IPPROTO_ROUTING = 43,
    IPPROTO_FRAGMENT = 44,
    IPPROTO_ICMPV6 = 58,
    IPPROTO_NONE = 59,
    IPPROTO_DSTOPTS = 60,
    IPPROTO_MH = 135
  };
typedef uint16_t in_port_t;
enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,
    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,
    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,
    IPPORT_RESERVED = 1024,
    IPPORT_USERRESERVED = 5000
  };
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];
 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];
      } __in6_u;
  };
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
struct sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[sizeof (struct sockaddr)
      - (sizeof (unsigned short int))
      - sizeof (in_port_t)
      - sizeof (struct in_addr)];
  };
struct sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };
struct ipv6_mreq
  {
    struct in6_addr ipv6mr_multiaddr;
    unsigned int ipv6mr_interface;
  };
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
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
extern in_addr_t inet_addr (const char *__cp) __attribute__ ((__nothrow__ ));
extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__ ));
extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__ ));
extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__ ));
extern in_addr_t inet_network (const char *__cp) __attribute__ ((__nothrow__ ));
extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__ ));
extern int inet_pton (int __af, const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__ ));
extern const char *inet_ntop (int __af, const void *__restrict __cp,
         char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__ ));
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
extern int gettimeofday (struct timeval *__restrict __tv,
    void *__restrict __tz) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
enum __itimer_which
  {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef int __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ ));
extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ ));
extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __off64_t lseek (int __fd, __off64_t __offset, int __whence) __asm__ ("" "lseek64") __attribute__ ((__nothrow__ ));
extern int close (int __fd);
extern ssize_t read (int __fd, void *__buf, size_t __nbytes)
                                                  ;
extern ssize_t write (int __fd, const void *__buf, size_t __n)
                                         ;
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64")
                                                  ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pwrite64")
                                         ;
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ )) ;
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ ));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ ));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ )) ;
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int chdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int fchdir (int __fd) __attribute__ ((__nothrow__ )) ;
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ )) ;
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__))
                                       ;
extern int dup (int __fd) __attribute__ ((__nothrow__ )) ;
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ ));
extern char **__environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ )) ;
extern void _exit (int __status) __attribute__ ((__noreturn__));
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT,
    _SC_MINSIGSTKSZ,
    _SC_SIGSTKSZ
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ ));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ ));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ ))
                                                  ;
extern __pid_t getpid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ ));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ ));
extern int setpgrp (void) __attribute__ ((__nothrow__ ));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ ));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ ));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ ));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ ));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ ));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ ));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ ))
                                                  ;
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ )) ;
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ )) ;
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ )) ;
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ )) ;
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ ));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ ));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                                   ;
extern int isatty (int __fd) __attribute__ ((__nothrow__ ));
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)))
                                                   ;
extern int unlink (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ ));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ ));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts) __asm__ ("" "__posix_getopt") __attribute__ ((__nothrow__ ));
extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern int fsync (int __fd);
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ ));
extern int truncate (const char *__file, __off64_t __length) __asm__ ("" "truncate64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int ftruncate (int __fd, __off64_t __length) __asm__ ("" "ftruncate64") __attribute__ ((__nothrow__ )) ;
extern int lockf (int __fd, int __cmd, __off64_t __len) __asm__ ("" "lockf64") ;
extern int fdatasync (int __fildes);
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)))
                                          ;

typedef __sig_atomic_t sig_atomic_t;

union sigval
{
  int sival_int;
  void *sival_ptr;
};
typedef union sigval __sigval_t;
typedef struct
  {
    int si_signo;
    int si_errno;
    int si_code;
    int __pad0;
    union
      {
 int _pad[((128 / sizeof (int)) - 4)];
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;
 struct
   {
     int si_tid;
     int si_overrun;
     __sigval_t si_sigval;
   } _timer;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     __sigval_t si_sigval;
   } _rt;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;
 struct
   {
     void *si_addr;
     short int si_addr_lsb;
     union
       {
  struct
    {
      void *_lower;
      void *_upper;
    } _addr_bnd;
  __uint32_t _pkey;
       } _bounds;
   } _sigfault;
 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
enum
{
  SI_ASYNCNL = -60,
  SI_DETHREAD = -7,
  SI_TKILL,
  SI_SIGIO,
  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,
  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
};
enum
{
  ILL_ILLOPC = 1,
  ILL_ILLOPN,
  ILL_ILLADR,
  ILL_ILLTRP,
  ILL_PRVOPC,
  ILL_PRVREG,
  ILL_COPROC,
  ILL_BADSTK,
  ILL_BADIADDR
};
enum
{
  FPE_INTDIV = 1,
  FPE_INTOVF,
  FPE_FLTDIV,
  FPE_FLTOVF,
  FPE_FLTUND,
  FPE_FLTRES,
  FPE_FLTINV,
  FPE_FLTSUB,
  FPE_FLTUNK = 14,
  FPE_CONDTRAP
};
enum
{
  SEGV_MAPERR = 1,
  SEGV_ACCERR,
  SEGV_BNDERR,
  SEGV_PKUERR,
  SEGV_ACCADI,
  SEGV_ADIDERR,
  SEGV_ADIPERR,
  SEGV_MTEAERR,
  SEGV_MTESERR
};
enum
{
  BUS_ADRALN = 1,
  BUS_ADRERR,
  BUS_OBJERR,
  BUS_MCEERR_AR,
  BUS_MCEERR_AO
};
enum
{
  TRAP_BRKPT = 1,
  TRAP_TRACE,
  TRAP_BRANCH,
  TRAP_HWBKPT,
  TRAP_UNK
};
enum
{
  CLD_EXITED = 1,
  CLD_KILLED,
  CLD_DUMPED,
  CLD_TRAPPED,
  CLD_STOPPED,
  CLD_CONTINUED
};
enum
{
  POLL_IN = 1,
  POLL_OUT,
  POLL_MSG,
  POLL_ERR,
  POLL_PRI,
  POLL_HUP
};
typedef struct sigevent
  {
    __sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union
      {
 int _pad[((64 / sizeof (int)) - 4)];
 __pid_t _tid;
 struct
   {
     void (*_function) (__sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;
enum
{
  SIGEV_SIGNAL = 0,
  SIGEV_NONE,
  SIGEV_THREAD,
  SIGEV_THREAD_ID = 4
};
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern __sighandler_t signal (int __sig, __sighandler_t __handler) __asm__ ("" "__sysv_signal") __attribute__ ((__nothrow__ ));
extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ ));
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ ));
extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ ));
extern int raise (int __sig) __attribute__ ((__nothrow__ ));
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause")
  __attribute__ ((__deprecated__ ("Use the sigsuspend function instead")));
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct sigaction
  {
    union
      {
 __sighandler_t sa_handler;
 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer) (void);
  };
extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ ));
extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ ));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ ));

typedef struct
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
__extension__ typedef long long int greg_t;
typedef greg_t gregset_t[23];
struct _libc_fpxreg
{
  unsigned short int __significand[4];
  unsigned short int __exponent;
  unsigned short int __glibc_reserved1[3];
};
struct _libc_xmmreg
{
  __uint32_t __element[4];
};
struct _libc_fpstate
{
  __uint16_t __cwd;
  __uint16_t __swd;
  __uint16_t __ftw;
  __uint16_t __fop;
  __uint64_t __rip;
  __uint64_t __rdp;
  __uint32_t __mxcsr;
  __uint32_t __mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};
typedef struct _libc_fpstate *fpregset_t;
typedef struct
  {
    gregset_t __gregs;
    fpregset_t __fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;
typedef struct ucontext_t
  {
    unsigned long int __uc_flags;
    struct ucontext_t *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
    __extension__ unsigned long long int __ssp[4];
  } ucontext_t;
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ ))
  __attribute__ ((__deprecated__ ("Use sigaction with SA_RESTART instead")));
enum
{
  SS_ONSTACK = 1,
  SS_DISABLE
};
extern int sigaltstack (const stack_t *__restrict __ss,
   stack_t *__restrict __oss) __attribute__ ((__nothrow__ ));
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };
extern int sighold (int __sig) __attribute__ ((__nothrow__ ))
  __attribute__ ((__deprecated__ ("Use the sigprocmask function instead")));
extern int sigrelse (int __sig) __attribute__ ((__nothrow__ ))
  __attribute__ ((__deprecated__ ("Use the sigprocmask function instead")));
extern int sigignore (int __sig) __attribute__ ((__nothrow__ ))
  __attribute__ ((__deprecated__ ("Use the signal function instead")));
extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ ))
  __attribute__ ((__deprecated__ ("Use the signal and sigprocmask functions instead")));
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ ));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ ));
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ ));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ ));
struct flock
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    __time_t st_atime;
    __syscall_ulong_t st_atimensec;
    __time_t st_mtime;
    __syscall_ulong_t st_mtimensec;
    __time_t st_ctime;
    __syscall_ulong_t st_ctimensec;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int fcntl (int __fd, int __cmd, ...) __asm__ ("" "fcntl64");
extern int open (const char *__file, int __oflag, ...) __asm__ ("" "open64")
     __attribute__ ((__nonnull__ (1)));
extern int creat (const char *__file, mode_t __mode) __asm__ ("" "creat64") __attribute__ ((__nonnull__ (1)));
extern int posix_fadvise (int __fd, __off64_t __offset, __off64_t __len, int __advise) __asm__ ("" "posix_fadvise64") __attribute__ ((__nothrow__ ));
extern int posix_fallocate (int __fd, __off64_t __offset, __off64_t __len) __asm__ ("" "posix_fallocate64");
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};
extern int *__h_errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
struct hostent
{
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;
};
extern void sethostent (int __stay_open);
extern void endhostent (void);
extern struct hostent *gethostent (void);
extern struct hostent *gethostbyaddr (const void *__addr, __socklen_t __len,
          int __type);
extern struct hostent *gethostbyname (const char *__name);
extern void setnetent (int __stay_open);
extern void endnetent (void);
extern struct netent *getnetent (void);
extern struct netent *getnetbyaddr (uint32_t __net, int __type);
extern struct netent *getnetbyname (const char *__name);
struct servent
{
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};
extern void setservent (int __stay_open);
extern void endservent (void);
extern struct servent *getservent (void);
extern struct servent *getservbyname (const char *__name, const char *__proto);
extern struct servent *getservbyport (int __port, const char *__proto);
struct protoent
{
  char *p_name;
  char **p_aliases;
  int p_proto;
};
extern void setprotoent (int __stay_open);
extern void endprotoent (void);
extern struct protoent *getprotoent (void);
extern struct protoent *getprotobyname (const char *__name);
extern struct protoent *getprotobynumber (int __proto);
struct addrinfo
{
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
extern int getaddrinfo (const char *__restrict __name,
   const char *__restrict __service,
   const struct addrinfo *__restrict __req,
   struct addrinfo **__restrict __pai);
extern void freeaddrinfo (struct addrinfo *__ai) __attribute__ ((__nothrow__ ));
extern const char *gai_strerror (int __ecode) __attribute__ ((__nothrow__ ));
extern int getnameinfo (const struct sockaddr *__restrict __sa,
   socklen_t __salen, char *__restrict __host,
   socklen_t __hostlen, char *__restrict __serv,
   socklen_t __servlen, int __flags);
extern int *__errno_location (void) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
static int net_prepare( void )
{
    signal( 13, ((__sighandler_t) 1) );
    return( 0 );
}
void mbedtls_net_init( mbedtls_net_context *ctx )
{
    ctx->fd = -1;
}
int mbedtls_net_connect( mbedtls_net_context *ctx, const char *host,
                         const char *port, int proto )
{
    int ret = -0x006E;
    struct addrinfo hints, *addr_list, *cur;
    if( ( ret = net_prepare() ) != 0 )
        return( ret );
    memset( &hints, 0, sizeof( hints ) );
    hints.ai_family = 0;
    hints.ai_socktype = proto == 1 ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == 1 ? IPPROTO_UDP : IPPROTO_TCP;
    if( getaddrinfo( host, port, &hints, &addr_list ) != 0 )
        return( -0x0052 );
    ret = -0x0052;
    for( cur = addr_list; cur != ((void*)0); cur = cur->ai_next )
    {
        ctx->fd = (int) socket( cur->ai_family, cur->ai_socktype,
                            cur->ai_protocol );
        if( ctx->fd < 0 )
        {
            ret = -0x0042;
            continue;
        }
        if( connect( ctx->fd, cur->ai_addr, cur->ai_addrlen ) == 0 )
        {
            ret = 0;
            break;
        }
        close( ctx->fd );
        ret = -0x0044;
    }
    freeaddrinfo( addr_list );
    return( ret );
}
int mbedtls_net_bind( mbedtls_net_context *ctx, const char *bind_ip, const char *port, int proto )
{
    int n, ret;
    struct addrinfo hints, *addr_list, *cur;
    if( ( ret = net_prepare() ) != 0 )
        return( ret );
    memset( &hints, 0, sizeof( hints ) );
    hints.ai_family = 0;
    hints.ai_socktype = proto == 1 ? SOCK_DGRAM : SOCK_STREAM;
    hints.ai_protocol = proto == 1 ? IPPROTO_UDP : IPPROTO_TCP;
    if( bind_ip == ((void*)0) )
        hints.ai_flags = 0x0001;
    if( getaddrinfo( bind_ip, port, &hints, &addr_list ) != 0 )
        return( -0x0052 );
    ret = -0x0052;
    for( cur = addr_list; cur != ((void*)0); cur = cur->ai_next )
    {
        ctx->fd = (int) socket( cur->ai_family, cur->ai_socktype,
                            cur->ai_protocol );
        if( ctx->fd < 0 )
        {
            ret = -0x0042;
            continue;
        }
        n = 1;
        if( setsockopt( ctx->fd, 1, 2,
                        (const char *) &n, sizeof( n ) ) != 0 )
        {
            close( ctx->fd );
            ret = -0x0042;
            continue;
        }
        if( bind( ctx->fd, cur->ai_addr, cur->ai_addrlen ) != 0 )
        {
            close( ctx->fd );
            ret = -0x0046;
            continue;
        }
        if( proto == 0 )
        {
            if( listen( ctx->fd, 10 ) != 0 )
            {
                close( ctx->fd );
                ret = -0x0048;
                continue;
            }
        }
        ret = 0;
        break;
    }
    freeaddrinfo( addr_list );
    return( ret );
}
static int net_would_block( const mbedtls_net_context *ctx )
{
    int err = (*__errno_location ());
    if( ( fcntl( ctx->fd, 3 ) & 04000 ) != 04000 )
    {
        (*__errno_location ()) = err;
        return( 0 );
    }
    switch( (*__errno_location ()) = err )
    {
        case 11:
            return( 1 );
    }
    return( 0 );
}
int mbedtls_net_accept( mbedtls_net_context *bind_ctx,
                        mbedtls_net_context *client_ctx,
                        void *client_ip, size_t buf_size, size_t *ip_len )
{
    int ret = -0x006E;
    int type;
    struct sockaddr_storage client_addr;
    socklen_t n = (socklen_t) sizeof( client_addr );
    socklen_t type_len = (socklen_t) sizeof( type );
    if( getsockopt( bind_ctx->fd, 1, 3,
                    (void *) &type, &type_len ) != 0 ||
        ( type != SOCK_STREAM && type != SOCK_DGRAM ) )
    {
        return( -0x004A );
    }
    if( type == SOCK_STREAM )
    {
        ret = client_ctx->fd = (int) accept( bind_ctx->fd,
                                             (struct sockaddr *) &client_addr, &n );
    }
    else
    {
        char buf[1] = { 0 };
        ret = (int) recvfrom( bind_ctx->fd, buf, sizeof( buf ), MSG_PEEK,
                        (struct sockaddr *) &client_addr, &n );
    }
    if( ret < 0 )
    {
        if( net_would_block( bind_ctx ) != 0 )
            return( -0x6900 );
        return( -0x004A );
    }
    if( type != SOCK_STREAM )
    {
        struct sockaddr_storage local_addr;
        int one = 1;
        if( connect( bind_ctx->fd, (struct sockaddr *) &client_addr, n ) != 0 )
            return( -0x004A );
        client_ctx->fd = bind_ctx->fd;
        bind_ctx->fd = -1;
        n = sizeof( struct sockaddr_storage );
        if( getsockname( client_ctx->fd,
                         (struct sockaddr *) &local_addr, &n ) != 0 ||
            ( bind_ctx->fd = (int) socket( local_addr.ss_family,
                                           SOCK_DGRAM, IPPROTO_UDP ) ) < 0 ||
            setsockopt( bind_ctx->fd, 1, 2,
                        (const char *) &one, sizeof( one ) ) != 0 )
        {
            return( -0x0042 );
        }
        if( bind( bind_ctx->fd, (struct sockaddr *) &local_addr, n ) != 0 )
        {
            return( -0x0046 );
        }
    }
    if( client_ip != ((void*)0) )
    {
        if( client_addr.ss_family == 2 )
        {
            struct sockaddr_in *addr4 = (struct sockaddr_in *) &client_addr;
            *ip_len = sizeof( addr4->sin_addr.s_addr );
            if( buf_size < *ip_len )
                return( -0x0043 );
            memcpy( client_ip, &addr4->sin_addr.s_addr, *ip_len );
        }
        else
        {
            struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *) &client_addr;
            *ip_len = sizeof( addr6->sin6_addr.__in6_u.__u6_addr8 );
            if( buf_size < *ip_len )
                return( -0x0043 );
            memcpy( client_ip, &addr6->sin6_addr.__in6_u.__u6_addr8, *ip_len);
        }
    }
    return( 0 );
}
int mbedtls_net_set_block( mbedtls_net_context *ctx )
{
    return( fcntl( ctx->fd, 4, fcntl( ctx->fd, 3 ) & ~04000 ) );
}
int mbedtls_net_set_nonblock( mbedtls_net_context *ctx )
{
    return( fcntl( ctx->fd, 4, fcntl( ctx->fd, 3 ) | 04000 ) );
}
int mbedtls_net_poll( mbedtls_net_context *ctx, uint32_t rw, uint32_t timeout )
{
    int ret = -0x006E;
    struct timeval tv;
    fd_set read_fds;
    fd_set write_fds;
    int fd = ctx->fd;
    if( fd < 0 )
        return( -0x0045 );
    do { unsigned int __i; fd_set *__arr = (&read_fds); for (__i = 0; __i < sizeof (fd_set) / sizeof (__fd_mask); ++__i) ((__arr)->fds_bits)[__i] = 0; } while (0);
    if( rw & 1 )
    {
        rw &= ~1;
        ((void) (((&read_fds)->fds_bits)[((fd) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) (1UL << ((fd) % (8 * (int) sizeof (__fd_mask)))))));
    }
    do { unsigned int __i; fd_set *__arr = (&write_fds); for (__i = 0; __i < sizeof (fd_set) / sizeof (__fd_mask); ++__i) ((__arr)->fds_bits)[__i] = 0; } while (0);
    if( rw & 2 )
    {
        rw &= ~2;
        ((void) (((&write_fds)->fds_bits)[((fd) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) (1UL << ((fd) % (8 * (int) sizeof (__fd_mask)))))));
    }
    if( rw != 0 )
        return( -0x0049 );
    tv.tv_sec = timeout / 1000;
    tv.tv_usec = ( timeout % 1000 ) * 1000;
    do
    {
        ret = select( fd + 1, &read_fds, &write_fds, ((void*)0),
                      timeout == (uint32_t) -1 ? ((void*)0) : &tv );
    }
    while( ( ( ret ) == 4 ) );
    if( ret < 0 )
        return( -0x0047 );
    ret = 0;
    if( ((((&read_fds)->fds_bits)[((fd) / (8 * (int) sizeof (__fd_mask)))] & ((__fd_mask) (1UL << ((fd) % (8 * (int) sizeof (__fd_mask)))))) != 0) )
        ret |= 1;
    if( ((((&write_fds)->fds_bits)[((fd) / (8 * (int) sizeof (__fd_mask)))] & ((__fd_mask) (1UL << ((fd) % (8 * (int) sizeof (__fd_mask)))))) != 0) )
        ret |= 2;
    return( ret );
}
void mbedtls_net_usleep( unsigned long usec )
{
    struct timeval tv;
    tv.tv_sec = usec / 1000000;
    tv.tv_usec = (suseconds_t) usec % 1000000;
    select( 0, ((void*)0), ((void*)0), ((void*)0), &tv );
}
int mbedtls_net_recv( void *ctx, unsigned char *buf, size_t len )
{
    int ret = -0x006E;
    int fd = ((mbedtls_net_context *) ctx)->fd;
    if( fd < 0 )
        return( -0x0045 );
    ret = (int) read( fd, buf, len );
    if( ret < 0 )
    {
        if( net_would_block( ctx ) != 0 )
            return( -0x6900 );
        if( (*__errno_location ()) == 32 || (*__errno_location ()) == 104 )
            return( -0x0050 );
        if( (*__errno_location ()) == 4 )
            return( -0x6900 );
        return( -0x004C );
    }
    return( ret );
}
int mbedtls_net_recv_timeout( void *ctx, unsigned char *buf,
                              size_t len, uint32_t timeout )
{
    int ret = -0x006E;
    struct timeval tv;
    fd_set read_fds;
    int fd = ((mbedtls_net_context *) ctx)->fd;
    if( fd < 0 )
        return( -0x0045 );
    do { unsigned int __i; fd_set *__arr = (&read_fds); for (__i = 0; __i < sizeof (fd_set) / sizeof (__fd_mask); ++__i) ((__arr)->fds_bits)[__i] = 0; } while (0);
    ((void) (((&read_fds)->fds_bits)[((fd) / (8 * (int) sizeof (__fd_mask)))] |= ((__fd_mask) (1UL << ((fd) % (8 * (int) sizeof (__fd_mask)))))));
    tv.tv_sec = timeout / 1000;
    tv.tv_usec = ( timeout % 1000 ) * 1000;
    ret = select( fd + 1, &read_fds, ((void*)0), ((void*)0), timeout == 0 ? ((void*)0) : &tv );
    if( ret == 0 )
        return( -0x6800 );
    if( ret < 0 )
    {
        if( (*__errno_location ()) == 4 )
            return( -0x6900 );
        return( -0x004C );
    }
    return( mbedtls_net_recv( ctx, buf, len ) );
}
int mbedtls_net_send( void *ctx, const unsigned char *buf, size_t len )
{
    int ret = -0x006E;
    int fd = ((mbedtls_net_context *) ctx)->fd;
    if( fd < 0 )
        return( -0x0045 );
    ret = (int) write( fd, buf, len );
    if( ret < 0 )
    {
        if( net_would_block( ctx ) != 0 )
            return( -0x6880 );
        if( (*__errno_location ()) == 32 || (*__errno_location ()) == 104 )
            return( -0x0050 );
        if( (*__errno_location ()) == 4 )
            return( -0x6880 );
        return( -0x004E );
    }
    return( ret );
}
void mbedtls_net_close( mbedtls_net_context *ctx )
{
    if( ctx->fd == -1 )
        return;
    close( ctx->fd );
    ctx->fd = -1;
}
void mbedtls_net_free( mbedtls_net_context *ctx )
{
    if( ctx->fd == -1 )
        return;
    shutdown( ctx->fd, 2 );
    close( ctx->fd );
    ctx->fd = -1;
}
