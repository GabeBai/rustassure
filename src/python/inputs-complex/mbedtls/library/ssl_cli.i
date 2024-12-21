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
  long int tm_gmtoff;
  const char *tm_zone;
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
extern clock_t clock (void) __attribute__ ((__nothrow__ ));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));
extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ ));
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
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
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
typedef __ssize_t ssize_t;
typedef __fpos64_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream);
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64")
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")
       ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ ));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ ));
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
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
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
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                         ;
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
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
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void perror (const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
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
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
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
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
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
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
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
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino64_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __id_t id_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
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
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64") __attribute__ ((__nonnull__ (1))) ;
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
typedef struct mbedtls_md5_context
{
    uint32_t total[2];
    uint32_t state[4];
    unsigned char buffer[64];
}
mbedtls_md5_context;
void mbedtls_md5_init( mbedtls_md5_context *ctx );
void mbedtls_md5_free( mbedtls_md5_context *ctx );
void mbedtls_md5_clone( mbedtls_md5_context *dst,
                        const mbedtls_md5_context *src );
int mbedtls_md5_starts_ret( mbedtls_md5_context *ctx );
int mbedtls_md5_update_ret( mbedtls_md5_context *ctx,
                            const unsigned char *input,
                            size_t ilen );
int mbedtls_md5_finish_ret( mbedtls_md5_context *ctx,
                            unsigned char output[16] );
int mbedtls_internal_md5_process( mbedtls_md5_context *ctx,
                                  const unsigned char data[64] );
                   void mbedtls_md5_starts( mbedtls_md5_context *ctx );
                   void mbedtls_md5_update( mbedtls_md5_context *ctx,
                                            const unsigned char *input,
                                            size_t ilen );
                   void mbedtls_md5_finish( mbedtls_md5_context *ctx,
                                            unsigned char output[16] );
                   void mbedtls_md5_process( mbedtls_md5_context *ctx,
                                             const unsigned char data[64] );
int mbedtls_md5_ret( const unsigned char *input,
                     size_t ilen,
                     unsigned char output[16] );
                   void mbedtls_md5( const unsigned char *input,
                                     size_t ilen,
                                     unsigned char output[16] );
int mbedtls_md5_self_test( int verbose );
typedef struct mbedtls_sha1_context
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
}
mbedtls_sha1_context;
void mbedtls_sha1_init( mbedtls_sha1_context *ctx );
void mbedtls_sha1_free( mbedtls_sha1_context *ctx );
void mbedtls_sha1_clone( mbedtls_sha1_context *dst,
                         const mbedtls_sha1_context *src );
int mbedtls_sha1_starts_ret( mbedtls_sha1_context *ctx );
int mbedtls_sha1_update_ret( mbedtls_sha1_context *ctx,
                             const unsigned char *input,
                             size_t ilen );
int mbedtls_sha1_finish_ret( mbedtls_sha1_context *ctx,
                             unsigned char output[20] );
int mbedtls_internal_sha1_process( mbedtls_sha1_context *ctx,
                                   const unsigned char data[64] );
                   void mbedtls_sha1_starts( mbedtls_sha1_context *ctx );
                   void mbedtls_sha1_update( mbedtls_sha1_context *ctx,
                                             const unsigned char *input,
                                             size_t ilen );
                   void mbedtls_sha1_finish( mbedtls_sha1_context *ctx,
                                             unsigned char output[20] );
                   void mbedtls_sha1_process( mbedtls_sha1_context *ctx,
                                              const unsigned char data[64] );
int mbedtls_sha1_ret( const unsigned char *input,
                      size_t ilen,
                      unsigned char output[20] );
                   void mbedtls_sha1( const unsigned char *input,
                                      size_t ilen,
                                      unsigned char output[20] );
int mbedtls_sha1_self_test( int verbose );
typedef struct mbedtls_sha256_context
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
}
mbedtls_sha256_context;
void mbedtls_sha256_init( mbedtls_sha256_context *ctx );
void mbedtls_sha256_free( mbedtls_sha256_context *ctx );
void mbedtls_sha256_clone( mbedtls_sha256_context *dst,
                           const mbedtls_sha256_context *src );
int mbedtls_sha256_starts_ret( mbedtls_sha256_context *ctx, int is224 );
int mbedtls_sha256_update_ret( mbedtls_sha256_context *ctx,
                               const unsigned char *input,
                               size_t ilen );
int mbedtls_sha256_finish_ret( mbedtls_sha256_context *ctx,
                               unsigned char output[32] );
int mbedtls_internal_sha256_process( mbedtls_sha256_context *ctx,
                                     const unsigned char data[64] );
                   void mbedtls_sha256_starts( mbedtls_sha256_context *ctx,
                                               int is224 );
                   void mbedtls_sha256_update( mbedtls_sha256_context *ctx,
                                               const unsigned char *input,
                                               size_t ilen );
                   void mbedtls_sha256_finish( mbedtls_sha256_context *ctx,
                                               unsigned char output[32] );
                   void mbedtls_sha256_process( mbedtls_sha256_context *ctx,
                                                const unsigned char data[64] );
int mbedtls_sha256_ret( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[32],
                        int is224 );
                   void mbedtls_sha256( const unsigned char *input,
                                        size_t ilen,
                                        unsigned char output[32],
                                        int is224 );
int mbedtls_sha256_self_test( int verbose );
typedef struct mbedtls_sha512_context
{
    uint64_t total[2];
    uint64_t state[8];
    unsigned char buffer[128];
    int is384;
}
mbedtls_sha512_context;
void mbedtls_sha512_init( mbedtls_sha512_context *ctx );
void mbedtls_sha512_free( mbedtls_sha512_context *ctx );
void mbedtls_sha512_clone( mbedtls_sha512_context *dst,
                           const mbedtls_sha512_context *src );
int mbedtls_sha512_starts_ret( mbedtls_sha512_context *ctx, int is384 );
int mbedtls_sha512_update_ret( mbedtls_sha512_context *ctx,
                    const unsigned char *input,
                    size_t ilen );
int mbedtls_sha512_finish_ret( mbedtls_sha512_context *ctx,
                               unsigned char output[64] );
int mbedtls_internal_sha512_process( mbedtls_sha512_context *ctx,
                                     const unsigned char data[128] );
                   void mbedtls_sha512_starts( mbedtls_sha512_context *ctx,
                                               int is384 );
                   void mbedtls_sha512_update( mbedtls_sha512_context *ctx,
                                               const unsigned char *input,
                                               size_t ilen );
                   void mbedtls_sha512_finish( mbedtls_sha512_context *ctx,
                                               unsigned char output[64] );
                   void mbedtls_sha512_process(
                                            mbedtls_sha512_context *ctx,
                                            const unsigned char data[128] );
int mbedtls_sha512_ret( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[64],
                        int is384 );
                   void mbedtls_sha512( const unsigned char *input,
                                        size_t ilen,
                                        unsigned char output[64],
                                        int is384 );
int mbedtls_sha512_self_test( int verbose );
static inline int mbedtls_ssl_chk_buf_ptr( const uint8_t *cur,
                                           const uint8_t *end, size_t need )
{
    return( ( cur > end ) || ( need > (size_t)( end - cur ) ) );
}
struct mbedtls_ssl_sig_hash_set_t
{
    mbedtls_md_type_t rsa;
    mbedtls_md_type_t ecdsa;
};
typedef int mbedtls_ssl_tls_prf_cb( const unsigned char *secret, size_t slen,
                                     const char *label,
                                     const unsigned char *random, size_t rlen,
                                     unsigned char *dstbuf, size_t dlen );
struct mbedtls_ssl_handshake_params
{
    mbedtls_ssl_sig_hash_set_t hash_algs;
    mbedtls_dhm_context dhm_ctx;
    mbedtls_ecdh_context ecdh_ctx;
    const mbedtls_ecp_curve_info **curves;
    unsigned char *psk;
    size_t psk_len;
    mbedtls_ssl_key_cert *key_cert;
    int sni_authmode;
    mbedtls_ssl_key_cert *sni_key_cert;
    mbedtls_x509_crt *sni_ca_chain;
    mbedtls_x509_crl *sni_ca_crl;
    unsigned int out_msg_seq;
    unsigned int in_msg_seq;
    unsigned char *verify_cookie;
    unsigned char verify_cookie_len;
    uint32_t retransmit_timeout;
    unsigned char retransmit_state;
    mbedtls_ssl_flight_item *flight;
    mbedtls_ssl_flight_item *cur_msg;
    unsigned char *cur_msg_p;
    unsigned int in_flight_start_seq;
    mbedtls_ssl_transform *alt_transform_out;
    unsigned char alt_out_ctr[8];
    struct
    {
        size_t total_bytes_buffered;
        uint8_t seen_ccs;
        struct mbedtls_ssl_hs_buffer
        {
            unsigned is_valid : 1;
            unsigned is_fragmented : 1;
            unsigned is_complete : 1;
            unsigned char *data;
            size_t data_len;
        } hs[4];
        struct
        {
            unsigned char *data;
            size_t len;
            unsigned epoch;
        } future_record;
    } buffering;
    uint16_t mtu;
       mbedtls_md5_context fin_md5;
      mbedtls_sha1_context fin_sha1;
    mbedtls_sha256_context fin_sha256;
    mbedtls_sha512_context fin_sha512;
    void (*update_checksum)(mbedtls_ssl_context *, const unsigned char *, size_t);
    void (*calc_verify)(const mbedtls_ssl_context *, unsigned char *, size_t *);
    void (*calc_finished)(mbedtls_ssl_context *, unsigned char *, int);
    mbedtls_ssl_tls_prf_cb *tls_prf;
    mbedtls_ssl_ciphersuite_t const *ciphersuite_info;
    size_t pmslen;
    unsigned char randbytes[64];
    unsigned char premaster[sizeof( union mbedtls_ssl_premaster_secret )];
    int resume;
    int max_major_ver;
    int max_minor_ver;
    int cli_exts;
    int new_session_ticket;
    int extended_ms;
};
typedef struct mbedtls_ssl_hs_buffer mbedtls_ssl_hs_buffer;
struct mbedtls_ssl_transform
{
    size_t minlen;
    size_t ivlen;
    size_t fixed_ivlen;
    size_t maclen;
    size_t taglen;
    unsigned char iv_enc[16];
    unsigned char iv_dec[16];
    mbedtls_md_context_t md_ctx_enc;
    mbedtls_md_context_t md_ctx_dec;
    int encrypt_then_mac;
    mbedtls_cipher_context_t cipher_ctx_enc;
    mbedtls_cipher_context_t cipher_ctx_dec;
    int minor_ver;
    unsigned char randbytes[64];
};
static inline int mbedtls_ssl_transform_uses_aead(
        const mbedtls_ssl_transform *transform )
{
    return( transform->maclen == 0 && transform->taglen != 0 );
}
typedef struct
{
    uint8_t ctr[8];
    uint8_t type;
    uint8_t ver[2];
    unsigned char *buf;
    size_t buf_len;
    size_t data_offset;
    size_t data_len;
} mbedtls_record;
struct mbedtls_ssl_key_cert
{
    mbedtls_x509_crt *cert;
    mbedtls_pk_context *key;
    mbedtls_ssl_key_cert *next;
};
struct mbedtls_ssl_flight_item
{
    unsigned char *p;
    size_t len;
    unsigned char type;
    mbedtls_ssl_flight_item *next;
};
mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg );
void mbedtls_ssl_sig_hash_set_add( mbedtls_ssl_sig_hash_set_t *set,
                                   mbedtls_pk_type_t sig_alg,
                                   mbedtls_md_type_t md_alg );
