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
static unsigned int ssl_mfl_code_to_length( int mfl )
{
    switch( mfl )
    {
    case 0:
        return ( ( (16384 > 16384) ? ( 16384 ) : ( 16384 ) ) );
    case 1:
        return 512;
    case 2:
        return 1024;
    case 3:
        return 2048;
    case 4:
        return 4096;
    default:
        return ( ( (16384 > 16384) ? ( 16384 ) : ( 16384 ) ) );
    }
}
int mbedtls_ssl_session_copy( mbedtls_ssl_session *dst,
                              const mbedtls_ssl_session *src )
{
    mbedtls_ssl_session_free( dst );
    memcpy( dst, src, sizeof( mbedtls_ssl_session ) );
    if( src->peer_cert != ((void*)0) )
    {
        int ret = -0x006E;
        dst->peer_cert = calloc( 1, sizeof(mbedtls_x509_crt) );
        if( dst->peer_cert == ((void*)0) )
            return( -0x7F00 );
        mbedtls_x509_crt_init( dst->peer_cert );
        if( ( ret = mbedtls_x509_crt_parse_der( dst->peer_cert, src->peer_cert->raw.p,
                                        src->peer_cert->raw.len ) ) != 0 )
        {
            free( dst->peer_cert );
            dst->peer_cert = ((void*)0);
            return( ret );
        }
    }
    if( src->ticket != ((void*)0) )
    {
        dst->ticket = calloc( 1, src->ticket_len );
        if( dst->ticket == ((void*)0) )
            return( -0x7F00 );
        memcpy( dst->ticket, src->ticket, src->ticket_len );
    }
    return( 0 );
}
static int tls1_prf( const unsigned char *secret, size_t slen,
                     const char *label,
                     const unsigned char *random, size_t rlen,
                     unsigned char *dstbuf, size_t dlen )
{
    size_t nb, hs;
    size_t i, j, k;
    const unsigned char *S1, *S2;
    unsigned char *tmp;
    size_t tmp_len = 0;
    unsigned char h_i[20];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret = -0x006E;
    mbedtls_md_init( &md_ctx );
    tmp_len = 20 + strlen( label ) + rlen;
    tmp = calloc( 1, tmp_len );
    if( tmp == ((void*)0) )
    {
        ret = -0x7F00;
        goto exit;
    }
    hs = ( slen + 1 ) / 2;
    S1 = secret;
    S2 = secret + slen - hs;
    nb = strlen( label );
    memcpy( tmp + 20, label, nb );
    memcpy( tmp + 20 + nb, random, rlen );
    nb += rlen;
    if( ( md_info = mbedtls_md_info_from_type( MBEDTLS_MD_MD5 ) ) == ((void*)0) )
    {
        ret = -0x6C00;
        goto exit;
    }
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 1 ) ) != 0 )
    {
        goto exit;
    }
    mbedtls_md_hmac_starts( &md_ctx, S1, hs );
    mbedtls_md_hmac_update( &md_ctx, tmp + 20, nb );
    mbedtls_md_hmac_finish( &md_ctx, 4 + tmp );
    for( i = 0; i < dlen; i += 16 )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, 4 + tmp, 16 + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, 4 + tmp, 16 );
        mbedtls_md_hmac_finish( &md_ctx, 4 + tmp );
        k = ( i + 16 > dlen ) ? dlen % 16 : 16;
        for( j = 0; j < k; j++ )
            dstbuf[i + j] = h_i[j];
    }
    mbedtls_md_free( &md_ctx );
    if( ( md_info = mbedtls_md_info_from_type( MBEDTLS_MD_SHA1 ) ) == ((void*)0) )
    {
        ret = -0x6C00;
        goto exit;
    }
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 1 ) ) != 0 )
    {
        goto exit;
    }
    mbedtls_md_hmac_starts( &md_ctx, S2, hs );
    mbedtls_md_hmac_update( &md_ctx, tmp + 20, nb );
    mbedtls_md_hmac_finish( &md_ctx, tmp );
    for( i = 0; i < dlen; i += 20 )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, 20 + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, 20 );
        mbedtls_md_hmac_finish( &md_ctx, tmp );
        k = ( i + 20 > dlen ) ? dlen % 20 : 20;
        for( j = 0; j < k; j++ )
            dstbuf[i + j] = (unsigned char)( dstbuf[i + j] ^ h_i[j] );
    }
exit:
    mbedtls_md_free( &md_ctx );
    mbedtls_platform_zeroize( tmp, tmp_len );
    mbedtls_platform_zeroize( h_i, sizeof( h_i ) );
    free( tmp );
    return( ret );
}
static int tls_prf_generic( mbedtls_md_type_t md_type,
                            const unsigned char *secret, size_t slen,
                            const char *label,
                            const unsigned char *random, size_t rlen,
                            unsigned char *dstbuf, size_t dlen )
{
    size_t nb;
    size_t i, j, k, md_len;
    unsigned char *tmp;
    size_t tmp_len = 0;
    unsigned char h_i[64];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret = -0x006E;
    mbedtls_md_init( &md_ctx );
    if( ( md_info = mbedtls_md_info_from_type( md_type ) ) == ((void*)0) )
        return( -0x6C00 );
    md_len = mbedtls_md_get_size( md_info );
    tmp_len = md_len + strlen( label ) + rlen;
    tmp = calloc( 1, tmp_len );
    if( tmp == ((void*)0) )
    {
        ret = -0x7F00;
        goto exit;
    }
    nb = strlen( label );
    memcpy( tmp + md_len, label, nb );
    memcpy( tmp + md_len + nb, random, rlen );
    nb += rlen;
    if ( ( ret = mbedtls_md_setup( &md_ctx, md_info, 1 ) ) != 0 )
        goto exit;
    mbedtls_md_hmac_starts( &md_ctx, secret, slen );
    mbedtls_md_hmac_update( &md_ctx, tmp + md_len, nb );
    mbedtls_md_hmac_finish( &md_ctx, tmp );
    for( i = 0; i < dlen; i += md_len )
    {
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len + nb );
        mbedtls_md_hmac_finish( &md_ctx, h_i );
        mbedtls_md_hmac_reset ( &md_ctx );
        mbedtls_md_hmac_update( &md_ctx, tmp, md_len );
        mbedtls_md_hmac_finish( &md_ctx, tmp );
        k = ( i + md_len > dlen ) ? dlen % md_len : md_len;
        for( j = 0; j < k; j++ )
            dstbuf[i + j] = h_i[j];
    }
