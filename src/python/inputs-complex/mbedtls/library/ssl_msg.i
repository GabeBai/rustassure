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

unsigned int mbedtls_version_get_number( void );
void mbedtls_version_get_string( char *string );
void mbedtls_version_get_string_full( char *string );
int mbedtls_version_check_feature( const char *feature );


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
typedef struct mbedtls_oid_descriptor_t
{
    const char *asn1;
    size_t asn1_len;
    const char *name;
    const char *description;
} mbedtls_oid_descriptor_t;
int mbedtls_oid_get_numeric_string( char *buf, size_t size, const mbedtls_asn1_buf *oid );
int mbedtls_oid_get_x509_ext_type( const mbedtls_asn1_buf *oid, int *ext_type );
int mbedtls_oid_get_attr_short_name( const mbedtls_asn1_buf *oid, const char **short_name );
int mbedtls_oid_get_pk_alg( const mbedtls_asn1_buf *oid, mbedtls_pk_type_t *pk_alg );
int mbedtls_oid_get_oid_by_pk_alg( mbedtls_pk_type_t pk_alg,
                           const char **oid, size_t *olen );
int mbedtls_oid_get_ec_grp( const mbedtls_asn1_buf *oid, mbedtls_ecp_group_id *grp_id );
int mbedtls_oid_get_oid_by_ec_grp( mbedtls_ecp_group_id grp_id,
                           const char **oid, size_t *olen );
int mbedtls_oid_get_sig_alg( const mbedtls_asn1_buf *oid,
                     mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg );
int mbedtls_oid_get_sig_alg_desc( const mbedtls_asn1_buf *oid, const char **desc );
int mbedtls_oid_get_oid_by_sig_alg( mbedtls_pk_type_t pk_alg, mbedtls_md_type_t md_alg,
                            const char **oid, size_t *olen );
int mbedtls_oid_get_md_alg( const mbedtls_asn1_buf *oid, mbedtls_md_type_t *md_alg );
int mbedtls_oid_get_md_hmac( const mbedtls_asn1_buf *oid, mbedtls_md_type_t *md_hmac );
int mbedtls_oid_get_extended_key_usage( const mbedtls_asn1_buf *oid, const char **desc );
int mbedtls_oid_get_certificate_policies( const mbedtls_asn1_buf *oid, const char **desc );
int mbedtls_oid_get_oid_by_md( mbedtls_md_type_t md_alg, const char **oid, size_t *olen );
int mbedtls_oid_get_cipher_alg( const mbedtls_asn1_buf *oid, mbedtls_cipher_type_t *cipher_alg );
int mbedtls_oid_get_pkcs12_pbe_alg( const mbedtls_asn1_buf *oid, mbedtls_md_type_t *md_alg,
                            mbedtls_cipher_type_t *cipher_alg );
static uint32_t ssl_get_hs_total_len( mbedtls_ssl_context const *ssl );
void mbedtls_ssl_set_timer( mbedtls_ssl_context *ssl, uint32_t millisecs )
{
    if( ssl->f_set_timer == ((void*)0) )
        return;
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 72, "set_timer to %d ms", (int) millisecs );
    ssl->f_set_timer( ssl->p_timer, millisecs / 4, millisecs );
}
int mbedtls_ssl_check_timer( mbedtls_ssl_context *ssl )
{
    if( ssl->f_get_timer == ((void*)0) )
        return( 0 );
    if( ssl->f_get_timer( ssl->p_timer ) == 2 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 86, "timer expired" );
        return( -1 );
    }
    return( 0 );
}
static int ssl_parse_record_header( mbedtls_ssl_context const *ssl,
                                    unsigned char *buf,
                                    size_t len,
                                    mbedtls_record *rec );
int mbedtls_ssl_check_record( mbedtls_ssl_context const *ssl,
                              unsigned char *buf,
                              size_t buflen )
{
    int ret = 0;
    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 104, "=> mbedtls_ssl_check_record" );
    mbedtls_debug_print_buf( ssl, 3, "ssl_msg.c", 105, "record buffer", buf, buflen );
    if( ssl->conf->transport == 0 )
    {
        ret = -0x7080;
        goto exit;
    }
    else
    {
        mbedtls_record rec;
        ret = ssl_parse_record_header( ssl, buf, buflen, &rec );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 3, "ssl_msg.c", 125, "ssl_parse_record_header", ret );
            goto exit;
        }
        if( ssl->transform_in != ((void*)0) )
        {
            ret = mbedtls_ssl_decrypt_buf( ssl, ssl->transform_in, &rec );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 3, "ssl_msg.c", 134, "mbedtls_ssl_decrypt_buf", ret );
                goto exit;
            }
        }
    }
exit:
    mbedtls_platform_zeroize( buf, buflen );
    if( ret == -0x6000 ||
        ret == -0x6480 )
    {
        ret = -0x6700;
    }
    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 154, "<= mbedtls_ssl_check_record" );
    return( ret );
}
static void ssl_buffering_free_slot( mbedtls_ssl_context *ssl,
                                     uint8_t slot );
static void ssl_free_buffered_record( mbedtls_ssl_context *ssl );
static int ssl_load_buffered_message( mbedtls_ssl_context *ssl );
static int ssl_load_buffered_record( mbedtls_ssl_context *ssl );
static int ssl_buffer_message( mbedtls_ssl_context *ssl );
static int ssl_buffer_future_record( mbedtls_ssl_context *ssl,
                                     mbedtls_record const *rec );