void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg );
static inline void mbedtls_ssl_sig_hash_set_init( mbedtls_ssl_sig_hash_set_t *set )
{
    mbedtls_ssl_sig_hash_set_const_hash( set, MBEDTLS_MD_NONE );
}
void mbedtls_ssl_transform_free( mbedtls_ssl_transform *transform );
void mbedtls_ssl_handshake_free( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handshake_client_step( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handshake_server_step( mbedtls_ssl_context *ssl );
void mbedtls_ssl_handshake_wrapup( mbedtls_ssl_context *ssl );
int mbedtls_ssl_send_fatal_handshake_failure( mbedtls_ssl_context *ssl );
void mbedtls_ssl_reset_checksum( mbedtls_ssl_context *ssl );
int mbedtls_ssl_derive_keys( mbedtls_ssl_context *ssl );
int mbedtls_ssl_handle_message_type( mbedtls_ssl_context *ssl );
int mbedtls_ssl_prepare_handshake_record( mbedtls_ssl_context *ssl );
void mbedtls_ssl_update_handshake_status( mbedtls_ssl_context *ssl );
int mbedtls_ssl_read_record( mbedtls_ssl_context *ssl,
                             unsigned update_hs_digest );
int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want );
int mbedtls_ssl_write_handshake_msg( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_record( mbedtls_ssl_context *ssl, uint8_t force_flush );
int mbedtls_ssl_flush_output( mbedtls_ssl_context *ssl );
int mbedtls_ssl_parse_certificate( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_certificate( mbedtls_ssl_context *ssl );
int mbedtls_ssl_parse_change_cipher_spec( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_change_cipher_spec( mbedtls_ssl_context *ssl );
int mbedtls_ssl_parse_finished( mbedtls_ssl_context *ssl );
int mbedtls_ssl_write_finished( mbedtls_ssl_context *ssl );
void mbedtls_ssl_optimize_checksum( mbedtls_ssl_context *ssl,
                            const mbedtls_ssl_ciphersuite_t *ciphersuite_info );
int mbedtls_ssl_psk_derive_premaster( mbedtls_ssl_context *ssl, mbedtls_key_exchange_type_t key_ex );
static inline int mbedtls_ssl_get_psk( const mbedtls_ssl_context *ssl,
    const unsigned char **psk, size_t *psk_len )
{
    if( ssl->handshake->psk != ((void*)0) && ssl->handshake->psk_len > 0 )
    {
        *psk = ssl->handshake->psk;
        *psk_len = ssl->handshake->psk_len;
    }
    else if( ssl->conf->psk != ((void*)0) && ssl->conf->psk_len > 0 )
    {
        *psk = ssl->conf->psk;
        *psk_len = ssl->conf->psk_len;
    }
    else
    {
        *psk = ((void*)0);
        *psk_len = 0;
        return( -0x7600 );
    }
    return( 0 );
}
unsigned char mbedtls_ssl_sig_from_pk( mbedtls_pk_context *pk );
unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type );
mbedtls_pk_type_t mbedtls_ssl_pk_alg_from_sig( unsigned char sig );
mbedtls_md_type_t mbedtls_ssl_md_alg_from_hash( unsigned char hash );
unsigned char mbedtls_ssl_hash_from_md_alg( int md );
int mbedtls_ssl_set_calc_verify_md( mbedtls_ssl_context *ssl, int md );
int mbedtls_ssl_check_curve( const mbedtls_ssl_context *ssl, mbedtls_ecp_group_id grp_id );
int mbedtls_ssl_check_sig_hash( const mbedtls_ssl_context *ssl,
                                mbedtls_md_type_t md );
static inline mbedtls_pk_context *mbedtls_ssl_own_key( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;
    if( ssl->handshake != ((void*)0) && ssl->handshake->key_cert != ((void*)0) )
        key_cert = ssl->handshake->key_cert;
    else
        key_cert = ssl->conf->key_cert;
    return( key_cert == ((void*)0) ? ((void*)0) : key_cert->key );
}
static inline mbedtls_x509_crt *mbedtls_ssl_own_cert( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_key_cert *key_cert;
    if( ssl->handshake != ((void*)0) && ssl->handshake->key_cert != ((void*)0) )
        key_cert = ssl->handshake->key_cert;
    else
        key_cert = ssl->conf->key_cert;
    return( key_cert == ((void*)0) ? ((void*)0) : key_cert->cert );
}
int mbedtls_ssl_check_cert_usage( const mbedtls_x509_crt *cert,
                          const mbedtls_ssl_ciphersuite_t *ciphersuite,
                          int cert_endpoint,
                          uint32_t *flags );
void mbedtls_ssl_write_version( int major, int minor, int transport,
                        unsigned char ver[2] );
void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] );
static inline size_t mbedtls_ssl_in_hdr_len( const mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
    {
        return( 13 );
    }
    else
    {
        return( 5 );
    }
}
static inline size_t mbedtls_ssl_out_hdr_len( const mbedtls_ssl_context *ssl )
{
    return( (size_t) ( ssl->out_iv - ssl->out_hdr ) );
}
static inline size_t mbedtls_ssl_hs_hdr_len( const mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
        return( 12 );
    return( 4 );
}
void mbedtls_ssl_send_flight_completed( mbedtls_ssl_context *ssl );
void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl );
int mbedtls_ssl_resend( mbedtls_ssl_context *ssl );
int mbedtls_ssl_flight_transmit( mbedtls_ssl_context *ssl );
int mbedtls_ssl_dtls_replay_check( mbedtls_ssl_context const *ssl );
void mbedtls_ssl_dtls_replay_update( mbedtls_ssl_context *ssl );
int mbedtls_ssl_session_copy( mbedtls_ssl_session *dst,
                              const mbedtls_ssl_session *src );
static inline int mbedtls_ssl_safer_memcmp( const void *a, const void *b, size_t n )
{
    size_t i;
    volatile const unsigned char *A = (volatile const unsigned char *) a;
    volatile const unsigned char *B = (volatile const unsigned char *) b;
    volatile unsigned char diff = 0;
    for( i = 0; i < n; i++ )
    {
        unsigned char x = A[i], y = B[i];
        diff |= x ^ y;
    }
    return( diff );
}
int mbedtls_ssl_get_key_exchange_md_ssl_tls( mbedtls_ssl_context *ssl,
                                        unsigned char *output,
                                        unsigned char *data, size_t data_len );
int mbedtls_ssl_get_key_exchange_md_tls1_2( mbedtls_ssl_context *ssl,
                                            unsigned char *hash, size_t *hashlen,
                                            unsigned char *data, size_t data_len,
                                            mbedtls_md_type_t md_alg );
void mbedtls_ssl_transform_init( mbedtls_ssl_transform *transform );
int mbedtls_ssl_encrypt_buf( mbedtls_ssl_context *ssl,
                             mbedtls_ssl_transform *transform,
                             mbedtls_record *rec,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng );
int mbedtls_ssl_decrypt_buf( mbedtls_ssl_context const *ssl,
                             mbedtls_ssl_transform *transform,
                             mbedtls_record *rec );
static inline size_t mbedtls_ssl_ep_len( const mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
        return( 2 );
    return( 0 );
}
int mbedtls_ssl_resend_hello_request( mbedtls_ssl_context *ssl );
void mbedtls_ssl_set_timer( mbedtls_ssl_context *ssl, uint32_t millisecs );
int mbedtls_ssl_check_timer( mbedtls_ssl_context *ssl );
void mbedtls_ssl_reset_in_out_pointers( mbedtls_ssl_context *ssl );
void mbedtls_ssl_update_out_pointers( mbedtls_ssl_context *ssl,
                              mbedtls_ssl_transform *transform );
void mbedtls_ssl_update_in_pointers( mbedtls_ssl_context *ssl );
int mbedtls_ssl_session_reset_int( mbedtls_ssl_context *ssl, int partial );
void mbedtls_ssl_dtls_replay_reset( mbedtls_ssl_context *ssl );
void mbedtls_ssl_handshake_wrapup_free_hs_transform( mbedtls_ssl_context *ssl );
int mbedtls_ssl_start_renegotiation( mbedtls_ssl_context *ssl );
size_t mbedtls_ssl_get_current_mtu( const mbedtls_ssl_context *ssl );
void mbedtls_ssl_buffering_free( mbedtls_ssl_context *ssl );
void mbedtls_ssl_flight_free( mbedtls_ssl_flight_item *flight );
void mbedtls_debug_set_threshold( int threshold );
void mbedtls_debug_print_msg( const mbedtls_ssl_context *ssl, int level,
                              const char *file, int line,
                              const char *format, ... );