exit:
    mbedtls_md_free( &md_ctx );
    mbedtls_platform_zeroize( tmp, tmp_len );
    mbedtls_platform_zeroize( h_i, sizeof( h_i ) );
    free( tmp );
    return( ret );
}
static int tls_prf_sha256( const unsigned char *secret, size_t slen,
                           const char *label,
                           const unsigned char *random, size_t rlen,
                           unsigned char *dstbuf, size_t dlen )
{
    return( tls_prf_generic( MBEDTLS_MD_SHA256, secret, slen,
                             label, random, rlen, dstbuf, dlen ) );
}
static int tls_prf_sha384( const unsigned char *secret, size_t slen,
                           const char *label,
                           const unsigned char *random, size_t rlen,
                           unsigned char *dstbuf, size_t dlen )
{
    return( tls_prf_generic( MBEDTLS_MD_SHA384, secret, slen,
                             label, random, rlen, dstbuf, dlen ) );
}
static void ssl_update_checksum_start( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_update_checksum_md5sha1( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_calc_verify_tls( const mbedtls_ssl_context *, unsigned char *, size_t * );
static void ssl_calc_finished_tls( mbedtls_ssl_context *, unsigned char *, int );
static void ssl_update_checksum_sha256( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_calc_verify_tls_sha256( const mbedtls_ssl_context *,unsigned char *, size_t * );
static void ssl_calc_finished_tls_sha256( mbedtls_ssl_context *,unsigned char *, int );
static void ssl_update_checksum_sha384( mbedtls_ssl_context *, const unsigned char *, size_t );
static void ssl_calc_verify_tls_sha384( const mbedtls_ssl_context *, unsigned char *, size_t * );
static void ssl_calc_finished_tls_sha384( mbedtls_ssl_context *, unsigned char *, int );
static mbedtls_tls_prf_types tls_prf_get_type( mbedtls_ssl_tls_prf_cb *tls_prf )
{
    if( tls_prf == tls1_prf )
    {
        return( MBEDTLS_SSL_TLS_PRF_TLS1 );
    }
    else
    if( tls_prf == tls_prf_sha384 )
    {
        return( MBEDTLS_SSL_TLS_PRF_SHA384 );
    }
    else
    if( tls_prf == tls_prf_sha256 )
    {
        return( MBEDTLS_SSL_TLS_PRF_SHA256 );
    }
    else
    return( MBEDTLS_SSL_TLS_PRF_NONE );
}
int mbedtls_ssl_tls_prf( const mbedtls_tls_prf_types prf,
                          const unsigned char *secret, size_t slen,
                          const char *label,
                          const unsigned char *random, size_t rlen,
                          unsigned char *dstbuf, size_t dlen )
{
    mbedtls_ssl_tls_prf_cb *tls_prf = ((void*)0);
    switch( prf )
    {
        case MBEDTLS_SSL_TLS_PRF_TLS1:
            tls_prf = tls1_prf;
        break;
        case MBEDTLS_SSL_TLS_PRF_SHA384:
            tls_prf = tls_prf_sha384;
        break;
        case MBEDTLS_SSL_TLS_PRF_SHA256:
            tls_prf = tls_prf_sha256;
        break;
    default:
        return( -0x7080 );
    }
    return( tls_prf( secret, slen, label, random, rlen, dstbuf, dlen ) );
}
typedef int ssl_tls_prf_t(const unsigned char *, size_t, const char *,
                          const unsigned char *, size_t,
                          unsigned char *, size_t);
static int ssl_populate_transform( mbedtls_ssl_transform *transform,
                                   int ciphersuite,
                                   const unsigned char master[48],
                                   int encrypt_then_mac,
                                   int trunc_hmac,
                                   ssl_tls_prf_t tls_prf,
                                   const unsigned char randbytes[64],
                                   int minor_ver,
                                   unsigned endpoint,
                                   const
                                   mbedtls_ssl_context *ssl )
{
    int ret = 0;
    unsigned char keyblk[256];
    unsigned char *key1;
    unsigned char *key2;
    unsigned char *mac_enc;
    unsigned char *mac_dec;
    size_t mac_key_len = 0;
    size_t iv_copy_len;
    unsigned keylen;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;
    const mbedtls_cipher_info_t *cipher_info;
    const mbedtls_md_info_t *md_info;
    transform->encrypt_then_mac = encrypt_then_mac;
    transform->minor_ver = minor_ver;
    memcpy( transform->randbytes, randbytes, sizeof( transform->randbytes ) );
    ciphersuite_info = mbedtls_ssl_ciphersuite_from_id( ciphersuite );
    if( ciphersuite_info == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 894, "ciphersuite info for %d not found", ciphersuite );
        return( -0x7100 );
    }
    cipher_info = mbedtls_cipher_info_from_type( ciphersuite_info->cipher );
    if( cipher_info == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 902, "cipher info for %d not found", ciphersuite_info->cipher );
        return( -0x7100 );
    }
    md_info = mbedtls_md_info_from_type( ciphersuite_info->mac );
    if( md_info == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 910, "mbedtls_md info for %d not found", ciphersuite_info->mac );
        return( -0x7100 );
    }
    ret = tls_prf( master, 48, "key expansion", randbytes, 64, keyblk, 256 );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 940, "prf", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 945, "ciphersuite = %s", mbedtls_ssl_get_ciphersuite_name( ciphersuite ) );
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 946, "master secret", master, 48 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 947, "random bytes", randbytes, 64 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 948, "key block", keyblk, 256 );
    keylen = cipher_info->key_bitlen / 8;
    if( cipher_info->mode == MBEDTLS_MODE_GCM ||
        cipher_info->mode == MBEDTLS_MODE_CCM ||
        cipher_info->mode == MBEDTLS_MODE_CHACHAPOLY )
    {
        size_t explicit_ivlen;
        transform->maclen = 0;
        mac_key_len = 0;
        transform->taglen =
            ciphersuite_info->flags & 0x02 ? 8 : 16;
        transform->ivlen = 12;
        {
            if( cipher_info->mode == MBEDTLS_MODE_CHACHAPOLY )
                transform->fixed_ivlen = 12;
            else
                transform->fixed_ivlen = 4;
        }
        explicit_ivlen = transform->ivlen - transform->fixed_ivlen;
        transform->minlen = explicit_ivlen + transform->taglen;
    }
    else
    if( cipher_info->mode == MBEDTLS_MODE_STREAM ||
        cipher_info->mode == MBEDTLS_MODE_CBC )
    {
        if( ( ret = mbedtls_md_setup( &transform->md_ctx_enc, md_info, 1 ) ) != 0 ||
            ( ret = mbedtls_md_setup( &transform->md_ctx_dec, md_info, 1 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1007, "mbedtls_md_setup", ret );
            goto end;
        }
        mac_key_len = mbedtls_md_get_size( md_info );
        transform->maclen = mac_key_len;
        if( trunc_hmac == 1 )
        {
            transform->maclen = 10;
        }
        transform->ivlen = cipher_info->iv_size;
        if( cipher_info->mode == MBEDTLS_MODE_STREAM )
            transform->minlen = transform->maclen;
        else
        {
            if( encrypt_then_mac == 1 )
            {
                transform->minlen = transform->maclen
                                  + cipher_info->block_size;
            }
            else
            {
                transform->minlen = transform->maclen
                                  + cipher_info->block_size
                                  - transform->maclen % cipher_info->block_size;
            }
            if( minor_ver == 0 ||
                minor_ver == 1 )
                ;
            else
            if( minor_ver == 2 ||
                minor_ver == 3 )
            {
                transform->minlen += transform->ivlen;
            }
            else
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1077, "should never happen" );
                ret = -0x6C00;
                goto end;
            }
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1086, "should never happen" );
        return( -0x6C00 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 1094, "keylen: %u, minlen: %u, ivlen: %u, maclen: %u", (unsigned) keylen, (unsigned) transform->minlen, (unsigned) transform->ivlen, (unsigned) transform->maclen );
    if( endpoint == 0 )
    {
        key1 = keyblk + mac_key_len * 2;
        key2 = keyblk + mac_key_len * 2 + keylen;
        mac_enc = keyblk;
        mac_dec = keyblk + mac_key_len;
        iv_copy_len = ( transform->fixed_ivlen ) ?
                            transform->fixed_ivlen : transform->ivlen;
        memcpy( transform->iv_enc, key2 + keylen, iv_copy_len );
        memcpy( transform->iv_dec, key2 + keylen + iv_copy_len,
                iv_copy_len );
    }
    else
    if( endpoint == 1 )
    {
        key1 = keyblk + mac_key_len * 2 + keylen;
        key2 = keyblk + mac_key_len * 2;
        mac_enc = keyblk + mac_key_len;
        mac_dec = keyblk;
        iv_copy_len = ( transform->fixed_ivlen ) ?
                            transform->fixed_ivlen : transform->ivlen;
        memcpy( transform->iv_dec, key1 + keylen, iv_copy_len );
        memcpy( transform->iv_enc, key1 + keylen + iv_copy_len,
                iv_copy_len );
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1140, "should never happen" );
        ret = -0x6C00;
        goto end;
    }
    if( minor_ver >= 1 )
    {
        if( mac_key_len != 0 )
        {
            mbedtls_md_hmac_starts( &transform->md_ctx_enc, mac_enc, mac_key_len );
            mbedtls_md_hmac_starts( &transform->md_ctx_dec, mac_dec, mac_key_len );
        }
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1176, "should never happen" );
        ret = -0x6C00;
        goto end;
    }
    ((void) mac_dec);
    ((void) mac_enc);
    if( ssl->conf->f_export_keys != ((void*)0) )
    {
        ssl->conf->f_export_keys( ssl->conf->p_export_keys,
                                  master, keyblk,
                                  mac_key_len, keylen,
                                  iv_copy_len );
    }
    if( ssl->conf->f_export_keys_ext != ((void*)0) )
    {
        ssl->conf->f_export_keys_ext( ssl->conf->p_export_keys,
                                      master, keyblk,
                                      mac_key_len, keylen,
                                      iv_copy_len,
                                      randbytes + 32,
                                      randbytes,
                                      tls_prf_get_type( tls_prf ) );
    }
    if( ( ret = mbedtls_cipher_setup( &transform->cipher_ctx_enc,
                                 cipher_info ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1266, "mbedtls_cipher_setup", ret );
        goto end;
    }
    if( ( ret = mbedtls_cipher_setup( &transform->cipher_ctx_dec,
                                 cipher_info ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1309, "mbedtls_cipher_setup", ret );
        goto end;
    }
    if( ( ret = mbedtls_cipher_setkey( &transform->cipher_ctx_enc, key1,
                               cipher_info->key_bitlen,
                               MBEDTLS_ENCRYPT ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1317, "mbedtls_cipher_setkey", ret );
        goto end;
    }
    if( ( ret = mbedtls_cipher_setkey( &transform->cipher_ctx_dec, key2,
                               cipher_info->key_bitlen,
                               MBEDTLS_DECRYPT ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1325, "mbedtls_cipher_setkey", ret );
        goto end;
    }
    if( cipher_info->mode == MBEDTLS_MODE_CBC )
    {
        if( ( ret = mbedtls_cipher_set_padding_mode( &transform->cipher_ctx_enc,
                                             MBEDTLS_PADDING_NONE ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1335, "mbedtls_cipher_set_padding_mode", ret );
            goto end;
        }
        if( ( ret = mbedtls_cipher_set_padding_mode( &transform->cipher_ctx_dec,
                                             MBEDTLS_PADDING_NONE ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1342, "mbedtls_cipher_set_padding_mode", ret );
            goto end;
        }
    }
end:
    mbedtls_platform_zeroize( keyblk, sizeof( keyblk ) );
    return( ret );
}
static int ssl_set_handshake_prfs( mbedtls_ssl_handshake_params *handshake,
                                   int minor_ver,
                                   mbedtls_md_type_t hash )
{
    if( minor_ver < 3 )
    {
        handshake->tls_prf = tls1_prf;
        handshake->calc_verify = ssl_calc_verify_tls;
        handshake->calc_finished = ssl_calc_finished_tls;
    }
    else
    if( minor_ver == 3 &&
        hash == MBEDTLS_MD_SHA384 )
    {
        handshake->tls_prf = tls_prf_sha384;
        handshake->calc_verify = ssl_calc_verify_tls_sha384;
        handshake->calc_finished = ssl_calc_finished_tls_sha384;
    }
    else
    if( minor_ver == 3 )
    {
        handshake->tls_prf = tls_prf_sha256;
        handshake->calc_verify = ssl_calc_verify_tls_sha256;
        handshake->calc_finished = ssl_calc_finished_tls_sha256;
    }
    else
    {
        return( -0x6C00 );
    }
    return( 0 );
}
static int ssl_compute_master( mbedtls_ssl_handshake_params *handshake,
                               unsigned char *master,
                               const mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    size_t const master_secret_len = 48;
    unsigned char session_hash[48];
    char const *lbl = "master secret";
    unsigned char const *salt = handshake->randbytes;
    size_t salt_len = 64;
    if( handshake->resume != 0 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 1492, "no premaster (session resumed)" );
        return( 0 );
    }
    if( handshake->extended_ms == 1 )
    {
        lbl = "extended master secret";
        salt = session_hash;
        handshake->calc_verify( ssl, session_hash, &salt_len );
        mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 1504, "session hash for extended master secret", session_hash, salt_len );
    }
    {
        ret = handshake->tls_prf( handshake->premaster, handshake->pmslen,
                                  lbl, salt, salt_len,
                                  master,
                                  master_secret_len );
        if( ret != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1564, "prf", ret );
            return( ret );
        }
        mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 1570, "premaster secret", handshake->premaster, handshake->pmslen );
        mbedtls_platform_zeroize( handshake->premaster,
                                  sizeof(handshake->premaster) );
    }
    return( 0 );
}
int mbedtls_ssl_derive_keys( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    const mbedtls_ssl_ciphersuite_t * const ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1585, "=> derive keys" );
    ret = ssl_set_handshake_prfs( ssl->handshake,
                                  ssl->minor_ver,
                                  ciphersuite_info->mac );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1593, "ssl_set_handshake_prfs", ret );
        return( ret );
    }
    ret = ssl_compute_master( ssl->handshake,
                              ssl->session_negotiate->master,
                              ssl );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1603, "ssl_compute_master", ret );
        return( ret );
    }
    {
        unsigned char tmp[64];
        memcpy( tmp, ssl->handshake->randbytes, 64 );
        memcpy( ssl->handshake->randbytes, tmp + 32, 32 );
        memcpy( ssl->handshake->randbytes + 32, tmp, 32 );
        mbedtls_platform_zeroize( tmp, sizeof( tmp ) );
    }
    ret = ssl_populate_transform( ssl->transform_negotiate,
                                  ssl->session_negotiate->ciphersuite,
                                  ssl->session_negotiate->master,
                                  ssl->session_negotiate->encrypt_then_mac,
                                  ssl->session_negotiate->trunc_hmac,
                                  ssl->handshake->tls_prf,
                                  ssl->handshake->randbytes,
                                  ssl->minor_ver,
                                  ssl->conf->endpoint,
                                  ssl );
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1640, "ssl_populate_transform", ret );
        return( ret );
    }
    mbedtls_platform_zeroize( ssl->handshake->randbytes,
                      sizeof( ssl->handshake->randbytes ) );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1664, "<= derive keys" );
    return( 0 );
}
void ssl_calc_verify_tls( const mbedtls_ssl_context *ssl,
                          unsigned char hash[36],
                          size_t *hlen )
{
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1730, "=> calc verify tls" );
    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );
    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );
    mbedtls_md5_finish_ret( &md5, hash );
    mbedtls_sha1_finish_ret( &sha1, hash + 16 );
    *hlen = 36;
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 1743, "calculated verify result", hash, *hlen );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1744, "<= calc verify" );
    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );
    return;
}
void ssl_calc_verify_tls_sha256( const mbedtls_ssl_context *ssl,
                                 unsigned char hash[32],
                                 size_t *hlen )
{
    mbedtls_sha256_context sha256;
    mbedtls_sha256_init( &sha256 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1787, "=> calc verify sha256" );
    mbedtls_sha256_clone( &sha256, &ssl->handshake->fin_sha256 );
    mbedtls_sha256_finish_ret( &sha256, hash );
    *hlen = 32;
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 1794, "calculated verify result", hash, *hlen );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1795, "<= calc verify" );
    mbedtls_sha256_free( &sha256 );
    return;
}
void ssl_calc_verify_tls_sha384( const mbedtls_ssl_context *ssl,
                                 unsigned char hash[48],
                                 size_t *hlen )
{
    mbedtls_sha512_context sha512;
    mbedtls_sha512_init( &sha512 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1836, "=> calc verify sha384" );
    mbedtls_sha512_clone( &sha512, &ssl->handshake->fin_sha512 );
    mbedtls_sha512_finish_ret( &sha512, hash );
    *hlen = 48;
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 1843, "calculated verify result", hash, *hlen );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 1844, "<= calc verify" );
    mbedtls_sha512_free( &sha512 );
    return;
}
int mbedtls_ssl_psk_derive_premaster( mbedtls_ssl_context *ssl, mbedtls_key_exchange_type_t key_ex )
{
    unsigned char *p = ssl->handshake->premaster;
    unsigned char *end = p + sizeof( ssl->handshake->premaster );
    const unsigned char *psk = ((void*)0);
    size_t psk_len = 0;
    if( mbedtls_ssl_get_psk( ssl, &psk, &psk_len )
            == -0x7600 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1868, "should never happen" );
        return( -0x6C00 );
    }
    if( key_ex == MBEDTLS_KEY_EXCHANGE_PSK )
    {
        if( end - p < 2 )
            return( -0x7100 );
        *(p++) = (unsigned char)( psk_len >> 8 );
        *(p++) = (unsigned char)( psk_len );
        if( end < p || (size_t)( end - p ) < psk_len )
            return( -0x7100 );
        memset( p, 0, psk_len );
        p += psk_len;
    }
    else
    if( key_ex == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
    {
        if( end - p < 2 )
            return( -0x7100 );
        *p++ = 0;
        *p++ = 48;
        p += 48;
    }
    else
    if( key_ex == MBEDTLS_KEY_EXCHANGE_DHE_PSK )
    {
        int ret = -0x006E;
        size_t len;
        if( ( ret = mbedtls_dhm_calc_secret( &ssl->handshake->dhm_ctx,
                                      p + 2, end - ( p + 2 ), &len,
                                      ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1923, "mbedtls_dhm_calc_secret", ret );
            return( ret );
        }
        *(p++) = (unsigned char)( len >> 8 );
        *(p++) = (unsigned char)( len );
        p += len;
        mbedtls_debug_print_mpi( ssl, 3, "ssl_tls.c", 1930, "DHM: K ", &ssl->handshake->dhm_ctx.K );
    }
    else
    if( key_ex == MBEDTLS_KEY_EXCHANGE_ECDHE_PSK )
    {
        int ret = -0x006E;
        size_t zlen;
        if( ( ret = mbedtls_ecdh_calc_secret( &ssl->handshake->ecdh_ctx, &zlen,
                                       p + 2, end - ( p + 2 ),
                                       ssl->conf->f_rng, ssl->conf->p_rng ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 1944, "mbedtls_ecdh_calc_secret", ret );
            return( ret );
        }
        *(p++) = (unsigned char)( zlen >> 8 );
        *(p++) = (unsigned char)( zlen );
        p += zlen;
        mbedtls_debug_printf_ecdh( ssl, 3, "ssl_tls.c", 1953, &ssl->handshake->ecdh_ctx, MBEDTLS_DEBUG_ECDH_Z );
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 1958, "should never happen" );
        return( -0x6C00 );
    }
    if( end - p < 2 )
        return( -0x7100 );
    *(p++) = (unsigned char)( psk_len >> 8 );
    *(p++) = (unsigned char)( psk_len );
    if( end < p || (size_t)( end - p ) < psk_len )
        return( -0x7100 );
    memcpy( p, psk, psk_len );
    p += psk_len;
    ssl->handshake->pmslen = p - ssl->handshake->premaster;
    return( 0 );
}
static int ssl_write_hello_request( mbedtls_ssl_context *ssl );
int mbedtls_ssl_resend_hello_request( mbedtls_ssl_context *ssl )
{
    if( ssl->conf->renego_max_records < 0 )
    {
        uint32_t ratio = ssl->conf->hs_timeout_max / ssl->conf->hs_timeout_min + 1;
        unsigned char doublings = 1;
        while( ratio != 0 )
        {
            ++doublings;
            ratio >>= 1;
        }
        if( ++ssl->renego_records_seen > doublings )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2002, "no longer retransmitting hello request" );
            return( 0 );
        }
    }
    return( ssl_write_hello_request( ssl ) );
}
static void ssl_clear_peer_cert( mbedtls_ssl_session *session )
{
    if( session->peer_cert != ((void*)0) )
    {
        mbedtls_x509_crt_free( session->peer_cert );
        free( session->peer_cert );
        session->peer_cert = ((void*)0);
    }
}
int mbedtls_ssl_write_certificate( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    size_t i, n;
    const mbedtls_x509_crt *crt;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2087, "=> write certificate" );
    if( !mbedtls_ssl_ciphersuite_uses_srv_cert( ciphersuite_info ) )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2091, "<= skip write certificate" );
        ssl->state++;
        return( 0 );
    }
    if( ssl->conf->endpoint == 0 )
    {
        if( ssl->client_auth == 0 )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2101, "<= skip write certificate" );
            ssl->state++;
            return( 0 );
        }
    }
    if( ssl->conf->endpoint == 1 )
    {
        if( mbedtls_ssl_own_cert( ssl ) == ((void*)0) )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2130, "got no certificate to send" );
            return( -0x7580 );
        }
    }
    mbedtls_debug_print_crt( ssl, 3, "ssl_tls.c", 2136, "own certificate", mbedtls_ssl_own_cert( ssl ) );
    i = 7;
    crt = mbedtls_ssl_own_cert( ssl );
    while( crt != ((void*)0) )
    {
        n = crt->raw.len;
        if( n > 16384 - 3 - i )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2156, "certificate too large, %d > %d", i + 3 + n, 16384 );
            return( -0x7500 );
        }
        ssl->out_msg[i ] = (unsigned char)( n >> 16 );
        ssl->out_msg[i + 1] = (unsigned char)( n >> 8 );
        ssl->out_msg[i + 2] = (unsigned char)( n );
        i += 3; memcpy( ssl->out_msg + i, crt->raw.p, n );
        i += n; crt = crt->next;
    }
    ssl->out_msg[4] = (unsigned char)( ( i - 7 ) >> 16 );
    ssl->out_msg[5] = (unsigned char)( ( i - 7 ) >> 8 );
    ssl->out_msg[6] = (unsigned char)( ( i - 7 ) );
    ssl->out_msglen = i;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 11;
    ssl->state++;
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 2184, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2188, "<= write certificate" );
    return( ret );
}
static int ssl_check_peer_crt_unchanged( mbedtls_ssl_context *ssl,
                                         unsigned char *crt_buf,
                                         size_t crt_buf_len )
{
    mbedtls_x509_crt const * const peer_crt = ssl->session->peer_cert;
    if( peer_crt == ((void*)0) )
        return( -1 );
    if( peer_crt->raw.len != crt_buf_len )
        return( -1 );
    return( memcmp( peer_crt->raw.p, crt_buf, peer_crt->raw.len ) );
}
static int ssl_parse_certificate_chain( mbedtls_ssl_context *ssl,
                                        mbedtls_x509_crt *chain )
{
    int ret = -0x006E;
    int crt_cnt=0;
    size_t i, n;
    uint8_t alert;
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2257, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }
    if( ssl->in_msg[0] != 11 ||
        ssl->in_hslen < mbedtls_ssl_hs_hdr_len( ssl ) + 3 + 3 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2266, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A00 );
    }
    i = mbedtls_ssl_hs_hdr_len( ssl );
    n = ( ssl->in_msg[i+1] << 8 ) | ssl->in_msg[i+2];
    if( ssl->in_msg[i] != 0 ||
        ssl->in_hslen != n + 3 + mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2282, "bad certificate message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7A00 );
    }
    i += 3;
    while( i < ssl->in_hslen )
    {
        if ( i + 3 > ssl->in_hslen ) {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2296, "bad certificate message" );
            mbedtls_ssl_send_alert_message( ssl,
                              2,
                              50 );
            return( -0x7A00 );
        }
        if( ssl->in_msg[i] != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2306, "bad certificate message" );
            mbedtls_ssl_send_alert_message( ssl,
                            2,
                            50 );
            return( -0x7A00 );
        }
        n = ( (unsigned int) ssl->in_msg[i + 1] << 8 )
            | (unsigned int) ssl->in_msg[i + 2];
        i += 3;
        if( n < 128 || i + n > ssl->in_hslen )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2320, "bad certificate message" );
            mbedtls_ssl_send_alert_message( ssl,
                                 2,
                                 50 );
            return( -0x7A00 );
        }
        if( crt_cnt++ == 0 &&
            ssl->conf->endpoint == 0 &&
            ssl->renego_status == 1 )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 2337, "Check that peer CRT hasn't changed during renegotiation" );
            if( ssl_check_peer_crt_unchanged( ssl,
                                              &ssl->in_msg[i],
                                              n ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2342, "new server cert during renegotiation" );
                mbedtls_ssl_send_alert_message( ssl,
                                                2,
                                                49 );
                return( -0x7A00 );
            }
            ssl_clear_peer_cert( ssl->session );
        }
        ret = mbedtls_x509_crt_parse_der( chain, ssl->in_msg + i, n );
        switch( ret )
        {
            case 0:
            case -0x2600 + -0x002E:
                break;
            case -0x2880:
                alert = 80;
                goto crt_parse_der_failed;
            case -0x2580:
                alert = 43;
                goto crt_parse_der_failed;
            default:
                alert = 42;
            crt_parse_der_failed:
                mbedtls_ssl_send_alert_message( ssl, 2, alert );
                mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 2382, " mbedtls_x509_crt_parse_der", ret );
                return( ret );
        }
        i += n;
    }
    mbedtls_debug_print_crt( ssl, 3, "ssl_tls.c", 2389, "peer certificate", chain );
    return( 0 );
}
static int ssl_srv_check_client_no_crt_notification( mbedtls_ssl_context *ssl )
{
    if( ssl->conf->endpoint == 0 )
        return( -1 );
    if( ssl->in_hslen == 3 + mbedtls_ssl_hs_hdr_len( ssl ) &&
        ssl->in_msgtype == 22 &&
        ssl->in_msg[0] == 11 &&
        memcmp( ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl ), "\0\0\0", 3 ) == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2425, "TLSv1 client has no certificate" );
        return( 0 );
    }
    return( -1 );
}
static int ssl_parse_certificate_coordinate( mbedtls_ssl_context *ssl,
                                             int authmode )
{
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    if( !mbedtls_ssl_ciphersuite_uses_srv_cert( ciphersuite_info ) )
        return( 1 );
    if( ssl->conf->endpoint == 1 )
    {
        if( ciphersuite_info->key_exchange == MBEDTLS_KEY_EXCHANGE_RSA_PSK )
            return( 1 );
        if( authmode == 0 )
        {
            ssl->session_negotiate->verify_result =
                0x80;
            return( 1 );
        }
    }
    return( 0 );
}
static int ssl_parse_certificate_verify( mbedtls_ssl_context *ssl,
                                         int authmode,
                                         mbedtls_x509_crt *chain,
                                         void *rs_ctx )
{
    int ret = 0;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info =
        ssl->handshake->ciphersuite_info;
    int have_ca_chain = 0;
    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
    if( authmode == 0 )
        return( 0 );
    if( ssl->f_vrfy != ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 2490, "Use context-specific verification callback" );
        f_vrfy = ssl->f_vrfy;
        p_vrfy = ssl->p_vrfy;
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 2496, "Use configuration-specific verification callback" );
        f_vrfy = ssl->conf->f_vrfy;
        p_vrfy = ssl->conf->p_vrfy;
    }
    {
        mbedtls_x509_crt *ca_chain;
        mbedtls_x509_crl *ca_crl;
        if( ssl->handshake->sni_ca_chain != ((void*)0) )
        {
            ca_chain = ssl->handshake->sni_ca_chain;
            ca_crl = ssl->handshake->sni_ca_crl;
        }
        else
        {
            ca_chain = ssl->conf->ca_chain;
            ca_crl = ssl->conf->ca_crl;
        }
        if( ca_chain != ((void*)0) )
            have_ca_chain = 1;
        ret = mbedtls_x509_crt_verify_restartable(
            chain,
            ca_chain, ca_crl,
            ssl->conf->cert_profile,
            ssl->hostname,
            &ssl->session_negotiate->verify_result,
            f_vrfy, p_vrfy, rs_ctx );
    }
    if( ret != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 2553, "x509_verify_cert", ret );
    }
    {
        const mbedtls_pk_context *pk = &chain->pk;
        if( mbedtls_pk_can_do( pk, MBEDTLS_PK_ECKEY ) &&
            mbedtls_ssl_check_curve( ssl, mbedtls_pk_ec( *pk )->grp.id ) != 0 )
        {
            ssl->session_negotiate->verify_result |= 0x010000;
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2575, "bad certificate (EC key curve)" );
            if( ret == 0 )
                ret = -0x7A00;
        }
    }
    if( mbedtls_ssl_check_cert_usage( chain,
                                      ciphersuite_info,
                                      ! ssl->conf->endpoint,
                                      &ssl->session_negotiate->verify_result ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2587, "bad certificate (usage extensions)" );
        if( ret == 0 )
            ret = -0x7A00;
    }
    if( authmode == 1 &&
        ( ret == -0x2700 ||
          ret == -0x7A00 ) )
    {
        ret = 0;
    }
    if( have_ca_chain == 0 && authmode == 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2607, "got no CA chain" );
        ret = -0x7680;
    }
    if( ret != 0 )
    {
        uint8_t alert;
        if( ssl->session_negotiate->verify_result & 0x0100 )
            alert = 49;
        else if( ssl->session_negotiate->verify_result & 0x04 )
            alert = 42;
        else if( ssl->session_negotiate->verify_result & 0x0800 )
            alert = 43;
        else if( ssl->session_negotiate->verify_result & 0x1000 )
            alert = 43;
        else if( ssl->session_negotiate->verify_result & 0x2000 )
            alert = 43;
        else if( ssl->session_negotiate->verify_result & 0x8000 )
            alert = 43;
        else if( ssl->session_negotiate->verify_result & 0x010000 )
            alert = 43;
        else if( ssl->session_negotiate->verify_result & 0x01 )
            alert = 45;
        else if( ssl->session_negotiate->verify_result & 0x02 )
            alert = 44;
        else if( ssl->session_negotiate->verify_result & 0x08 )
            alert = 48;
        else
            alert = 46;
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        alert );
    }
    if( ssl->session_negotiate->verify_result != 0 )
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 2648, "! Certificate verification flags %x", ssl->session_negotiate->verify_result );
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 2652, "Certificate verification flags clear" );
    }
    return( ret );
}
int mbedtls_ssl_parse_certificate( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    int crt_expected;
    const int authmode = ssl->handshake->sni_authmode != 3
                       ? ssl->handshake->sni_authmode
                       : ssl->conf->authmode;
    void *rs_ctx = ((void*)0);
    mbedtls_x509_crt *chain = ((void*)0);
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2725, "=> parse certificate" );
    crt_expected = ssl_parse_certificate_coordinate( ssl, authmode );
    if( crt_expected == 1 )
    {
        mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2730, "<= skip parse certificate" );
        goto exit;
    }
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 2748, "mbedtls_ssl_read_record", ret );
        goto exit;
    }
    if( ssl_srv_check_client_no_crt_notification( ssl ) == 0 )
    {
        ssl->session_negotiate->verify_result = 0x40;
        if( authmode != 1 )
            ret = -0x7480;
        goto exit;
    }
    ssl_clear_peer_cert( ssl->session_negotiate );
    chain = calloc( 1, sizeof( mbedtls_x509_crt ) );
    if( chain == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2772, "alloc(%d bytes) failed", sizeof( mbedtls_x509_crt ) );
        mbedtls_ssl_send_alert_message( ssl,
                                        2,
                                        80 );
        ret = -0x7F00;
        goto exit;
    }
    mbedtls_x509_crt_init( chain );
    ret = ssl_parse_certificate_chain( ssl, chain );
    if( ret != 0 )
        goto exit;
    ret = ssl_parse_certificate_verify( ssl, authmode,
                                        chain, rs_ctx );
    if( ret != 0 )
        goto exit;
    ssl->session_negotiate->peer_cert = chain;
    chain = ((void*)0);
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 2836, "<= parse certificate" );
exit:
    if( ret == 0 )
        ssl->state++;
    if( chain != ((void*)0) )
    {
        mbedtls_x509_crt_free( chain );
        free( chain );
    }
    return( ret );
}
void mbedtls_ssl_optimize_checksum( mbedtls_ssl_context *ssl,
                            const mbedtls_ssl_ciphersuite_t *ciphersuite_info )
{
    ((void) ciphersuite_info);
    if( ssl->minor_ver < 3 )
        ssl->handshake->update_checksum = ssl_update_checksum_md5sha1;
    else
    if( ciphersuite_info->mac == MBEDTLS_MD_SHA384 )
        ssl->handshake->update_checksum = ssl_update_checksum_sha384;
    else
    if( ciphersuite_info->mac != MBEDTLS_MD_SHA384 )
        ssl->handshake->update_checksum = ssl_update_checksum_sha256;
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 2885, "should never happen" );
        return;
    }
}
void mbedtls_ssl_reset_checksum( mbedtls_ssl_context *ssl )
{
     mbedtls_md5_starts_ret( &ssl->handshake->fin_md5 );
    mbedtls_sha1_starts_ret( &ssl->handshake->fin_sha1 );
    mbedtls_sha256_starts_ret( &ssl->handshake->fin_sha256, 0 );
    mbedtls_sha512_starts_ret( &ssl->handshake->fin_sha512, 1 );
}
static void ssl_update_checksum_start( mbedtls_ssl_context *ssl,
                                       const unsigned char *buf, size_t len )
{
     mbedtls_md5_update_ret( &ssl->handshake->fin_md5 , buf, len );
    mbedtls_sha1_update_ret( &ssl->handshake->fin_sha1, buf, len );
    mbedtls_sha256_update_ret( &ssl->handshake->fin_sha256, buf, len );
    mbedtls_sha512_update_ret( &ssl->handshake->fin_sha512, buf, len );
}
static void ssl_update_checksum_md5sha1( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf, size_t len )
{
     mbedtls_md5_update_ret( &ssl->handshake->fin_md5 , buf, len );
    mbedtls_sha1_update_ret( &ssl->handshake->fin_sha1, buf, len );
}
static void ssl_update_checksum_sha256( mbedtls_ssl_context *ssl,
                                        const unsigned char *buf, size_t len )
{
    mbedtls_sha256_update_ret( &ssl->handshake->fin_sha256, buf, len );
}
static void ssl_update_checksum_sha384( mbedtls_ssl_context *ssl,
                                        const unsigned char *buf, size_t len )
{
    mbedtls_sha512_update_ret( &ssl->handshake->fin_sha512, buf, len );
}
static void ssl_calc_finished_tls(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;
    unsigned char padbuf[36];
    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3078, "=> calc  finished tls" );
    mbedtls_md5_init( &md5 );
    mbedtls_sha1_init( &sha1 );
    mbedtls_md5_clone( &md5, &ssl->handshake->fin_md5 );
    mbedtls_sha1_clone( &sha1, &ssl->handshake->fin_sha1 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 3094, "finished  md5 state", (unsigned char *) md5.state, sizeof( md5.state ) );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 3099, "finished sha1 state", (unsigned char *) sha1.state, sizeof( sha1.state ) );
    sender = ( from == 0 )
             ? "client finished"
             : "server finished";
    mbedtls_md5_finish_ret( &md5, padbuf );
    mbedtls_sha1_finish_ret( &sha1, padbuf + 16 );
    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 36, buf, len );
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 3112, "calc finished result", buf, len );
    mbedtls_md5_free( &md5 );
    mbedtls_sha1_free( &sha1 );
    mbedtls_platform_zeroize( padbuf, sizeof( padbuf ) );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3119, "<= calc  finished" );
}
static void ssl_calc_finished_tls_sha256(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    unsigned char padbuf[32];
    mbedtls_sha256_context sha256;
    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;
    sender = ( from == 0 )
             ? "client finished"
             : "server finished";
    mbedtls_sha256_init( &sha256 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3170, "=> calc  finished tls sha256" );
    mbedtls_sha256_clone( &sha256, &ssl->handshake->fin_sha256 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 3182, "finished sha2 state", (unsigned char *) sha256.state, sizeof( sha256.state ) );
    mbedtls_sha256_finish_ret( &sha256, padbuf );
    mbedtls_sha256_free( &sha256 );
    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 32, buf, len );
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 3192, "calc finished result", buf, len );
    mbedtls_platform_zeroize( padbuf, sizeof( padbuf ) );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3196, "<= calc  finished" );
}
static void ssl_calc_finished_tls_sha384(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    unsigned char padbuf[48];
    mbedtls_sha512_context sha512;
    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;
    sender = ( from == 0 )
                ? "client finished"
                : "server finished";
    mbedtls_sha512_init( &sha512 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3245, "=> calc  finished tls sha384" );
    mbedtls_sha512_clone( &sha512, &ssl->handshake->fin_sha512 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 3257, "finished sha512 state", (unsigned char *) sha512.state, sizeof( sha512.state ) );
    mbedtls_sha512_finish_ret( &sha512, padbuf );
    mbedtls_sha512_free( &sha512 );
    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 48, buf, len );
    mbedtls_debug_print_buf( ssl, 3, "ssl_tls.c", 3267, "calc finished result", buf, len );
    mbedtls_platform_zeroize( padbuf, sizeof( padbuf ) );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3271, "<= calc  finished" );
}
void mbedtls_ssl_handshake_wrapup_free_hs_transform( mbedtls_ssl_context *ssl )
{
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3278, "=> handshake wrapup: final free" );
    mbedtls_ssl_handshake_free( ssl );
    free( ssl->handshake );
    ssl->handshake = ((void*)0);
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
    }
    ssl->transform = ssl->transform_negotiate;
    ssl->transform_negotiate = ((void*)0);
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3298, "<= handshake wrapup: final free" );
}
void mbedtls_ssl_handshake_wrapup( mbedtls_ssl_context *ssl )
{
    int resume = ssl->handshake->resume;
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3305, "=> handshake wrapup" );
    if( ssl->renego_status == 1 )
    {
        ssl->renego_status = 2;
        ssl->renego_records_seen = 0;
    }
    if( ssl->session )
    {
        ssl->session_negotiate->encrypt_then_mac =
                  ssl->session->encrypt_then_mac;
        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
    }
    ssl->session = ssl->session_negotiate;
    ssl->session_negotiate = ((void*)0);
    if( ssl->conf->f_set_cache != ((void*)0) &&
        ssl->session->id_len != 0 &&
        resume == 0 )
    {
        if( ssl->conf->f_set_cache( ssl->conf->p_cache, ssl->session ) != 0 )
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3340, "cache did not store session" );
    }
    if( ssl->conf->transport == 1 &&
        ssl->handshake->flight != ((void*)0) )
    {
        mbedtls_ssl_set_timer( ssl, 0 );
        mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3352, "skip freeing handshake and transform" );
    }
    else
        mbedtls_ssl_handshake_wrapup_free_hs_transform( ssl );
    ssl->state++;
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3360, "<= handshake wrapup" );
}
int mbedtls_ssl_write_finished( mbedtls_ssl_context *ssl )
{
    int ret, hash_len;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3367, "=> write finished" );
    mbedtls_ssl_update_out_pointers( ssl, ssl->transform_negotiate );
    ssl->handshake->calc_finished( ssl, ssl->out_msg + 4, ssl->conf->endpoint );
    hash_len = ( ssl->minor_ver == 0 ) ? 36 : 12;
    ssl->verify_data_len = hash_len;
    memcpy( ssl->own_verify_data, ssl->out_msg + 4, hash_len );
    ssl->out_msglen = 4 + hash_len;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 20;
    if( ssl->handshake->resume != 0 )
    {
        if( ssl->conf->endpoint == 0 )
            ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
        if( ssl->conf->endpoint == 1 )
            ssl->state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;
    }
    else
        ssl->state++;
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 3412, "switching to new transform spec for outbound data" );
    if( ssl->conf->transport == 1 )
    {
        unsigned char i;
        ssl->handshake->alt_transform_out = ssl->transform_out;
        memcpy( ssl->handshake->alt_out_ctr, ssl->cur_out_ctr, 8 );
        memset( ssl->cur_out_ctr + 2, 0, 6 );
        for( i = 2; i > 0; i-- )
            if( ++ssl->cur_out_ctr[i - 1] != 0 )
                break;
        if( i == 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3434, "DTLS epoch would wrap" );
            return( -0x6B80 );
        }
    }
    else
    memset( ssl->cur_out_ctr, 0, 8 );
    ssl->transform_out = ssl->transform_negotiate;
    ssl->session_out = ssl->session_negotiate;
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_send_flight_completed( ssl );
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 3463, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    if( ssl->conf->transport == 1 &&
        ( ret = mbedtls_ssl_flight_transmit( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 3471, "mbedtls_ssl_flight_transmit", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3476, "<= write finished" );
    return( 0 );
}
int mbedtls_ssl_parse_finished( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    unsigned int hash_len;
    unsigned char buf[12];
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3493, "=> parse finished" );
    ssl->handshake->calc_finished( ssl, buf, ssl->conf->endpoint ^ 1 );
    if( ( ret = mbedtls_ssl_read_record( ssl, 1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 3499, "mbedtls_ssl_read_record", ret );
        return( ret );
    }
    if( ssl->in_msgtype != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3505, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        10 );
        return( -0x7700 );
    }
        hash_len = 12;
    if( ssl->in_msg[0] != 20 ||
        ssl->in_hslen != mbedtls_ssl_hs_hdr_len( ssl ) + hash_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3522, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7E80 );
    }
    if( mbedtls_ssl_safer_memcmp( ssl->in_msg + mbedtls_ssl_hs_hdr_len( ssl ),
                      buf, hash_len ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3531, "bad finished message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7E80 );
    }
    ssl->verify_data_len = hash_len;
    memcpy( ssl->peer_verify_data, buf, hash_len );
    if( ssl->handshake->resume != 0 )
    {
        if( ssl->conf->endpoint == 0 )
            ssl->state = MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC;
        if( ssl->conf->endpoint == 1 )
            ssl->state = MBEDTLS_SSL_HANDSHAKE_WRAPUP;
    }
    else
        ssl->state++;
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_recv_flight_completed( ssl );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 3561, "<= parse finished" );
    return( 0 );
}
static void ssl_handshake_params_init( mbedtls_ssl_handshake_params *handshake )
{
    memset( handshake, 0, sizeof( mbedtls_ssl_handshake_params ) );
     mbedtls_md5_init( &handshake->fin_md5 );
    mbedtls_sha1_init( &handshake->fin_sha1 );
     mbedtls_md5_starts_ret( &handshake->fin_md5 );
    mbedtls_sha1_starts_ret( &handshake->fin_sha1 );
    mbedtls_sha256_init( &handshake->fin_sha256 );
    mbedtls_sha256_starts_ret( &handshake->fin_sha256, 0 );
    mbedtls_sha512_init( &handshake->fin_sha512 );
    mbedtls_sha512_starts_ret( &handshake->fin_sha512, 1 );
    handshake->update_checksum = ssl_update_checksum_start;
    mbedtls_ssl_sig_hash_set_init( &handshake->hash_algs );
    mbedtls_dhm_init( &handshake->dhm_ctx );
    mbedtls_ecdh_init( &handshake->ecdh_ctx );
    handshake->sni_authmode = 3;
}
void mbedtls_ssl_transform_init( mbedtls_ssl_transform *transform )
{
    memset( transform, 0, sizeof(mbedtls_ssl_transform) );
    mbedtls_cipher_init( &transform->cipher_ctx_enc );
    mbedtls_cipher_init( &transform->cipher_ctx_dec );
    mbedtls_md_init( &transform->md_ctx_enc );
    mbedtls_md_init( &transform->md_ctx_dec );
}
void mbedtls_ssl_session_init( mbedtls_ssl_session *session )
{
    memset( session, 0, sizeof(mbedtls_ssl_session) );
}
static int ssl_handshake_init( mbedtls_ssl_context *ssl )
{
    if( ssl->transform_negotiate )
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
    if( ssl->session_negotiate )
        mbedtls_ssl_session_free( ssl->session_negotiate );
    if( ssl->handshake )
        mbedtls_ssl_handshake_free( ssl );
    if( ssl->transform_negotiate == ((void*)0) )
    {
        ssl->transform_negotiate = calloc( 1, sizeof(mbedtls_ssl_transform) );
    }
    if( ssl->session_negotiate == ((void*)0) )
    {
        ssl->session_negotiate = calloc( 1, sizeof(mbedtls_ssl_session) );
    }
    if( ssl->handshake == ((void*)0) )
    {
        ssl->handshake = calloc( 1, sizeof(mbedtls_ssl_handshake_params) );
    }
    if( ssl->handshake == ((void*)0) ||
        ssl->transform_negotiate == ((void*)0) ||
        ssl->session_negotiate == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3746, "alloc() of ssl sub-contexts failed" );
        free( ssl->handshake );
        free( ssl->transform_negotiate );
        free( ssl->session_negotiate );
        ssl->handshake = ((void*)0);
        ssl->transform_negotiate = ((void*)0);
        ssl->session_negotiate = ((void*)0);
        return( -0x7F00 );
    }
    mbedtls_ssl_session_init( ssl->session_negotiate );
    mbedtls_ssl_transform_init( ssl->transform_negotiate );
    ssl_handshake_params_init( ssl->handshake );
    if( ssl->conf->transport == 1 )
    {
        ssl->handshake->alt_transform_out = ssl->transform_out;
        if( ssl->conf->endpoint == 0 )
            ssl->handshake->retransmit_state = 0;
        else
            ssl->handshake->retransmit_state = 2;
        mbedtls_ssl_set_timer( ssl, 0 );
    }
    return( 0 );
}
static int ssl_cookie_write_dummy( void *ctx,
                      unsigned char **p, unsigned char *end,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    ((void) ctx);
    ((void) p);
    ((void) end);
    ((void) cli_id);
    ((void) cli_id_len);
    return( -0x7080 );
}
static int ssl_cookie_check_dummy( void *ctx,
                      const unsigned char *cookie, size_t cookie_len,
                      const unsigned char *cli_id, size_t cli_id_len )
{
    ((void) ctx);
    ((void) cookie);
    ((void) cookie_len);
    ((void) cli_id);
    ((void) cli_id_len);
    return( -0x7080 );
}
void mbedtls_ssl_init( mbedtls_ssl_context *ssl )
{
    memset( ssl, 0, sizeof( mbedtls_ssl_context ) );
}
int mbedtls_ssl_setup( mbedtls_ssl_context *ssl,
                       const mbedtls_ssl_config *conf )
{
    int ret = -0x006E;
    size_t in_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    size_t out_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    ssl->conf = conf;
    ssl->out_buf = ((void*)0);
    ssl->in_buf = calloc( 1, in_buf_len );
    if( ssl->in_buf == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3844, "alloc(%d bytes) failed", in_buf_len );
        ret = -0x7F00;
        goto error;
    }
    ssl->out_buf = calloc( 1, out_buf_len );
    if( ssl->out_buf == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 3855, "alloc(%d bytes) failed", out_buf_len );
        ret = -0x7F00;
        goto error;
    }
    mbedtls_ssl_reset_in_out_pointers( ssl );
    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        goto error;
    return( 0 );