static int ssl_next_record_is_in_datagram( mbedtls_ssl_context *ssl );
static size_t ssl_get_maximum_datagram_size( mbedtls_ssl_context const *ssl )
{
    size_t mtu = mbedtls_ssl_get_current_mtu( ssl );
    size_t out_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    if( mtu != 0 && mtu < out_buf_len )
        return( mtu );
    return( out_buf_len );
}
static int ssl_get_remaining_space_in_datagram( mbedtls_ssl_context const *ssl )
{
    size_t const bytes_written = ssl->out_left;
    size_t const mtu = ssl_get_maximum_datagram_size( ssl );
    if( bytes_written > mtu )
    {
        return( -0x6C00 );
    }
    return( (int) ( mtu - bytes_written ) );
}
static int ssl_get_remaining_payload_in_datagram( mbedtls_ssl_context const *ssl )
{
    int ret = -0x006E;
    size_t remaining, expansion;
    size_t max_len = 16384;
    const size_t mfl = mbedtls_ssl_get_output_max_frag_len( ssl );
    if( max_len > mfl )
        max_len = mfl;
    if( max_len <= ssl->out_left )
        return( 0 );
    max_len -= ssl->out_left;
    ret = ssl_get_remaining_space_in_datagram( ssl );
    if( ret < 0 )
        return( ret );
    remaining = (size_t) ret;
    ret = mbedtls_ssl_get_record_expansion( ssl );
    if( ret < 0 )
        return( ret );
    expansion = (size_t) ret;
    if( remaining <= expansion )
        return( 0 );
    remaining -= expansion;
    if( remaining >= max_len )
        remaining = max_len;
    return( (int) remaining );
}
static int ssl_double_retransmit_timeout( mbedtls_ssl_context *ssl )
{
    uint32_t new_timeout;
    if( ssl->handshake->retransmit_timeout >= ssl->conf->hs_timeout_max )
        return( -1 );
    if( ssl->handshake->retransmit_timeout != ssl->conf->hs_timeout_min )
    {
        ssl->handshake->mtu = 508;
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 273, "mtu autoreduction to %d bytes", ssl->handshake->mtu );
    }
    new_timeout = 2 * ssl->handshake->retransmit_timeout;
    if( new_timeout < ssl->handshake->retransmit_timeout ||
        new_timeout > ssl->conf->hs_timeout_max )
    {
        new_timeout = ssl->conf->hs_timeout_max;
    }
    ssl->handshake->retransmit_timeout = new_timeout;
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 287, "update timeout value to %d millisecs", ssl->handshake->retransmit_timeout );
    return( 0 );
}
static void ssl_reset_retransmit_timeout( mbedtls_ssl_context *ssl )
{
    ssl->handshake->retransmit_timeout = ssl->conf->hs_timeout_min;
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 296, "update timeout value to %d millisecs", ssl->handshake->retransmit_timeout );
}
static void ssl_extract_add_data_from_record( unsigned char* add_data,
                                              size_t *add_data_len,
                                              mbedtls_record *rec,
                                              unsigned minor_ver )
{
    unsigned char *cur = add_data;
    {
        ((void) minor_ver);
        memcpy( cur, rec->ctr, sizeof( rec->ctr ) );
        cur += sizeof( rec->ctr );
    }
    *cur = rec->type;
    cur++;
    memcpy( cur, rec->ver, sizeof( rec->ver ) );
    cur += sizeof( rec->ver );
    {
        cur[0] = ( rec->data_len >> 8 ) & 0xFF;
        cur[1] = ( rec->data_len >> 0 ) & 0xFF;
        cur += 2;
    }
    *add_data_len = cur - add_data;
}
static int ssl_transform_aead_dynamic_iv_is_explicit(
                                mbedtls_ssl_transform const *transform )
{
    return( transform->ivlen != transform->fixed_ivlen );
}
static void ssl_build_record_nonce( unsigned char *dst_iv,
                                    size_t dst_iv_len,
                                    unsigned char const *fixed_iv,
                                    size_t fixed_iv_len,
                                    unsigned char const *dynamic_iv,
                                    size_t dynamic_iv_len )
{
    size_t i;
    memset( dst_iv, 0, dst_iv_len );
    memcpy( dst_iv, fixed_iv, fixed_iv_len );
    dst_iv += dst_iv_len - dynamic_iv_len;
    for( i = 0; i < dynamic_iv_len; i++ )
        dst_iv[i] ^= dynamic_iv[i];
}
int mbedtls_ssl_encrypt_buf( mbedtls_ssl_context *ssl,
                             mbedtls_ssl_transform *transform,
                             mbedtls_record *rec,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    mbedtls_cipher_mode_t mode;
    int auth_done = 0;
    unsigned char * data;
    unsigned char add_data[13 + 1 + 32 ];
    size_t add_data_len;
    size_t post_avail;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 597, "=> encrypt buf" );
    if( transform == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 601, "no transform provided to encrypt_buf" );
        return( -0x6C00 );
    }
    if( rec == ((void*)0)
        || rec->buf == ((void*)0)
        || rec->buf_len < rec->data_offset
        || rec->buf_len - rec->data_offset < rec->data_len
        )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 613, "bad record structure provided to encrypt_buf" );
        return( -0x6C00 );
    }
    data = rec->buf + rec->data_offset;
    post_avail = rec->buf_len - ( rec->data_len + rec->data_offset );
    mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 620, "before encrypt: output payload", data, rec->data_len );
    mode = mbedtls_cipher_get_cipher_mode( &transform->cipher_ctx_enc );
    if( rec->data_len > 16384 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 628, "Record content %u too large, maximum %d", (unsigned) rec->data_len, 16384 );
        return( -0x7100 );
    }
    post_avail = rec->buf_len - ( rec->data_len + rec->data_offset );
    if( mode == MBEDTLS_MODE_STREAM ||
        ( mode == MBEDTLS_MODE_CBC
          && transform->encrypt_then_mac == 0
        ) )
    {
        if( post_avail < transform->maclen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 711, "Buffer provided for encrypted record not large enough" );
            return( -0x6A00 );
        }
        if( transform->minor_ver >= 1 )
        {
            unsigned char mac[48];
            ssl_extract_add_data_from_record( add_data, &add_data_len, rec,
                                              transform->minor_ver );
            mbedtls_md_hmac_update( &transform->md_ctx_enc, add_data,
                                    add_data_len );
            mbedtls_md_hmac_update( &transform->md_ctx_enc,
                                    data, rec->data_len );
            mbedtls_md_hmac_finish( &transform->md_ctx_enc, mac );
            mbedtls_md_hmac_reset( &transform->md_ctx_enc );
            memcpy( data + rec->data_len, mac, transform->maclen );
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 746, "should never happen" );
            return( -0x6C00 );
        }
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 751, "computed mac", data + rec->data_len, transform->maclen );
        rec->data_len += transform->maclen;
        post_avail -= transform->maclen;
        auth_done++;
    }
    if( mode == MBEDTLS_MODE_STREAM )
    {
        int ret = -0x006E;
        size_t olen;
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 769, "before encrypt: msglen = %d, " "including %d bytes of padding", rec->data_len, 0 );
        if( ( ret = mbedtls_cipher_crypt( &transform->cipher_ctx_enc,
                                   transform->iv_enc, transform->ivlen,
                                   data, rec->data_len,
                                   data, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 776, "mbedtls_cipher_crypt", ret );
            return( ret );
        }
        if( rec->data_len != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 782, "should never happen" );
            return( -0x6C00 );
        }
    }
    else
    if( mode == MBEDTLS_MODE_GCM ||
        mode == MBEDTLS_MODE_CCM ||
        mode == MBEDTLS_MODE_CHACHAPOLY )
    {
        int ret = -0x006E;
        unsigned char iv[12];
        unsigned char *dynamic_iv;
        size_t dynamic_iv_len;
        int dynamic_iv_is_explicit =
            ssl_transform_aead_dynamic_iv_is_explicit( transform );
        if( post_avail < transform->taglen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 806, "Buffer provided for encrypted record not large enough" );
            return( -0x6A00 );
        }
        dynamic_iv = rec->ctr;
        dynamic_iv_len = sizeof( rec->ctr );
        ssl_build_record_nonce( iv, sizeof( iv ),
                                transform->iv_enc,
                                transform->fixed_ivlen,
                                dynamic_iv,
                                dynamic_iv_len );
        ssl_extract_add_data_from_record( add_data, &add_data_len, rec,
                                          transform->minor_ver );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 839, "IV used (internal)", iv, transform->ivlen );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 842, "IV used (transmitted)", dynamic_iv, dynamic_iv_is_explicit ? dynamic_iv_len : 0 );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 844, "additional data used for AEAD", add_data, add_data_len );
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 847, "before encrypt: msglen = %d, " "including 0 bytes of padding", rec->data_len );
        if( ( ret = mbedtls_cipher_auth_encrypt( &transform->cipher_ctx_enc,
                   iv, transform->ivlen,
                   add_data, add_data_len,
                   data, rec->data_len,
                   data, &rec->data_len,
                   data + rec->data_len, transform->taglen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 860, "mbedtls_cipher_auth_encrypt", ret );
            return( ret );
        }
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 864, "after encrypt: tag", data + rec->data_len, transform->taglen );
        rec->data_len += transform->taglen;
        post_avail -= transform->taglen;
        if( dynamic_iv_is_explicit != 0 )
        {
            if( rec->data_offset < dynamic_iv_len )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 876, "Buffer provided for encrypted record not large enough" );
                return( -0x6A00 );
            }
            memcpy( data - dynamic_iv_len, dynamic_iv, dynamic_iv_len );
            rec->data_offset -= dynamic_iv_len;
            rec->data_len += dynamic_iv_len;
        }
        auth_done++;
    }
    else
    if( mode == MBEDTLS_MODE_CBC )
    {
        int ret = -0x006E;
        size_t padlen, i;
        size_t olen;
        padlen = transform->ivlen - ( rec->data_len + 1 ) % transform->ivlen;
        if( padlen == transform->ivlen )
            padlen = 0;
        if( post_avail < padlen + 1 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 905, "Buffer provided for encrypted record not large enough" );
            return( -0x6A00 );
        }
        for( i = 0; i <= padlen; i++ )
            data[rec->data_len + i] = (unsigned char) padlen;
        rec->data_len += padlen + 1;
        post_avail -= padlen + 1;
        if( transform->minor_ver >= 2 )
        {
            if( f_rng == ((void*)0) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 924, "No PRNG provided to encrypt_record routine" );
                return( -0x6C00 );
            }
            if( rec->data_offset < transform->ivlen )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 930, "Buffer provided for encrypted record not large enough" );
                return( -0x6A00 );
            }
            ret = f_rng( p_rng, transform->iv_enc, transform->ivlen );
            if( ret != 0 )
                return( ret );
            memcpy( data - transform->ivlen, transform->iv_enc,
                    transform->ivlen );
        }
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 950, "before encrypt: msglen = %d, " "including %d bytes of IV and %d bytes of padding", rec->data_len, transform->ivlen, padlen + 1 );
        if( ( ret = mbedtls_cipher_crypt( &transform->cipher_ctx_enc,
                                   transform->iv_enc,
                                   transform->ivlen,
                                   data, rec->data_len,
                                   data, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 958, "mbedtls_cipher_crypt", ret );
            return( ret );
        }
        if( rec->data_len != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 964, "should never happen" );
            return( -0x6C00 );
        }
        if( transform->minor_ver < 2 )
        {
            memcpy( transform->iv_enc, transform->cipher_ctx_enc.iv,
                    transform->ivlen );
        }
        else
        {
            data -= transform->ivlen;
            rec->data_offset -= transform->ivlen;
            rec->data_len += transform->ivlen;
        }
        if( auth_done == 0 )
        {
            unsigned char mac[48];
            if( post_avail < transform->maclen)
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1001, "Buffer provided for encrypted record not large enough" );
                return( -0x6A00 );
            }
            ssl_extract_add_data_from_record( add_data, &add_data_len,
                                              rec, transform->minor_ver );
            mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 1008, "using encrypt then mac" );
            mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1010, "MAC'd meta-data", add_data, add_data_len );
            mbedtls_md_hmac_update( &transform->md_ctx_enc, add_data,
                                    add_data_len );
            mbedtls_md_hmac_update( &transform->md_ctx_enc,
                                    data, rec->data_len );
            mbedtls_md_hmac_finish( &transform->md_ctx_enc, mac );
            mbedtls_md_hmac_reset( &transform->md_ctx_enc );
            memcpy( data + rec->data_len, mac, transform->maclen );
            rec->data_len += transform->maclen;
            post_avail -= transform->maclen;
            auth_done++;
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1030, "should never happen" );
        return( -0x6C00 );
    }
    if( auth_done != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1037, "should never happen" );
        return( -0x6C00 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1041, "<= encrypt buf" );
    return( 0 );
}
static void mbedtls_ssl_cf_memcpy_if_eq( unsigned char *dst,
                                         const unsigned char *src,
                                         size_t len,
                                         size_t c1, size_t c2 )
{
    const size_t diff = c1 ^ c2;
    const size_t diff_msb = ( diff | -diff );
    const size_t diff1 = diff_msb >> ( sizeof( diff_msb ) * 8 - 1 );
    const unsigned char mask = (unsigned char) -diff1;
    for( size_t i = 0; i < len; i++ )
        dst[i] = ( dst[i] & mask ) | ( src[i] & ~mask );
}
static int mbedtls_ssl_cf_hmac(
        mbedtls_md_context_t *ctx,
        const unsigned char *add_data, size_t add_data_len,
        const unsigned char *data, size_t data_len_secret,
        size_t min_data_len, size_t max_data_len,
        unsigned char *output )
{
    const mbedtls_md_type_t md_alg = mbedtls_md_get_type( ctx->md_info );
    const size_t block_size = md_alg == MBEDTLS_MD_SHA384 ? 128 : 64;
    const unsigned char * const ikey = ctx->hmac_ctx;
    const unsigned char * const okey = ikey + block_size;
    const size_t hash_size = mbedtls_md_get_size( ctx->md_info );
    unsigned char aux_out[64];
    mbedtls_md_context_t aux;
    size_t offset;
    int ret = -0x006E;
    mbedtls_md_init( &aux );
    do { ret = (mbedtls_md_setup( &aux, ctx->md_info, 0 )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_update( ctx, add_data, add_data_len )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_update( ctx, data, min_data_len )); if( ret != 0 ) goto cleanup; } while( 0 );
    for( offset = min_data_len; offset <= max_data_len; offset++ )
    {
        do { ret = (mbedtls_md_clone( &aux, ctx )); if( ret != 0 ) goto cleanup; } while( 0 );
        do { ret = (mbedtls_md_finish( &aux, aux_out )); if( ret != 0 ) goto cleanup; } while( 0 );
        mbedtls_ssl_cf_memcpy_if_eq( output, aux_out, hash_size,
                                     offset, data_len_secret );
        if( offset < max_data_len )
            do { ret = (mbedtls_md_update( ctx, data + offset, 1 )); if( ret != 0 ) goto cleanup; } while( 0 );
    }
    do { ret = (mbedtls_md_starts( ctx )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_update( ctx, okey, block_size )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_update( ctx, output, hash_size )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_finish( ctx, output )); if( ret != 0 ) goto cleanup; } while( 0 );
    do { ret = (mbedtls_md_hmac_reset( ctx )); if( ret != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_md_free( &aux );
    return( ret );
}
static void mbedtls_ssl_cf_memcpy_offset(
                                   unsigned char *dst,
                                   const unsigned char *src_base,
                                   size_t offset_secret,
                                   size_t offset_min, size_t offset_max,
                                   size_t len )
{
    size_t offset;
    for( offset = offset_min; offset <= offset_max; offset++ )
    {
        mbedtls_ssl_cf_memcpy_if_eq( dst, src_base + offset, len,
                                     offset, offset_secret );
    }
}
int mbedtls_ssl_decrypt_buf( mbedtls_ssl_context const *ssl,
                             mbedtls_ssl_transform *transform,
                             mbedtls_record *rec )
{
    size_t olen;
    mbedtls_cipher_mode_t mode;
    int ret, auth_done = 0;
    size_t padlen = 0, correct = 1;
    unsigned char* data;
    unsigned char add_data[13 + 1 + 32 ];
    size_t add_data_len;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1215, "=> decrypt buf" );
    if( rec == ((void*)0) ||
        rec->buf == ((void*)0) ||
        rec->buf_len < rec->data_offset ||
        rec->buf_len - rec->data_offset < rec->data_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1221, "bad record structure provided to decrypt_buf" );
        return( -0x6C00 );
    }
    data = rec->buf + rec->data_offset;
    mode = mbedtls_cipher_get_cipher_mode( &transform->cipher_ctx_dec );
    if( mode == MBEDTLS_MODE_STREAM )
    {
        padlen = 0;
        if( ( ret = mbedtls_cipher_crypt( &transform->cipher_ctx_dec,
                                   transform->iv_dec,
                                   transform->ivlen,
                                   data, rec->data_len,
                                   data, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 1249, "mbedtls_cipher_crypt", ret );
            return( ret );
        }
        if( rec->data_len != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1255, "should never happen" );
            return( -0x6C00 );
        }
    }
    else
    if( mode == MBEDTLS_MODE_GCM ||
        mode == MBEDTLS_MODE_CCM ||
        mode == MBEDTLS_MODE_CHACHAPOLY )
    {
        unsigned char iv[12];
        unsigned char *dynamic_iv;
        size_t dynamic_iv_len;
        dynamic_iv_len = sizeof( rec->ctr );
        if( ssl_transform_aead_dynamic_iv_is_explicit( transform ) == 1 )
        {
            if( rec->data_len < dynamic_iv_len )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1287, "msglen (%d) < explicit_iv_len (%d) ", rec->data_len, dynamic_iv_len );
                return( -0x7180 );
            }
            dynamic_iv = data;
            data += dynamic_iv_len;
            rec->data_offset += dynamic_iv_len;
            rec->data_len -= dynamic_iv_len;
        }
        else
        {
            dynamic_iv = rec->ctr;
        }
        if( rec->data_len < transform->taglen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1304, "msglen (%d) < taglen (%d) " );
            return( -0x7180 );
        }
        rec->data_len -= transform->taglen;
        ssl_build_record_nonce( iv, sizeof( iv ),
                                transform->iv_dec,
                                transform->fixed_ivlen,
                                dynamic_iv,
                                dynamic_iv_len );
        ssl_extract_add_data_from_record( add_data, &add_data_len, rec,
                                          transform->minor_ver );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1325, "additional data used for AEAD", add_data, add_data_len );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1333, "IV used", iv, transform->ivlen );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1335, "TAG used", data + rec->data_len, transform->taglen );
        if( ( ret = mbedtls_cipher_auth_decrypt( &transform->cipher_ctx_dec,
                  iv, transform->ivlen,
                  add_data, add_data_len,
                  data, rec->data_len,
                  data, &olen,
                  data + rec->data_len,
                  transform->taglen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 1348, "mbedtls_cipher_auth_decrypt", ret );
            if( ret == -0x6300 )
                return( -0x7180 );
            return( ret );
        }
        auth_done++;
        if( olen != rec->data_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1360, "should never happen" );
            return( -0x6C00 );
        }
    }
    else
    if( mode == MBEDTLS_MODE_CBC )
    {
        size_t minlen = 0;
        if( transform->minor_ver >= 2 )
        {
            minlen += transform->ivlen;
        }
        if( rec->data_len < minlen + transform->ivlen ||
            rec->data_len < minlen + transform->maclen + 1 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1409, "msglen (%d) < max( ivlen(%d), maclen (%d) " "+ 1 ) ( + expl IV )", rec->data_len, transform->ivlen, transform->maclen );
            return( -0x7180 );
        }
        if( transform->encrypt_then_mac == 1 )
        {
            unsigned char mac_expect[48];
            mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 1421, "using encrypt then mac" );
            rec->data_len -= transform->maclen;
            ssl_extract_add_data_from_record( add_data, &add_data_len, rec,
                                              transform->minor_ver );
            mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1439, "MAC'd meta-data", add_data, add_data_len );
            mbedtls_md_hmac_update( &transform->md_ctx_dec, add_data,
                                    add_data_len );
            mbedtls_md_hmac_update( &transform->md_ctx_dec,
                                    data, rec->data_len );
            mbedtls_md_hmac_finish( &transform->md_ctx_dec, mac_expect );
            mbedtls_md_hmac_reset( &transform->md_ctx_dec );
            mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1448, "message  mac", data + rec->data_len, transform->maclen );
            mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 1450, "expected mac", mac_expect, transform->maclen );
            if( mbedtls_ssl_safer_memcmp( data + rec->data_len, mac_expect,
                                          transform->maclen ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1456, "message mac does not match" );
                return( -0x7180 );
            }
            auth_done++;
        }
        if( rec->data_len % transform->ivlen != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1473, "msglen (%d) %% ivlen (%d) != 0", rec->data_len, transform->ivlen );
            return( -0x7180 );
        }
        if( transform->minor_ver >= 2 )
        {
            memcpy( transform->iv_dec, data, transform->ivlen );
            data += transform->ivlen;
            rec->data_offset += transform->ivlen;
            rec->data_len -= transform->ivlen;
        }
        if( ( ret = mbedtls_cipher_crypt( &transform->cipher_ctx_dec,
                                   transform->iv_dec, transform->ivlen,
                                   data, rec->data_len, data, &olen ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 1498, "mbedtls_cipher_crypt", ret );
            return( ret );
        }
        if( rec->data_len != olen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1505, "should never happen" );
            return( -0x6C00 );
        }
        if( transform->minor_ver < 2 )
        {
            memcpy( transform->iv_dec, transform->cipher_ctx_dec.iv,
                    transform->ivlen );
        }
        padlen = data[rec->data_len - 1];
        if( auth_done == 1 )
        {
            correct *= ( rec->data_len >= padlen + 1 );
            padlen *= ( rec->data_len >= padlen + 1 );
        }
        else
        {
            correct *= ( rec->data_len >= transform->maclen + padlen + 1 );
            padlen *= ( rec->data_len >= transform->maclen + padlen + 1 );
        }
        padlen++;
        if( transform->minor_ver > 0 )
        {
            size_t pad_count = 0;
            size_t real_count = 0;
            volatile unsigned char* const check = data;
            size_t const padding_idx = rec->data_len - padlen;
            size_t const num_checks = rec->data_len <= 256 ? rec->data_len : 256;
            size_t const start_idx = rec->data_len - num_checks;
            size_t idx;
            for( idx = start_idx; idx < rec->data_len; idx++ )
            {
                real_count |= ( idx >= padding_idx );
                pad_count += real_count * ( check[idx] == padlen - 1 );
            }
            correct &= ( pad_count == padlen );
            padlen &= correct * 0x1FF;
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1608, "should never happen" );
            return( -0x6C00 );
        }
        rec->data_len -= padlen;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1621, "should never happen" );
        return( -0x6C00 );
    }
    if( auth_done == 0 )
    {
        unsigned char mac_expect[48];
        unsigned char mac_peer[48];
        rec->data_len -= transform->maclen;
        ssl_extract_add_data_from_record( add_data, &add_data_len, rec,
                                          transform->minor_ver );
        if( transform->minor_ver > 0 )
        {
            const size_t max_len = rec->data_len + padlen;
            const size_t min_len = ( max_len > 256 ) ? max_len - 256 : 0;
            ret = mbedtls_ssl_cf_hmac( &transform->md_ctx_dec,
                                       add_data, add_data_len,
                                       data, rec->data_len, min_len, max_len,
                                       mac_expect );
            if( ret != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 1692, "mbedtls_ssl_cf_hmac", ret );
                return( ret );
            }
            mbedtls_ssl_cf_memcpy_offset( mac_peer, data,
                                          rec->data_len,
                                          min_len, max_len,
                                          transform->maclen );
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1705, "should never happen" );
            return( -0x6C00 );
        }
        if( mbedtls_ssl_safer_memcmp( mac_peer, mac_expect,
                                      transform->maclen ) != 0 )
        {
            correct = 0;
        }
        auth_done++;
    }
    if( correct == 0 )
        return( -0x7180 );
    if( auth_done != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1735, "should never happen" );
        return( -0x6C00 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1761, "<= decrypt buf" );
    return( 0 );
}
int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want )
{
    int ret = -0x006E;
    size_t len;
    size_t in_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1904, "=> fetch input" );
    if( ssl->f_recv == ((void*)0) && ssl->f_recv_timeout == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1909, "Bad usage of mbedtls_ssl_set_bio() " "or mbedtls_ssl_set_bio()" );
        return( -0x7100 );
    }
    if( nb_want > in_buf_len - (size_t)( ssl->in_hdr - ssl->in_buf ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1915, "requesting more data than fits" );
        return( -0x7100 );
    }
    if( ssl->conf->transport == 1 )
    {
        uint32_t timeout;
        if( ssl->f_set_timer == ((void*)0) || ssl->f_get_timer == ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1928, "You must use " "mbedtls_ssl_set_timer_cb() for DTLS" );
            return( -0x7100 );
        }
        if( ssl->next_record_offset != 0 )
        {
            if( ssl->in_left < ssl->next_record_offset )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1946, "should never happen" );
                return( -0x6C00 );
            }
            ssl->in_left -= ssl->next_record_offset;
            if( ssl->in_left != 0 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1955, "next record in same datagram, offset: %d", ssl->next_record_offset );
                memmove( ssl->in_hdr,
                         ssl->in_hdr + ssl->next_record_offset,
                         ssl->in_left );
            }
            ssl->next_record_offset = 0;
        }
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1965, "in_left: %d, nb_want: %d", ssl->in_left, nb_want );
        if( nb_want <= ssl->in_left)
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1972, "<= fetch input" );
            return( 0 );
        }
        if( ssl->in_left != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 1983, "should never happen" );
            return( -0x6C00 );
        }
        if( mbedtls_ssl_check_timer( ssl ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 1994, "timer has expired" );
            ret = -0x6800;
        }
        else
        {
            len = in_buf_len - ( ssl->in_hdr - ssl->in_buf );
            if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
                timeout = ssl->handshake->retransmit_timeout;
            else
                timeout = ssl->conf->read_timeout;
            mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 2006, "f_recv_timeout: %u ms", timeout );
            if( ssl->f_recv_timeout != ((void*)0) )
                ret = ssl->f_recv_timeout( ssl->p_bio, ssl->in_hdr, len,
                                                                    timeout );
            else
                ret = ssl->f_recv( ssl->p_bio, ssl->in_hdr, len );
            mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 2014, "ssl->f_recv(_timeout)", ret );
            if( ret == 0 )
                return( -0x7280 );
        }
        if( ret == -0x6800 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2022, "timeout" );
            mbedtls_ssl_set_timer( ssl, 0 );
            if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            {
                if( ssl_double_retransmit_timeout( ssl ) != 0 )
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2029, "handshake timeout" );
                    return( -0x6800 );
                }
                if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2035, "mbedtls_ssl_resend", ret );
                    return( ret );
                }
                return( -0x6900 );
            }
            else if( ssl->conf->endpoint == 1 &&
                     ssl->renego_status == 3 )
            {
                if( ( ret = mbedtls_ssl_resend_hello_request( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2048, "mbedtls_ssl_resend_hello_request", ret );
                    return( ret );
                }
                return( -0x6900 );
            }
        }
        if( ret < 0 )
            return( ret );
        ssl->in_left = ret;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2066, "in_left: %d, nb_want: %d", ssl->in_left, nb_want );
        while( ssl->in_left < nb_want )
        {
            len = nb_want - ssl->in_left;
            if( mbedtls_ssl_check_timer( ssl ) != 0 )
                ret = -0x6800;
            else
            {
                if( ssl->f_recv_timeout != ((void*)0) )
                {
                    ret = ssl->f_recv_timeout( ssl->p_bio,
                                               ssl->in_hdr + ssl->in_left, len,
                                               ssl->conf->read_timeout );
                }
                else
                {
                    ret = ssl->f_recv( ssl->p_bio,
                                       ssl->in_hdr + ssl->in_left, len );
                }
            }
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2090, "in_left: %d, nb_want: %d", ssl->in_left, nb_want );
            mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 2091, "ssl->f_recv(_timeout)", ret );
            if( ret == 0 )
                return( -0x7280 );
            if( ret < 0 )
                return( ret );
            if ( (size_t)ret > len || ( 2147483647 > (18446744073709551615UL) && ret > (int)(18446744073709551615UL) ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2103, "f_recv returned %d bytes but only %lu were requested", ret, (unsigned long)len );
                return( -0x6C00 );
            }
            ssl->in_left += ret;
        }
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2111, "<= fetch input" );
    return( 0 );
}
int mbedtls_ssl_flush_output( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    unsigned char *buf;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2124, "=> flush output" );
    if( ssl->f_send == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2129, "Bad usage of mbedtls_ssl_set_bio() " "or mbedtls_ssl_set_bio()" );
        return( -0x7100 );
    }
    if( ssl->out_left == 0 )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2136, "<= flush output" );
        return( 0 );
    }
    while( ssl->out_left > 0 )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2143, "message length: %d, out_left: %d", mbedtls_ssl_out_hdr_len( ssl ) + ssl->out_msglen, ssl->out_left );
        buf = ssl->out_hdr - ssl->out_left;
        ret = ssl->f_send( ssl->p_bio, buf, ssl->out_left );
        mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 2148, "ssl->f_send", ret );
        if( ret <= 0 )
            return( ret );
        if( (size_t)ret > ssl->out_left || ( 2147483647 > (18446744073709551615UL) && ret > (int)(18446744073709551615UL) ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2157, "f_send returned %d bytes but only %lu bytes were sent", ret, (unsigned long)ssl->out_left );
            return( -0x6C00 );
        }
        ssl->out_left -= ret;
    }
    if( ssl->conf->transport == 1 )
    {
        ssl->out_hdr = ssl->out_buf;
    }
    else
    {
        ssl->out_hdr = ssl->out_buf + 8;
    }
    mbedtls_ssl_update_out_pointers( ssl, ssl->transform_out );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2176, "<= flush output" );
    return( 0 );
}
static int ssl_flight_append( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_flight_item *msg;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2191, "=> ssl_flight_append" );
    mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 2193, "message appended to flight", ssl->out_msg, ssl->out_msglen );
    if( ( msg = calloc( 1, sizeof( mbedtls_ssl_flight_item ) ) ) == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2199, "alloc %d bytes failed", sizeof( mbedtls_ssl_flight_item ) );
        return( -0x7F00 );
    }
    if( ( msg->p = calloc( 1, ssl->out_msglen ) ) == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2205, "alloc %d bytes failed", ssl->out_msglen );
        free( msg );
        return( -0x7F00 );
    }
    memcpy( msg->p, ssl->out_msg, ssl->out_msglen );
    msg->len = ssl->out_msglen;
    msg->type = ssl->out_msgtype;
    msg->next = ((void*)0);
    if( ssl->handshake->flight == ((void*)0) )
        ssl->handshake->flight = msg;
    else
    {
        mbedtls_ssl_flight_item *cur = ssl->handshake->flight;
        while( cur->next != ((void*)0) )
            cur = cur->next;
        cur->next = msg;
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2227, "<= ssl_flight_append" );
    return( 0 );
}
void mbedtls_ssl_flight_free( mbedtls_ssl_flight_item *flight )
{
    mbedtls_ssl_flight_item *cur = flight;
    mbedtls_ssl_flight_item *next;
    while( cur != ((void*)0) )
    {
        next = cur->next;
        free( cur->p );
        free( cur );
        cur = next;
    }
}
static int ssl_swap_epochs( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_transform *tmp_transform;
    unsigned char tmp_out_ctr[8];
    if( ssl->transform_out == ssl->handshake->alt_transform_out )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 2260, "skip swap epochs" );
        return( 0 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 2264, "swap epochs" );
    tmp_transform = ssl->transform_out;
    ssl->transform_out = ssl->handshake->alt_transform_out;
    ssl->handshake->alt_transform_out = tmp_transform;
    memcpy( tmp_out_ctr, ssl->cur_out_ctr, 8 );
    memcpy( ssl->cur_out_ctr, ssl->handshake->alt_out_ctr, 8 );
    memcpy( ssl->handshake->alt_out_ctr, tmp_out_ctr, 8 );
    mbedtls_ssl_update_out_pointers( ssl, ssl->transform_out );
    return( 0 );
}
int mbedtls_ssl_resend( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2301, "=> mbedtls_ssl_resend" );
    ret = mbedtls_ssl_flight_transmit( ssl );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2305, "<= mbedtls_ssl_resend" );
    return( ret );
}
int mbedtls_ssl_flight_transmit( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2320, "=> mbedtls_ssl_flight_transmit" );
    if( ssl->handshake->retransmit_state != 1 )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2324, "initialise flight transmission" );
        ssl->handshake->cur_msg = ssl->handshake->flight;
        ssl->handshake->cur_msg_p = ssl->handshake->flight->p + 12;
        ret = ssl_swap_epochs( ssl );
        if( ret != 0 )
            return( ret );
        ssl->handshake->retransmit_state = 1;
    }
    while( ssl->handshake->cur_msg != ((void*)0) )
    {
        size_t max_frag_len;
        const mbedtls_ssl_flight_item * const cur = ssl->handshake->cur_msg;
        int const is_finished =
            ( cur->type == 22 &&
              cur->p[0] == 20 );
        uint8_t const force_flush = ssl->disable_datagram_packing == 1 ?
            1 : 0;
        if( is_finished && ssl->handshake->cur_msg_p == ( cur->p + 12 ) )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2352, "swap epochs to send finished message" );
            ret = ssl_swap_epochs( ssl );
            if( ret != 0 )
                return( ret );
        }
        ret = ssl_get_remaining_payload_in_datagram( ssl );
        if( ret < 0 )
            return( ret );
        max_frag_len = (size_t) ret;
        if( cur->type == 20 )
        {
            if( max_frag_len == 0 )
            {
                if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
                    return( ret );
                continue;
            }
            memcpy( ssl->out_msg, cur->p, cur->len );
            ssl->out_msglen = cur->len;
            ssl->out_msgtype = cur->type;
            ssl->handshake->cur_msg_p += cur->len;
        }
        else
        {
            const unsigned char * const p = ssl->handshake->cur_msg_p;
            const size_t hs_len = cur->len - 12;
            const size_t frag_off = p - ( cur->p + 12 );
            const size_t rem_len = hs_len - frag_off;
            size_t cur_hs_frag_len, max_hs_frag_len;
            if( ( max_frag_len < 12 ) || ( max_frag_len == 12 && hs_len != 0 ) )
            {
                if( is_finished )
                {
                    ret = ssl_swap_epochs( ssl );
                    if( ret != 0 )
                        return( ret );
                }
                if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
                    return( ret );
                continue;
            }
            max_hs_frag_len = max_frag_len - 12;
            cur_hs_frag_len = rem_len > max_hs_frag_len ?
                max_hs_frag_len : rem_len;
            if( frag_off == 0 && cur_hs_frag_len != hs_len )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2412, "fragmenting handshake message (%u > %u)", (unsigned) cur_hs_frag_len, (unsigned) max_hs_frag_len );
            }
            memcpy( ssl->out_msg, cur->p, 6 );
            ssl->out_msg[6] = ( ( frag_off >> 16 ) & 0xff );
            ssl->out_msg[7] = ( ( frag_off >> 8 ) & 0xff );
            ssl->out_msg[8] = ( ( frag_off ) & 0xff );
            ssl->out_msg[ 9] = ( ( cur_hs_frag_len >> 16 ) & 0xff );
            ssl->out_msg[10] = ( ( cur_hs_frag_len >> 8 ) & 0xff );
            ssl->out_msg[11] = ( ( cur_hs_frag_len ) & 0xff );
            mbedtls_debug_print_buf( ssl, 3, "ssl_msg.c", 2428, "handshake header", ssl->out_msg, 12 );
            memcpy( ssl->out_msg + 12, p, cur_hs_frag_len );
            ssl->out_msglen = cur_hs_frag_len + 12;
            ssl->out_msgtype = cur->type;
            ssl->handshake->cur_msg_p += cur_hs_frag_len;
        }
        if( ssl->handshake->cur_msg_p >= cur->p + cur->len )
        {
            if( cur->next != ((void*)0) )
            {
                ssl->handshake->cur_msg = cur->next;
                ssl->handshake->cur_msg_p = cur->next->p + 12;
            }
            else
            {
                ssl->handshake->cur_msg = ((void*)0);
                ssl->handshake->cur_msg_p = ((void*)0);
            }
        }
        if( ( ret = mbedtls_ssl_write_record( ssl, force_flush ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2457, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }
    if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        return( ret );
    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
        ssl->handshake->retransmit_state = 3;
    else
    {
        ssl->handshake->retransmit_state = 2;
        mbedtls_ssl_set_timer( ssl, ssl->handshake->retransmit_timeout );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2474, "<= mbedtls_ssl_flight_transmit" );
    return( 0 );
}
void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_flight_free( ssl->handshake->flight );
    ssl->handshake->flight = ((void*)0);
    ssl->handshake->cur_msg = ((void*)0);
    ssl->handshake->in_flight_start_seq = ssl->handshake->in_msg_seq;
    ssl->handshake->buffering.seen_ccs = 0;
    mbedtls_ssl_buffering_free( ssl );
    mbedtls_ssl_set_timer( ssl, 0 );
    if( ssl->in_msgtype == 22 &&
        ssl->in_msg[0] == 20 )
    {
        ssl->handshake->retransmit_state = 3;
    }
    else
        ssl->handshake->retransmit_state = 0;
}
void mbedtls_ssl_send_flight_completed( mbedtls_ssl_context *ssl )
{
    ssl_reset_retransmit_timeout( ssl );
    mbedtls_ssl_set_timer( ssl, ssl->handshake->retransmit_timeout );
    if( ssl->in_msgtype == 22 &&
        ssl->in_msg[0] == 20 )
    {
        ssl->handshake->retransmit_state = 3;
    }
    else
        ssl->handshake->retransmit_state = 2;
}
int mbedtls_ssl_write_handshake_msg( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    const size_t hs_len = ssl->out_msglen - 4;
    const unsigned char hs_type = ssl->out_msg[0];
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2560, "=> write handshake message" );
    if( ssl->out_msgtype != 22 &&
        ssl->out_msgtype != 20 )
    {
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2575, "should never happen" );
            return( -0x6C00 );
        }
    }
    if( ! ( ssl->out_msgtype == 22 &&
            hs_type == 0 ) &&
        ssl->handshake == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2586, "should never happen" );
        return( -0x6C00 );
    }
    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void*)0) &&
        ssl->handshake->retransmit_state == 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2595, "should never happen" );
        return( -0x6C00 );
    }
    if( ssl->out_msglen > 16384 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2613, "Record too large: " "size %u, maximum %u", (unsigned) ssl->out_msglen, (unsigned) 16384 );
        return( -0x6C00 );
    }
    if( ssl->out_msgtype == 22 )
    {
        ssl->out_msg[1] = (unsigned char)( hs_len >> 16 );
        ssl->out_msg[2] = (unsigned char)( hs_len >> 8 );
        ssl->out_msg[3] = (unsigned char)( hs_len );
        if( ssl->conf->transport == 1 )
        {
            if( 16384 - ssl->out_msglen < 8 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2642, "DTLS handshake message too large: " "size %u, maximum %u", (unsigned) ( hs_len ), (unsigned) ( 16384 - 12 ) );
                return( -0x7100 );
            }
            memmove( ssl->out_msg + 12, ssl->out_msg + 4, hs_len );
            ssl->out_msglen += 8;
            if( hs_type != 0 )
            {
                ssl->out_msg[4] = ( ssl->handshake->out_msg_seq >> 8 ) & 0xFF;
                ssl->out_msg[5] = ( ssl->handshake->out_msg_seq ) & 0xFF;
                ++( ssl->handshake->out_msg_seq );
            }
            else
            {
                ssl->out_msg[4] = 0;
                ssl->out_msg[5] = 0;
            }
            memset( ssl->out_msg + 6, 0x00, 3 );
            memcpy( ssl->out_msg + 9, ssl->out_msg + 1, 3 );
        }
        if( hs_type != 0 )
            ssl->handshake->update_checksum( ssl, ssl->out_msg, ssl->out_msglen );
    }
    if( ssl->conf->transport == 1 &&
        ! ( ssl->out_msgtype == 22 &&
            hs_type == 0 ) )
    {
        if( ( ret = ssl_flight_append( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2682, "ssl_flight_append", ret );
            return( ret );
        }
    }
    else
    {
        if( ( ret = mbedtls_ssl_write_record( ssl, 1 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2691, "ssl_write_record", ret );
            return( ret );
        }
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2696, "<= write handshake message" );
    return( 0 );
}
int mbedtls_ssl_write_record( mbedtls_ssl_context *ssl, uint8_t force_flush )
{
    int ret, done = 0;
    size_t len = ssl->out_msglen;
    uint8_t flush = force_flush;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2719, "=> write record" );
    if( !done )
    {
        unsigned i;
        size_t protected_record_size;
        size_t out_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
        mbedtls_ssl_write_version( ssl->major_ver, ssl->minor_ver,
                           ssl->conf->transport, ssl->out_hdr + 1 );
        memcpy( ssl->out_ctr, ssl->cur_out_ctr, 8 );
        ssl->out_len[0] = (unsigned char)( len >> 8 );
        ssl->out_len[1] = (unsigned char)( len );
        if( ssl->transform_out != ((void*)0) )
        {
            mbedtls_record rec;
            rec.buf = ssl->out_iv;
            rec.buf_len = out_buf_len - ( ssl->out_iv - ssl->out_buf );
            rec.data_len = ssl->out_msglen;
            rec.data_offset = ssl->out_msg - rec.buf;
            memcpy( &rec.ctr[0], ssl->out_ctr, 8 );
            mbedtls_ssl_write_version( ssl->major_ver, ssl->minor_ver,
                                       ssl->conf->transport, rec.ver );
            rec.type = ssl->out_msgtype;
            if( ( ret = mbedtls_ssl_encrypt_buf( ssl, ssl->transform_out, &rec,
                                         ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2792, "ssl_encrypt_buf", ret );
                return( ret );
            }
            if( rec.data_offset != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2798, "should never happen" );
                return( -0x6C00 );
            }
            ssl->out_msgtype = rec.type;
            ssl->out_msglen = len = rec.data_len;
            ssl->out_len[0] = (unsigned char)( rec.data_len >> 8 );
            ssl->out_len[1] = (unsigned char)( rec.data_len );
        }
        protected_record_size = len + mbedtls_ssl_out_hdr_len( ssl );
        if( ssl->conf->transport == 1 )
        {
            ret = ssl_get_remaining_space_in_datagram( ssl );
            if( ret < 0 )
                return( ret );
            if( protected_record_size > (size_t) ret )
            {
                return( -0x6C00 );
            }
        }
        ssl->out_hdr[0] = (unsigned char) ssl->out_msgtype;
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 2837, "output record: msgtype = %d, " "version = [%d:%d], msglen = %d", ssl->out_hdr[0], ssl->out_hdr[1], ssl->out_hdr[2], len );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 2840, "output record sent to network", ssl->out_hdr, protected_record_size );
        ssl->out_left += protected_record_size;
        ssl->out_hdr += protected_record_size;
        mbedtls_ssl_update_out_pointers( ssl, ssl->transform_out );
        for( i = 8; i > mbedtls_ssl_ep_len( ssl ); i-- )
            if( ++ssl->cur_out_ctr[i - 1] != 0 )
                break;
        if( i == mbedtls_ssl_ep_len( ssl ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 2853, "outgoing message counter would wrap" );
            return( -0x6B80 );
        }
    }
    if( ssl->conf->transport == 1 &&
        flush == 0 )
    {
        size_t remaining;
        ret = ssl_get_remaining_payload_in_datagram( ssl );
        if( ret < 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2867, "ssl_get_remaining_payload_in_datagram", ret );
            return( ret );
        }
        remaining = (size_t) ret;
        if( remaining == 0 )
        {
            flush = 1;
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2878, "Still %u bytes available in current datagram", (unsigned) remaining );
        }
    }
    if( ( flush == 1 ) &&
        ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 2886, "mbedtls_ssl_flush_output", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 2890, "<= write record" );
    return( 0 );
}
static int ssl_hs_is_proper_fragment( mbedtls_ssl_context *ssl )
{
    if( ssl->in_msglen < ssl->in_hslen ||
        memcmp( ssl->in_msg + 6, "\0\0\0", 3 ) != 0 ||
        memcmp( ssl->in_msg + 9, ssl->in_msg + 1, 3 ) != 0 )
    {
        return( 1 );
    }
    return( 0 );
}
static uint32_t ssl_get_hs_frag_len( mbedtls_ssl_context const *ssl )
{
    return( ( ssl->in_msg[9] << 16 ) |
            ( ssl->in_msg[10] << 8 ) |
              ssl->in_msg[11] );
}
static uint32_t ssl_get_hs_frag_off( mbedtls_ssl_context const *ssl )
{
    return( ( ssl->in_msg[6] << 16 ) |
            ( ssl->in_msg[7] << 8 ) |
              ssl->in_msg[8] );
}
static int ssl_check_hs_header( mbedtls_ssl_context const *ssl )
{
    uint32_t msg_len, frag_off, frag_len;
    msg_len = ssl_get_hs_total_len( ssl );
    frag_off = ssl_get_hs_frag_off( ssl );
    frag_len = ssl_get_hs_frag_len( ssl );
    if( frag_off > msg_len )
        return( -1 );
    if( frag_len > msg_len - frag_off )
        return( -1 );
    if( frag_len + 12 > ssl->in_msglen )
        return( -1 );
    return( 0 );
}
static void ssl_bitmask_set( unsigned char *mask, size_t offset, size_t len )
{
    unsigned int start_bits, end_bits;
    start_bits = 8 - ( offset % 8 );
    if( start_bits != 8 )
    {
        size_t first_byte_idx = offset / 8;
        if( len <= start_bits )
        {
            for( ; len != 0; len-- )
                mask[first_byte_idx] |= 1 << ( start_bits - len );
            return;
        }
        offset += start_bits;
        len -= start_bits;
        for( ; start_bits != 0; start_bits-- )
            mask[first_byte_idx] |= 1 << ( start_bits - 1 );
    }
    end_bits = len % 8;
    if( end_bits != 0 )
    {
        size_t last_byte_idx = ( offset + len ) / 8;
        len -= end_bits;
        for( ; end_bits != 0; end_bits-- )
            mask[last_byte_idx] |= 1 << ( 8 - end_bits );
    }
    memset( mask + offset / 8, 0xFF, len / 8 );
}
static int ssl_bitmask_check( unsigned char *mask, size_t len )
{
    size_t i;
    for( i = 0; i < len / 8; i++ )
        if( mask[i] != 0xFF )
            return( -1 );
    for( i = 0; i < len % 8; i++ )
        if( ( mask[len / 8] & ( 1 << ( 7 - i ) ) ) == 0 )
            return( -1 );
    return( 0 );
}
static size_t ssl_get_reassembly_buffer_size( size_t msg_len,
                                              unsigned add_bitmap )
{
    size_t alloc_len;
    alloc_len = 12;
    alloc_len += msg_len;
    if( add_bitmap )
        alloc_len += msg_len / 8 + ( msg_len % 8 != 0 );
    return( alloc_len );
}
static uint32_t ssl_get_hs_total_len( mbedtls_ssl_context const *ssl )
{
    return( ( ssl->in_msg[1] << 16 ) |
            ( ssl->in_msg[2] << 8 ) |
              ssl->in_msg[3] );
}
int mbedtls_ssl_prepare_handshake_record( mbedtls_ssl_context *ssl )
{
    if( ssl->in_msglen < mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3032, "handshake message too short: %d", ssl->in_msglen );
        return( -0x7200 );
    }
    ssl->in_hslen = mbedtls_ssl_hs_hdr_len( ssl ) + ssl_get_hs_total_len( ssl );
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 3040, "handshake message: msglen =" " %d, type = %d, hslen = %d", ssl->in_msglen, ssl->in_msg[0], ssl->in_hslen );
    if( ssl->conf->transport == 1 )
    {
        int ret = -0x006E;
        unsigned int recv_msg_seq = ( ssl->in_msg[4] << 8 ) | ssl->in_msg[5];
        if( ssl_check_hs_header( ssl ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3050, "invalid handshake header" );
            return( -0x7200 );
        }
        if( ssl->handshake != ((void*)0) &&
            ( ( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER &&
                recv_msg_seq != ssl->handshake->in_msg_seq ) ||
              ( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER &&
                ssl->in_msg[0] != 1 ) ) )
        {
            if( recv_msg_seq > ssl->handshake->in_msg_seq )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3064, "received future handshake message of sequence number %u (next %u)", recv_msg_seq, ssl->handshake->in_msg_seq );
                return( -0x6480 );
            }
            if( recv_msg_seq == ssl->handshake->in_flight_start_seq - 1 &&
                ssl->in_msg[0] != 3 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3077, "received message from last flight, " "message_seq = %d, start_of_flight = %d", recv_msg_seq, ssl->handshake->in_flight_start_seq );
                if( ( ret = mbedtls_ssl_resend( ssl ) ) != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 3081, "mbedtls_ssl_resend", ret );
                    return( ret );
                }
            }
            else
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3090, "dropping out-of-sequence message: " "message_seq = %d, expected = %d", recv_msg_seq, ssl->handshake->in_msg_seq );
            }
            return( -0x6580 );
        }
        if( ssl_hs_is_proper_fragment( ssl ) == 1 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3103, "found fragmented DTLS handshake message" );
            return( -0x6480 );
        }
    }
    else
    if( ssl->in_msglen < ssl->in_hslen )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3112, "TLS handshake fragmentation not supported" );
        return( -0x7080 );
    }
    return( 0 );
}
void mbedtls_ssl_update_handshake_status( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER && hs != ((void*)0) )
    {
        ssl->handshake->update_checksum( ssl, ssl->in_msg, ssl->in_hslen );
    }
    if( ssl->conf->transport == 1 &&
        ssl->handshake != ((void*)0) )
    {
        unsigned offset;
        mbedtls_ssl_hs_buffer *hs_buf;
        hs->in_msg_seq++;
        ssl_buffering_free_slot( ssl, 0 );
        for( offset = 0, hs_buf = &hs->buffering.hs[0];
             offset + 1 < 4;
             offset++, hs_buf++ )
        {
            *hs_buf = *(hs_buf + 1);
        }
        memset( hs_buf, 0, sizeof( mbedtls_ssl_hs_buffer ) );
    }
}
void mbedtls_ssl_dtls_replay_reset( mbedtls_ssl_context *ssl )
{
    ssl->in_window_top = 0;
    ssl->in_window = 0;
}
static inline uint64_t ssl_load_six_bytes( unsigned char *buf )
{
    return( ( (uint64_t) buf[0] << 40 ) |
            ( (uint64_t) buf[1] << 32 ) |
            ( (uint64_t) buf[2] << 24 ) |
            ( (uint64_t) buf[3] << 16 ) |
            ( (uint64_t) buf[4] << 8 ) |
            ( (uint64_t) buf[5] ) );
}
static int mbedtls_ssl_dtls_record_replay_check( mbedtls_ssl_context *ssl, uint8_t *record_in_ctr )
{
    int ret = -0x006E;
    unsigned char *original_in_ctr;
    original_in_ctr = ssl->in_ctr;
    ssl->in_ctr = record_in_ctr;
    ret = mbedtls_ssl_dtls_replay_check( (mbedtls_ssl_context const *) ssl );
    ssl->in_ctr = original_in_ctr;
    return ret;
}
int mbedtls_ssl_dtls_replay_check( mbedtls_ssl_context const *ssl )
{
    uint64_t rec_seqnum = ssl_load_six_bytes( ssl->in_ctr + 2 );
    uint64_t bit;
    if( ssl->conf->anti_replay == 0 )
        return( 0 );
    if( rec_seqnum > ssl->in_window_top )
        return( 0 );
    bit = ssl->in_window_top - rec_seqnum;
    if( bit >= 64 )
        return( -1 );
    if( ( ssl->in_window & ( (uint64_t) 1 << bit ) ) != 0 )
        return( -1 );
    return( 0 );
}
void mbedtls_ssl_dtls_replay_update( mbedtls_ssl_context *ssl )
{
    uint64_t rec_seqnum = ssl_load_six_bytes( ssl->in_ctr + 2 );
    if( ssl->conf->anti_replay == 0 )
        return;
    if( rec_seqnum > ssl->in_window_top )
    {
        uint64_t shift = rec_seqnum - ssl->in_window_top;
        if( shift >= 64 )
            ssl->in_window = 1;
        else
        {
            ssl->in_window <<= shift;
            ssl->in_window |= 1;
        }
        ssl->in_window_top = rec_seqnum;
    }
    else
    {
        uint64_t bit = ssl->in_window_top - rec_seqnum;
        if( bit < 64 )
            ssl->in_window |= (uint64_t) 1 << bit;
    }
}
static int ssl_check_dtls_clihlo_cookie(
                           mbedtls_ssl_cookie_write_t *f_cookie_write,
                           mbedtls_ssl_cookie_check_t *f_cookie_check,
                           void *p_cookie,
                           const unsigned char *cli_id, size_t cli_id_len,
                           const unsigned char *in, size_t in_len,
                           unsigned char *obuf, size_t buf_len, size_t *olen )
{
    size_t sid_len, cookie_len;
    unsigned char *p;
    if( in_len < 61 ||
        in[0] != 22 ||
        in[3] != 0 || in[4] != 0 ||
        in[19] != 0 || in[20] != 0 || in[21] != 0 )
    {
        return( -0x7900 );
    }
    sid_len = in[59];
    if( sid_len > in_len - 61 )
        return( -0x7900 );
    cookie_len = in[60 + sid_len];
    if( cookie_len > in_len - 60 )
        return( -0x7900 );
    if( f_cookie_check( p_cookie, in + sid_len + 61, cookie_len,
                        cli_id, cli_id_len ) == 0 )
    {
        return( 0 );
    }
    if( buf_len < 28 )
        return( -0x6A00 );
    memcpy( obuf, in, 25 );
    obuf[13] = 3;
    obuf[25] = 0xfe;
    obuf[26] = 0xff;
    p = obuf + 28;
    if( f_cookie_write( p_cookie,
                        &p, obuf + buf_len, cli_id, cli_id_len ) != 0 )
    {
        return( -0x6C00 );
    }
    *olen = p - obuf;
    obuf[27] = (unsigned char)( *olen - 28 );
    obuf[14] = obuf[22] = (unsigned char)( ( *olen - 25 ) >> 16 );
    obuf[15] = obuf[23] = (unsigned char)( ( *olen - 25 ) >> 8 );
    obuf[16] = obuf[24] = (unsigned char)( ( *olen - 25 ) );
    obuf[11] = (unsigned char)( ( *olen - 13 ) >> 8 );
    obuf[12] = (unsigned char)( ( *olen - 13 ) );
    return( -0x6A80 );
}
static int ssl_handle_possible_reconnect( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    size_t len;
    if( ssl->conf->f_cookie_write == ((void*)0) ||
        ssl->conf->f_cookie_check == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3422, "no cookie callbacks, " "can't check reconnect validity" );
        return( 0 );
    }
    ret = ssl_check_dtls_clihlo_cookie(
            ssl->conf->f_cookie_write,
            ssl->conf->f_cookie_check,
            ssl->conf->p_cookie,
            ssl->cli_id, ssl->cli_id_len,
            ssl->in_buf, ssl->in_left,
            ssl->out_buf, 16384, &len );
    mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 3434, "ssl_check_dtls_clihlo_cookie", ret );
    if( ret == -0x6A80 )
    {
        int send_ret;
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3439, "sending HelloVerifyRequest" );
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 3441, "output record sent to network", ssl->out_buf, len );
        send_ret = ssl->f_send( ssl->p_bio, ssl->out_buf, len );
        mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 3446, "ssl->f_send", send_ret );
        (void) send_ret;
        return( 0 );
    }
    if( ret == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3454, "cookie is valid, resetting context" );
        if( ( ret = mbedtls_ssl_session_reset_int( ssl, 1 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 3457, "reset", ret );
            return( ret );
        }
        return( -0x6780 );
    }
    return( ret );
}
static int ssl_check_record_type( uint8_t record_type )
{
    if( record_type != 22 &&
        record_type != 21 &&
        record_type != 20 &&
        record_type != 23 )
    {
        return( -0x7200 );
    }
    return( 0 );
}
static int ssl_parse_record_header( mbedtls_ssl_context const *ssl,
                                    unsigned char *buf,
                                    size_t len,
                                    mbedtls_record *rec )
{
    int major_ver, minor_ver;
    size_t const rec_hdr_type_offset = 0;
    size_t const rec_hdr_type_len = 1;
    size_t const rec_hdr_version_offset = rec_hdr_type_offset +
                                          rec_hdr_type_len;
    size_t const rec_hdr_version_len = 2;
    size_t const rec_hdr_ctr_len = 8;
    uint32_t rec_epoch;
    size_t const rec_hdr_ctr_offset = rec_hdr_version_offset +
                                          rec_hdr_version_len;
    size_t rec_hdr_len_offset;
    size_t const rec_hdr_len_len = 2;
    if( ssl->conf->transport == 1 )
    {
        rec_hdr_len_offset = rec_hdr_ctr_offset + rec_hdr_ctr_len;
    }
    else
    {
        rec_hdr_len_offset = rec_hdr_version_offset + rec_hdr_version_len;
    }
    if( len < rec_hdr_len_offset + rec_hdr_len_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3549, "datagram of length %u too small to hold DTLS record header of length %u", (unsigned) len, (unsigned)( rec_hdr_len_len + rec_hdr_len_len ) );
        return( -0x7200 );
    }
    rec->type = buf[ rec_hdr_type_offset ];
    {
        if( ssl_check_record_type( rec->type ) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3604, "unknown record type %u", (unsigned) rec->type );
            return( -0x7200 );
        }
    }
    rec->ver[0] = buf[ rec_hdr_version_offset + 0 ];
    rec->ver[1] = buf[ rec_hdr_version_offset + 1 ];
    mbedtls_ssl_read_version( &major_ver, &minor_ver,
                              ssl->conf->transport,
                              &rec->ver[0] );
    if( major_ver != ssl->major_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3621, "major version mismatch" );
        return( -0x7200 );
    }
    if( minor_ver > ssl->conf->max_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3627, "minor version mismatch" );
        return( -0x7200 );
    }
    if( ssl->conf->transport == 1 )
    {
        memcpy( &rec->ctr[0], buf + rec_hdr_ctr_offset,
                rec_hdr_ctr_len );
    }
    else
    {
        memcpy( &rec->ctr[0], ssl->in_ctr, rec_hdr_ctr_len );
    }
    rec->data_offset = rec_hdr_len_offset + rec_hdr_len_len;
    rec->data_len = ( (size_t) buf[ rec_hdr_len_offset + 0 ] << 8 ) |
                       ( (size_t) buf[ rec_hdr_len_offset + 1 ] << 0 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 3656, "input record header", buf, rec->data_offset );
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 3661, "input record: msgtype = %d, " "version = [%d:%d], msglen = %d", rec->type, major_ver, minor_ver, rec->data_len );
    rec->buf = buf;
    rec->buf_len = rec->data_offset + rec->data_len;
    if( rec->data_len == 0 )
        return( -0x7200 );
    if( ssl->conf->transport == 1 )
    {
        rec_epoch = ( rec->ctr[0] << 8 ) | rec->ctr[1];
        if( len < rec->data_offset + rec->data_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3692, "Datagram of length %u too small to contain record of advertised length %u.", (unsigned) len, (unsigned)( rec->data_offset + rec->data_len ) );
            return( -0x7200 );
        }
        if( rec_epoch != ssl->in_epoch )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3703, "record from another epoch: " "expected %d, received %d", ssl->in_epoch, rec_epoch );
            if( rec_epoch == (unsigned) ssl->in_epoch + 1 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3709, "Consider record for buffering" );
                return( -0x6480 );
            }
            return( -0x6700 );
        }
        else if( mbedtls_ssl_dtls_record_replay_check( (mbedtls_ssl_context *) ssl,
            &rec->ctr[0] ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3721, "replayed record" );
            return( -0x6700 );
        }
    }
    return( 0 );
}
static int ssl_check_client_reconnect( mbedtls_ssl_context *ssl )
{
    unsigned int rec_epoch = ( ssl->in_ctr[0] << 8 ) | ssl->in_ctr[1];
    if( rec_epoch == 0 &&
        ssl->conf->endpoint == 1 &&
        ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER &&
        ssl->in_msgtype == 22 &&
        ssl->in_left > 13 &&
        ssl->in_buf[13] == 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3751, "possible client reconnect " "from the same port" );
        return( ssl_handle_possible_reconnect( ssl ) );
    }
    return( 0 );
}
static int ssl_prepare_record_content( mbedtls_ssl_context *ssl,
                                       mbedtls_record *rec )
{
    int ret, done = 0;
    mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 3768, "input record from network", rec->buf, rec->buf_len );
    if( !done && ssl->transform_in != ((void*)0) )
    {
        unsigned char const old_msg_type = rec->type;
        if( ( ret = mbedtls_ssl_decrypt_buf( ssl, ssl->transform_in,
                                             rec ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 3793, "ssl_decrypt_buf", ret );
            return( ret );
        }
        if( old_msg_type != rec->type )
        {
            mbedtls_debug_print_msg( ssl, 4, "ssl_msg.c", 3811, "record type after decrypt (before %d): %d", old_msg_type, rec->type );
        }
        mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 3815, "input payload after decrypt", rec->buf + rec->data_offset, rec->data_len );
        if( rec->data_len == 0 )
        {
            if( ssl->minor_ver == 3
                && rec->type != 23 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3839, "invalid zero-length message type: %d", ssl->in_msgtype );
                return( -0x7200 );
            }
            ssl->nb_zero++;
            if( ssl->nb_zero > 3 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3853, "received four consecutive empty " "messages, possible DoS attack" );
                return( -0x7180 );
            }
        }
        else
            ssl->nb_zero = 0;
        if( ssl->conf->transport == 1 )
        {
            ;
        }
        else
        {
            unsigned i;
            for( i = 8; i > mbedtls_ssl_ep_len( ssl ); i-- )
                if( ++ssl->in_ctr[i - 1] != 0 )
                    break;
            if( i == mbedtls_ssl_ep_len( ssl ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3879, "incoming message counter would wrap" );
                return( -0x6B80 );
            }
        }
    }
    if( ssl->conf->transport == 1 )
    {
        mbedtls_ssl_dtls_replay_update( ssl );
    }
    if( ssl->in_msglen > 16384 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 3897, "bad message length" );
        return( -0x7200 );
    }
    return( 0 );
}
static int ssl_consume_current_message( mbedtls_ssl_context *ssl );
static int ssl_get_next_record( mbedtls_ssl_context *ssl );
static int ssl_record_is_in_progress( mbedtls_ssl_context *ssl );
int mbedtls_ssl_read_record( mbedtls_ssl_context *ssl,
                             unsigned update_hs_digest )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3922, "=> read record" );
    if( ssl->keep_current_message == 0 )
    {
        do {
            ret = ssl_consume_current_message( ssl );
            if( ret != 0 )
                return( ret );
            if( ssl_record_is_in_progress( ssl ) == 0 )
            {
                int have_buffered = 0;
                if( ssl->conf->transport == 1 &&
                    ssl_next_record_is_in_datagram( ssl ) == 0 )
                {
                    if( ssl_load_buffered_message( ssl ) == 0 )
                        have_buffered = 1;
                }
                if( have_buffered == 0 )
                {
                    ret = ssl_get_next_record( ssl );
                    if( ret == -0x6580 )
                        continue;
                    if( ret != 0 )
                    {
                        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 3955, ( "ssl_get_next_record" ), ret );
                        return( ret );
                    }
                }
            }
            ret = mbedtls_ssl_handle_message_type( ssl );
            if( ret == -0x6480 )
            {
                ret = ssl_buffer_message( ssl );
                if( ret != 0 )
                    return( ret );
                ret = -0x6580;
            }
        } while( -0x6680 == ret ||
                 -0x6580 == ret );
        if( 0 != ret )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 3980, ( "mbedtls_ssl_handle_message_type" ), ret );
            return( ret );
        }
        if( ssl->in_msgtype == 22 &&
            update_hs_digest == 1 )
        {
            mbedtls_ssl_update_handshake_status( ssl );
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3992, "reuse previously read message" );
        ssl->keep_current_message = 0;
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 3996, "<= read record" );
    return( 0 );
}
static int ssl_next_record_is_in_datagram( mbedtls_ssl_context *ssl )
{
    if( ssl->in_left > ssl->next_record_offset )
        return( 1 );
    return( 0 );
}
static int ssl_load_buffered_message( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    mbedtls_ssl_hs_buffer * hs_buf;
    int ret = 0;
    if( hs == ((void*)0) )
        return( -1 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4019, "=> ssl_load_buffered_messsage" );
    if( ssl->state == MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC ||
        ssl->state == MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC )
    {
        if( !hs->buffering.seen_ccs )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4028, "CCS not seen in the current flight" );
            ret = -1;
            goto exit;
        }
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4033, "Injecting buffered CCS message" );
        ssl->in_msgtype = 20;
        ssl->in_msglen = 1;
        ssl->in_msg[0] = 1;
        ssl->in_left = 0;
        ssl->next_record_offset = 0;
        hs->buffering.seen_ccs = 0;
        goto exit;
    }
    {
        unsigned offset;
        for( offset = 1; offset < 4; offset++ )
        {
            hs_buf = &hs->buffering.hs[offset];
            if( hs_buf->is_valid == 1 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4057, "Future message with sequence number %u %s buffered.", hs->in_msg_seq + offset, hs_buf->is_complete ? "fully" : "partially" );
            }
        }
    }
    hs_buf = &hs->buffering.hs[0];
    if( ( hs_buf->is_valid == 1 ) && ( hs_buf->is_complete == 1 ) )
    {
        size_t msg_len = ( hs_buf->data[1] << 16 ) |
                         ( hs_buf->data[2] << 8 ) |
                           hs_buf->data[3];
        if( msg_len + 12 > 16384 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4077, "should never happen" );
            return( -0x6C00 );
        }
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4081, "Next handshake message has been buffered - load" );
        mbedtls_debug_print_buf( ssl, 3, "ssl_msg.c", 4083, "Buffered handshake message (incl. header)", hs_buf->data, msg_len + 12 );
        ssl->in_msgtype = 22;
        ssl->in_hslen = msg_len + 12;
        ssl->in_msglen = msg_len + 12;
        memcpy( ssl->in_msg, hs_buf->data, ssl->in_hslen );
        ret = 0;
        goto exit;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4096, "Next handshake message %u not or only partially bufffered", hs->in_msg_seq );
    }
    ret = -1;