void mbedtls_debug_print_ret( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, int ret );
void mbedtls_debug_print_buf( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len );
void mbedtls_debug_print_mpi( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_mpi *X );
void mbedtls_debug_print_ecp( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_ecp_point *X );
void mbedtls_debug_print_crt( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, const mbedtls_x509_crt *crt );
typedef enum
{
    MBEDTLS_DEBUG_ECDH_Q,
    MBEDTLS_DEBUG_ECDH_QP,
    MBEDTLS_DEBUG_ECDH_Z,
} mbedtls_debug_ecdh_attr;
void mbedtls_debug_printf_ecdh( const mbedtls_ssl_context *ssl, int level,
                                const char *file, int line,
                                const mbedtls_ecdh_context *ecdh,
                                mbedtls_debug_ecdh_attr attr );
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
static int ssl_conf_has_static_psk( mbedtls_ssl_config const *conf )
{
    if( conf->psk_identity == ((void*)0) ||
        conf->psk_identity_len == 0 )
    {
        return( 0 );
    }
    if( conf->psk != ((void*)0) && conf->psk_len != 0 )
        return( 1 );
    return( 0 );
}
static int ssl_write_hostname_ext( mbedtls_ssl_context *ssl,
                                   unsigned char *buf,
                                   const unsigned char *end,
                                   size_t *olen )
{
    unsigned char *p = buf;
    size_t hostname_len;
    *olen = 0;
    if( ssl->hostname == ((void*)0) )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 107, "client hello, adding server name extension: %s", ssl->hostname );
    hostname_len = strlen( ssl->hostname );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( hostname_len + 9 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 0 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 0 ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 5) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 5) ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 3) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( (hostname_len + 3) ) & 0xFF );
    *p++ = (unsigned char)( ( 0 ) & 0xFF );
    *p++ = (unsigned char)( ( hostname_len >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( hostname_len ) & 0xFF );
    memcpy( p, ssl->hostname, hostname_len );
    *olen = hostname_len + 9;
    return( 0 );
}
static int ssl_write_renegotiation_ext00( mbedtls_ssl_context *ssl,
                                        unsigned char *buf,
                                        const unsigned char *end,
                                        size_t *olen )
{
    unsigned char *p = buf;
    *olen = 0;
    if( ssl->renego_status != 1 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 177, "client hello, adding renegotiation extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 5 + ssl->verify_data_len ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 0xFF01 >> 8 )
                            & 0xFF );
    *p++ = (unsigned char)( ( 0xFF01 )
                            & 0xFF );
    *p++ = 0x00;
    *p++ = ( ssl->verify_data_len + 1 ) & 0xFF;
    *p++ = ssl->verify_data_len & 0xFF;
    memcpy( p, ssl->own_verify_data, ssl->verify_data_len );
    *olen = 5 + ssl->verify_data_len;
    return( 0 );
}
static int ssl_write_signature_algorithms_ext( mbedtls_ssl_context *ssl,
                                               unsigned char *buf,
                                               const unsigned char *end,
                                               size_t *olen )
{
    unsigned char *p = buf;
    size_t sig_alg_len = 0;
    const int *md;
    unsigned char *sig_alg_list = buf + 6;
    *olen = 0;
    if( ssl->conf->max_minor_ver != 3 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 225, "client hello, adding signature_algorithms extension" );
    if( ssl->conf->sig_hashes == ((void*)0) )
        return( -0x5E80 );
    for( md = ssl->conf->sig_hashes; *md != MBEDTLS_MD_NONE; md++ )
    {
        sig_alg_len += 2;
        sig_alg_len += 2;
        if( sig_alg_len > 65534 )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 241, "length in bytes of sig-hash-alg extension too big" );
            return( -0x5E80 );
        }
    }
    if( sig_alg_len == 0 )
        return( -0x5E80 );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( sig_alg_len + 6 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    sig_alg_len = 0;
    for( md = ssl->conf->sig_hashes; *md != MBEDTLS_MD_NONE; md++ )
    {
        sig_alg_list[sig_alg_len++] = mbedtls_ssl_hash_from_md_alg( *md );
        sig_alg_list[sig_alg_len++] = 3;
        sig_alg_list[sig_alg_len++] = mbedtls_ssl_hash_from_md_alg( *md );
        sig_alg_list[sig_alg_len++] = 1;
    }
    *p++ = (unsigned char)( ( 13 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 13 ) & 0xFF );
    *p++ = (unsigned char)( ( ( sig_alg_len + 2 ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( sig_alg_len + 2 ) ) & 0xFF );
    *p++ = (unsigned char)( ( sig_alg_len >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( sig_alg_len ) & 0xFF );
    *olen = 6 + sig_alg_len;
    return( 0 );
}
static int ssl_write_supported_elliptic_curves_ext( mbedtls_ssl_context *ssl,
                                                    unsigned char *buf,
                                                    const unsigned char *end,
                                                    size_t *olen )
{
    unsigned char *p = buf;
    unsigned char *elliptic_curve_list = p + 6;
    size_t elliptic_curve_len = 0;
    const mbedtls_ecp_curve_info *info;
    const mbedtls_ecp_group_id *grp_id;
    *olen = 0;
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 318, "client hello, adding supported_elliptic_curves extension" );
    if( ssl->conf->curve_list == ((void*)0) )
        return( -0x5E80 );
    for( grp_id = ssl->conf->curve_list;
         *grp_id != MBEDTLS_ECP_DP_NONE;
         grp_id++ )
    {
        info = mbedtls_ecp_curve_info_from_grp_id( *grp_id );
        if( info == ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 331, "invalid curve in ssl configuration" );
            return( -0x5E80 );
        }
        elliptic_curve_len += 2;
        if( elliptic_curve_len > 65535 )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 339, "malformed supported_elliptic_curves extension in config" );
            return( -0x5E80 );
        }
    }
    if( elliptic_curve_len == 0 )
        return( -0x5E80 );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 6 + elliptic_curve_len ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    elliptic_curve_len = 0;
    for( grp_id = ssl->conf->curve_list;
         *grp_id != MBEDTLS_ECP_DP_NONE;
         grp_id++ )
    {
        info = mbedtls_ecp_curve_info_from_grp_id( *grp_id );
        elliptic_curve_list[elliptic_curve_len++] = info->tls_id >> 8;
        elliptic_curve_list[elliptic_curve_len++] = info->tls_id & 0xFF;
    }
    *p++ = (unsigned char)( ( 10 >> 8 )
                            & 0xFF );
    *p++ = (unsigned char)( ( 10 )
                            & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len + 2 ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len + 2 ) ) & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len ) >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( ( elliptic_curve_len ) ) & 0xFF );
    *olen = 6 + elliptic_curve_len;
    return( 0 );
}
static int ssl_write_supported_point_formats_ext00( mbedtls_ssl_context *ssl,
                                                  unsigned char *buf,
                                                  const unsigned char *end,
                                                  size_t *olen )
{
    unsigned char *p = buf;
    (void) ssl;
    *olen = 0;
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 388, "client hello, adding supported_point_formats extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 6 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 11 >> 8 )
                            & 0xFF );
    *p++ = (unsigned char)( ( 11 )
                            & 0xFF );
    *p++ = 0x00;
    *p++ = 2;
    *p++ = 1;
    *p++ = 0;
    *olen = 6;
    return( 0 );
}
static int ssl_write_max_fragment_length_ext00( mbedtls_ssl_context *ssl,
                                              unsigned char *buf,
                                              const unsigned char *end,
                                              size_t *olen )
{
    unsigned char *p = buf;
    *olen = 0;
    if( ssl->conf->mfl_code == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 542, "client hello, adding max_fragment_length extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 5 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 1 >> 8 )
                            & 0xFF );
    *p++ = (unsigned char)( ( 1 )
                            & 0xFF );
    *p++ = 0x00;
    *p++ = 1;
    *p++ = ssl->conf->mfl_code;
    *olen = 5;
    return( 0 );
}
static int ssl_write_truncated_hmac_ext00( mbedtls_ssl_context *ssl,
                                         unsigned char *buf,
                                         const unsigned char *end,
                                         size_t *olen )
{
    unsigned char *p = buf;
    *olen = 0;
    if( ssl->conf->trunc_hmac == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 576, "client hello, adding truncated_hmac extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 4 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 4 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 4 ) & 0xFF );
    *p++ = 0x00;
    *p++ = 0x00;
    *olen = 4;
    return( 0 );
}
static int ssl_write_encrypt_then_mac_ext00( mbedtls_ssl_context *ssl,
                                           unsigned char *buf,
                                           const unsigned char *end,
                                           size_t *olen )
{
    unsigned char *p = buf;
    *olen = 0;
    if( ssl->conf->encrypt_then_mac == 0 ||
        ssl->conf->max_minor_ver == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 607, "client hello, adding encrypt_then_mac extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 4 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 22 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 22 ) & 0xFF );
    *p++ = 0x00;
    *p++ = 0x00;
    *olen = 4;
    return( 0 );
}
static int ssl_write_extended_ms_ext00( mbedtls_ssl_context *ssl,
                                      unsigned char *buf,
                                      const unsigned char *end,
                                      size_t *olen )
{
    unsigned char *p = buf;
    *olen = 0;
    if( ssl->conf->extended_ms == 0 ||
        ssl->conf->max_minor_ver == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 638, "client hello, adding extended_master_secret extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 4 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 0x0017 >> 8 )
                            & 0xFF );
    *p++ = (unsigned char)( ( 0x0017 )
                            & 0xFF );
    *p++ = 0x00;
    *p++ = 0x00;
    *olen = 4;
    return( 0 );
}
static int ssl_write_session_ticket_ext00( mbedtls_ssl_context *ssl,
                                         unsigned char *buf,
                                         const unsigned char *end,
                                         size_t *olen )
{
    unsigned char *p = buf;
    size_t tlen = ssl->session_negotiate->ticket_len;
    *olen = 0;
    if( ssl->conf->session_tickets == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 671, "client hello, adding session ticket extension" );
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 4 + tlen ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 35 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 35 ) & 0xFF );
    *p++ = (unsigned char)( ( tlen >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( tlen ) & 0xFF );
    *olen = 4;
    if( ssl->session_negotiate->ticket == ((void*)0) || tlen == 0 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 688, "sending session ticket of length %d", tlen );
    memcpy( p, ssl->session_negotiate->ticket, tlen );
    *olen += tlen;
    return( 0 );
}
static int ssl_write_alpn_ext00( mbedtls_ssl_context *ssl,
                               unsigned char *buf,
                               const unsigned char *end,
                               size_t *olen )
{
    unsigned char *p = buf;
    size_t alpnlen = 0;
    const char **cur;
    *olen = 0;
    if( ssl->conf->alpn_list == ((void*)0) )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 713, "client hello, adding alpn extension" );
    for( cur = ssl->conf->alpn_list; *cur != ((void*)0); cur++ )
        alpnlen += strlen( *cur ) + 1;
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 6 + alpnlen ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    *p++ = (unsigned char)( ( 16 >> 8 ) & 0xFF );
    *p++ = (unsigned char)( ( 16 ) & 0xFF );
    p += 4;
    for( cur = ssl->conf->alpn_list; *cur != ((void*)0); cur++ )
    {
        *p = (unsigned char)strlen( *cur );
        memcpy( p + 1, *cur, *p );
        p += 1 + *p;
    }
    *olen = p - buf;
    buf[4] = (unsigned char)( ( ( *olen - 6 ) >> 8 ) & 0xFF );
    buf[5] = (unsigned char)( ( ( *olen - 6 ) ) & 0xFF );
    buf[2] = (unsigned char)( ( ( *olen - 4 ) >> 8 ) & 0xFF );
    buf[3] = (unsigned char)( ( ( *olen - 4 ) ) & 0xFF );
    return( 0 );
}
static int ssl_generate_random( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    unsigned char *p = ssl->handshake->randbytes;
    mbedtls_time_t t;
    if( ssl->conf->transport == 1 &&
        ssl->handshake->verify_cookie != ((void*)0) )
    {
        return( 0 );
    }
    t = time( ((void*)0) );
    *p++ = (unsigned char)( t >> 24 );
    *p++ = (unsigned char)( t >> 16 );
    *p++ = (unsigned char)( t >> 8 );
    *p++ = (unsigned char)( t );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 788, "client hello, current time: %lu", t );
    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p, 28 ) ) != 0 )
        return( ret );
    return( 0 );
}
static int ssl_validate_ciphersuite(
    const mbedtls_ssl_ciphersuite_t * suite_info,
    const mbedtls_ssl_context * ssl,
    int min_minor_ver, int max_minor_ver )
{
    (void) ssl;
    if( suite_info == ((void*)0) )
        return( 1 );
    if( suite_info->min_minor_ver > max_minor_ver ||
            suite_info->max_minor_ver < min_minor_ver )
        return( 1 );
    if( ssl->conf->transport == 1 &&
            ( suite_info->flags & 0x04 ) )
        return( 1 );
    if( ssl->conf->arc4_disabled == 1 &&
            suite_info->cipher == MBEDTLS_CIPHER_ARC4_128 )
        return( 1 );
    if( mbedtls_ssl_ciphersuite_uses_psk( suite_info ) &&
        ssl_conf_has_static_psk( ssl->conf ) == 0 )
    {
        return( 1 );
    }
    return( 0 );
}
static int ssl_write_client_hello( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    size_t i, n, olen, ext_len = 0;
    unsigned char *buf;
    unsigned char *p, *q;
    const unsigned char *end;
    unsigned char offer_compress;
    const int *ciphersuites;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;
    int uses_ec = 0;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 872, "=> write client hello" );
    if( ssl->conf->f_rng == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 876, "no RNG provided" );
        return( -0x7400 );
    }
    if( ssl->renego_status == 0 )
    {
        ssl->major_ver = ssl->conf->min_major_ver;
        ssl->minor_ver = ssl->conf->min_minor_ver;
    }
    if( ssl->conf->max_major_ver == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 891, "configured max major version is invalid, consider using mbedtls_ssl_config_defaults()" );
        return( -0x7100 );
    }
    buf = ssl->out_msg;
    end = buf + 16384;
    do { if( mbedtls_ssl_chk_buf_ptr( ( buf ), ( end ), ( 38 + 1 + 32 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    p = buf + 4;
    mbedtls_ssl_write_version( ssl->conf->max_major_ver,
                               ssl->conf->max_minor_ver,
                               ssl->conf->transport, p );
    p += 2;
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 928, "client hello, max version: [%d:%d]", buf[4], buf[5] );
    if( ( ret = ssl_generate_random( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 932, "ssl_generate_random", ret );
        return( ret );
    }
    memcpy( p, ssl->handshake->randbytes, 32 );
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 937, "client hello, random bytes", p, 32 );
    p += 32;
    n = ssl->session_negotiate->id_len;
    if( n < 16 || n > 32 ||
        ssl->renego_status != 0 ||
        ssl->handshake->resume == 0 )
    {
        n = 0;
    }
    if( ssl->renego_status == 0 )
    {
        if( ssl->session_negotiate->ticket != ((void*)0) &&
                ssl->session_negotiate->ticket_len != 0 )
        {
            ret = ssl->conf->f_rng( ssl->conf->p_rng,
                                    ssl->session_negotiate->id, 32 );
            if( ret != 0 )
                return( ret );
            ssl->session_negotiate->id_len = n = 32;
        }
    }
    *p++ = (unsigned char) n;
    for( i = 0; i < n; i++ )
        *p++ = ssl->session_negotiate->id[i];
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 997, "client hello, session id len.: %d", n );
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 998, "client hello, session id", buf + 39, n );
    if( ssl->conf->transport == 1 )
    {
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 1 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        if( ssl->handshake->verify_cookie == ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1023, "no verify cookie to send" );
            *p++ = 0;
        }
        else
        {
            mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 1030, "client hello, cookie", ssl->handshake->verify_cookie, ssl->handshake->verify_cookie_len );
            *p++ = ssl->handshake->verify_cookie_len;
            do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( ssl->handshake->verify_cookie_len ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
            memcpy( p, ssl->handshake->verify_cookie,
                       ssl->handshake->verify_cookie_len );
            p += ssl->handshake->verify_cookie_len;
        }
    }
    ciphersuites = ssl->conf->ciphersuite_list[ssl->minor_ver];
    n = 0;
    q = p;
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    p += 2;
    for( i = 0; ciphersuites[i] != 0; i++ )
    {
        ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( ciphersuites[i] );
        if( ssl_validate_ciphersuite( ciphersuite_info, ssl,
                                      ssl->conf->min_minor_ver,
                                      ssl->conf->max_minor_ver ) != 0 )
            continue;
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1065, "client hello, add ciphersuite: %#04x (%s)", ciphersuites[i], ciphersuite_info->name );
        uses_ec |= mbedtls_ssl_ciphersuite_uses_ec( ciphersuite_info );
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        n++;
        *p++ = (unsigned char)( ciphersuites[i] >> 8 );
        *p++ = (unsigned char)( ciphersuites[i] );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1080, "client hello, got %d ciphersuites (excluding SCSVs)", n );
    if( ssl->renego_status == 0 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1089, "adding EMPTY_RENEGOTIATION_INFO_SCSV" );
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        *p++ = (unsigned char)( 0xFF >> 8 );
        *p++ = (unsigned char)( 0xFF );
        n++;
    }
    if( ssl->conf->fallback == 1 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1100, "adding FALLBACK_SCSV" );
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        *p++ = (unsigned char)( 0x5600 >> 8 );
        *p++ = (unsigned char)( 0x5600 );
        n++;
    }
    *q++ = (unsigned char)( n >> 7 );
    *q++ = (unsigned char)( n << 1 );
    offer_compress = 0;
    if( ssl->conf->transport == 1 )
        offer_compress = 0;
    if( offer_compress )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1131, "client hello, compress len.: %d", 2 );
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1134, "client hello, compress alg.: %d %d", 1, 0 );
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 3 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        *p++ = 2;
        *p++ = 1;
        *p++ = 0;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1143, "client hello, compress len.: %d", 1 );
        mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1145, "client hello, compress alg.: %d", 0 );
        do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
        *p++ = 1;
        *p++ = 0;
    }
    do { if( mbedtls_ssl_chk_buf_ptr( ( p ), ( end ), ( 2 ) ) != 0 ) { return( -0x6A00 ); } } while( 0 );
    if( ( ret = ssl_write_hostname_ext( ssl, p + 2 + ext_len,
                                        end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1160, "ssl_write_hostname_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_renegotiation_ext00( ssl, p + 2 + ext_len,
                                             end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1172, "ssl_write_renegotiation_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_signature_algorithms_ext( ssl, p + 2 + ext_len,
                                                    end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1183, "ssl_write_signature_algorithms_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( uses_ec )
    {
        if( ( ret = ssl_write_supported_elliptic_curves_ext( ssl, p + 2 + ext_len,
                                                             end, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1196, "ssl_write_supported_elliptic_curves_ext", ret );
            return( ret );
        }
        ext_len += olen;
        if( ( ret = ssl_write_supported_point_formats_ext00( ssl, p + 2 + ext_len,
                                                           end, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1204, "ssl_write_supported_point_formats_ext", ret );
            return( ret );
        }
        ext_len += olen;
    }
    if( ( ret = ssl_write_max_fragment_length_ext00( ssl, p + 2 + ext_len,
                                                   end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1234, "ssl_write_max_fragment_length_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_truncated_hmac_ext00( ssl, p + 2 + ext_len,
                                              end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1244, "ssl_write_truncated_hmac_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_encrypt_then_mac_ext00( ssl, p + 2 + ext_len,
                                                end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1254, "ssl_write_encrypt_then_mac_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_extended_ms_ext00( ssl, p + 2 + ext_len,
                                           end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1264, "ssl_write_extended_ms_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_alpn_ext00( ssl, p + 2 + ext_len,
                                    end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1274, "ssl_write_alpn_ext", ret );
        return( ret );
    }
    ext_len += olen;
    if( ( ret = ssl_write_session_ticket_ext00( ssl, p + 2 + ext_len,
                                              end, &olen ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1284, "ssl_write_session_ticket_ext", ret );
        return( ret );
    }
    ext_len += olen;
    ((void) olen);
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1294, "client hello, total extension length: %d", ext_len );
    if( ext_len > 0 )
    {
        *p++ = (unsigned char)( ( ext_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ext_len ) & 0xFF );
        p += ext_len;
    }
    ssl->out_msglen = p - buf;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 1;
    ssl->state++;
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_send_flight_completed( ssl );
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1318, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    if( ssl->conf->transport == 1 &&
        ( ret = mbedtls_ssl_flight_transmit( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1326, "mbedtls_ssl_flight_transmit", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1331, "<= write client hello" );
    return( 0 );
}
static int ssl_parse_renegotiation_info00( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->renego_status != 0 )
    {
        if( len != 1 + ssl->verify_data_len * 2 ||
            buf[0] != ssl->verify_data_len * 2 ||
            mbedtls_ssl_safer_memcmp( buf + 1,
                          ssl->own_verify_data, ssl->verify_data_len ) != 0 ||
            mbedtls_ssl_safer_memcmp( buf + 1 + ssl->verify_data_len,
                          ssl->peer_verify_data, ssl->verify_data_len ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1351, "non-matching renegotiation info" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                40 );
            return( -0x7980 );
        }
    }
    else
    {
        if( len != 1 || buf[0] != 0x00 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1365, "non-zero length renegotiation info" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                40 );
            return( -0x7980 );
        }
        ssl->secure_renegotiation = 1;
    }
    return( 0 );
}
static int ssl_parse_max_fragment_length_ext00( mbedtls_ssl_context *ssl,
                                              const unsigned char *buf,
                                              size_t len )
{
    if( ssl->conf->mfl_code == 0 ||
        len != 1 ||
        buf[0] != ssl->conf->mfl_code )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1393, "non-matching max fragment length extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    return( 0 );
}
static int ssl_parse_truncated_hmac_ext00( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->trunc_hmac == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1414, "non-matching truncated HMAC extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    ((void) buf);
    ssl->session_negotiate->trunc_hmac = 1;
    return( 0 );
}
static int ssl_parse_encrypt_then_mac_ext00( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->encrypt_then_mac == 0 ||
        ssl->minor_ver == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1496, "non-matching encrypt-then-MAC extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    ((void) buf);
    ssl->session_negotiate->encrypt_then_mac = 1;
    return( 0 );
}
static int ssl_parse_extended_ms_ext00( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->extended_ms == 0 ||
        ssl->minor_ver == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1522, "non-matching extended master secret extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    ((void) buf);
    ssl->handshake->extended_ms = 1;
    return( 0 );
}
static int ssl_parse_session_ticket_ext00( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->session_tickets == 0 ||
        len != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1547, "non-matching session ticket extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    ((void) buf);
    ssl->handshake->new_session_ticket = 1;
    return( 0 );
}
static int ssl_parse_supported_point_formats_ext( mbedtls_ssl_context *ssl,
                                                  const unsigned char *buf,
                                                  size_t len )
{
    size_t list_size;
    const unsigned char *p;
    if( len == 0 || (size_t)( buf[0] + 1 ) != len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1574, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    list_size = buf[0];
    p = buf + 1;
    while( list_size > 0 )
    {
        if( p[0] == 0 ||
            p[0] == 1 )
        {
            ssl->handshake->ecdh_ctx.point_format = p[0];
            mbedtls_debug_print_msg( ssl, 4, "ssl_cli.c", 1593, "point format selected: %d", p[0] );
            return( 0 );
        }
        list_size--;
        p++;
    }
    mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1601, "no point format in common" );
    mbedtls_ssl_send_alert_message( ssl, 2,
                                    40 );
    return( -0x7980 );
}
static int ssl_parse_alpn_ext00( mbedtls_ssl_context *ssl,
                               const unsigned char *buf, size_t len )
{
    size_t list_len, name_len;
    const char **p;
    if( ssl->conf->alpn_list == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1653, "non-matching ALPN extension" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    if( len < 4 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    list_len = ( buf[0] << 8 ) | buf[1];
    if( list_len != len - 2 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    name_len = buf[2];
    if( name_len != list_len - 1 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    for( p = ssl->conf->alpn_list; *p != ((void*)0); p++ )
    {
        if( name_len == strlen( *p ) &&
            memcmp( buf + 3, *p, name_len ) == 0 )
        {
            ssl->alpn_chosen = *p;
            return( 0 );
        }
    }
    mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1706, "ALPN extension: no matching protocol" );
    mbedtls_ssl_send_alert_message( ssl, 2,
                                    40 );
    return( -0x7980 );
}
static int ssl_parse_hello_verify_request( mbedtls_ssl_context *ssl )
{
    const unsigned char *p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    int major_ver, minor_ver;
    unsigned char cookie_len;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1723, "=> parse hello verify request" );
    if( mbedtls_ssl_hs_hdr_len( ssl ) + 3 > ssl->in_msglen )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1732, "incoming HelloVerifyRequest message is too short" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                    50 );
        return( -0x7980 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 1744, "server version", p, 2 );
    mbedtls_ssl_read_version( &major_ver, &minor_ver, ssl->conf->transport, p );
    p += 2;
    if( major_ver < 3 ||
        minor_ver < 2 ||
        major_ver > ssl->conf->max_major_ver ||
        minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1757, "bad server version" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                     70 );
        return( -0x6E80 );
    }
    cookie_len = *p++;
    if( ( ssl->in_msg + ssl->in_msglen ) - p < cookie_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1769, "cookie length does not match incoming message size" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                    50 );
        return( -0x7980 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 1774, "cookie", p, cookie_len );
    free( ssl->handshake->verify_cookie );
    ssl->handshake->verify_cookie = calloc( 1, cookie_len );
    if( ssl->handshake->verify_cookie == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1781, "alloc failed (%d bytes)", cookie_len );
        return( -0x7F00 );
    }
    memcpy( ssl->handshake->verify_cookie, p, cookie_len );
    ssl->handshake->verify_cookie_len = cookie_len;
    ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
    mbedtls_ssl_reset_checksum( ssl );
    mbedtls_ssl_recv_flight_completed( ssl );
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1794, "<= parse hello verify request" );
    return( 0 );
}
static int ssl_parse_server_hello( mbedtls_ssl_context *ssl )
{
    int ret, i;
    size_t n;
    size_t ext_len;
    unsigned char *buf, *ext;
    unsigned char comp;
    int renegotiation_info_seen = 0;
    int handshake_failure = 0;
    const mbedtls_ssl_ciphersuite_t *suite_info;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1816, "=> parse server hello" );
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 1821, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    buf = ssl->in_msg;
    if( ssl->in_msgtype != 22 )
    {
        if( ssl->renego_status == 1 )
        {
            ssl->renego_records_seen++;
            if( ssl->conf->renego_max_records >= 0 &&
                ssl->renego_records_seen > ssl->conf->renego_max_records )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1838, "renegotiation requested, but not honored by server" );
                return( -0x7700 );
            }
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1843, "non-handshake message during renegotiation" );
            ssl->keep_current_message = 1;
            return( -0x6B00 );
        }
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1850, "bad server hello message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            10 );
        return( -0x7700 );
    }
    if( ssl->conf->transport == 1 )
    {
        if( buf[0] == 3 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1863, "received hello verify request" );
            mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 1864, "<= parse server hello" );
            return( ssl_parse_hello_verify_request( ssl ) );
        }
        else
        {
            free( ssl->handshake->verify_cookie );
            ssl->handshake->verify_cookie = ((void*)0);
            ssl->handshake->verify_cookie_len = 0;
        }
    }
    if( ssl->in_hslen < 38 + mbedtls_ssl_hs_hdr_len( ssl ) ||
        buf[0] != 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1880, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    buf += mbedtls_ssl_hs_hdr_len( ssl );
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 1899, "server hello, version", buf + 0, 2 );
    mbedtls_ssl_read_version( &ssl->major_ver, &ssl->minor_ver,
                      ssl->conf->transport, buf + 0 );
    if( ssl->major_ver < ssl->conf->min_major_ver ||
        ssl->minor_ver < ssl->conf->min_minor_ver ||
        ssl->major_ver > ssl->conf->max_major_ver ||
        ssl->minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1914, "server version out of bounds -  min: [%d:%d], server: [%d:%d], max: [%d:%d]", ssl->conf->min_major_ver, ssl->conf->min_minor_ver, ssl->major_ver, ssl->minor_ver, ssl->conf->max_major_ver, ssl->conf->max_minor_ver );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                     70 );
        return( -0x6E80 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 1926, "server hello, current time: %lu", ( (uint32_t) buf[2] << 24 ) | ( (uint32_t) buf[3] << 16 ) | ( (uint32_t) buf[4] << 8 ) | ( (uint32_t) buf[5] ) );
    memcpy( ssl->handshake->randbytes + 32, buf + 2, 32 );
    n = buf[34];
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 1932, "server hello, random bytes", buf + 2, 32 );
    if( n > 32 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1936, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    if( ssl->in_hslen > mbedtls_ssl_hs_hdr_len( ssl ) + 39 + n )
    {
        ext_len = ( ( buf[38 + n] << 8 )
                  | ( buf[39 + n] ) );
        if( ( ext_len > 0 && ext_len < 4 ) ||
            ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + 40 + n + ext_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1950, "bad server hello message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                50 );
            return( -0x7980 );
        }
    }
    else if( ssl->in_hslen == mbedtls_ssl_hs_hdr_len( ssl ) + 38 + n )
    {
        ext_len = 0;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1964, "bad server hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7980 );
    }
    i = ( buf[35 + n] << 8 ) | buf[36 + n];
    comp = buf[37 + n];
    if( comp != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 1994, "server hello, bad compression: %d", comp );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            47 );
        return( -0x7080 );
    }
    ssl->handshake->ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( i );
    if( ssl->handshake->ciphersuite_info == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2009, "ciphersuite info for %04x not found", i );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
        return( -0x7100 );
    }
    mbedtls_ssl_optimize_checksum( ssl, ssl->handshake->ciphersuite_info );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2017, "server hello, session id len.: %d", n );
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 2018, "server hello, session id", buf + 35, n );
    if( ssl->handshake->resume == 0 || n == 0 ||
        ssl->renego_status != 0 ||
        ssl->session_negotiate->ciphersuite != i ||
        ssl->session_negotiate->compression != comp ||
        ssl->session_negotiate->id_len != n ||
        memcmp( ssl->session_negotiate->id, buf + 35, n ) != 0 )
    {
        ssl->state++;
        ssl->handshake->resume = 0;
        ssl->session_negotiate->start = time( ((void*)0) );
        ssl->session_negotiate->ciphersuite = i;
        ssl->session_negotiate->compression = comp;
        ssl->session_negotiate->id_len = n;
        memcpy( ssl->session_negotiate->id, buf + 35, n );
    }
    else
    {
        ssl->state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;
        if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2048, "mbedtls_ssl_derive_keys", ret );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                80 );
            return( ret );
        }
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2058, "%s session has been resumed", ssl->handshake->resume ? "a" : "no" );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2060, "server hello, chosen ciphersuite: %04x", i );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2062, "server hello, compress alg.: %d", buf[37 + n] );
    i = 0;
    while( 1 )
    {
        if( ssl->conf->ciphersuite_list[ssl->minor_ver][i] == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2072, "bad server hello message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                47 );
            return( -0x7980 );
        }
        if( ssl->conf->ciphersuite_list[ssl->minor_ver][i++] ==
            ssl->session_negotiate->ciphersuite )
        {
            break;
        }
    }
    suite_info = mbedtls_ssl_ciphersuite_from_id(
        ssl->session_negotiate->ciphersuite );
    if( ssl_validate_ciphersuite( suite_info, ssl, ssl->minor_ver,
                                  ssl->minor_ver ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2092, "bad server hello message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            47 );
        return( -0x7980 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2101, "server hello, chosen ciphersuite: %s", suite_info->name );
    if( comp != 0
      )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2117, "bad server hello message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            47 );
        return( -0x7980 );
    }
    ssl->session_negotiate->compression = comp;
    ext = buf + 40 + n;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2129, "server hello, total extension length: %d", ext_len );
    while( ext_len )
    {
        unsigned int ext_id = ( ( ext[0] << 8 )
                                | ( ext[1] ) );
        unsigned int ext_size = ( ( ext[2] << 8 )
                                | ( ext[3] ) );
        if( ext_size + 4 > ext_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2140, "bad server hello message" );
            mbedtls_ssl_send_alert_message(
                ssl, 2,
                50 );
            return( -0x7980 );
        }
        switch( ext_id )
        {
        case 0xFF01:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2150, "found renegotiation extension" );
            renegotiation_info_seen = 1;
            if( ( ret = ssl_parse_renegotiation_info00( ssl, ext + 4,
                                                      ext_size ) ) != 0 )
                return( ret );
            break;
        case 1:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2164, "found max_fragment_length extension" );
            if( ( ret = ssl_parse_max_fragment_length_ext00( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 4:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2177, "found truncated_hmac extension" );
            if( ( ret = ssl_parse_truncated_hmac_ext00( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 22:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2204, "found encrypt_then_mac extension" );
            if( ( ret = ssl_parse_encrypt_then_mac_ext00( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 0x0017:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2218, "found extended_master_secret extension" );
            if( ( ret = ssl_parse_extended_ms_ext00( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 35:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2231, "found session_ticket extension" );
            if( ( ret = ssl_parse_session_ticket_ext00( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 11:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2246, "found supported_point_formats extension" );
            if( ( ret = ssl_parse_supported_point_formats_ext( ssl,
                            ext + 4, ext_size ) ) != 0 )
            {
                return( ret );
            }
            break;
        case 16:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2273, "found alpn extension" );
            if( ( ret = ssl_parse_alpn_ext00( ssl, ext + 4, ext_size ) ) != 0 )
                return( ret );
            break;
        default:
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 2283, "unknown extension found: %d (ignoring)", ext_id );
        }
        ext_len -= 4 + ext_size;
        ext += 4 + ext_size;
        if( ext_len > 0 && ext_len < 4 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2291, "bad server hello message" );
            return( -0x7980 );
        }
    }
    if( ssl->secure_renegotiation == 0 &&
        ssl->conf->allow_legacy_renegotiation ==
        2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2304, "legacy renegotiation, breaking off handshake" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 1 &&
             renegotiation_info_seen == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2313, "renegotiation_info extension missing (secure)" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             ssl->conf->allow_legacy_renegotiation ==
             0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2321, "legacy renegotiation not allowed" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             renegotiation_info_seen == 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2329, "renegotiation_info extension present (legacy)" );
        handshake_failure = 1;
    }
    if( handshake_failure == 1 )
    {
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            40 );
        return( -0x7980 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2343, "<= parse server hello" );
    return( 0 );
}
static int ssl_parse_server_dh_params( mbedtls_ssl_context *ssl,
                                       unsigned char **p,
                                       unsigned char *end )
{
    int ret = -0x7080;
    if( ( ret = mbedtls_dhm_read_params( &ssl->handshake->dhm_ctx,
                                         p, end ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 2, "ssl_cli.c", 2368, ( "mbedtls_dhm_read_params" ), ret );
        return( ret );
    }
    if( ssl->handshake->dhm_ctx.len * 8 < ssl->conf->dhm_min_bitlen )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2376, "DHM prime too short: %d < %d", ssl->handshake->dhm_ctx.len * 8, ssl->conf->dhm_min_bitlen );
        return( -0x7B00 );
    }
    mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 2380, "DHM: P ", &ssl->handshake->dhm_ctx.P );
    mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 2381, "DHM: G ", &ssl->handshake->dhm_ctx.G );
    mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 2382, "DHM: GY", &ssl->handshake->dhm_ctx.GY );
    return( ret );
}
static int ssl_check_server_ecdh_params( const mbedtls_ssl_context *ssl )
{
    const mbedtls_ecp_curve_info *curve_info;
    mbedtls_ecp_group_id grp_id;
    grp_id = ssl->handshake->ecdh_ctx.grp.id;
    curve_info = mbedtls_ecp_curve_info_from_grp_id( grp_id );
    if( curve_info == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2407, "should never happen" );
        return( -0x6C00 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2411, "ECDH curve: %s", curve_info->name );
    if( mbedtls_ssl_check_curve( ssl, grp_id ) != 0 )
        return( -1 );
    mbedtls_debug_printf_ecdh( ssl, 3, "ssl_cli.c", 2422, &ssl->handshake->ecdh_ctx, MBEDTLS_DEBUG_ECDH_QP );
    return( 0 );
}
static int ssl_parse_server_ecdh_params( mbedtls_ssl_context *ssl,
                                         unsigned char **p,
                                         unsigned char *end )
{
    int ret = -0x7080;
    if( ( ret = mbedtls_ecdh_read_params( &ssl->handshake->ecdh_ctx,
                                  (const unsigned char **) p, end ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2514, ( "mbedtls_ecdh_read_params" ), ret );
        return( ret );
    }
    if( ssl_check_server_ecdh_params( ssl ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2525, "bad server key exchange message (ECDHE curve)" );
        return( -0x7B00 );
    }
    return( ret );
}
static int ssl_parse_server_psk_hint( mbedtls_ssl_context *ssl,
                                      unsigned char **p,
                                      unsigned char *end )
{
    int ret = -0x7080;
    uint16_t len;
    ((void) ssl);
    if( end - (*p) < 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2552, "bad server key exchange message (psk_identity_hint length)" );
        return( -0x7B00 );
    }
    len = (*p)[0] << 8 | (*p)[1];
    *p += 2;
    if( end - (*p) < len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2561, "bad server key exchange message (psk_identity_hint length)" );
        return( -0x7B00 );
    }
    *p += len;
    ret = 0;
    return( ret );
}
static int ssl_write_encrypted_pms( mbedtls_ssl_context *ssl,
                                    size_t offset, size_t *olen,
                                    size_t pms_offset )
{
    int ret = -0x006E;
    size_t len_bytes = ssl->minor_ver == 0 ? 0 : 2;
    unsigned char *p = ssl->handshake->premaster + pms_offset;
    mbedtls_pk_context * peer_pk;
    if( offset + len_bytes > 16384 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2593, "buffer too small for encrypted pms" );
        return( -0x6A00 );
    }
    mbedtls_ssl_write_version( ssl->conf->max_major_ver,
                               ssl->conf->max_minor_ver,
                               ssl->conf->transport, p );
    if( ( ret = ssl->conf->f_rng( ssl->conf->p_rng, p + 2, 46 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2610, "f_rng", ret );
        return( ret );
    }
    ssl->handshake->pmslen = 48;
    if( ssl->session_negotiate->peer_cert == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2622, "should never happen" );
        return( -0x6C00 );
    }
    peer_pk = &ssl->session_negotiate->peer_cert->pk;
    if( ! mbedtls_pk_can_do( peer_pk, MBEDTLS_PK_RSA ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2633, "certificate key type mismatch" );
        return( -0x6D00 );
    }
    if( ( ret = mbedtls_pk_encrypt( peer_pk,
                            p, ssl->handshake->pmslen,
                            ssl->out_msg + offset + len_bytes, olen,
                            16384 - offset - len_bytes,
                            ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2643, "mbedtls_rsa_pkcs1_encrypt", ret );
        return( ret );
    }
    if( len_bytes == 2 )
    {
        ssl->out_msg[offset+0] = (unsigned char)( *olen >> 8 );
        ssl->out_msg[offset+1] = (unsigned char)( *olen );
        *olen += 2;
    }
    return( 0 );
}
static int ssl_parse_signature_algorithm( mbedtls_ssl_context *ssl,
                                          unsigned char **p,
                                          unsigned char *end,
                                          mbedtls_md_type_t *md_alg,
                                          mbedtls_pk_type_t *pk_alg )
{
    ((void) ssl);
    *md_alg = MBEDTLS_MD_NONE;
    *pk_alg = MBEDTLS_PK_NONE;
    if( ssl->minor_ver != 3 )
    {
        return( 0 );
    }
    if( (*p) + 2 > end )
        return( -0x7B00 );
    if( ( *md_alg = mbedtls_ssl_md_alg_from_hash( (*p)[0] ) )
        == MBEDTLS_MD_NONE )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2696, "Server used unsupported HashAlgorithm %d", *(p)[0] );
        return( -0x7B00 );
    }
    if( ( *pk_alg = mbedtls_ssl_pk_alg_from_sig( (*p)[1] ) )
        == MBEDTLS_PK_NONE )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2707, "server used unsupported SignatureAlgorithm %d", (*p)[1] );
        return( -0x7B00 );
    }
    if( mbedtls_ssl_check_sig_hash( ssl, *md_alg ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2717, "server used HashAlgorithm %d that was not offered", *(p)[0] );
        return( -0x7B00 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2722, "Server used SignatureAlgorithm %d", (*p)[1] );
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2724, "Server used HashAlgorithm %d", (*p)[0] );
    *p += 2;
    return( 0 );
}
static int ssl_get_ecdh_params_from_cert00( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    const mbedtls_ecp_keypair *peer_key;
    mbedtls_pk_context * peer_pk;
    if( ssl->session_negotiate->peer_cert == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2748, "should never happen" );
        return( -0x6C00 );
    }
    peer_pk = &ssl->session_negotiate->peer_cert->pk;
    if( ! mbedtls_pk_can_do( peer_pk, MBEDTLS_PK_ECKEY ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2756, "server key not ECDH capable" );
        return( -0x6D00 );
    }
    peer_key = mbedtls_pk_ec( *peer_pk );
    if( ( ret = mbedtls_ecdh_get_params( &ssl->handshake->ecdh_ctx, peer_key,
                                 MBEDTLS_ECDH_THEIRS ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2765, ( "mbedtls_ecdh_get_params" ), ret );
        return( ret );
    }
    if( ssl_check_server_ecdh_params( ssl ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2771, "bad server certificate (ECDH curve)" );
        return( -0x7A00 );
    }
    return( ret );
}
static int ssl_parse_server_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    unsigned char *p = ((void*)0), *end = ((void*)0);
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2794, "=> parse server key exchange" );
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2799, "<= skip parse server key exchange" );
        ssl->state++;
        return( 0 );
    }
    ((void) p);
    ((void) end);
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA )
    {
        if( ( ret = ssl_get_ecdh_params_from_cert00( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2814, "ssl_get_ecdh_params_from_cert", ret );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                40 );
            return( ret );
        }
        mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 2822, "<= skip parse server key exchange" );
        ssl->state++;
        return( 0 );
    }
    ((void) p);
    ((void) end);
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 2841, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2847, "bad server key exchange message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            10 );
        return( -0x7700 );
    }
    if( ssl->in_msg[0] != 12 )
    {
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
            ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        {
            ssl->keep_current_message = 1;
            goto exit;
        }
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2871, "server key exchange message must not be skipped" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            10 );
        return( -0x7700 );
    }
    p = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    end = ssl->in_msg + ssl->in_hslen;
    mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 2888, "server key exchange", p, end - p );
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
    {
        if( ssl_parse_server_psk_hint( ssl, &p, end ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2898, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                47 );
            return( -0x7B00 );
        }
    }
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        ;
    else
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK )
    {
        if( ssl_parse_server_dh_params( ssl, &p, end ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2923, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                47 );
            return( -0x7B00 );
        }
    }
    else
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA )
    {
        if( ssl_parse_server_ecdh_params( ssl, &p, end ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2963, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                47 );
            return( -0x7B00 );
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 2993, "should never happen" );
        return( -0x6C00 );
    }
    if( mbedtls_ssl_ciphersuite_uses_server_signature( ciphersuite_info ) )
    {
        size_t sig_len, hashlen;
        unsigned char hash[64];
        mbedtls_md_type_t md_alg = MBEDTLS_MD_NONE;
        mbedtls_pk_type_t pk_alg = MBEDTLS_PK_NONE;
        unsigned char *params = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
        size_t params_len = p - params;
        void *rs_ctx = ((void*)0);
        mbedtls_pk_context * peer_pk;
        if( ssl->minor_ver == 3 )
        {
            if( ssl_parse_signature_algorithm( ssl, &p, end,
                                               &md_alg, &pk_alg ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3020, "bad server key exchange message" );
                mbedtls_ssl_send_alert_message(
                    ssl,
                    2,
                    47 );
                return( -0x7B00 );
            }
            if( pk_alg !=
                mbedtls_ssl_get_ciphersuite_sig_pk_alg( ciphersuite_info ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3032, "bad server key exchange message" );
                mbedtls_ssl_send_alert_message(
                    ssl,
                    2,
                    47 );
                return( -0x7B00 );
            }
        }
        else
        if( ssl->minor_ver < 3 )
        {
            pk_alg = mbedtls_ssl_get_ciphersuite_sig_pk_alg( ciphersuite_info );
            if( pk_alg == MBEDTLS_PK_ECDSA && md_alg == MBEDTLS_MD_NONE )
                md_alg = MBEDTLS_MD_SHA1;
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3055, "should never happen" );
            return( -0x6C00 );
        }
        if( p > end - 2 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3065, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                50 );
            return( -0x7B00 );
        }
        sig_len = ( p[0] << 8 ) | p[1];
        p += 2;
        if( p != end - sig_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3077, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                50 );
            return( -0x7B00 );
        }
        mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 3085, "signature", p, sig_len );
        if( md_alg == MBEDTLS_MD_NONE )
        {
            hashlen = 36;
            ret = mbedtls_ssl_get_key_exchange_md_ssl_tls( ssl, hash, params,
                                                           params_len );
            if( ret != 0 )
                return( ret );
        }
        else
        if( md_alg != MBEDTLS_MD_NONE )
        {
            ret = mbedtls_ssl_get_key_exchange_md_tls1_2( ssl, hash, &hashlen,
                                                          params, params_len,
                                                          md_alg );
            if( ret != 0 )
                return( ret );
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3117, "should never happen" );
            return( -0x6C00 );
        }
        mbedtls_debug_print_buf( ssl, 3, "ssl_cli.c", 3121, "parameters hash", hash, hashlen );
        if( ssl->session_negotiate->peer_cert == ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3129, "should never happen" );
            return( -0x6C00 );
        }
        peer_pk = &ssl->session_negotiate->peer_cert->pk;
        if( !mbedtls_pk_can_do( peer_pk, pk_alg ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3140, "bad server key exchange message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                40 );
            return( -0x6D00 );
        }
        if( ( ret = mbedtls_pk_verify_restartable( peer_pk,
                        md_alg, hash, hashlen, p, sig_len, rs_ctx ) ) != 0 )
        {
                mbedtls_ssl_send_alert_message(
                    ssl,
                    2,
                    51 );
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3163, "mbedtls_pk_verify", ret );
            return( ret );
        }
    }