error:
    free( ssl->in_buf );
    free( ssl->out_buf );
    ssl->conf = ((void*)0);
    ssl->in_buf = ((void*)0);
    ssl->out_buf = ((void*)0);
    ssl->in_hdr = ((void*)0);
    ssl->in_ctr = ((void*)0);
    ssl->in_len = ((void*)0);
    ssl->in_iv = ((void*)0);
    ssl->in_msg = ((void*)0);
    ssl->out_hdr = ((void*)0);
    ssl->out_ctr = ((void*)0);
    ssl->out_len = ((void*)0);
    ssl->out_iv = ((void*)0);
    ssl->out_msg = ((void*)0);
    return( ret );
}
int mbedtls_ssl_session_reset_int( mbedtls_ssl_context *ssl, int partial )
{
    int ret = -0x006E;
    size_t in_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    size_t out_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;
    mbedtls_ssl_set_timer( ssl, 0 );
    ssl->renego_status = 0;
    ssl->renego_records_seen = 0;
    ssl->verify_data_len = 0;
    memset( ssl->own_verify_data, 0, 12 );
    memset( ssl->peer_verify_data, 0, 12 );
    ssl->secure_renegotiation = 0;
    ssl->in_offt = ((void*)0);
    mbedtls_ssl_reset_in_out_pointers( ssl );
    ssl->in_msgtype = 0;
    ssl->in_msglen = 0;
    ssl->next_record_offset = 0;
    ssl->in_epoch = 0;
    mbedtls_ssl_dtls_replay_reset( ssl );
    ssl->in_hslen = 0;
    ssl->nb_zero = 0;
    ssl->keep_current_message = 0;
    ssl->out_msgtype = 0;
    ssl->out_msglen = 0;
    ssl->out_left = 0;
    if( ssl->split_done != 0 )
        ssl->split_done = 0;
    memset( ssl->cur_out_ctr, 0, sizeof( ssl->cur_out_ctr ) );
    ssl->transform_in = ((void*)0);
    ssl->transform_out = ((void*)0);
    ssl->session_in = ((void*)0);
    ssl->session_out = ((void*)0);
    memset( ssl->out_buf, 0, out_buf_len );
    if( partial == 0 )
    {
        ssl->in_left = 0;
        memset( ssl->in_buf, 0, in_buf_len );
    }
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
        ssl->transform = ((void*)0);
    }
    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
        ssl->session = ((void*)0);
    }
    ssl->alpn_chosen = ((void*)0);
    if( partial == 0 )
    {
        free( ssl->cli_id );
        ssl->cli_id = ((void*)0);
        ssl->cli_id_len = 0;
    }
    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );
    return( 0 );
}
int mbedtls_ssl_session_reset( mbedtls_ssl_context *ssl )
{
    return( mbedtls_ssl_session_reset_int( ssl, 0 ) );
}
void mbedtls_ssl_conf_endpoint( mbedtls_ssl_config *conf, int endpoint )
{
    conf->endpoint = endpoint;
}
void mbedtls_ssl_conf_transport( mbedtls_ssl_config *conf, int transport )
{
    conf->transport = transport;
}
void mbedtls_ssl_conf_dtls_anti_replay( mbedtls_ssl_config *conf, char mode )
{
    conf->anti_replay = mode;
}
void mbedtls_ssl_conf_dtls_badmac_limit( mbedtls_ssl_config *conf, unsigned limit )
{
    conf->badmac_limit = limit;
}
void mbedtls_ssl_set_datagram_packing( mbedtls_ssl_context *ssl,
                                       unsigned allow_packing )
{
    ssl->disable_datagram_packing = !allow_packing;
}
void mbedtls_ssl_conf_handshake_timeout( mbedtls_ssl_config *conf,
                                         uint32_t min, uint32_t max )
{
    conf->hs_timeout_min = min;
    conf->hs_timeout_max = max;
}
void mbedtls_ssl_conf_authmode( mbedtls_ssl_config *conf, int authmode )
{
    conf->authmode = authmode;
}
void mbedtls_ssl_conf_verify( mbedtls_ssl_config *conf,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    conf->f_vrfy = f_vrfy;
    conf->p_vrfy = p_vrfy;
}
void mbedtls_ssl_conf_rng( mbedtls_ssl_config *conf,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng )
{
    conf->f_rng = f_rng;
    conf->p_rng = p_rng;
}
void mbedtls_ssl_conf_dbg( mbedtls_ssl_config *conf,
                  void (*f_dbg)(void *, int, const char *, int, const char *),
                  void *p_dbg )
{
    conf->f_dbg = f_dbg;
    conf->p_dbg = p_dbg;
}
void mbedtls_ssl_set_bio( mbedtls_ssl_context *ssl,
        void *p_bio,
        mbedtls_ssl_send_t *f_send,
        mbedtls_ssl_recv_t *f_recv,
        mbedtls_ssl_recv_timeout_t *f_recv_timeout )
{
    ssl->p_bio = p_bio;
    ssl->f_send = f_send;
    ssl->f_recv = f_recv;
    ssl->f_recv_timeout = f_recv_timeout;
}
void mbedtls_ssl_set_mtu( mbedtls_ssl_context *ssl, uint16_t mtu )
{
    ssl->mtu = mtu;
}
void mbedtls_ssl_conf_read_timeout( mbedtls_ssl_config *conf, uint32_t timeout )
{
    conf->read_timeout = timeout;
}
void mbedtls_ssl_set_timer_cb( mbedtls_ssl_context *ssl,
                               void *p_timer,
                               mbedtls_ssl_set_timer_t *f_set_timer,
                               mbedtls_ssl_get_timer_t *f_get_timer )
{
    ssl->p_timer = p_timer;
    ssl->f_set_timer = f_set_timer;
    ssl->f_get_timer = f_get_timer;
    mbedtls_ssl_set_timer( ssl, 0 );
}
void mbedtls_ssl_conf_session_cache( mbedtls_ssl_config *conf,
        void *p_cache,
        int (*f_get_cache)(void *, mbedtls_ssl_session *),
        int (*f_set_cache)(void *, const mbedtls_ssl_session *) )
{
    conf->p_cache = p_cache;
    conf->f_get_cache = f_get_cache;
    conf->f_set_cache = f_set_cache;
}
int mbedtls_ssl_set_session( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session )
{
    int ret = -0x006E;
    if( ssl == ((void*)0) ||
        session == ((void*)0) ||
        ssl->session_negotiate == ((void*)0) ||
        ssl->conf->endpoint != 0 )
    {
        return( -0x7100 );
    }
    if( ( ret = mbedtls_ssl_session_copy( ssl->session_negotiate,
                                          session ) ) != 0 )
        return( ret );
    ssl->handshake->resume = 1;
    return( 0 );
}
void mbedtls_ssl_conf_ciphersuites( mbedtls_ssl_config *conf,
                                   const int *ciphersuites )
{
    conf->ciphersuite_list[0] = ciphersuites;
    conf->ciphersuite_list[1] = ciphersuites;
    conf->ciphersuite_list[2] = ciphersuites;
    conf->ciphersuite_list[3] = ciphersuites;
}
void mbedtls_ssl_conf_ciphersuites_for_version( mbedtls_ssl_config *conf,
                                       const int *ciphersuites,
                                       int major, int minor )
{
    if( major != 3 )
        return;
    if( minor < 0 || minor > 3 )
        return;
    conf->ciphersuite_list[minor] = ciphersuites;
}
void mbedtls_ssl_conf_cert_profile( mbedtls_ssl_config *conf,
                                    const mbedtls_x509_crt_profile *profile )
{
    conf->cert_profile = profile;
}
static int ssl_append_key_cert( mbedtls_ssl_key_cert **head,
                                mbedtls_x509_crt *cert,
                                mbedtls_pk_context *key )
{
    mbedtls_ssl_key_cert *new_cert;
    new_cert = calloc( 1, sizeof( mbedtls_ssl_key_cert ) );
    if( new_cert == ((void*)0) )
        return( -0x7F00 );
    new_cert->cert = cert;
    new_cert->key = key;
    new_cert->next = ((void*)0);
    if( *head == ((void*)0) )
    {
        *head = new_cert;
    }
    else
    {
        mbedtls_ssl_key_cert *cur = *head;
        while( cur->next != ((void*)0) )
            cur = cur->next;
        cur->next = new_cert;
    }
    return( 0 );
}
int mbedtls_ssl_conf_own_cert( mbedtls_ssl_config *conf,
                              mbedtls_x509_crt *own_cert,
                              mbedtls_pk_context *pk_key )
{
    return( ssl_append_key_cert( &conf->key_cert, own_cert, pk_key ) );
}
void mbedtls_ssl_conf_ca_chain( mbedtls_ssl_config *conf,
                               mbedtls_x509_crt *ca_chain,
                               mbedtls_x509_crl *ca_crl )
{
    conf->ca_chain = ca_chain;
    conf->ca_crl = ca_crl;
}
int mbedtls_ssl_set_hs_own_cert( mbedtls_ssl_context *ssl,
                                 mbedtls_x509_crt *own_cert,
                                 mbedtls_pk_context *pk_key )
{
    return( ssl_append_key_cert( &ssl->handshake->sni_key_cert,
                                 own_cert, pk_key ) );
}
void mbedtls_ssl_set_hs_ca_chain( mbedtls_ssl_context *ssl,
                                  mbedtls_x509_crt *ca_chain,
                                  mbedtls_x509_crl *ca_crl )
{
    ssl->handshake->sni_ca_chain = ca_chain;
    ssl->handshake->sni_ca_crl = ca_crl;
}
void mbedtls_ssl_set_hs_authmode( mbedtls_ssl_context *ssl,
                                  int authmode )
{
    ssl->handshake->sni_authmode = authmode;
}
void mbedtls_ssl_set_verify( mbedtls_ssl_context *ssl,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    ssl->f_vrfy = f_vrfy;
    ssl->p_vrfy = p_vrfy;
}
static void ssl_conf_remove_psk( mbedtls_ssl_config *conf )
{
    if( conf->psk != ((void*)0) )
    {
        mbedtls_platform_zeroize( conf->psk, conf->psk_len );
        free( conf->psk );
        conf->psk = ((void*)0);
        conf->psk_len = 0;
    }
    if( conf->psk_identity != ((void*)0) )
    {
        free( conf->psk_identity );
        conf->psk_identity = ((void*)0);
        conf->psk_identity_len = 0;
    }
}
static int ssl_conf_set_psk_identity( mbedtls_ssl_config *conf,
                                      unsigned char const *psk_identity,
                                      size_t psk_identity_len )
{
    if( psk_identity == ((void*)0) ||
        ( psk_identity_len >> 16 ) != 0 ||
        psk_identity_len > 16384 )
    {
        return( -0x7100 );
    }
    conf->psk_identity = calloc( 1, psk_identity_len );
    if( conf->psk_identity == ((void*)0) )
        return( -0x7F00 );
    conf->psk_identity_len = psk_identity_len;
    memcpy( conf->psk_identity, psk_identity, conf->psk_identity_len );
    return( 0 );
}
int mbedtls_ssl_conf_psk( mbedtls_ssl_config *conf,
                const unsigned char *psk, size_t psk_len,
                const unsigned char *psk_identity, size_t psk_identity_len )
{
    int ret = -0x006E;
    ssl_conf_remove_psk( conf );
    if( psk == ((void*)0) )
        return( -0x7100 );
    if( psk_len == 0 )
        return( -0x7100 );
    if( psk_len > 32 )
        return( -0x7100 );
    if( ( conf->psk = calloc( 1, psk_len ) ) == ((void*)0) )
        return( -0x7F00 );
    conf->psk_len = psk_len;
    memcpy( conf->psk, psk, conf->psk_len );
    ret = ssl_conf_set_psk_identity( conf, psk_identity, psk_identity_len );
    if( ret != 0 )
        ssl_conf_remove_psk( conf );
    return( ret );
}
static void ssl_remove_psk( mbedtls_ssl_context *ssl )
{
    if( ssl->handshake->psk != ((void*)0) )
    {
        mbedtls_platform_zeroize( ssl->handshake->psk,
                                  ssl->handshake->psk_len );
        free( ssl->handshake->psk );
        ssl->handshake->psk_len = 0;
    }
}
int mbedtls_ssl_set_hs_psk( mbedtls_ssl_context *ssl,
                            const unsigned char *psk, size_t psk_len )
{
    if( psk == ((void*)0) || ssl->handshake == ((void*)0) )
        return( -0x7100 );
    if( psk_len > 32 )
        return( -0x7100 );
    ssl_remove_psk( ssl );
    if( ( ssl->handshake->psk = calloc( 1, psk_len ) ) == ((void*)0) )
        return( -0x7F00 );
    ssl->handshake->psk_len = psk_len;
    memcpy( ssl->handshake->psk, psk, ssl->handshake->psk_len );
    return( 0 );
}
void mbedtls_ssl_conf_psk_cb( mbedtls_ssl_config *conf,
                     int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *,
                     size_t),
                     void *p_psk )
{
    conf->f_psk = f_psk;
    conf->p_psk = p_psk;
}
int mbedtls_ssl_conf_dh_param( mbedtls_ssl_config *conf, const char *dhm_P, const char *dhm_G )
{
    int ret = -0x006E;
    if( ( ret = mbedtls_mpi_read_string( &conf->dhm_P, 16, dhm_P ) ) != 0 ||
        ( ret = mbedtls_mpi_read_string( &conf->dhm_G, 16, dhm_G ) ) != 0 )
    {
        mbedtls_mpi_free( &conf->dhm_P );
        mbedtls_mpi_free( &conf->dhm_G );
        return( ret );
    }
    return( 0 );
}
int mbedtls_ssl_conf_dh_param_bin( mbedtls_ssl_config *conf,
                                   const unsigned char *dhm_P, size_t P_len,
                                   const unsigned char *dhm_G, size_t G_len )
{
    int ret = -0x006E;
    if( ( ret = mbedtls_mpi_read_binary( &conf->dhm_P, dhm_P, P_len ) ) != 0 ||
        ( ret = mbedtls_mpi_read_binary( &conf->dhm_G, dhm_G, G_len ) ) != 0 )
    {
        mbedtls_mpi_free( &conf->dhm_P );
        mbedtls_mpi_free( &conf->dhm_G );
        return( ret );
    }
    return( 0 );
}
int mbedtls_ssl_conf_dh_param_ctx( mbedtls_ssl_config *conf, mbedtls_dhm_context *dhm_ctx )
{
    int ret = -0x006E;
    if( ( ret = mbedtls_mpi_copy( &conf->dhm_P, &dhm_ctx->P ) ) != 0 ||
        ( ret = mbedtls_mpi_copy( &conf->dhm_G, &dhm_ctx->G ) ) != 0 )
    {
        mbedtls_mpi_free( &conf->dhm_P );
        mbedtls_mpi_free( &conf->dhm_G );
        return( ret );
    }
    return( 0 );
}
void mbedtls_ssl_conf_dhm_min_bitlen( mbedtls_ssl_config *conf,
                                      unsigned int bitlen )
{
    conf->dhm_min_bitlen = bitlen;
}
void mbedtls_ssl_conf_sig_hashes( mbedtls_ssl_config *conf,
                                  const int *hashes )
{
    conf->sig_hashes = hashes;
}
void mbedtls_ssl_conf_curves( mbedtls_ssl_config *conf,
                             const mbedtls_ecp_group_id *curve_list )
{
    conf->curve_list = curve_list;
}
int mbedtls_ssl_set_hostname( mbedtls_ssl_context *ssl, const char *hostname )
{
    size_t hostname_len = 0;
    if( hostname != ((void*)0) )
    {
        hostname_len = strlen( hostname );
        if( hostname_len > 255 )
            return( -0x7100 );
    }
    if( ssl->hostname != ((void*)0) )
    {
        mbedtls_platform_zeroize( ssl->hostname, strlen( ssl->hostname ) );
        free( ssl->hostname );
    }
    if( hostname == ((void*)0) )
    {
        ssl->hostname = ((void*)0);
    }
    else
    {
        ssl->hostname = calloc( 1, hostname_len + 1 );
        if( ssl->hostname == ((void*)0) )
            return( -0x7F00 );
        memcpy( ssl->hostname, hostname, hostname_len );
        ssl->hostname[hostname_len] = '\0';
    }
    return( 0 );
}
void mbedtls_ssl_conf_sni( mbedtls_ssl_config *conf,
                  int (*f_sni)(void *, mbedtls_ssl_context *,
                                const unsigned char *, size_t),
                  void *p_sni )
{
    conf->f_sni = f_sni;
    conf->p_sni = p_sni;
}
int mbedtls_ssl_conf_alpn_protocols( mbedtls_ssl_config *conf, const char **protos )
{
    size_t cur_len, tot_len;
    const char **p;
    tot_len = 0;
    for( p = protos; *p != ((void*)0); p++ )
    {
        cur_len = strlen( *p );
        tot_len += cur_len;
        if( ( cur_len == 0 ) ||
            ( cur_len > 255 ) ||
            ( tot_len > 65535 ) )
            return( -0x7100 );
    }
    conf->alpn_list = protos;
    return( 0 );
}
const char *mbedtls_ssl_get_alpn_protocol( const mbedtls_ssl_context *ssl )
{
    return( ssl->alpn_chosen );
}
void mbedtls_ssl_conf_max_version( mbedtls_ssl_config *conf, int major, int minor )
{
    conf->max_major_ver = major;
    conf->max_minor_ver = minor;
}
void mbedtls_ssl_conf_min_version( mbedtls_ssl_config *conf, int major, int minor )
{
    conf->min_major_ver = major;
    conf->min_minor_ver = minor;
}
void mbedtls_ssl_conf_fallback( mbedtls_ssl_config *conf, char fallback )
{
    conf->fallback = fallback;
}
void mbedtls_ssl_conf_cert_req_ca_list( mbedtls_ssl_config *conf,
                                          char cert_req_ca_list )
{
    conf->cert_req_ca_list = cert_req_ca_list;
}
void mbedtls_ssl_conf_encrypt_then_mac( mbedtls_ssl_config *conf, char etm )
{
    conf->encrypt_then_mac = etm;
}
void mbedtls_ssl_conf_extended_master_secret( mbedtls_ssl_config *conf, char ems )
{
    conf->extended_ms = ems;
}
void mbedtls_ssl_conf_arc4_support( mbedtls_ssl_config *conf, char arc4 )
{
    conf->arc4_disabled = arc4;
}
int mbedtls_ssl_conf_max_frag_len( mbedtls_ssl_config *conf, unsigned char mfl_code )
{
    if( mfl_code >= 5 ||
        ssl_mfl_code_to_length( mfl_code ) > ( (16384 > 16384) ? ( 16384 ) : ( 16384 ) ) )
    {
        return( -0x7100 );
    }
    conf->mfl_code = mfl_code;
    return( 0 );
}
void mbedtls_ssl_conf_truncated_hmac( mbedtls_ssl_config *conf, int truncate )
{
    conf->trunc_hmac = truncate;
}
void mbedtls_ssl_conf_cbc_record_splitting( mbedtls_ssl_config *conf, char split )
{
    conf->cbc_record_splitting = split;
}
void mbedtls_ssl_conf_legacy_renegotiation( mbedtls_ssl_config *conf, int allow_legacy )
{
    conf->allow_legacy_renegotiation = allow_legacy;
}
void mbedtls_ssl_conf_renegotiation( mbedtls_ssl_config *conf, int renegotiation )
{
    conf->disable_renegotiation = renegotiation;
}
void mbedtls_ssl_conf_renegotiation_enforced( mbedtls_ssl_config *conf, int max_records )
{
    conf->renego_max_records = max_records;
}
void mbedtls_ssl_conf_renegotiation_period( mbedtls_ssl_config *conf,
                                   const unsigned char period[8] )
{
    memcpy( conf->renego_period, period, 8 );
}
void mbedtls_ssl_conf_session_tickets( mbedtls_ssl_config *conf, int use_tickets )
{
    conf->session_tickets = use_tickets;
}
void mbedtls_ssl_conf_session_tickets_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_ticket_write_t *f_ticket_write,
        mbedtls_ssl_ticket_parse_t *f_ticket_parse,
        void *p_ticket )
{
    conf->f_ticket_write = f_ticket_write;
    conf->f_ticket_parse = f_ticket_parse;
    conf->p_ticket = p_ticket;
}
void mbedtls_ssl_conf_export_keys_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_t *f_export_keys,
        void *p_export_keys )
{
    conf->f_export_keys = f_export_keys;
    conf->p_export_keys = p_export_keys;
}
void mbedtls_ssl_conf_export_keys_ext_cb( mbedtls_ssl_config *conf,
        mbedtls_ssl_export_keys_ext_t *f_export_keys_ext,
        void *p_export_keys )
{
    conf->f_export_keys_ext = f_export_keys_ext;
    conf->p_export_keys = p_export_keys;
}
uint32_t mbedtls_ssl_get_verify_result( const mbedtls_ssl_context *ssl )
{
    if( ssl->session != ((void*)0) )
        return( ssl->session->verify_result );
    if( ssl->session_negotiate != ((void*)0) )
        return( ssl->session_negotiate->verify_result );
    return( 0xFFFFFFFF );
}
const char *mbedtls_ssl_get_ciphersuite( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) || ssl->session == ((void*)0) )
        return( ((void*)0) );
    return mbedtls_ssl_get_ciphersuite_name( ssl->session->ciphersuite );
}
const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl )
{
    if( ssl->conf->transport == 1 )
    {
        switch( ssl->minor_ver )
        {
            case 2:
                return( "DTLSv1.0" );
            case 3:
                return( "DTLSv1.2" );
            default:
                return( "unknown (DTLS)" );
        }
    }
    switch( ssl->minor_ver )
    {
        case 0:
            return( "SSLv3.0" );
        case 1:
            return( "TLSv1.0" );
        case 2:
            return( "TLSv1.1" );
        case 3:
            return( "TLSv1.2" );
        default:
            return( "unknown" );
    }
}
size_t mbedtls_ssl_get_input_max_frag_len( const mbedtls_ssl_context *ssl )
{
    size_t max_len = 16384;
    size_t read_mfl;
    if( ssl->conf->endpoint == 0 &&
        ssl->state >= MBEDTLS_SSL_SERVER_HELLO_DONE )
    {
        return ssl_mfl_code_to_length( ssl->conf->mfl_code );
    }
    if( ssl->session_out != ((void*)0) )
    {
        read_mfl = ssl_mfl_code_to_length( ssl->session_out->mfl_code );
        if( read_mfl < max_len )
        {
            max_len = read_mfl;
        }
    }
    if( ssl->session_negotiate != ((void*)0) )
    {
        read_mfl = ssl_mfl_code_to_length( ssl->session_negotiate->mfl_code );
        if( read_mfl < max_len )
        {
            max_len = read_mfl;
        }
    }
    return( max_len );
}
size_t mbedtls_ssl_get_output_max_frag_len( const mbedtls_ssl_context *ssl )
{
    size_t max_len;
    max_len = ssl_mfl_code_to_length( ssl->conf->mfl_code );
    if( ssl->session_out != ((void*)0) &&
        ssl_mfl_code_to_length( ssl->session_out->mfl_code ) < max_len )
    {
        max_len = ssl_mfl_code_to_length( ssl->session_out->mfl_code );
    }
    if( ssl->session_negotiate != ((void*)0) &&
        ssl_mfl_code_to_length( ssl->session_negotiate->mfl_code ) < max_len )
    {
        max_len = ssl_mfl_code_to_length( ssl->session_negotiate->mfl_code );
    }
    return( max_len );
}
size_t mbedtls_ssl_get_max_frag_len( const mbedtls_ssl_context *ssl )
{
    return mbedtls_ssl_get_output_max_frag_len( ssl );
}
size_t mbedtls_ssl_get_current_mtu( const mbedtls_ssl_context *ssl )
{
    if( ssl->conf->endpoint == 0 &&
        ( ssl->state == MBEDTLS_SSL_CLIENT_HELLO ||
          ssl->state == MBEDTLS_SSL_SERVER_HELLO ) )
        return ( 0 );
    if( ssl->handshake == ((void*)0) || ssl->handshake->mtu == 0 )
        return( ssl->mtu );
    if( ssl->mtu == 0 )
        return( ssl->handshake->mtu );
    return( ssl->mtu < ssl->handshake->mtu ?
            ssl->mtu : ssl->handshake->mtu );
}
int mbedtls_ssl_get_max_out_record_payload( const mbedtls_ssl_context *ssl )
{
    size_t max_len = 16384;
    const size_t mfl = mbedtls_ssl_get_output_max_frag_len( ssl );
    if( max_len > mfl )
        max_len = mfl;
    if( mbedtls_ssl_get_current_mtu( ssl ) != 0 )
    {
        const size_t mtu = mbedtls_ssl_get_current_mtu( ssl );
        const int ret = mbedtls_ssl_get_record_expansion( ssl );
        const size_t overhead = (size_t) ret;
        if( ret < 0 )
            return( ret );
        if( mtu <= overhead )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 5042, "MTU too low for record expansion" );
            return( -0x7080 );
        }
        if( max_len > mtu - overhead )
            max_len = mtu - overhead;
    }
    return( (int) max_len );
}
const mbedtls_x509_crt *mbedtls_ssl_get_peer_cert( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) || ssl->session == ((void*)0) )
        return( ((void*)0) );
    return( ssl->session->peer_cert );
}
int mbedtls_ssl_get_session( const mbedtls_ssl_context *ssl,
                             mbedtls_ssl_session *dst )
{
    if( ssl == ((void*)0) ||
        dst == ((void*)0) ||
        ssl->session == ((void*)0) ||
        ssl->conf->endpoint != 0 )
    {
        return( -0x7100 );
    }
    return( mbedtls_ssl_session_copy( dst, ssl->session ) );
}
const mbedtls_ssl_session *mbedtls_ssl_get_session_pointer( const mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) )
        return( ((void*)0) );
    return( ssl->session );
}
static unsigned char ssl_serialized_session_header[] = {
    2,
    24,
    0,
    ( ( (uint16_t) ( ( 1 << 0 ) | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) ) ) >> 8 ) & 0xFF,
    ( ( (uint16_t) ( ( 1 << 0 ) | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) ) ) >> 0 ) & 0xFF,
};
static int ssl_session_save( const mbedtls_ssl_session *session,
                             unsigned char omit_header,
                             unsigned char *buf,
                             size_t buf_len,
                             size_t *olen )
{
    unsigned char *p = buf;
    size_t used = 0;
    uint64_t start;
    size_t cert_len;
    if( !omit_header )
    {
        used += sizeof( ssl_serialized_session_header );
        if( used <= buf_len )
        {
            memcpy( p, ssl_serialized_session_header,
                    sizeof( ssl_serialized_session_header ) );
            p += sizeof( ssl_serialized_session_header );
        }
    }
    used += 8;
    if( used <= buf_len )
    {
        start = (uint64_t) session->start;
        *p++ = (unsigned char)( ( start >> 56 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 48 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 40 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 32 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( start >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( start ) & 0xFF );
    }
    used += 2
          + 1
          + 1
          + sizeof( session->id )
          + sizeof( session->master )
          + 4;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( session->ciphersuite >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ciphersuite ) & 0xFF );
        *p++ = (unsigned char)( session->compression & 0xFF );
        *p++ = (unsigned char)( session->id_len & 0xFF );
        memcpy( p, session->id, 32 );
        p += 32;
        memcpy( p, session->master, 48 );
        p += 48;
        *p++ = (unsigned char)( ( session->verify_result >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( session->verify_result >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( session->verify_result >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( session->verify_result ) & 0xFF );
    }
    if( session->peer_cert == ((void*)0) )
        cert_len = 0;
    else
        cert_len = session->peer_cert->raw.len;
    used += 3 + cert_len;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( cert_len >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( cert_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( cert_len ) & 0xFF );
        if( session->peer_cert != ((void*)0) )
        {
            memcpy( p, session->peer_cert->raw.p, cert_len );
            p += cert_len;
        }
    }
    used += 3 + session->ticket_len + 4;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( session->ticket_len >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ticket_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ticket_len ) & 0xFF );
        if( session->ticket != ((void*)0) )
        {
            memcpy( p, session->ticket, session->ticket_len );
            p += session->ticket_len;
        }
        *p++ = (unsigned char)( ( session->ticket_lifetime >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ticket_lifetime >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ticket_lifetime >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( session->ticket_lifetime ) & 0xFF );
    }
    used += 1;
    if( used <= buf_len )
        *p++ = session->mfl_code;
    used += 1;
    if( used <= buf_len )
        *p++ = (unsigned char)( ( session->trunc_hmac ) & 0xFF );
    used += 1;
    if( used <= buf_len )
        *p++ = (unsigned char)( ( session->encrypt_then_mac ) & 0xFF );
    *olen = used;
    if( used > buf_len )
        return( -0x6A00 );
    return( 0 );
}
int mbedtls_ssl_session_save( const mbedtls_ssl_session *session,
                              unsigned char *buf,
                              size_t buf_len,
                              size_t *olen )
{
    return( ssl_session_save( session, 0, buf, buf_len, olen ) );
}
static int ssl_session_load( mbedtls_ssl_session *session,
                             unsigned char omit_header,
                             const unsigned char *buf,
                             size_t len )
{
    const unsigned char *p = buf;
    const unsigned char * const end = buf + len;
    uint64_t start;
    size_t cert_len;
    if( !omit_header )
    {
        if( (size_t)( end - p ) < sizeof( ssl_serialized_session_header ) )
            return( -0x7100 );
        if( memcmp( p, ssl_serialized_session_header,
                    sizeof( ssl_serialized_session_header ) ) != 0 )
        {
            return( -0x5F00 );
        }
        p += sizeof( ssl_serialized_session_header );
    }
    if( 8 > (size_t)( end - p ) )
        return( -0x7100 );
    start = ( (uint64_t) p[0] << 56 ) |
            ( (uint64_t) p[1] << 48 ) |
            ( (uint64_t) p[2] << 40 ) |
            ( (uint64_t) p[3] << 32 ) |
            ( (uint64_t) p[4] << 24 ) |
            ( (uint64_t) p[5] << 16 ) |
            ( (uint64_t) p[6] << 8 ) |
            ( (uint64_t) p[7] );
    p += 8;
    session->start = (time_t) start;
    if( 2 + 1 + 1 + 32 + 48 + 4 > (size_t)( end - p ) )
        return( -0x7100 );
    session->ciphersuite = ( p[0] << 8 ) | p[1];
    p += 2;
    session->compression = *p++;
    session->id_len = *p++;
    memcpy( session->id, p, 32 );
    p += 32;
    memcpy( session->master, p, 48 );
    p += 48;
    session->verify_result = ( (uint32_t) p[0] << 24 ) |
                             ( (uint32_t) p[1] << 16 ) |
                             ( (uint32_t) p[2] << 8 ) |
                             ( (uint32_t) p[3] );
    p += 4;
    session->peer_cert = ((void*)0);
    session->ticket = ((void*)0);
    if( 3 > (size_t)( end - p ) )
        return( -0x7100 );
    cert_len = ( p[0] << 16 ) | ( p[1] << 8 ) | p[2];
    p += 3;
    if( cert_len != 0 )
    {
        int ret = -0x006E;
        if( cert_len > (size_t)( end - p ) )
            return( -0x7100 );
        session->peer_cert = calloc( 1, sizeof( mbedtls_x509_crt ) );
        if( session->peer_cert == ((void*)0) )
            return( -0x7F00 );
        mbedtls_x509_crt_init( session->peer_cert );
        if( ( ret = mbedtls_x509_crt_parse_der( session->peer_cert,
                                                p, cert_len ) ) != 0 )
        {
            mbedtls_x509_crt_free( session->peer_cert );
            free( session->peer_cert );
            session->peer_cert = ((void*)0);
            return( ret );
        }
        p += cert_len;
    }
    if( 3 > (size_t)( end - p ) )
        return( -0x7100 );
    session->ticket_len = ( p[0] << 16 ) | ( p[1] << 8 ) | p[2];
    p += 3;
    if( session->ticket_len != 0 )
    {
        if( session->ticket_len > (size_t)( end - p ) )
            return( -0x7100 );
        session->ticket = calloc( 1, session->ticket_len );
        if( session->ticket == ((void*)0) )
            return( -0x7F00 );
        memcpy( session->ticket, p, session->ticket_len );
        p += session->ticket_len;
    }
    if( 4 > (size_t)( end - p ) )
        return( -0x7100 );
    session->ticket_lifetime = ( (uint32_t) p[0] << 24 ) |
                               ( (uint32_t) p[1] << 16 ) |
                               ( (uint32_t) p[2] << 8 ) |
                               ( (uint32_t) p[3] );
    p += 4;
    if( 1 > (size_t)( end - p ) )
        return( -0x7100 );
    session->mfl_code = *p++;
    if( 1 > (size_t)( end - p ) )
        return( -0x7100 );
    session->trunc_hmac = *p++;
    if( 1 > (size_t)( end - p ) )
        return( -0x7100 );
    session->encrypt_then_mac = *p++;
    if( p != end )
        return( -0x7100 );
    return( 0 );
}
int mbedtls_ssl_session_load( mbedtls_ssl_session *session,
                              const unsigned char *buf,
                              size_t len )
{
    int ret = ssl_session_load( session, 0, buf, len );
    if( ret != 0 )
        mbedtls_ssl_session_free( session );
    return( ret );
}
int mbedtls_ssl_handshake_step( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    if( ssl->conf->endpoint == 0 )
        ret = mbedtls_ssl_handshake_client_step( ssl );
    if( ssl->conf->endpoint == 1 )
        ret = mbedtls_ssl_handshake_server_step( ssl );
    return( ret );
}
int mbedtls_ssl_handshake( mbedtls_ssl_context *ssl )
{
    int ret = 0;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5688, "=> handshake" );
    while( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        ret = mbedtls_ssl_handshake_step( ssl );
        if( ret != 0 )
            break;
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5698, "<= handshake" );
    return( ret );
}
static int ssl_write_hello_request( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5712, "=> write hello request" );
    ssl->out_msglen = 4;
    ssl->out_msgtype = 22;
    ssl->out_msg[0] = 0;
    if( ( ret = mbedtls_ssl_write_handshake_msg( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 5720, "mbedtls_ssl_write_handshake_msg", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5724, "<= write hello request" );
    return( 0 );
}
int mbedtls_ssl_start_renegotiation( mbedtls_ssl_context *ssl )
{
    int ret = -0x006E;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5743, "=> renegotiate" );
    if( ( ret = ssl_handshake_init( ssl ) ) != 0 )
        return( ret );
    if( ssl->conf->transport == 1 &&
        ssl->renego_status == 3 )
    {
        if( ssl->conf->endpoint == 1 )
            ssl->handshake->out_msg_seq = 1;
        else
            ssl->handshake->in_msg_seq = 1;
    }
    ssl->state = MBEDTLS_SSL_HELLO_REQUEST;
    ssl->renego_status = 1;
    if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 5766, "mbedtls_ssl_handshake", ret );
        return( ret );
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 5770, "<= renegotiate" );
    return( 0 );
}
int mbedtls_ssl_renegotiate( mbedtls_ssl_context *ssl )
{
    int ret = -0x7080;
    if( ssl == ((void*)0) || ssl->conf == ((void*)0) )
        return( -0x7100 );
    if( ssl->conf->endpoint == 1 )
    {
        if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            return( -0x7100 );
        ssl->renego_status = 3;
        if( ssl->out_left != 0 )
            return( mbedtls_ssl_flush_output( ssl ) );
        return( ssl_write_hello_request( ssl ) );
    }
    if( ssl->renego_status != 1 )
    {
        if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
            return( -0x7100 );
        if( ( ret = mbedtls_ssl_start_renegotiation( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 5815, "mbedtls_ssl_start_renegotiation", ret );
            return( ret );
        }
    }
    else
    {
        if( ( ret = mbedtls_ssl_handshake( ssl ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 5823, "mbedtls_ssl_handshake", ret );
            return( ret );
        }
    }
    return( ret );
}
static void ssl_key_cert_free( mbedtls_ssl_key_cert *key_cert )
{
    mbedtls_ssl_key_cert *cur = key_cert, *next;
    while( cur != ((void*)0) )
    {
        next = cur->next;
        free( cur );
        cur = next;
    }
}
void mbedtls_ssl_handshake_free( mbedtls_ssl_context *ssl )
{
    mbedtls_ssl_handshake_params *handshake = ssl->handshake;
    if( handshake == ((void*)0) )
        return;
    mbedtls_md5_free( &handshake->fin_md5 );
    mbedtls_sha1_free( &handshake->fin_sha1 );
    mbedtls_sha256_free( &handshake->fin_sha256 );
    mbedtls_sha512_free( &handshake->fin_sha512 );
    mbedtls_dhm_free( &handshake->dhm_ctx );
    mbedtls_ecdh_free( &handshake->ecdh_ctx );
    free( (void *) handshake->curves );
    if( handshake->psk != ((void*)0) )
    {
        mbedtls_platform_zeroize( handshake->psk, handshake->psk_len );
        free( handshake->psk );
    }
    if( handshake->sni_key_cert != ((void*)0) )
    {
        mbedtls_ssl_key_cert *cur = handshake->sni_key_cert, *next;
        while( cur != ((void*)0) )
        {
            next = cur->next;
            free( cur );
            cur = next;
        }
    }
    free( handshake->verify_cookie );
    mbedtls_ssl_flight_free( handshake->flight );
    mbedtls_ssl_buffering_free( ssl );
    mbedtls_platform_zeroize( handshake,
                              sizeof( mbedtls_ssl_handshake_params ) );
}
void mbedtls_ssl_session_free( mbedtls_ssl_session *session )
{
    if( session == ((void*)0) )
        return;
    ssl_clear_peer_cert( session );
    free( session->ticket );
    mbedtls_platform_zeroize( session, sizeof( mbedtls_ssl_session ) );
}
static unsigned char ssl_serialized_context_header[] = {
    2,
    24,
    0,
    ( ( (uint16_t) ( ( 1 << 0 ) | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) ) ) >> 8 ) & 0xFF,
    ( ( (uint16_t) ( ( 1 << 0 ) | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) ) ) >> 0 ) & 0xFF,
    ( ( (uint32_t) ( ( 0u << 0 ) | ( 1u << 1 ) | ( 1u << 2 ) | ( 1u << 3 ) | 0u ) ) >> 16 ) & 0xFF,
    ( ( (uint32_t) ( ( 0u << 0 ) | ( 1u << 1 ) | ( 1u << 2 ) | ( 1u << 3 ) | 0u ) ) >> 8 ) & 0xFF,
    ( ( (uint32_t) ( ( 0u << 0 ) | ( 1u << 1 ) | ( 1u << 2 ) | ( 1u << 3 ) | 0u ) ) >> 0 ) & 0xFF,
};
int mbedtls_ssl_context_save( mbedtls_ssl_context *ssl,
                              unsigned char *buf,
                              size_t buf_len,
                              size_t *olen )
{
    unsigned char *p = buf;
    size_t used = 0;
    size_t session_len;
    int ret = 0;
    if( ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6153, "Initial handshake isn't over" );
        return( -0x7100 );
    }
    if( ssl->handshake != ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6158, "Handshake isn't completed" );
        return( -0x7100 );
    }
    if( ssl->transform == ((void*)0) || ssl->session == ((void*)0) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6164, "Serialised structures aren't ready" );
        return( -0x7100 );
    }
    if( mbedtls_ssl_check_pending( ssl ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6170, "There is pending incoming data" );
        return( -0x7100 );
    }
    if( ssl->out_left != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6175, "There is pending outgoing data" );
        return( -0x7100 );
    }
    if( ssl->conf->transport != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6181, "Only DTLS is supported" );
        return( -0x7100 );
    }
    if( ssl->major_ver != 3 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6187, "Only version 1.2 supported" );
        return( -0x7100 );
    }
    if( ssl->minor_ver != 3 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6192, "Only version 1.2 supported" );
        return( -0x7100 );
    }
    if( mbedtls_ssl_transform_uses_aead( ssl->transform ) != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6198, "Only AEAD ciphersuites supported" );
        return( -0x7100 );
    }
    if( ssl->conf->disable_renegotiation != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_tls.c", 6205, "Renegotiation must not be enabled" );
        return( -0x7100 );
    }
    used += sizeof( ssl_serialized_context_header );
    if( used <= buf_len )
    {
        memcpy( p, ssl_serialized_context_header,
                sizeof( ssl_serialized_context_header ) );
        p += sizeof( ssl_serialized_context_header );
    }
    ret = ssl_session_save( ssl->session, 1, ((void*)0), 0, &session_len );
    if( ret != -0x6A00 )
        return( ret );
    used += 4 + session_len;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( session_len >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( session_len >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( session_len >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( session_len ) & 0xFF );
        ret = ssl_session_save( ssl->session, 1,
                                p, session_len, &session_len );
        if( ret != 0 )
            return( ret );
        p += session_len;
    }
    used += sizeof( ssl->transform->randbytes );
    if( used <= buf_len )
    {
        memcpy( p, ssl->transform->randbytes,
           sizeof( ssl->transform->randbytes ) );
        p += sizeof( ssl->transform->randbytes );
    }
    used += 4;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( ssl->badmac_seen >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->badmac_seen >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->badmac_seen >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->badmac_seen ) & 0xFF );
    }
    used += 16;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( ssl->in_window_top >> 56 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 48 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 40 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 32 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window_top ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 56 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 48 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 40 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 32 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 24 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 16 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->in_window ) & 0xFF );
    }
    used += 1;
    if( used <= buf_len )
    {
        *p++ = ssl->disable_datagram_packing;
    }
    used += 8;
    if( used <= buf_len )
    {
        memcpy( p, ssl->cur_out_ctr, 8 );
        p += 8;
    }
    used += 2;
    if( used <= buf_len )
    {
        *p++ = (unsigned char)( ( ssl->mtu >> 8 ) & 0xFF );
        *p++ = (unsigned char)( ( ssl->mtu ) & 0xFF );
    }
    {
        const uint8_t alpn_len = ssl->alpn_chosen
                               ? (uint8_t) strlen( ssl->alpn_chosen )
                               : 0;
        used += 1 + alpn_len;
        if( used <= buf_len )
        {
            *p++ = alpn_len;
            if( ssl->alpn_chosen != ((void*)0) )
            {
                memcpy( p, ssl->alpn_chosen, alpn_len );
                p += alpn_len;
            }
        }
    }
    *olen = used;
    if( used > buf_len )
        return( -0x6A00 );
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 6360, "saved context", buf, used );
    return( mbedtls_ssl_session_reset_int( ssl, 0 ) );
}
typedef int (*tls_prf_fn)( const unsigned char *secret, size_t slen,
                           const char *label,
                           const unsigned char *random, size_t rlen,
                           unsigned char *dstbuf, size_t dlen );