exit:
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4103, "<= ssl_load_buffered_message" );
    return( ret );
}
static int ssl_buffer_make_space( mbedtls_ssl_context *ssl,
                                  size_t desired )
{
    int offset;
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4113, "Attempt to free buffered messages to have %u bytes available", (unsigned) desired );
    ssl_free_buffered_record( ssl );
    if( desired <= ( 32768 -
                     hs->buffering.total_bytes_buffered ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4122, "Enough space available after freeing future epoch record" );
        return( 0 );
    }
    for( offset = 4 - 1;
         offset >= 0; offset-- )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4133, "Free buffering slot %d to make space for reassembly of next handshake message", offset );
        ssl_buffering_free_slot( ssl, (uint8_t) offset );
        if( desired <= ( 32768 -
                         hs->buffering.total_bytes_buffered ) )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4141, "Enough space available after freeing buffered HS messages" );
            return( 0 );
        }
    }
    return( -1 );
}
static int ssl_buffer_message( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    if( hs == ((void*)0) )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4157, "=> ssl_buffer_message" );
    switch( ssl->in_msgtype )
    {
        case 20:
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4162, "Remember CCS message" );
            hs->buffering.seen_ccs = 1;
            break;
        case 22:
        {
            unsigned recv_msg_seq_offset;
            unsigned recv_msg_seq = ( ssl->in_msg[4] << 8 ) | ssl->in_msg[5];
            mbedtls_ssl_hs_buffer *hs_buf;
            size_t msg_len = ssl->in_hslen - 12;
            if( recv_msg_seq < ssl->handshake->in_msg_seq )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4178, "should never happen" );
                return( -0x6C00 );
            }
            recv_msg_seq_offset = recv_msg_seq - ssl->handshake->in_msg_seq;
            if( recv_msg_seq_offset >= 4 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4190, "Ignore future HS message with sequence number %u, " "buffering window %u - %u", recv_msg_seq, ssl->handshake->in_msg_seq, ssl->handshake->in_msg_seq + 4 - 1 );
                goto exit;
            }
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4196, "Buffering HS message with sequence number %u, offset %u ", recv_msg_seq, recv_msg_seq_offset );
            hs_buf = &hs->buffering.hs[ recv_msg_seq_offset ];
            if( !hs_buf->is_valid )
            {
                size_t reassembly_buf_sz;
                hs_buf->is_fragmented =
                    ( ssl_hs_is_proper_fragment( ssl ) == 1 );
                if( msg_len + 12 > 16384 )
                {
                    goto exit;
                }
                if( hs->buffering.total_bytes_buffered >
                    32768 )
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4223, "should never happen" );
                    return( -0x6C00 );
                }
                reassembly_buf_sz = ssl_get_reassembly_buffer_size( msg_len,
                                                       hs_buf->is_fragmented );
                if( reassembly_buf_sz > ( 32768 -
                                          hs->buffering.total_bytes_buffered ) )
                {
                    if( recv_msg_seq_offset > 0 )
                    {
                        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4239, "Buffering of future message of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- ignore\n", (unsigned) msg_len, 32768, (unsigned) hs->buffering.total_bytes_buffered );
                        goto exit;
                    }
                    else
                    {
                        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4246, "Buffering of future message of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- attempt to make space by freeing buffered future messages\n", (unsigned) msg_len, 32768, (unsigned) hs->buffering.total_bytes_buffered );
                    }
                    if( ssl_buffer_make_space( ssl, reassembly_buf_sz ) != 0 )
                    {
                        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4255, "Reassembly of next message of size %u (%u with bitmap) would exceed the compile-time limit %u (already %u bytes buffered) -- fail\n", (unsigned) msg_len, (unsigned) reassembly_buf_sz, 32768, (unsigned) hs->buffering.total_bytes_buffered );
                        ret = -0x6A00;
                        goto exit;
                    }
                }
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4262, "initialize reassembly, total length = %d", msg_len );
                hs_buf->data = calloc( 1, reassembly_buf_sz );
                if( hs_buf->data == ((void*)0) )
                {
                    ret = -0x7F00;
                    goto exit;
                }
                hs_buf->data_len = reassembly_buf_sz;
                memcpy( hs_buf->data, ssl->in_msg, 6 );
                memset( hs_buf->data + 6, 0, 3 );
                memcpy( hs_buf->data + 9, hs_buf->data + 1, 3 );
                hs_buf->is_valid = 1;
                hs->buffering.total_bytes_buffered += reassembly_buf_sz;
            }
            else
            {
                if( memcmp( hs_buf->data, ssl->in_msg, 4 ) != 0 )
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4287, "Fragment header mismatch - ignore" );
                    goto exit;
                }
            }
            if( !hs_buf->is_complete )
            {
                size_t frag_len, frag_off;
                unsigned char * const msg = hs_buf->data + 12;
                frag_off = ssl_get_hs_frag_off( ssl );
                frag_len = ssl_get_hs_frag_len( ssl );
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4308, "adding fragment, offset = %d, length = %d", frag_off, frag_len );
                memcpy( msg + frag_off, ssl->in_msg + 12, frag_len );
                if( hs_buf->is_fragmented )
                {
                    unsigned char * const bitmask = msg + msg_len;
                    ssl_bitmask_set( bitmask, frag_off, frag_len );
                    hs_buf->is_complete = ( ssl_bitmask_check( bitmask,
                                                               msg_len ) == 0 );
                }
                else
                {
                    hs_buf->is_complete = 1;
                }
                mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4324, "message %scomplete", hs_buf->is_complete ? "" : "not yet " );
            }
            break;
        }
        default:
            break;
    }