exit:
    ssl->state++;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3183, "<= parse server key exchange" );
    return( 0 );
}
static int ssl_parse_certificate_request( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    unsigned char *buf;
    size_t n = 0;
    size_t cert_type_len = 0, dn_len = 0;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3216, "=> parse certificate request" );
    if( ! mbedtls_ssl_ciphersuite_cert_req_allowed( ciphersuite_info ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3220, "<= skip parse certificate request" );
        ssl->state++;
        return( 0 );
    }
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3227, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3233, "bad certificate request message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            10 );
        return( -0x7700 );
    }
    ssl->state++;
    ssl->client_auth = ( ssl->in_msg[0] == 13 );
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 3245, "got %s certificate request", ssl->client_auth ? "a" : "no" );
    if( ssl->client_auth == 0 )
    {
        ssl->keep_current_message = 1;
        goto exit;
    }
    buf = ssl->in_msg;
    if( ssl->in_hslen <= mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3283, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A80 );
    }
    cert_type_len = buf[mbedtls_ssl_hs_hdr_len( ssl )];
    n = cert_type_len;
    if( ssl->in_hslen <= mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3303, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A80 );
    }
    if( ssl->minor_ver == 3 )
    {
        size_t sig_alg_len =
            ( ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 1 + n] << 8 )
              | ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n] ) );
        unsigned char* sig_alg;
        size_t i;
        if( ssl->in_hslen <= mbedtls_ssl_hs_hdr_len( ssl )
                                + 3 + n + sig_alg_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3336, "bad certificate request message" );
            mbedtls_ssl_send_alert_message(
                ssl,
                2,
                50 );
            return( -0x7A80 );
        }
        sig_alg = buf + mbedtls_ssl_hs_hdr_len( ssl ) + 3 + n;
        for( i = 0; i < sig_alg_len; i += 2 )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 3350, "Supported Signature Algorithm found: %d,%d", sig_alg[i], sig_alg[i + 1] );
        }
        n += 2 + sig_alg_len;
    }
    dn_len = ( ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 1 + n] << 8 )
             | ( buf[mbedtls_ssl_hs_hdr_len( ssl ) + 2 + n] ) );
    n += dn_len;
    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + 3 + n )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3365, "bad certificate request message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A80 );
    }