static tls_prf_fn ssl_tls12prf_from_cs( int ciphersuite_id )
{
    const mbedtls_ssl_ciphersuite_t * const ciphersuite_info =
         mbedtls_ssl_ciphersuite_from_id( ciphersuite_id );
    if( ciphersuite_info->mac == MBEDTLS_MD_SHA384 )
        return( tls_prf_sha384 );
    return( tls_prf_sha256 );
}
static int ssl_context_load( mbedtls_ssl_context *ssl,
                             const unsigned char *buf,
                             size_t len )
{
    const unsigned char *p = buf;
    const unsigned char * const end = buf + len;
    size_t session_len;
    int ret = -0x006E;
    if( ssl->state != MBEDTLS_SSL_HELLO_REQUEST ||
        ssl->session != ((void*)0) )
    {
        return( -0x7100 );
    }
    if( ssl->conf->transport != 1 ||
        ssl->conf->max_major_ver < 3 ||
        ssl->conf->min_major_ver > 3 ||
        ssl->conf->max_minor_ver < 3 ||
        ssl->conf->min_minor_ver > 3 ||
        ssl->conf->disable_renegotiation != 0 ||
        0 )
    {
        return( -0x7100 );
    }
    mbedtls_debug_print_buf( ssl, 4, "ssl_tls.c", 6431, "context to load", buf, len );
    if( (size_t)( end - p ) < sizeof( ssl_serialized_context_header ) )
        return( -0x7100 );
    if( memcmp( p, ssl_serialized_context_header,
                sizeof( ssl_serialized_context_header ) ) != 0 )
    {
        return( -0x5F00 );
    }
    p += sizeof( ssl_serialized_context_header );
    if( (size_t)( end - p ) < 4 )
        return( -0x7100 );
    session_len = ( (size_t) p[0] << 24 ) |
                  ( (size_t) p[1] << 16 ) |
                  ( (size_t) p[2] << 8 ) |
                  ( (size_t) p[3] );
    p += 4;
    ssl->session = ssl->session_negotiate;
    ssl->session_in = ssl->session;
    ssl->session_out = ssl->session;
    ssl->session_negotiate = ((void*)0);
    if( (size_t)( end - p ) < session_len )
        return( -0x7100 );
    ret = ssl_session_load( ssl->session, 1, p, session_len );
    if( ret != 0 )
    {
        mbedtls_ssl_session_free( ssl->session );
        return( ret );
    }
    p += session_len;
    ssl->transform = ssl->transform_negotiate;
    ssl->transform_in = ssl->transform;
    ssl->transform_out = ssl->transform;
    ssl->transform_negotiate = ((void*)0);
    if( (size_t)( end - p ) < sizeof( ssl->transform->randbytes ) )
        return( -0x7100 );
    ret = ssl_populate_transform( ssl->transform,
                  ssl->session->ciphersuite,
                  ssl->session->master,
                  ssl->session->encrypt_then_mac,
                  ssl->session->trunc_hmac,
                  ssl_tls12prf_from_cs( ssl->session->ciphersuite ),
                  p,
                  3,
                  ssl->conf->endpoint,
                  ssl );
    if( ret != 0 )
        return( ret );
    p += sizeof( ssl->transform->randbytes );
    if( (size_t)( end - p ) < 4 )
        return( -0x7100 );
    ssl->badmac_seen = ( (uint32_t) p[0] << 24 ) |
                       ( (uint32_t) p[1] << 16 ) |
                       ( (uint32_t) p[2] << 8 ) |
                       ( (uint32_t) p[3] );
    p += 4;
    if( (size_t)( end - p ) < 16 )
        return( -0x7100 );
    ssl->in_window_top = ( (uint64_t) p[0] << 56 ) |
                         ( (uint64_t) p[1] << 48 ) |
                         ( (uint64_t) p[2] << 40 ) |
                         ( (uint64_t) p[3] << 32 ) |
                         ( (uint64_t) p[4] << 24 ) |
                         ( (uint64_t) p[5] << 16 ) |
                         ( (uint64_t) p[6] << 8 ) |
                         ( (uint64_t) p[7] );
    p += 8;
    ssl->in_window = ( (uint64_t) p[0] << 56 ) |
                     ( (uint64_t) p[1] << 48 ) |
                     ( (uint64_t) p[2] << 40 ) |
                     ( (uint64_t) p[3] << 32 ) |
                     ( (uint64_t) p[4] << 24 ) |
                     ( (uint64_t) p[5] << 16 ) |
                     ( (uint64_t) p[6] << 8 ) |
                     ( (uint64_t) p[7] );
    p += 8;
    if( (size_t)( end - p ) < 1 )
        return( -0x7100 );
    ssl->disable_datagram_packing = *p++;
    if( (size_t)( end - p ) < 8 )
        return( -0x7100 );
    memcpy( ssl->cur_out_ctr, p, 8 );
    p += 8;
    if( (size_t)( end - p ) < 2 )
        return( -0x7100 );
    ssl->mtu = ( p[0] << 8 ) | p[1];
    p += 2;
    {
        uint8_t alpn_len;
        const char **cur;
        if( (size_t)( end - p ) < 1 )
            return( -0x7100 );
        alpn_len = *p++;
        if( alpn_len != 0 && ssl->conf->alpn_list != ((void*)0) )
        {
            for( cur = ssl->conf->alpn_list; *cur != ((void*)0); cur++ )
            {
                if( strlen( *cur ) == alpn_len &&
                    memcmp( p, cur, alpn_len ) == 0 )
                {
                    ssl->alpn_chosen = *cur;
                    break;
                }
            }
        }
        if( alpn_len != 0 && ssl->alpn_chosen == ((void*)0) )
            return( -0x7100 );
        p += alpn_len;
    }
    ssl->state = MBEDTLS_SSL_HANDSHAKE_OVER;
    ssl->major_ver = 3;
    ssl->minor_ver = 3;
    mbedtls_ssl_update_out_pointers( ssl, ssl->transform );
    ssl->in_epoch = 1;
    if( ssl->handshake != ((void*)0) )
    {
        mbedtls_ssl_handshake_free( ssl );
        free( ssl->handshake );
        ssl->handshake = ((void*)0);
    }
    if( p != end )
        return( -0x7100 );
    return( 0 );
}
int mbedtls_ssl_context_load( mbedtls_ssl_context *context,
                              const unsigned char *buf,
                              size_t len )
{
    int ret = ssl_context_load( context, buf, len );
    if( ret != 0 )
        mbedtls_ssl_free( context );
    return( ret );
}
void mbedtls_ssl_free( mbedtls_ssl_context *ssl )
{
    if( ssl == ((void*)0) )
        return;
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 6693, "=> free" );
    if( ssl->out_buf != ((void*)0) )
    {
        size_t out_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
        mbedtls_platform_zeroize( ssl->out_buf, out_buf_len );
        free( ssl->out_buf );
        ssl->out_buf = ((void*)0);
    }
    if( ssl->in_buf != ((void*)0) )
    {
        size_t in_buf_len = ( ( 13 ) + ( ( ( 0 + 16 + 48 + 256 + 0 ) + ( 16384 ) ) ) );
        mbedtls_platform_zeroize( ssl->in_buf, in_buf_len );
        free( ssl->in_buf );
        ssl->in_buf = ((void*)0);
    }
    if( ssl->transform )
    {
        mbedtls_ssl_transform_free( ssl->transform );
        free( ssl->transform );
    }
    if( ssl->handshake )
    {
        mbedtls_ssl_handshake_free( ssl );
        mbedtls_ssl_transform_free( ssl->transform_negotiate );
        mbedtls_ssl_session_free( ssl->session_negotiate );
        free( ssl->handshake );
        free( ssl->transform_negotiate );
        free( ssl->session_negotiate );
    }
    if( ssl->session )
    {
        mbedtls_ssl_session_free( ssl->session );
        free( ssl->session );
    }
    if( ssl->hostname != ((void*)0) )
    {
        mbedtls_platform_zeroize( ssl->hostname, strlen( ssl->hostname ) );
        free( ssl->hostname );
    }
    free( ssl->cli_id );
    mbedtls_debug_print_msg( ssl, 2, "ssl_tls.c", 6772, "<= free" );
    mbedtls_platform_zeroize( ssl, sizeof( mbedtls_ssl_context ) );
}
void mbedtls_ssl_config_init( mbedtls_ssl_config *conf )
{
    memset( conf, 0, sizeof( mbedtls_ssl_config ) );
}
static int ssl_preset_default_hashes[] = {
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_NONE
};
static int ssl_preset_suiteb_ciphersuites[] = {
    0xC02B,
    0xC02C,
    0
};
static int ssl_preset_suiteb_hashes[] = {
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_NONE
};
static mbedtls_ecp_group_id ssl_preset_suiteb_curves[] = {
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_NONE
};
int mbedtls_ssl_config_defaults( mbedtls_ssl_config *conf,
                                 int endpoint, int transport, int preset )
{
    int ret = -0x006E;
    mbedtls_ssl_conf_endpoint( conf, endpoint );
    mbedtls_ssl_conf_transport( conf, transport );
    if( endpoint == 0 )
    {
        conf->authmode = 2;
        conf->session_tickets = 1;
    }
    conf->arc4_disabled = 1;
    conf->encrypt_then_mac = 1;
    conf->extended_ms = 1;
    conf->cbc_record_splitting = 1;
    conf->f_cookie_write = ssl_cookie_write_dummy;
    conf->f_cookie_check = ssl_cookie_check_dummy;
    conf->anti_replay = 1;
    conf->cert_req_ca_list = 1;
    conf->hs_timeout_min = 1000;
    conf->hs_timeout_max = 60000;
    conf->renego_max_records = 16;
    memset( conf->renego_period, 0x00, 2 );
    memset( conf->renego_period + 2, 0xFF, 6 );
            if( endpoint == 1 )
            {
                const unsigned char dhm_p[] =
                    { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xC9, 0x0F, 0xDA, 0xA2, 0x21, 0x68, 0xC2, 0x34, 0xC4, 0xC6, 0x62, 0x8B, 0x80, 0xDC, 0x1C, 0xD1, 0x29, 0x02, 0x4E, 0x08, 0x8A, 0x67, 0xCC, 0x74, 0x02, 0x0B, 0xBE, 0xA6, 0x3B, 0x13, 0x9B, 0x22, 0x51, 0x4A, 0x08, 0x79, 0x8E, 0x34, 0x04, 0xDD, 0xEF, 0x95, 0x19, 0xB3, 0xCD, 0x3A, 0x43, 0x1B, 0x30, 0x2B, 0x0A, 0x6D, 0xF2, 0x5F, 0x14, 0x37, 0x4F, 0xE1, 0x35, 0x6D, 0x6D, 0x51, 0xC2, 0x45, 0xE4, 0x85, 0xB5, 0x76, 0x62, 0x5E, 0x7E, 0xC6, 0xF4, 0x4C, 0x42, 0xE9, 0xA6, 0x37, 0xED, 0x6B, 0x0B, 0xFF, 0x5C, 0xB6, 0xF4, 0x06, 0xB7, 0xED, 0xEE, 0x38, 0x6B, 0xFB, 0x5A, 0x89, 0x9F, 0xA5, 0xAE, 0x9F, 0x24, 0x11, 0x7C, 0x4B, 0x1F, 0xE6, 0x49, 0x28, 0x66, 0x51, 0xEC, 0xE4, 0x5B, 0x3D, 0xC2, 0x00, 0x7C, 0xB8, 0xA1, 0x63, 0xBF, 0x05, 0x98, 0xDA, 0x48, 0x36, 0x1C, 0x55, 0xD3, 0x9A, 0x69, 0x16, 0x3F, 0xA8, 0xFD, 0x24, 0xCF, 0x5F, 0x83, 0x65, 0x5D, 0x23, 0xDC, 0xA3, 0xAD, 0x96, 0x1C, 0x62, 0xF3, 0x56, 0x20, 0x85, 0x52, 0xBB, 0x9E, 0xD5, 0x29, 0x07, 0x70, 0x96, 0x96, 0x6D, 0x67, 0x0C, 0x35, 0x4E, 0x4A, 0xBC, 0x98, 0x04, 0xF1, 0x74, 0x6C, 0x08, 0xCA, 0x18, 0x21, 0x7C, 0x32, 0x90, 0x5E, 0x46, 0x2E, 0x36, 0xCE, 0x3B, 0xE3, 0x9E, 0x77, 0x2C, 0x18, 0x0E, 0x86, 0x03, 0x9B, 0x27, 0x83, 0xA2, 0xEC, 0x07, 0xA2, 0x8F, 0xB5, 0xC5, 0x5D, 0xF0, 0x6F, 0x4C, 0x52, 0xC9, 0xDE, 0x2B, 0xCB, 0xF6, 0x95, 0x58, 0x17, 0x18, 0x39, 0x95, 0x49, 0x7C, 0xEA, 0x95, 0x6A, 0xE5, 0x15, 0xD2, 0x26, 0x18, 0x98, 0xFA, 0x05, 0x10, 0x15, 0x72, 0x8E, 0x5A, 0x8A, 0xAC, 0xAA, 0x68, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };
                const unsigned char dhm_g[] =
                    { 0x02 };
                if ( ( ret = mbedtls_ssl_conf_dh_param_bin( conf,
                                               dhm_p, sizeof( dhm_p ),
                                               dhm_g, sizeof( dhm_g ) ) ) != 0 )
                {
                    return( ret );
                }
            }
    switch( preset )
    {
        case 2:
            conf->min_major_ver = 3;
            conf->min_minor_ver = 3;
            conf->max_major_ver = 3;
            conf->max_minor_ver = 3;
            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                   ssl_preset_suiteb_ciphersuites;
            conf->cert_profile = &mbedtls_x509_crt_profile_suiteb;
            conf->sig_hashes = ssl_preset_suiteb_hashes;
            conf->curve_list = ssl_preset_suiteb_curves;
            break;
        default:
            conf->min_major_ver = ( 3 >
                                    3 ) ?
                                    3 :
                                    3;
            conf->min_minor_ver = ( 1 >
                                    1 ) ?
                                    1 :
                                    1;
            conf->max_major_ver = 3;
            conf->max_minor_ver = 3;
            if( transport == 1 )
                conf->min_minor_ver = 2;
            conf->ciphersuite_list[0] =
            conf->ciphersuite_list[1] =
            conf->ciphersuite_list[2] =
            conf->ciphersuite_list[3] =
                                   mbedtls_ssl_list_ciphersuites();
            conf->cert_profile = &mbedtls_x509_crt_profile_default;
            conf->sig_hashes = ssl_preset_default_hashes;
            conf->curve_list = mbedtls_ecp_grp_id_list();
            conf->dhm_min_bitlen = 1024;
    }
    return( 0 );
}
void mbedtls_ssl_config_free( mbedtls_ssl_config *conf )
{
    mbedtls_mpi_free( &conf->dhm_P );
    mbedtls_mpi_free( &conf->dhm_G );
    if( conf->psk != ((void*)0) )
    {
        mbedtls_platform_zeroize( conf->psk, conf->psk_len );
        free( conf->psk );
        conf->psk = ((void*)0);
        conf->psk_len = 0;
    }
    if( conf->psk_identity != ((void*)0) )
    {
        mbedtls_platform_zeroize( conf->psk_identity, conf->psk_identity_len );
        free( conf->psk_identity );
        conf->psk_identity = ((void*)0);
        conf->psk_identity_len = 0;
    }
    ssl_key_cert_free( conf->key_cert );
    mbedtls_platform_zeroize( conf, sizeof( mbedtls_ssl_config ) );
}
unsigned char mbedtls_ssl_sig_from_pk( mbedtls_pk_context *pk )
{
    if( mbedtls_pk_can_do( pk, MBEDTLS_PK_RSA ) )
        return( 1 );
    if( mbedtls_pk_can_do( pk, MBEDTLS_PK_ECDSA ) )
        return( 3 );
    return( 0 );
}
unsigned char mbedtls_ssl_sig_from_pk_alg( mbedtls_pk_type_t type )
{
    switch( type ) {
        case MBEDTLS_PK_RSA:
            return( 1 );
        case MBEDTLS_PK_ECDSA:
        case MBEDTLS_PK_ECKEY:
            return( 3 );
        default:
            return( 0 );
    }
}
mbedtls_pk_type_t mbedtls_ssl_pk_alg_from_sig( unsigned char sig )
{
    switch( sig )
    {
        case 1:
            return( MBEDTLS_PK_RSA );
        case 3:
            return( MBEDTLS_PK_ECDSA );
        default:
            return( MBEDTLS_PK_NONE );
    }
}
mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg )
{
    switch( sig_alg )
    {
        case MBEDTLS_PK_RSA:
            return( set->rsa );
        case MBEDTLS_PK_ECDSA:
            return( set->ecdsa );
        default:
            return( MBEDTLS_MD_NONE );
    }
}
void mbedtls_ssl_sig_hash_set_add( mbedtls_ssl_sig_hash_set_t *set,
                                   mbedtls_pk_type_t sig_alg,
                                   mbedtls_md_type_t md_alg )
{
    switch( sig_alg )
    {
        case MBEDTLS_PK_RSA:
            if( set->rsa == MBEDTLS_MD_NONE )
                set->rsa = md_alg;
            break;
        case MBEDTLS_PK_ECDSA:
            if( set->ecdsa == MBEDTLS_MD_NONE )
                set->ecdsa = md_alg;
            break;
        default:
            break;
    }
}
void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg )
{
    set->rsa = md_alg;
    set->ecdsa = md_alg;
}
mbedtls_md_type_t mbedtls_ssl_md_alg_from_hash( unsigned char hash )
{
    switch( hash )
    {
        case 1:
            return( MBEDTLS_MD_MD5 );
        case 2:
            return( MBEDTLS_MD_SHA1 );
        case 3:
            return( MBEDTLS_MD_SHA224 );
        case 4:
            return( MBEDTLS_MD_SHA256 );
        case 5:
            return( MBEDTLS_MD_SHA384 );
        case 6:
            return( MBEDTLS_MD_SHA512 );
        default:
            return( MBEDTLS_MD_NONE );
    }
}
unsigned char mbedtls_ssl_hash_from_md_alg( int md )
{
    switch( md )
    {
        case MBEDTLS_MD_MD5:
            return( 1 );
        case MBEDTLS_MD_SHA1:
            return( 2 );
        case MBEDTLS_MD_SHA224:
            return( 3 );
        case MBEDTLS_MD_SHA256:
            return( 4 );
        case MBEDTLS_MD_SHA384:
            return( 5 );
        case MBEDTLS_MD_SHA512:
            return( 6 );
        default:
            return( 0 );
    }
}
int mbedtls_ssl_check_curve( const mbedtls_ssl_context *ssl, mbedtls_ecp_group_id grp_id )
{
    const mbedtls_ecp_group_id *gid;
    if( ssl->conf->curve_list == ((void*)0) )
        return( -1 );
    for( gid = ssl->conf->curve_list; *gid != MBEDTLS_ECP_DP_NONE; gid++ )
        if( *gid == grp_id )
            return( 0 );
    return( -1 );
}
int mbedtls_ssl_check_sig_hash( const mbedtls_ssl_context *ssl,
                                mbedtls_md_type_t md )
{
    const int *cur;
    if( ssl->conf->sig_hashes == ((void*)0) )
        return( -1 );
    for( cur = ssl->conf->sig_hashes; *cur != MBEDTLS_MD_NONE; cur++ )
        if( *cur == (int) md )
            return( 0 );
    return( -1 );
}
int mbedtls_ssl_check_cert_usage( const mbedtls_x509_crt *cert,
                          const mbedtls_ssl_ciphersuite_t *ciphersuite,
                          int cert_endpoint,
                          uint32_t *flags )
{
    int ret = 0;
    int usage = 0;
    const char *ext_oid;
    size_t ext_len;
    if( cert_endpoint == 1 )
    {
        switch( ciphersuite->key_exchange )
        {
            case MBEDTLS_KEY_EXCHANGE_RSA:
            case MBEDTLS_KEY_EXCHANGE_RSA_PSK:
                usage = (0x20);
                break;
            case MBEDTLS_KEY_EXCHANGE_DHE_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA:
                usage = (0x80);
                break;
            case MBEDTLS_KEY_EXCHANGE_ECDH_RSA:
            case MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA:
                usage = (0x08);
                break;
            case MBEDTLS_KEY_EXCHANGE_NONE:
            case MBEDTLS_KEY_EXCHANGE_PSK:
            case MBEDTLS_KEY_EXCHANGE_DHE_PSK:
            case MBEDTLS_KEY_EXCHANGE_ECDHE_PSK:
            case MBEDTLS_KEY_EXCHANGE_ECJPAKE:
                usage = 0;
        }
    }
    else
    {
        usage = (0x80);
    }
    if( mbedtls_x509_crt_check_key_usage( cert, usage ) != 0 )
    {
        *flags |= 0x0800;
        ret = -1;
    }
    if( cert_endpoint == 1 )
    {
        ext_oid = "\x2b" "\x06" "\x01" "\x05\x05\x07" "\x03" "\x01";
        ext_len = (sizeof("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x03" "\x01") - 1);
    }
    else
    {
        ext_oid = "\x2b" "\x06" "\x01" "\x05\x05\x07" "\x03" "\x02";
        ext_len = (sizeof("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x03" "\x02") - 1);
    }
    if( mbedtls_x509_crt_check_extended_key_usage( cert, ext_oid, ext_len ) != 0 )
    {
        *flags |= 0x1000;
        ret = -1;
    }
    return( ret );
}
int mbedtls_ssl_set_calc_verify_md( mbedtls_ssl_context *ssl, int md )
{
    if( ssl->minor_ver != 3 )
        return -0x6600;
    switch( md )
    {
        case 1:
            return -0x6600;
        case 2:
            ssl->handshake->calc_verify = ssl_calc_verify_tls;
            break;
        case 5:
            ssl->handshake->calc_verify = ssl_calc_verify_tls_sha384;
            break;
        case 4:
            ssl->handshake->calc_verify = ssl_calc_verify_tls_sha256;
            break;
        default:
            return -0x6600;
    }
    return 0;
}
int mbedtls_ssl_get_key_exchange_md_ssl_tls( mbedtls_ssl_context *ssl,
                                        unsigned char *output,
                                        unsigned char *data, size_t data_len )
{
    int ret = 0;
    mbedtls_md5_context mbedtls_md5;
    mbedtls_sha1_context mbedtls_sha1;
    mbedtls_md5_init( &mbedtls_md5 );
    mbedtls_sha1_init( &mbedtls_sha1 );
    if( ( ret = mbedtls_md5_starts_ret( &mbedtls_md5 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7394, "mbedtls_md5_starts_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md5_update_ret( &mbedtls_md5,
                                        ssl->handshake->randbytes, 64 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7400, "mbedtls_md5_update_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md5_update_ret( &mbedtls_md5, data, data_len ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7405, "mbedtls_md5_update_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md5_finish_ret( &mbedtls_md5, output ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7410, "mbedtls_md5_finish_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_sha1_starts_ret( &mbedtls_sha1 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7416, "mbedtls_sha1_starts_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_sha1_update_ret( &mbedtls_sha1,
                                         ssl->handshake->randbytes, 64 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7422, "mbedtls_sha1_update_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_sha1_update_ret( &mbedtls_sha1, data,
                                         data_len ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7428, "mbedtls_sha1_update_ret", ret );
        goto exit;
    }
    if( ( ret = mbedtls_sha1_finish_ret( &mbedtls_sha1,
                                         output + 16 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7434, "mbedtls_sha1_finish_ret", ret );
        goto exit;
    }
exit:
    mbedtls_md5_free( &mbedtls_md5 );
    mbedtls_sha1_free( &mbedtls_sha1 );
    if( ret != 0 )
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
    return( ret );
}
int mbedtls_ssl_get_key_exchange_md_tls1_2( mbedtls_ssl_context *ssl,
                                            unsigned char *hash, size_t *hashlen,
                                            unsigned char *data, size_t data_len,
                                            mbedtls_md_type_t md_alg )
{
    int ret = 0;
    mbedtls_md_context_t ctx;
    const mbedtls_md_info_t *md_info = mbedtls_md_info_from_type( md_alg );
    *hashlen = mbedtls_md_get_size( md_info );
    mbedtls_debug_print_msg( ssl, 3, "ssl_tls.c", 7528, "Perform mbedtls-based computation of digest of ServerKeyExchange" );
    mbedtls_md_init( &ctx );
    if( ( ret = mbedtls_md_setup( &ctx, md_info, 0 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7541, "mbedtls_md_setup", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md_starts( &ctx ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7546, "mbedtls_md_starts", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md_update( &ctx, ssl->handshake->randbytes, 64 ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7551, "mbedtls_md_update", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md_update( &ctx, data, data_len ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7556, "mbedtls_md_update", ret );
        goto exit;
    }
    if( ( ret = mbedtls_md_finish( &ctx, hash ) ) != 0 )
    {
        mbedtls_debug_print_ret( ssl, 1, "ssl_tls.c", 7561, "mbedtls_md_finish", ret );
        goto exit;
    }
exit:
    mbedtls_md_free( &ctx );
    if( ret != 0 )
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        80 );
    return( ret );
}