exit:
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4337, "<= ssl_buffer_message" );
    return( ret );
}
static int ssl_consume_current_message( mbedtls_ssl_context *ssl )
{
    if( ssl->in_hslen != 0 )
    {
        if( ssl->in_offt != ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4374, "should never happen" );
            return( -0x6C00 );
        }
        if( ssl->in_hslen < ssl->in_msglen )
        {
            ssl->in_msglen -= ssl->in_hslen;
            memmove( ssl->in_msg, ssl->in_msg + ssl->in_hslen,
                     ssl->in_msglen );
            mbedtls_debug_print_buf( ssl, 4, "ssl_msg.c", 4406, "remaining content in record", ssl->in_msg, ssl->in_msglen );
        }
        else
        {
            ssl->in_msglen = 0;
        }
        ssl->in_hslen = 0;
    }
    else if( ssl->in_offt != ((void*)0) )
    {
        return( 0 );
    }
    else
    {
        ssl->in_msglen = 0;
    }
    return( 0 );
}
static int ssl_record_is_in_progress( mbedtls_ssl_context *ssl )
{
    if( ssl->in_msglen > 0 )
        return( 1 );
    return( 0 );
}
static void ssl_free_buffered_record( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    if( hs == ((void*)0) )
        return;
    if( hs->buffering.future_record.data != ((void*)0) )
    {
        hs->buffering.total_bytes_buffered -=
            hs->buffering.future_record.len;
        free( hs->buffering.future_record.data );
        hs->buffering.future_record.data = ((void*)0);
    }
}
static int ssl_load_buffered_record( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    unsigned char * rec;
    size_t rec_len;
    unsigned rec_epoch;
    size_t in_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    if( ssl->conf->transport != 1 )
        return( 0 );
    if( hs == ((void*)0) )
        return( 0 );
    rec = hs->buffering.future_record.data;
    rec_len = hs->buffering.future_record.len;
    rec_epoch = hs->buffering.future_record.epoch;
    if( rec == ((void*)0) )
        return( 0 );
    if( ssl_next_record_is_in_datagram( ssl ) == 1 )
        return( 0 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4484, "=> ssl_load_buffered_record" );
    if( rec_epoch != ssl->in_epoch )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4488, "Buffered record not from current epoch." );
        goto exit;
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4492, "Found buffered record from current epoch - load" );
    if( rec_len > in_buf_len - (size_t)( ssl->in_hdr - ssl->in_buf ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4497, "should never happen" );
        return( -0x6C00 );
    }
    memcpy( ssl->in_hdr, rec, rec_len );
    ssl->in_left = rec_len;
    ssl->next_record_offset = 0;
    ssl_free_buffered_record( ssl );