exit:
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3372, "<= parse certificate request" );
    return( 0 );
}
static int ssl_parse_server_hello_done( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3382, "=> parse server hello done" );
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3386, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3392, "bad server hello done message" );
        return( -0x7700 );
    }
    if( ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) ||
        ssl->in_msg[0] != 14 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3399, "bad server hello done message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7B80 );
    }
    ssl->state++;
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_recv_flight_completed( ssl );
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3412, "<= parse server hello done" );
    return( 0 );
}
static int ssl_write_client_key_exchange( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    size_t header_len;
    size_t content_len;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3426, "=> write client key exchange" );
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_RSA )
    {
        content_len = ssl->handshake->dhm_ctx.len;
        ssl->out_msg[4] = (unsigned char)( content_len >> 8 );
        ssl->out_msg[5] = (unsigned char)( content_len );
        header_len = 6;
        ret = mbedtls_dhm_make_public( &ssl->handshake->dhm_ctx,
                          (int) mbedtls_mpi_size( &ssl->handshake->dhm_ctx.P ),
                          &ssl->out_msg[header_len], content_len,
                          ssl->conf->f_rng, ssl->conf->p_rng );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3446, "mbedtls_dhm_make_public", ret );
            return( ret );
        }
        mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 3450, "DHM: X ", &ssl->handshake->dhm_ctx.X );
        mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 3451, "DHM: GX", &ssl->handshake->dhm_ctx.GX );
        if( ( ret = mbedtls_dhm_calc_secret( &ssl->handshake->dhm_ctx,
                                  ssl->handshake->premaster,
                                  sizeof( union mbedtls_ssl_premaster_secret ),
                                  &ssl->handshake->pmslen,
                                  ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3459, "mbedtls_dhm_calc_secret", ret );
            return( ret );
        }
        mbedtls_debug_print_mpi( ssl, 3, "ssl_cli.c", 3463, "DHM: K ", &ssl->handshake->dhm_ctx.K );
    }
    else
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_RSA ||
        ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA )
    {
        header_len = 4;
        ret = mbedtls_ecdh_make_public( &ssl->handshake->ecdh_ctx,
                                &content_len,
                                &ssl->out_msg[header_len], 1000,
                                ssl->conf->f_rng, ssl->conf->p_rng );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3584, "mbedtls_ecdh_make_public", ret );
            return( ret );
        }
        mbedtls_debug_printf_ecdh( ssl, 3, "ssl_cli.c", 3593, &ssl->handshake->ecdh_ctx, MBEDTLS_DEBUG_ECDH_Q );
        if( ( ret = mbedtls_ecdh_calc_secret( &ssl->handshake->ecdh_ctx,
                                  &ssl->handshake->pmslen,
                                  ssl->handshake->premaster,
                                  1024,
                                  ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3612, "mbedtls_ecdh_calc_secret", ret );
            return( ret );
        }
        mbedtls_debug_printf_ecdh( ssl, 3, "ssl_cli.c", 3621, &ssl->handshake->ecdh_ctx, MBEDTLS_DEBUG_ECDH_Z );
    }
    else
    if( mbedtls_ssl_ciphersuite_uses_psk( ciphersuite_info ) )
    {
        if( ssl_conf_has_static_psk( ssl->conf ) == 0 )
        {
            return( -0x6C00 );
        }
        header_len = 4;
        content_len = ssl->conf->psk_identity_len;
        if( header_len + 2 + content_len > 16384 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3648, "psk identity too long or SSL buffer too short" );
            return( -0x6A00 );
        }
        ssl->out_msg[header_len++] = (unsigned char)( content_len >> 8 );
        ssl->out_msg[header_len++] = (unsigned char)( content_len );
        memcpy( ssl->out_msg + header_len,
                ssl->conf->psk_identity,
                ssl->conf->psk_identity_len );
        header_len += ssl->conf->psk_identity_len;
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_PSK )
        {
            content_len = 0;
        }
        else
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
        {
            if( ( ret = ssl_write_encrypted_pms( ssl, header_len,
                                                 &content_len, 2 ) ) != 0 )
                return( ret );
        }
        else
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_DHE_PSK )
        {
            content_len = ssl->handshake->dhm_ctx.len;
            if( header_len + 2 + content_len >
                16384 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3700, "psk identity or DHM size too long or SSL buffer too short" );
                return( -0x6A00 );
            }
            ssl->out_msg[header_len++] = (unsigned char)( content_len >> 8 );
            ssl->out_msg[header_len++] = (unsigned char)( content_len );
            ret = mbedtls_dhm_make_public( &ssl->handshake->dhm_ctx,
                    (int) mbedtls_mpi_size( &ssl->handshake->dhm_ctx.P ),
                    &ssl->out_msg[header_len], content_len,
                    ssl->conf->f_rng, ssl->conf->p_rng );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3713, "mbedtls_dhm_make_public", ret );
                return( ret );
            }
        }
        else
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
        {
            ret = mbedtls_ecdh_make_public( &ssl->handshake->ecdh_ctx,
                    &content_len,
                    &ssl->out_msg[header_len],
                    16384 - header_len,
                    ssl->conf->f_rng, ssl->conf->p_rng );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3738, "mbedtls_ecdh_make_public", ret );
                return( ret );
            }
            mbedtls_debug_printf_ecdh( ssl, 3, "ssl_cli.c", 3743, &ssl->handshake->ecdh_ctx, MBEDTLS_DEBUG_ECDH_Q );
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3748, "should never happen" );
            return( -0x6C00 );
        }
        if( ( ret = mbedtls_ssl_psk_derive_premaster( ssl,
                        ciphersuite_info->key_exchange ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3768, "mbedtls_ssl_psk_derive_premaster", ret );
            return( ret );
        }
    }
    else
    if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA )
    {
        header_len = 4;
        if( ( ret = ssl_write_encrypted_pms( ssl, header_len,
                                             &content_len, 0 ) ) != 0 )
            return( ret );
    }
    else
    {
        ((void) ciphersuite_info);
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3813, "should never happen" );
        return( -0x6C00 );
    }
    ssl->out_msglen = header_len + content_len;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 16;
    ssl->state++;
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3825, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3829, "<= write client key exchange" );
    return( 0 );
}
static int ssl_write_certificate_verify( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    size_t n = 0, offset = 0;
    unsigned char hash[48];
    unsigned char *hash_start = hash;
    mbedtls_md_type_t md_alg = MBEDTLS_MD_NONE;
    size_t hashlen;
    void *rs_ctx = ((void*)0);
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3872, "=> write certificate verify" );
    if( ( ret = mbedtls_ssl_derive_keys( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 3884, "mbedtls_ssl_derive_keys", ret );
        return( ret );
    }
    if( !mbedtls_ssl_ciphersuite_cert_req_allowed( ciphersuite_info ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3890, "<= skip write certificate verify" );
        ssl->state++;
        return( 0 );
    }
    if( ssl->client_auth == 0 || mbedtls_ssl_own_cert( ssl ) == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 3897, "<= skip write certificate verify" );
        ssl->state++;
        return( 0 );
    }
    if( mbedtls_ssl_own_key( ssl ) == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3904, "got no private key for certificate" );
        return( -0x7600 );
    }
    ssl->handshake->calc_verify( ssl, hash, &hashlen );
    if( ssl->minor_ver != 3 )
    {
        md_alg = MBEDTLS_MD_NONE;
        if( mbedtls_pk_can_do( mbedtls_ssl_own_key( ssl ), MBEDTLS_PK_ECDSA ) )
        {
            hash_start += 16;
            hashlen -= 16;
            md_alg = MBEDTLS_MD_SHA1;
        }
    }
    else
    if( ssl->minor_ver == 3 )
    {
        if( ssl->handshake->ciphersuite_info->mac == MBEDTLS_MD_SHA384 )
        {
            md_alg = MBEDTLS_MD_SHA384;
            ssl->out_msg[4] = 5;
        }
        else
        {
            md_alg = MBEDTLS_MD_SHA256;
            ssl->out_msg[4] = 4;
        }
        ssl->out_msg[5] = mbedtls_ssl_sig_from_pk( mbedtls_ssl_own_key( ssl ) );
        hashlen = 0;
        offset = 2;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 3989, "should never happen" );
        return( -0x6C00 );
    }
    if( ( ret = mbedtls_pk_sign_restartable( mbedtls_ssl_own_key( ssl ),
                         md_alg, hash_start, hashlen,
                         ssl->out_msg + 6 + offset, &n,
                         ssl->conf->f_rng, ssl->conf->p_rng, rs_ctx ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 4003, "mbedtls_pk_sign", ret );
        return( ret );
    }
    ssl->out_msg[4 + offset] = (unsigned char)( n >> 8 );
    ssl->out_msg[5 + offset] = (unsigned char)( n );
    ssl->out_msglen = 6 + n + offset;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 15;
    ssl->state++;
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 4022, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 4026, "<= write certificate verify" );
    return( ret );
}
static int ssl_parse_new_session_ticket( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    uint32_t lifetime;
    size_t ticket_len;
    unsigned char *ticket;
    const unsigned char *msg;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 4041, "=> parse new session ticket" );
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_cli.c", 4045, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 4051, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message(
            ssl,
            2,
            10 );
        return( -0x7700 );
    }
    if( ssl->in_msg[0] != 4 ||
        ssl->in_hslen < 6 + mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 4072, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x6E00 );
    }
    msg = ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl );
    lifetime = ( ((uint32_t) msg[0]) << 24 ) | ( msg[1] << 16 ) |
               ( msg[2] << 8 ) | ( msg[3] );
    ticket_len = ( msg[4] << 8 ) | ( msg[5] );
    if( ticket_len + 6 + mbedtls_ssl_hs_hdr_len( ssl ) != ssl->in_hslen )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 4087, "bad new session ticket message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x6E00 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 4093, "ticket length: %d", ticket_len );
    ssl->handshake->new_session_ticket = 0;
    ssl->state = MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC;
    if( ticket_len == 0 )
        return( 0 );
    if( ssl->session != ((void*)0) && ssl->session->ticket != ((void*)0) )
    {
        mbedtls_platform_zeroize( ssl->session->ticket,
                                  ssl->session->ticket_len );
        free( ssl->session->ticket );
        ssl->session->ticket = ((void*)0);
        ssl->session->ticket_len = 0;
    }
    mbedtls_platform_zeroize( ssl->session_negotiate->ticket,
                              ssl->session_negotiate->ticket_len );
    free( ssl->session_negotiate->ticket );
    ssl->session_negotiate->ticket = ((void*)0);
    ssl->session_negotiate->ticket_len = 0;
    if( ( ticket = calloc( 1, ticket_len ) ) == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 4123, "ticket alloc failed" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
        return( -0x7F00 );
    }
    memcpy( ticket, msg + 6, ticket_len );
    ssl->session_negotiate->ticket = ticket;
    ssl->session_negotiate->ticket_len = ticket_len;
    ssl->session_negotiate->ticket_lifetime = lifetime;
    mbedtls_debug_print_msg( ssl, 3, "ssl_cli.c", 4140, "ticket in use, discarding session id" );
    ssl->session_negotiate->id_len = 0;
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 4143, "<= parse new session ticket" );
    return( 0 );
}
int mbedtls_ssl_handshake_client_step( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER || ssl->handshake == ((void*)0) )
        return( -0x7100 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 4159, "client state: %d", ssl->state );
    if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        return( ret );
    if( ssl->conf->transport == 1 &&
        ssl->handshake->retransmit_state == 1 )
    {
        if( ( ret = mbedtls_ssl_flight_transmit( ssl ) ) != 0 )
            return( ret );
    }
    if( ssl->state == MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC &&
        ssl->handshake->new_session_ticket != 0 )
    {
        ssl->state = MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET;
    }
    switch( ssl->state )
    {
        case MBEDTLS_SSL_HELLO_REQUEST:
            ssl->state = MBEDTLS_SSL_CLIENT_HELLO;
            break;
       case MBEDTLS_SSL_CLIENT_HELLO:
           ret = ssl_write_client_hello( ssl );
           break;
       case MBEDTLS_SSL_SERVER_HELLO:
           ret = ssl_parse_server_hello( ssl );
           break;
       case MBEDTLS_SSL_SERVER_CERTIFICATE:
           ret = mbedtls_ssl_parse_certificate( ssl );
           break;
       case MBEDTLS_SSL_SERVER_KEY_EXCHANGE:
           ret = ssl_parse_server_key_exchange( ssl );
           break;
       case MBEDTLS_SSL_CERTIFICATE_REQUEST:
           ret = ssl_parse_certificate_request( ssl );
           break;
       case MBEDTLS_SSL_SERVER_HELLO_DONE:
           ret = ssl_parse_server_hello_done( ssl );
           break;
       case MBEDTLS_SSL_CLIENT_CERTIFICATE:
           ret = mbedtls_ssl_write_certificate( ssl );
           break;
       case MBEDTLS_SSL_CLIENT_KEY_EXCHANGE:
           ret = ssl_write_client_key_exchange( ssl );
           break;
       case MBEDTLS_SSL_CERTIFICATE_VERIFY:
           ret = ssl_write_certificate_verify( ssl );
           break;
       case MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC:
           ret = mbedtls_ssl_write_change_cipher_spec( ssl );
           break;
       case MBEDTLS_SSL_CLIENT_FINISHED:
           ret = mbedtls_ssl_write_finished( ssl );
           break;
       case MBEDTLS_SSL_SERVER_NEW_SESSION_TICKET:
           ret = ssl_parse_new_session_ticket( ssl );
           break;
       case MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC:
           ret = mbedtls_ssl_parse_change_cipher_spec( ssl );
           break;
       case MBEDTLS_SSL_SERVER_FINISHED:
           ret = mbedtls_ssl_parse_finished( ssl );
           break;
       case MBEDTLS_SSL_FLUSH_BUFFERS:
           mbedtls_debug_print_msg( ssl, 2, "ssl_cli.c", 4270, "handshake: done" );
           ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
           break;
       case MBEDTLS_SSL_HANDSHAKE_WRAPUP:
           mbedtls_ssl_handshake_wrapup( ssl );
           break;
       default:
           mbedtls_debug_print_msg( ssl, 1, "ssl_cli.c", 4279, "invalid state %d", ssl->state );
           return( -0x7100 );
   }
    return( ret );
}