exit:
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4508, "<= ssl_load_buffered_record" );
    return( 0 );
}
static int ssl_buffer_future_record( mbedtls_ssl_context *ssl,
                                     mbedtls_record const *rec )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    if( hs == ((void*)0) )
        return( 0 );
    if( rec->type != 22 )
        return( 0 );
    if( hs->buffering.future_record.data != ((void*)0) )
        return( 0 );
    if( rec->buf_len > ( 32768 -
                         hs->buffering.total_bytes_buffered ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4536, "Buffering of future epoch record of size %u would exceed the compile-time limit %u (already %u bytes buffered) -- ignore\n", (unsigned) rec->buf_len, 32768, (unsigned) hs->buffering.total_bytes_buffered );
        return( 0 );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4542, "Buffer record from epoch %u", ssl->in_epoch + 1 );
    mbedtls_debug_print_buf( ssl, 3, "ssl_msg.c", 4543, "Buffered record", rec->buf, rec->buf_len );
    hs->buffering.future_record.epoch = ssl->in_epoch + 1;
    hs->buffering.future_record.len = rec->buf_len;
    hs->buffering.future_record.data =
        calloc( 1, hs->buffering.future_record.len );
    if( hs->buffering.future_record.data == ((void*)0) )
    {
        return( 0 );
    }
    memcpy( hs->buffering.future_record.data, rec->buf, rec->buf_len );
    hs->buffering.total_bytes_buffered += rec->buf_len;
    return( 0 );
}
static int ssl_get_next_record( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_record rec;
    ret = ssl_load_buffered_record( ssl );
    if( ret != 0 )
        return( ret );
    ret = mbedtls_ssl_fetch_input( ssl, mbedtls_ssl_in_hdr_len( ssl ) );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 4590, "mbedtls_ssl_fetch_input", ret );
        return( ret );
    }
    ret = ssl_parse_record_header( ssl, ssl->in_hdr, ssl->in_left, &rec );
    if( ret != 0 )
    {
        if( ssl->conf->transport == 1 )
        {
            if( ret == -0x6480 )
            {
                ret = ssl_buffer_future_record( ssl, &rec );
                if( ret != 0 )
                    return( ret );
                ret = -0x6700;
            }
            if( ret == -0x6700 )
            {
                mbedtls_ssl_update_in_pointers( ssl );
                ssl->in_msgtype = rec.type;
                ssl->in_iv = ssl->in_msg = ssl->in_len + 2;
                ssl->in_msglen = rec.data_len;
                ret = ssl_check_client_reconnect( ssl );
                mbedtls_debug_print_ret( ssl, 2, "ssl_msg.c", 4627, "ssl_check_client_reconnect", ret );
                if( ret != 0 )
                    return( ret );
                ssl->next_record_offset = rec.buf_len;
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4636, "discarding unexpected record " "(header)" );
            }
            else
            {
                ssl->next_record_offset = 0;
                ssl->in_left = 0;
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4645, "discarding invalid record " "(header)" );
            }
            return( -0x6580 );
        }
        else
        {
            return( ret );
        }
    }
    if( ssl->conf->transport == 1 )
    {
        ssl->next_record_offset = rec.buf_len;
        if( ssl->next_record_offset < ssl->in_left )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 4665, "more than one record within datagram" );
        }
    }
    else
    {
        ret = mbedtls_ssl_fetch_input( ssl, rec.buf_len );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 4677, "mbedtls_ssl_fetch_input", ret );
            return( ret );
        }
        ssl->in_left = 0;
    }
    if( ( ret = ssl_prepare_record_content( ssl, &rec ) ) != 0 )
    {
        if( ssl->conf->transport == 1 )
        {
            if( ret == -0x7180 )
            {
                if( ssl->state == MBEDTLS_SSL_CLIENT_FINISHED ||
                    ssl->state == MBEDTLS_SSL_SERVER_FINISHED )
                {
                    if( ret == -0x7180 )
                    {
                        mbedtls_ssl_send_alert_message( ssl,
                                2,
                                20 );
                    }
                    return( ret );
                }
                if( ssl->conf->badmac_limit != 0 &&
                    ++ssl->badmac_seen >= ssl->conf->badmac_limit )
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4717, "too many records with bad MAC" );
                    return( -0x7180 );
                }
                ssl->next_record_offset = 0;
                ssl->in_left = 0;
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4728, "discarding invalid record (mac)" );
                return( -0x6580 );
            }
            return( ret );
        }
        else
        {
            if( ret == -0x7180 )
            {
                mbedtls_ssl_send_alert_message( ssl,
                        2,
                        20 );
            }
            return( ret );
        }
    }
    mbedtls_ssl_update_in_pointers( ssl );
    ssl->in_iv = ssl->in_len + 2;
    ssl->in_msgtype = rec.type;
    ssl->in_hdr[0] = rec.type;
    ssl->in_msg = rec.buf + rec.data_offset;
    ssl->in_msglen = rec.data_len;
    ssl->in_len[0] = (unsigned char)( rec.data_len >> 8 );
    ssl->in_len[1] = (unsigned char)( rec.data_len );
    return( 0 );
}
int mbedtls_ssl_handle_message_type( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    if( ssl->in_msgtype == 22 )
    {
        if( ( ret = mbedtls_ssl_prepare_handshake_record( ssl ) ) != 0 )
        {
            return( ret );
        }
    }
    if( ssl->in_msgtype == 20 )
    {
        if( ssl->in_msglen != 1 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4816, "invalid CCS message, len: %d", ssl->in_msglen );
            return( -0x7200 );
        }
        if( ssl->in_msg[0] != 1 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4823, "invalid CCS message, content: %02x", ssl->in_msg[0] );
            return( -0x7200 );
        }
        if( ssl->conf->transport == 1 &&
            ssl->state != MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC &&
            ssl->state != MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC )
        {
            if( ssl->handshake == ((void*)0) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4834, "dropping ChangeCipherSpec outside handshake" );
                return( -0x6700 );
            }
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4838, "received out-of-order ChangeCipherSpec - remember" );
            return( -0x6480 );
        }
    }
    if( ssl->in_msgtype == 21 )
    {
        if( ssl->in_msglen != 2 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4852, "invalid alert message, len: %d", ssl->in_msglen );
            return( -0x7200 );
        }
        mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4857, "got an alert message, type: [%d:%d]", ssl->in_msg[0], ssl->in_msg[1] );
        if( ssl->in_msg[0] == 2 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4865, "is a fatal alert message (msg %d)", ssl->in_msg[1] );
            return( -0x7780 );
        }
        if( ssl->in_msg[0] == 1 &&
            ssl->in_msg[1] == 0 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4872, "is a close notify message" );
            return( -0x7880 );
        }
        if( ssl->in_msg[0] == 1 &&
            ssl->in_msg[1] == 100 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4880, "is a SSLv3 no renegotiation alert" );
            return( 0 );
        }
        return -0x6680;
    }
    if( ssl->conf->transport == 1 )
    {
        if( ssl->in_msgtype == 23 &&
            ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER
            && ! ( ssl->renego_status == 1 &&
                   ssl->state == MBEDTLS_SSL_SERVER_HELLO )
            )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 4915, "dropping unexpected ApplicationData" );
            return( -0x6680 );
        }
        if( ssl->handshake != ((void*)0) &&
            ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
        {
            mbedtls_ssl_handshake_wrapup_free_hs_transform( ssl );
        }
    }
    return( 0 );
}
int mbedtls_ssl_send_fatal_handshake_failure( mbedtls_ssl_context *ssl )
{
    return( mbedtls_ssl_send_alert_message( ssl,
                  2,
                  40 ) );
}
int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message )
{
    int ret = -0x006E;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4946, "=> send alert message" );
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 4947, "send alert level=%u message=%u", level, message );
    ssl->out_msgtype = 21;
    ssl->out_msglen = 2;
    ssl->out_msg[0] = level;
    ssl->out_msg[1] = message;
    if( ( ret = mbedtls_ssl_write_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 4956, "mbedtls_ssl_write_record", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4959, "<= send alert message" );
    return( 0 );
}
int mbedtls_ssl_write_change_cipher_spec( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4968, "=> write change cipher spec" );
    ssl->out_msgtype = 20;
    ssl->out_msglen = 1;
    ssl->out_msg[0] = 1;
    ssl->state++;
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 4978, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4982, "<= write change cipher spec" );
    return( 0 );
}
int mbedtls_ssl_parse_change_cipher_spec( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 4991, "=> parse change cipher spec" );
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 4995, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 20 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5001, "bad change cipher spec message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5014, "switching to new transform spec for inbound data" );
    ssl->transform_in = ssl->transform_negotiate;
    ssl->session_in = ssl->session_negotiate;
    if( ssl->conf->transport == 1 )
    {
        mbedtls_ssl_dtls_replay_reset( ssl );
        if( ++ssl->in_epoch == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5028, "DTLS epoch would wrap" );
            return( -0x6B80 );
        }
    }
    else
    memset( ssl->in_ctr, 0, 8 );
    mbedtls_ssl_update_in_pointers( ssl );
    ssl->state++;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5055, "<= parse change cipher spec" );
    return( 0 );
}
static size_t ssl_transform_get_explicit_iv_len(
                        mbedtls_ssl_transform const *transform )
{
    if( transform->minor_ver < 2 )
        return( 0 );
    return( transform->ivlen - transform->fixed_ivlen );
}
void mbedtls_ssl_update_out_pointers( mbedtls_ssl_context *ssl,
                                      mbedtls_ssl_transform *transform )
{
    if( ssl->conf->transport == 1 )
    {
        ssl->out_ctr = ssl->out_hdr + 3;
        ssl->out_len = ssl->out_ctr + 8;
        ssl->out_iv = ssl->out_len + 2;
    }
    else
    {
        ssl->out_ctr = ssl->out_hdr - 8;
        ssl->out_len = ssl->out_hdr + 3;
        ssl->out_iv = ssl->out_hdr + 5;
    }
    ssl->out_msg = ssl->out_iv;
    if( transform != ((void*)0) )
        ssl->out_msg += ssl_transform_get_explicit_iv_len( transform );
}
void mbedtls_ssl_update_in_pointers( mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
    {
        ssl->in_ctr = ssl->in_hdr + 3;
        ssl->in_len = ssl->in_ctr + 8;
        ssl->in_iv = ssl->in_len + 2;
    }
    else
    {
        ssl->in_ctr = ssl->in_hdr - 8;
        ssl->in_len = ssl->in_hdr + 3;
        ssl->in_iv = ssl->in_hdr + 5;
    }
    ssl->in_msg = ssl->in_iv;
}
void mbedtls_ssl_reset_in_out_pointers( mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
    {
        ssl->out_hdr = ssl->out_buf;
        ssl->in_hdr = ssl->in_buf;
    }
    else
    {
        ssl->out_hdr = ssl->out_buf + 8;
        ssl->in_hdr = ssl->in_buf + 8;
    }
    mbedtls_ssl_update_out_pointers( ssl, ((void*)0) );
    mbedtls_ssl_update_in_pointers ( ssl );
}
size_t mbedtls_ssl_get_bytes_avail( const mbedtls_ssl_context *ssl )
{
    return( ssl->in_offt == ((void*)0) ? 0 : ssl->in_msglen );
}
int mbedtls_ssl_check_pending( const mbedtls_ssl_context *ssl )
{
    if( ssl->keep_current_message == 1 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5204, "ssl_check_pending: record held back for processing" );
        return( 1 );
    }
    if( ssl->conf->transport == 1 &&
        ssl->in_left > ssl->next_record_offset )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5216, "ssl_check_pending: more records within current datagram" );
        return( 1 );
    }
    if( ssl->in_hslen > 0 && ssl->in_hslen < ssl->in_msglen )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5227, "ssl_check_pending: more handshake messages within current record" );
        return( 1 );
    }
    if( ssl->in_offt != ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5236, "ssl_check_pending: application data record is being processed" );
        return( 1 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5246, "ssl_check_pending: nothing pending" );
    return( 0 );
}
int mbedtls_ssl_get_record_expansion( const mbedtls_ssl_context *ssl )
{
    size_t transform_expansion = 0;
    const mbedtls_ssl_transform *transform = ssl->transform_out;
    unsigned block_size;
    size_t out_hdr_len = mbedtls_ssl_out_hdr_len( ssl );
    if( transform == ((void*)0) )
        return( (int) out_hdr_len );
    switch( mbedtls_cipher_get_cipher_mode( &transform->cipher_ctx_enc ) )
    {
        case MBEDTLS_MODE_GCM:
        case MBEDTLS_MODE_CCM:
        case MBEDTLS_MODE_CHACHAPOLY:
        case MBEDTLS_MODE_STREAM:
            transform_expansion = transform->minlen;
            break;
        case MBEDTLS_MODE_CBC:
            block_size = mbedtls_cipher_get_block_size(
                &transform->cipher_ctx_enc );
            transform_expansion += transform->maclen;
            transform_expansion += block_size;
            if( ssl->minor_ver >= 2 )
                transform_expansion += block_size;
            break;
        default:
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5299, "should never happen" );
            return( -0x6C00 );
    }
    return( (int)( out_hdr_len + transform_expansion ) );
}
static int ssl_check_ctr_renegotiate( mbedtls_ssl_context *ssl )
{
    size_t ep_len = mbedtls_ssl_ep_len( ssl );
    int in_ctr_cmp;
    int out_ctr_cmp;
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER ||
        ssl->renego_status == 3 ||
        ssl->conf->disable_renegotiation == 0 )
    {
        return( 0 );
    }
    in_ctr_cmp = memcmp( ssl->in_ctr + ep_len,
                        ssl->conf->renego_period + ep_len, 8 - ep_len );
    out_ctr_cmp = memcmp( ssl->cur_out_ctr + ep_len,
                          ssl->conf->renego_period + ep_len, 8 - ep_len );
    if( in_ctr_cmp <= 0 && out_ctr_cmp <= 0 )
    {
        return( 0 );
    }
    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5338, "record counter limit reached: renegotiate" );
    return( mbedtls_ssl_renegotiate( ssl ) );
}
int mbedtls_ssl_read( mbedtls_ssl_context *ssl, unsigned char *buf, size_t len )
{
    int ret = -0x006E;
    size_t n;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5354, "=> read" );
    if( ssl->conf->transport == 1 )
    {
        if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
            return( ret );
        if( ssl->handshake != ((void*)0) &&
            ssl->handshake->retransmit_state == 1 )
        {
            if( ( ret = mbedtls_ssl_flight_transmit( ssl ) ) != 0 )
                return( ret );
        }
    }
    ret = ssl_check_ctr_renegotiate( ssl );
    if( ret != -0x6B00 &&
        ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5388, "ssl_check_ctr_renegotiate", ret );
        return( ret );
    }
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = mbedtls_ssl_handshake( ssl );
        if( ret != -0x6B00 &&
            ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5399, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }
    while( ssl->in_offt == ((void*)0) )
    {
        if( ssl->f_get_timer != ((void*)0) &&
            ssl->f_get_timer( ssl->p_timer ) == -1 )
        {
            mbedtls_ssl_set_timer( ssl, ssl->conf->read_timeout );
        }
        if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
        {
            if( ret == -0x7280 )
                return( 0 );
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5419, "mbedtls_ssl_read_record", ret );
            return( ret );
        }
        if( ssl->in_msglen == 0 &&
            ssl->in_msgtype == 23 )
        {
            if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
            {
                if( ret == -0x7280 )
                    return( 0 );
                mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5434, "mbedtls_ssl_read_record", ret );
                return( ret );
            }
        }
        if( ssl->in_msgtype == 22 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5441, "received handshake message" );
            if( ssl->conf->endpoint == 0 &&
                ( ssl->in_msg[0] != 0 ||
                  ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) ) )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5454, "handshake received (not HelloRequest)" );
                if( ssl->conf->transport == 1 )
                {
                    continue;
                }
                return( -0x7700 );
            }
            if( ssl->conf->endpoint == 1 &&
                ssl->in_msg[0] != 1 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5471, "handshake received (not ClientHello)" );
                if( ssl->conf->transport == 1 )
                {
                    continue;
                }
                return( -0x7700 );
            }
            if( ! ( ssl->conf->disable_renegotiation == 0 ||
                    ( ssl->secure_renegotiation == 0 &&
                      ssl->conf->allow_legacy_renegotiation ==
                                                   0 ) ) )
            {
                if( ssl->conf->transport == 1 &&
                    ssl->conf->endpoint == 0 )
                {
                    ssl->renego_status = 3;
                }
                ret = mbedtls_ssl_start_renegotiation( ssl );
                if( ret != -0x6B00 &&
                    ret != 0 )
                {
                    mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5508, "mbedtls_ssl_start_renegotiation", ret );
                    return( ret );
                }
            }
            else
            {
                mbedtls_debug_print_msg( ssl, 3, "ssl_msg.c", 5519, "refusing renegotiation, sending alert" );
                if( ssl->minor_ver >= 1 )
                {
                    if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                                    1,
                                    100 ) ) != 0 )
                    {
                        return( ret );
                    }
                }
                else
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5547, "should never happen" );
                    return( -0x6C00 );
                }
            }
            continue;
        }
        else if( ssl->renego_status == 3 )
        {
            if( ssl->conf->renego_max_records >= 0 )
            {
                if( ++ssl->renego_records_seen > ssl->conf->renego_max_records )
                {
                    mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5580, "renegotiation requested, " "but not honored by client" );
                    return( -0x7700 );
                }
            }
        }
        if( ssl->in_msgtype == 21 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5590, "ignoring non-fatal non-closure alert" );
            return( -0x6900 );
        }
        if( ssl->in_msgtype != 23 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5596, "bad application data message" );
            return( -0x7700 );
        }
        ssl->in_offt = ssl->in_msg;
        if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
            mbedtls_ssl_set_timer( ssl, 0 );
        if( ssl->conf->endpoint == 1 &&
            ssl->renego_status == 3 )
        {
            if( ( ret = mbedtls_ssl_resend_hello_request( ssl ) ) != 0 )
            {
                mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5618, "mbedtls_ssl_resend_hello_request", ret );
                return( ret );
            }
        }
    }
    n = ( len < ssl->in_msglen )
        ? len : ssl->in_msglen;
    memcpy( buf, ssl->in_offt, n );
    ssl->in_msglen -= n;
    mbedtls_platform_zeroize( ssl->in_offt, n );
    if( ssl->in_msglen == 0 )
    {
        ssl->in_offt = ((void*)0);
        ssl->keep_current_message = 0;
    }
    else
    {
        ssl->in_offt += n;
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5648, "<= read" );
    return( (int) n );
}
static int ssl_write_real( mbedtls_ssl_context *ssl,
                           const unsigned char *buf, size_t len )
{
    int ret = mbedtls_ssl_get_max_out_record_payload( ssl );
    const size_t max_len = (size_t) ret;
    if( ret < 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5673, "mbedtls_ssl_get_max_out_record_payload", ret );
        return( ret );
    }
    if( len > max_len )
    {
        if( ssl->conf->transport == 1 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_msg.c", 5684, "fragment larger than the (negotiated) " "maximum fragment length: %d > %d", len, max_len );
            return( -0x7100 );
        }
        else
            len = max_len;
    }
    if( ssl->out_left != 0 )
    {
        if( ( ret = mbedtls_ssl_flush_output( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5702, "mbedtls_ssl_flush_output", ret );
            return( ret );
        }
    }
    else
    {
        ssl->out_msglen = len;
        ssl->out_msgtype = 23;
        memcpy( ssl->out_msg, buf, len );
        if( ( ret = mbedtls_ssl_write_record( ssl, 1 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5719, "mbedtls_ssl_write_record", ret );
            return( ret );
        }
    }
    return( (int) len );
}
static int ssl_write_split( mbedtls_ssl_context *ssl,
                            const unsigned char *buf, size_t len )
{
    int ret = -0x006E;
    if( ssl->conf->cbc_record_splitting ==
            0 ||
        len <= 1 ||
        ssl->minor_ver > 1 ||
        mbedtls_cipher_get_cipher_mode( &ssl->transform_out->cipher_ctx_enc )
                                != MBEDTLS_MODE_CBC )
    {
        return( ssl_write_real( ssl, buf, len ) );
    }
    if( ssl->split_done == 0 )
    {
        if( ( ret = ssl_write_real( ssl, buf, 1 ) ) <= 0 )
            return( ret );
        ssl->split_done = 1;
    }
    if( ( ret = ssl_write_real( ssl, buf + 1, len - 1 ) ) <= 0 )
        return( ret );
    ssl->split_done = 0;
    return( ret + 1 );
}
int mbedtls_ssl_write( mbedtls_ssl_context *ssl, const unsigned char *buf, size_t len )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5772, "=> write" );
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    if( ( ret = ssl_check_ctr_renegotiate( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5780, "ssl_check_ctr_renegotiate", ret );
        return( ret );
    }
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5789, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }
    ret = ssl_write_split( ssl, buf, len );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5800, "<= write" );
    return( ret );
}
int mbedtls_ssl_close_notify( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5815, "=> write close notify" );
    if( ssl->out_left != 0 )
        return( mbedtls_ssl_flush_output( ssl ) );
    if( ssl->state == MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        if( ( ret = mbedtls_ssl_send_alert_message( ssl,
                        1,
                        0 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_msg.c", 5826, "mbedtls_ssl_send_alert_message", ret );
            return( ret );
        }
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_msg.c", 5831, "<= write close notify" );
    return( 0 );
}
void mbedtls_ssl_transform_free( mbedtls_ssl_transform *transform )
{
    if( transform == ((void*)0) )
        return;
    mbedtls_cipher_free( &transform->cipher_ctx_enc );
    mbedtls_cipher_free( &transform->cipher_ctx_dec );
    mbedtls_md_free( &transform->md_ctx_enc );
    mbedtls_md_free( &transform->md_ctx_dec );
    mbedtls_platform_zeroize( transform, sizeof( mbedtls_ssl_transform ) );
}
void mbedtls_ssl_buffering_free( mbedtls_ssl_context *ssl )
{
    unsigned offset;
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    if( hs == ((void*)0) )
        return;
    ssl_free_buffered_record( ssl );
    for( offset = 0; offset < 4; offset++ )
        ssl_buffering_free_slot( ssl, offset );
}
static void ssl_buffering_free_slot( mbedtls_ssl_context *ssl,
                                     uint8_t slot )
{
    mbedtls_ssl_handshake_params * const hs = ssl->handshake;
    mbedtls_ssl_hs_buffer * const hs_buf = &hs->buffering.hs[slot];
    if( slot >= 4 )
        return;
    if( hs_buf->is_valid == 1 )
    {
        hs->buffering.total_bytes_buffered -= hs_buf->data_len;
        mbedtls_platform_zeroize( hs_buf->data, hs_buf->data_len );
        free( hs_buf->data );
        memset( hs_buf, 0, sizeof( mbedtls_ssl_hs_buffer ) );
    }
}
void mbedtls_ssl_write_version( int major, int minor, int transport,
                        unsigned char ver[2] )
{
    if( transport == 1 )
    {
        if( minor == 2 )
            --minor;
        ver[0] = (unsigned char)( 255 - ( major - 2 ) );
        ver[1] = (unsigned char)( 255 - ( minor - 1 ) );
    }
    else
    {
        ver[0] = (unsigned char) major;
        ver[1] = (unsigned char) minor;
    }
}
void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] )
{
    if( transport == 1 )
    {
        *major = 255 - ver[0] + 2;
        *minor = 255 - ver[1] + 1;
        if( *minor == 1 )
            ++*minor;
    }
    else
    {
        *major = ver[0];
        *minor = ver[1];
    }
}
