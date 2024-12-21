typedef int mbedtls_iso_c_forbids_empty_translation_units;
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
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
typedef struct mbedtls_ripemd160_context
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
}
mbedtls_ripemd160_context;
void mbedtls_ripemd160_init( mbedtls_ripemd160_context *ctx );
void mbedtls_ripemd160_free( mbedtls_ripemd160_context *ctx );
void mbedtls_ripemd160_clone( mbedtls_ripemd160_context *dst,
                        const mbedtls_ripemd160_context *src );
int mbedtls_ripemd160_starts_ret( mbedtls_ripemd160_context *ctx );
int mbedtls_ripemd160_update_ret( mbedtls_ripemd160_context *ctx,
                                  const unsigned char *input,
                                  size_t ilen );
int mbedtls_ripemd160_finish_ret( mbedtls_ripemd160_context *ctx,
                                  unsigned char output[20] );
int mbedtls_internal_ripemd160_process( mbedtls_ripemd160_context *ctx,
                                        const unsigned char data[64] );
                   void mbedtls_ripemd160_starts(
                                            mbedtls_ripemd160_context *ctx );
                   void mbedtls_ripemd160_update(
                                                mbedtls_ripemd160_context *ctx,
                                                const unsigned char *input,
                                                size_t ilen );
                   void mbedtls_ripemd160_finish(
                                                mbedtls_ripemd160_context *ctx,
                                                unsigned char output[20] );
                   void mbedtls_ripemd160_process(
                                            mbedtls_ripemd160_context *ctx,
                                            const unsigned char data[64] );
int mbedtls_ripemd160_ret( const unsigned char *input,
                           size_t ilen,
                           unsigned char output[20] );
                   void mbedtls_ripemd160( const unsigned char *input,
                                           size_t ilen,
                                           unsigned char output[20] );
int mbedtls_ripemd160_self_test( int verbose );

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
void mbedtls_platform_zeroize( void *buf, size_t len );
struct tm *mbedtls_platform_gmtime_r( const mbedtls_time_t *tt,
                                      struct tm *tm_buf );
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
void mbedtls_ripemd160_init( mbedtls_ripemd160_context *ctx )
{
    memset( ctx, 0, sizeof( mbedtls_ripemd160_context ) );
}
void mbedtls_ripemd160_free( mbedtls_ripemd160_context *ctx )
{
    if( ctx == ((void*)0) )
        return;
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_ripemd160_context ) );
}
void mbedtls_ripemd160_clone( mbedtls_ripemd160_context *dst,
                        const mbedtls_ripemd160_context *src )
{
    *dst = *src;
}
int mbedtls_ripemd160_starts_ret( mbedtls_ripemd160_context *ctx )
{
    ctx->total[0] = 0;
    ctx->total[1] = 0;
    ctx->state[0] = 0x67452301;
    ctx->state[1] = 0xEFCDAB89;
    ctx->state[2] = 0x98BADCFE;
    ctx->state[3] = 0x10325476;
    ctx->state[4] = 0xC3D2E1F0;
    return( 0 );
}
void mbedtls_ripemd160_starts( mbedtls_ripemd160_context *ctx )
{
    mbedtls_ripemd160_starts_ret( ctx );
}
int mbedtls_internal_ripemd160_process( mbedtls_ripemd160_context *ctx,
                                        const unsigned char data[64] )
{
    uint32_t A, B, C, D, E, Ap, Bp, Cp, Dp, Ep, X[16];
    { (X[ 0]) = ( (uint32_t) (data)[(0) ] ) | ( (uint32_t) (data)[(0) + 1] << 8 ) | ( (uint32_t) (data)[(0) + 2] << 16 ) | ( (uint32_t) (data)[(0) + 3] << 24 ); };
    { (X[ 1]) = ( (uint32_t) (data)[(4) ] ) | ( (uint32_t) (data)[(4) + 1] << 8 ) | ( (uint32_t) (data)[(4) + 2] << 16 ) | ( (uint32_t) (data)[(4) + 3] << 24 ); };
    { (X[ 2]) = ( (uint32_t) (data)[(8) ] ) | ( (uint32_t) (data)[(8) + 1] << 8 ) | ( (uint32_t) (data)[(8) + 2] << 16 ) | ( (uint32_t) (data)[(8) + 3] << 24 ); };
    { (X[ 3]) = ( (uint32_t) (data)[(12) ] ) | ( (uint32_t) (data)[(12) + 1] << 8 ) | ( (uint32_t) (data)[(12) + 2] << 16 ) | ( (uint32_t) (data)[(12) + 3] << 24 ); };
    { (X[ 4]) = ( (uint32_t) (data)[(16) ] ) | ( (uint32_t) (data)[(16) + 1] << 8 ) | ( (uint32_t) (data)[(16) + 2] << 16 ) | ( (uint32_t) (data)[(16) + 3] << 24 ); };
    { (X[ 5]) = ( (uint32_t) (data)[(20) ] ) | ( (uint32_t) (data)[(20) + 1] << 8 ) | ( (uint32_t) (data)[(20) + 2] << 16 ) | ( (uint32_t) (data)[(20) + 3] << 24 ); };
    { (X[ 6]) = ( (uint32_t) (data)[(24) ] ) | ( (uint32_t) (data)[(24) + 1] << 8 ) | ( (uint32_t) (data)[(24) + 2] << 16 ) | ( (uint32_t) (data)[(24) + 3] << 24 ); };
    { (X[ 7]) = ( (uint32_t) (data)[(28) ] ) | ( (uint32_t) (data)[(28) + 1] << 8 ) | ( (uint32_t) (data)[(28) + 2] << 16 ) | ( (uint32_t) (data)[(28) + 3] << 24 ); };
    { (X[ 8]) = ( (uint32_t) (data)[(32) ] ) | ( (uint32_t) (data)[(32) + 1] << 8 ) | ( (uint32_t) (data)[(32) + 2] << 16 ) | ( (uint32_t) (data)[(32) + 3] << 24 ); };
    { (X[ 9]) = ( (uint32_t) (data)[(36) ] ) | ( (uint32_t) (data)[(36) + 1] << 8 ) | ( (uint32_t) (data)[(36) + 2] << 16 ) | ( (uint32_t) (data)[(36) + 3] << 24 ); };
    { (X[10]) = ( (uint32_t) (data)[(40) ] ) | ( (uint32_t) (data)[(40) + 1] << 8 ) | ( (uint32_t) (data)[(40) + 2] << 16 ) | ( (uint32_t) (data)[(40) + 3] << 24 ); };
    { (X[11]) = ( (uint32_t) (data)[(44) ] ) | ( (uint32_t) (data)[(44) + 1] << 8 ) | ( (uint32_t) (data)[(44) + 2] << 16 ) | ( (uint32_t) (data)[(44) + 3] << 24 ); };
    { (X[12]) = ( (uint32_t) (data)[(48) ] ) | ( (uint32_t) (data)[(48) + 1] << 8 ) | ( (uint32_t) (data)[(48) + 2] << 16 ) | ( (uint32_t) (data)[(48) + 3] << 24 ); };
    { (X[13]) = ( (uint32_t) (data)[(52) ] ) | ( (uint32_t) (data)[(52) + 1] << 8 ) | ( (uint32_t) (data)[(52) + 2] << 16 ) | ( (uint32_t) (data)[(52) + 3] << 24 ); };
    { (X[14]) = ( (uint32_t) (data)[(56) ] ) | ( (uint32_t) (data)[(56) + 1] << 8 ) | ( (uint32_t) (data)[(56) + 2] << 16 ) | ( (uint32_t) (data)[(56) + 3] << 24 ); };
    { (X[15]) = ( (uint32_t) (data)[(60) ] ) | ( (uint32_t) (data)[(60) + 1] << 8 ) | ( (uint32_t) (data)[(60) + 2] << 16 ) | ( (uint32_t) (data)[(60) + 3] << 24 ); };
    A = Ap = ctx->state[0];
    B = Bp = ctx->state[1];
    C = Cp = ctx->state[2];
    D = Dp = ctx->state[3];
    E = Ep = ctx->state[4];
    do { do { ((A)) += ( (((B))) ^ (((C))) ^ (((D))) ) + X[(0)] + (0x00000000); ((A)) = ( ( (((A))) << (((11))) ) | ( (((A))) >> (32 - (((11)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ( ((Cp)) | ~((Dp)) ) ) + X[(5)] + (0x50A28BE6); (Ap) = ( ( ((Ap)) << (((8))) ) | ( ((Ap)) >> (32 - (((8)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ (((B))) ^ (((C))) ) + X[(1)] + (0x00000000); ((E)) = ( ( (((E))) << (((14))) ) | ( (((E))) >> (32 - (((14)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ( ((Bp)) | ~((Cp)) ) ) + X[(14)] + (0x50A28BE6); (Ep) = ( ( ((Ep)) << (((9))) ) | ( ((Ep)) >> (32 - (((9)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ (((A))) ^ (((B))) ) + X[(2)] + (0x00000000); ((D)) = ( ( (((D))) << (((15))) ) | ( (((D))) >> (32 - (((15)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ( ((Ap)) | ~((Bp)) ) ) + X[(7)] + (0x50A28BE6); (Dp) = ( ( ((Dp)) << (((9))) ) | ( ((Dp)) >> (32 - (((9)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ (((E))) ^ (((A))) ) + X[(3)] + (0x00000000); ((C)) = ( ( (((C))) << (((12))) ) | ( (((C))) >> (32 - (((12)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ( ((Ep)) | ~((Ap)) ) ) + X[(0)] + (0x50A28BE6); (Cp) = ( ( ((Cp)) << (((11))) ) | ( ((Cp)) >> (32 - (((11)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ (((D))) ^ (((E))) ) + X[(4)] + (0x00000000); ((B)) = ( ( (((B))) << (((5))) ) | ( (((B))) >> (32 - (((5)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ( ((Dp)) | ~((Ep)) ) ) + X[(9)] + (0x50A28BE6); (Bp) = ( ( ((Bp)) << (((13))) ) | ( ((Bp)) >> (32 - (((13)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ (((C))) ^ (((D))) ) + X[(5)] + (0x00000000); ((A)) = ( ( (((A))) << (((8))) ) | ( (((A))) >> (32 - (((8)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ( ((Cp)) | ~((Dp)) ) ) + X[(2)] + (0x50A28BE6); (Ap) = ( ( ((Ap)) << (((15))) ) | ( ((Ap)) >> (32 - (((15)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ (((B))) ^ (((C))) ) + X[(6)] + (0x00000000); ((E)) = ( ( (((E))) << (((7))) ) | ( (((E))) >> (32 - (((7)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ( ((Bp)) | ~((Cp)) ) ) + X[(11)] + (0x50A28BE6); (Ep) = ( ( ((Ep)) << (((15))) ) | ( ((Ep)) >> (32 - (((15)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ (((A))) ^ (((B))) ) + X[(7)] + (0x00000000); ((D)) = ( ( (((D))) << (((9))) ) | ( (((D))) >> (32 - (((9)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ( ((Ap)) | ~((Bp)) ) ) + X[(4)] + (0x50A28BE6); (Dp) = ( ( ((Dp)) << (((5))) ) | ( ((Dp)) >> (32 - (((5)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ (((E))) ^ (((A))) ) + X[(8)] + (0x00000000); ((C)) = ( ( (((C))) << (((11))) ) | ( (((C))) >> (32 - (((11)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ( ((Ep)) | ~((Ap)) ) ) + X[(13)] + (0x50A28BE6); (Cp) = ( ( ((Cp)) << (((7))) ) | ( ((Cp)) >> (32 - (((7)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ (((D))) ^ (((E))) ) + X[(9)] + (0x00000000); ((B)) = ( ( (((B))) << (((13))) ) | ( (((B))) >> (32 - (((13)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ( ((Dp)) | ~((Ep)) ) ) + X[(6)] + (0x50A28BE6); (Bp) = ( ( ((Bp)) << (((7))) ) | ( ((Bp)) >> (32 - (((7)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ (((C))) ^ (((D))) ) + X[(10)] + (0x00000000); ((A)) = ( ( (((A))) << (((14))) ) | ( (((A))) >> (32 - (((14)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ( ((Cp)) | ~((Dp)) ) ) + X[(15)] + (0x50A28BE6); (Ap) = ( ( ((Ap)) << (((8))) ) | ( ((Ap)) >> (32 - (((8)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ (((B))) ^ (((C))) ) + X[(11)] + (0x00000000); ((E)) = ( ( (((E))) << (((15))) ) | ( (((E))) >> (32 - (((15)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ( ((Bp)) | ~((Cp)) ) ) + X[(8)] + (0x50A28BE6); (Ep) = ( ( ((Ep)) << (((11))) ) | ( ((Ep)) >> (32 - (((11)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ (((A))) ^ (((B))) ) + X[(12)] + (0x00000000); ((D)) = ( ( (((D))) << (((6))) ) | ( (((D))) >> (32 - (((6)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ( ((Ap)) | ~((Bp)) ) ) + X[(1)] + (0x50A28BE6); (Dp) = ( ( ((Dp)) << (((14))) ) | ( ((Dp)) >> (32 - (((14)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ (((E))) ^ (((A))) ) + X[(13)] + (0x00000000); ((C)) = ( ( (((C))) << (((7))) ) | ( (((C))) >> (32 - (((7)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ( ((Ep)) | ~((Ap)) ) ) + X[(10)] + (0x50A28BE6); (Cp) = ( ( ((Cp)) << (((14))) ) | ( ((Cp)) >> (32 - (((14)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ (((D))) ^ (((E))) ) + X[(14)] + (0x00000000); ((B)) = ( ( (((B))) << (((9))) ) | ( (((B))) >> (32 - (((9)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ( ((Dp)) | ~((Ep)) ) ) + X[(3)] + (0x50A28BE6); (Bp) = ( ( ((Bp)) << (((12))) ) | ( ((Bp)) >> (32 - (((12)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ (((C))) ^ (((D))) ) + X[(15)] + (0x00000000); ((A)) = ( ( (((A))) << (((8))) ) | ( (((A))) >> (32 - (((8)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ( ((Cp)) | ~((Dp)) ) ) + X[(12)] + (0x50A28BE6); (Ap) = ( ( ((Ap)) << (((6))) ) | ( ((Ap)) >> (32 - (((6)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((B))) ) | ( ~(((A))) & (((C))) ) ) + X[(7)] + (0x5A827999); ((E)) = ( ( (((E))) << (((7))) ) | ( (((E))) >> (32 - (((7)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Cp)) ) | ( ((Bp)) & ~((Cp)) ) ) + X[(6)] + (0x5C4DD124); (Ep) = ( ( ((Ep)) << (((9))) ) | ( ((Ep)) >> (32 - (((9)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((A))) ) | ( ~(((E))) & (((B))) ) ) + X[(4)] + (0x5A827999); ((D)) = ( ( (((D))) << (((6))) ) | ( (((D))) >> (32 - (((6)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Bp)) ) | ( ((Ap)) & ~((Bp)) ) ) + X[(11)] + (0x5C4DD124); (Dp) = ( ( ((Dp)) << (((13))) ) | ( ((Dp)) >> (32 - (((13)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((E))) ) | ( ~(((D))) & (((A))) ) ) + X[(13)] + (0x5A827999); ((C)) = ( ( (((C))) << (((8))) ) | ( (((C))) >> (32 - (((8)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ap)) ) | ( ((Ep)) & ~((Ap)) ) ) + X[(3)] + (0x5C4DD124); (Cp) = ( ( ((Cp)) << (((15))) ) | ( ((Cp)) >> (32 - (((15)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((D))) ) | ( ~(((C))) & (((E))) ) ) + X[(1)] + (0x5A827999); ((B)) = ( ( (((B))) << (((13))) ) | ( (((B))) >> (32 - (((13)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Ep)) ) | ( ((Dp)) & ~((Ep)) ) ) + X[(7)] + (0x5C4DD124); (Bp) = ( ( ((Bp)) << (((7))) ) | ( ((Bp)) >> (32 - (((7)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((C))) ) | ( ~(((B))) & (((D))) ) ) + X[(10)] + (0x5A827999); ((A)) = ( ( (((A))) << (((11))) ) | ( (((A))) >> (32 - (((11)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Dp)) ) | ( ((Cp)) & ~((Dp)) ) ) + X[(0)] + (0x5C4DD124); (Ap) = ( ( ((Ap)) << (((12))) ) | ( ((Ap)) >> (32 - (((12)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((B))) ) | ( ~(((A))) & (((C))) ) ) + X[(6)] + (0x5A827999); ((E)) = ( ( (((E))) << (((9))) ) | ( (((E))) >> (32 - (((9)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Cp)) ) | ( ((Bp)) & ~((Cp)) ) ) + X[(13)] + (0x5C4DD124); (Ep) = ( ( ((Ep)) << (((8))) ) | ( ((Ep)) >> (32 - (((8)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((A))) ) | ( ~(((E))) & (((B))) ) ) + X[(15)] + (0x5A827999); ((D)) = ( ( (((D))) << (((7))) ) | ( (((D))) >> (32 - (((7)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Bp)) ) | ( ((Ap)) & ~((Bp)) ) ) + X[(5)] + (0x5C4DD124); (Dp) = ( ( ((Dp)) << (((9))) ) | ( ((Dp)) >> (32 - (((9)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((E))) ) | ( ~(((D))) & (((A))) ) ) + X[(3)] + (0x5A827999); ((C)) = ( ( (((C))) << (((15))) ) | ( (((C))) >> (32 - (((15)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ap)) ) | ( ((Ep)) & ~((Ap)) ) ) + X[(10)] + (0x5C4DD124); (Cp) = ( ( ((Cp)) << (((11))) ) | ( ((Cp)) >> (32 - (((11)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((D))) ) | ( ~(((C))) & (((E))) ) ) + X[(12)] + (0x5A827999); ((B)) = ( ( (((B))) << (((7))) ) | ( (((B))) >> (32 - (((7)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Ep)) ) | ( ((Dp)) & ~((Ep)) ) ) + X[(14)] + (0x5C4DD124); (Bp) = ( ( ((Bp)) << (((7))) ) | ( ((Bp)) >> (32 - (((7)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((C))) ) | ( ~(((B))) & (((D))) ) ) + X[(0)] + (0x5A827999); ((A)) = ( ( (((A))) << (((12))) ) | ( (((A))) >> (32 - (((12)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Dp)) ) | ( ((Cp)) & ~((Dp)) ) ) + X[(15)] + (0x5C4DD124); (Ap) = ( ( ((Ap)) << (((7))) ) | ( ((Ap)) >> (32 - (((7)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((B))) ) | ( ~(((A))) & (((C))) ) ) + X[(9)] + (0x5A827999); ((E)) = ( ( (((E))) << (((15))) ) | ( (((E))) >> (32 - (((15)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Cp)) ) | ( ((Bp)) & ~((Cp)) ) ) + X[(8)] + (0x5C4DD124); (Ep) = ( ( ((Ep)) << (((12))) ) | ( ((Ep)) >> (32 - (((12)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((A))) ) | ( ~(((E))) & (((B))) ) ) + X[(5)] + (0x5A827999); ((D)) = ( ( (((D))) << (((9))) ) | ( (((D))) >> (32 - (((9)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Bp)) ) | ( ((Ap)) & ~((Bp)) ) ) + X[(12)] + (0x5C4DD124); (Dp) = ( ( ((Dp)) << (((7))) ) | ( ((Dp)) >> (32 - (((7)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((E))) ) | ( ~(((D))) & (((A))) ) ) + X[(2)] + (0x5A827999); ((C)) = ( ( (((C))) << (((11))) ) | ( (((C))) >> (32 - (((11)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ap)) ) | ( ((Ep)) & ~((Ap)) ) ) + X[(4)] + (0x5C4DD124); (Cp) = ( ( ((Cp)) << (((6))) ) | ( ((Cp)) >> (32 - (((6)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((D))) ) | ( ~(((C))) & (((E))) ) ) + X[(14)] + (0x5A827999); ((B)) = ( ( (((B))) << (((7))) ) | ( (((B))) >> (32 - (((7)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Ep)) ) | ( ((Dp)) & ~((Ep)) ) ) + X[(9)] + (0x5C4DD124); (Bp) = ( ( ((Bp)) << (((15))) ) | ( ((Bp)) >> (32 - (((15)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((C))) ) | ( ~(((B))) & (((D))) ) ) + X[(11)] + (0x5A827999); ((A)) = ( ( (((A))) << (((13))) ) | ( (((A))) >> (32 - (((13)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Dp)) ) | ( ((Cp)) & ~((Dp)) ) ) + X[(1)] + (0x5C4DD124); (Ap) = ( ( ((Ap)) << (((13))) ) | ( ((Ap)) >> (32 - (((13)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((B))) ) | ( ~(((A))) & (((C))) ) ) + X[(8)] + (0x5A827999); ((E)) = ( ( (((E))) << (((12))) ) | ( (((E))) >> (32 - (((12)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Cp)) ) | ( ((Bp)) & ~((Cp)) ) ) + X[(2)] + (0x5C4DD124); (Ep) = ( ( ((Ep)) << (((11))) ) | ( ((Ep)) >> (32 - (((11)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) | ~(((A))) ) ^ (((B))) ) + X[(3)] + (0x6ED9EBA1); ((D)) = ( ( (((D))) << (((11))) ) | ( (((D))) >> (32 - (((11)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) | ~((Ap)) ) ^ ((Bp)) ) + X[(15)] + (0x6D703EF3); (Dp) = ( ( ((Dp)) << (((9))) ) | ( ((Dp)) >> (32 - (((9)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) | ~(((E))) ) ^ (((A))) ) + X[(10)] + (0x6ED9EBA1); ((C)) = ( ( (((C))) << (((13))) ) | ( (((C))) >> (32 - (((13)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) | ~((Ep)) ) ^ ((Ap)) ) + X[(5)] + (0x6D703EF3); (Cp) = ( ( ((Cp)) << (((7))) ) | ( ((Cp)) >> (32 - (((7)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) | ~(((D))) ) ^ (((E))) ) + X[(14)] + (0x6ED9EBA1); ((B)) = ( ( (((B))) << (((6))) ) | ( (((B))) >> (32 - (((6)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) | ~((Dp)) ) ^ ((Ep)) ) + X[(1)] + (0x6D703EF3); (Bp) = ( ( ((Bp)) << (((15))) ) | ( ((Bp)) >> (32 - (((15)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) | ~(((C))) ) ^ (((D))) ) + X[(4)] + (0x6ED9EBA1); ((A)) = ( ( (((A))) << (((7))) ) | ( (((A))) >> (32 - (((7)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) | ~((Cp)) ) ^ ((Dp)) ) + X[(3)] + (0x6D703EF3); (Ap) = ( ( ((Ap)) << (((11))) ) | ( ((Ap)) >> (32 - (((11)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) | ~(((B))) ) ^ (((C))) ) + X[(9)] + (0x6ED9EBA1); ((E)) = ( ( (((E))) << (((14))) ) | ( (((E))) >> (32 - (((14)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) | ~((Bp)) ) ^ ((Cp)) ) + X[(7)] + (0x6D703EF3); (Ep) = ( ( ((Ep)) << (((8))) ) | ( ((Ep)) >> (32 - (((8)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) | ~(((A))) ) ^ (((B))) ) + X[(15)] + (0x6ED9EBA1); ((D)) = ( ( (((D))) << (((9))) ) | ( (((D))) >> (32 - (((9)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) | ~((Ap)) ) ^ ((Bp)) ) + X[(14)] + (0x6D703EF3); (Dp) = ( ( ((Dp)) << (((6))) ) | ( ((Dp)) >> (32 - (((6)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) | ~(((E))) ) ^ (((A))) ) + X[(8)] + (0x6ED9EBA1); ((C)) = ( ( (((C))) << (((13))) ) | ( (((C))) >> (32 - (((13)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) | ~((Ep)) ) ^ ((Ap)) ) + X[(6)] + (0x6D703EF3); (Cp) = ( ( ((Cp)) << (((6))) ) | ( ((Cp)) >> (32 - (((6)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) | ~(((D))) ) ^ (((E))) ) + X[(1)] + (0x6ED9EBA1); ((B)) = ( ( (((B))) << (((15))) ) | ( (((B))) >> (32 - (((15)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) | ~((Dp)) ) ^ ((Ep)) ) + X[(9)] + (0x6D703EF3); (Bp) = ( ( ((Bp)) << (((14))) ) | ( ((Bp)) >> (32 - (((14)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) | ~(((C))) ) ^ (((D))) ) + X[(2)] + (0x6ED9EBA1); ((A)) = ( ( (((A))) << (((14))) ) | ( (((A))) >> (32 - (((14)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) | ~((Cp)) ) ^ ((Dp)) ) + X[(11)] + (0x6D703EF3); (Ap) = ( ( ((Ap)) << (((12))) ) | ( ((Ap)) >> (32 - (((12)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) | ~(((B))) ) ^ (((C))) ) + X[(7)] + (0x6ED9EBA1); ((E)) = ( ( (((E))) << (((8))) ) | ( (((E))) >> (32 - (((8)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) | ~((Bp)) ) ^ ((Cp)) ) + X[(8)] + (0x6D703EF3); (Ep) = ( ( ((Ep)) << (((13))) ) | ( ((Ep)) >> (32 - (((13)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) | ~(((A))) ) ^ (((B))) ) + X[(0)] + (0x6ED9EBA1); ((D)) = ( ( (((D))) << (((13))) ) | ( (((D))) >> (32 - (((13)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) | ~((Ap)) ) ^ ((Bp)) ) + X[(12)] + (0x6D703EF3); (Dp) = ( ( ((Dp)) << (((5))) ) | ( ((Dp)) >> (32 - (((5)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) | ~(((E))) ) ^ (((A))) ) + X[(6)] + (0x6ED9EBA1); ((C)) = ( ( (((C))) << (((6))) ) | ( (((C))) >> (32 - (((6)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) | ~((Ep)) ) ^ ((Ap)) ) + X[(2)] + (0x6D703EF3); (Cp) = ( ( ((Cp)) << (((14))) ) | ( ((Cp)) >> (32 - (((14)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) | ~(((D))) ) ^ (((E))) ) + X[(13)] + (0x6ED9EBA1); ((B)) = ( ( (((B))) << (((5))) ) | ( (((B))) >> (32 - (((5)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) | ~((Dp)) ) ^ ((Ep)) ) + X[(10)] + (0x6D703EF3); (Bp) = ( ( ((Bp)) << (((13))) ) | ( ((Bp)) >> (32 - (((13)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) | ~(((C))) ) ^ (((D))) ) + X[(11)] + (0x6ED9EBA1); ((A)) = ( ( (((A))) << (((12))) ) | ( (((A))) >> (32 - (((12)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) | ~((Cp)) ) ^ ((Dp)) ) + X[(0)] + (0x6D703EF3); (Ap) = ( ( ((Ap)) << (((13))) ) | ( ((Ap)) >> (32 - (((13)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) | ~(((B))) ) ^ (((C))) ) + X[(5)] + (0x6ED9EBA1); ((E)) = ( ( (((E))) << (((7))) ) | ( (((E))) >> (32 - (((7)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) | ~((Bp)) ) ^ ((Cp)) ) + X[(4)] + (0x6D703EF3); (Ep) = ( ( ((Ep)) << (((7))) ) | ( ((Ep)) >> (32 - (((7)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) | ~(((A))) ) ^ (((B))) ) + X[(12)] + (0x6ED9EBA1); ((D)) = ( ( (((D))) << (((5))) ) | ( (((D))) >> (32 - (((5)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) | ~((Ap)) ) ^ ((Bp)) ) + X[(13)] + (0x6D703EF3); (Dp) = ( ( ((Dp)) << (((5))) ) | ( ((Dp)) >> (32 - (((5)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((A))) ) | ( (((E))) & ~(((A))) ) ) + X[(1)] + (0x8F1BBCDC); ((C)) = ( ( (((C))) << (((11))) ) | ( (((C))) >> (32 - (((11)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ep)) ) | ( ~((Dp)) & ((Ap)) ) ) + X[(8)] + (0x7A6D76E9); (Cp) = ( ( ((Cp)) << (((15))) ) | ( ((Cp)) >> (32 - (((15)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((E))) ) | ( (((D))) & ~(((E))) ) ) + X[(9)] + (0x8F1BBCDC); ((B)) = ( ( (((B))) << (((12))) ) | ( (((B))) >> (32 - (((12)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Dp)) ) | ( ~((Cp)) & ((Ep)) ) ) + X[(6)] + (0x7A6D76E9); (Bp) = ( ( ((Bp)) << (((5))) ) | ( ((Bp)) >> (32 - (((5)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((D))) ) | ( (((C))) & ~(((D))) ) ) + X[(11)] + (0x8F1BBCDC); ((A)) = ( ( (((A))) << (((14))) ) | ( (((A))) >> (32 - (((14)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Cp)) ) | ( ~((Bp)) & ((Dp)) ) ) + X[(4)] + (0x7A6D76E9); (Ap) = ( ( ((Ap)) << (((8))) ) | ( ((Ap)) >> (32 - (((8)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((C))) ) | ( (((B))) & ~(((C))) ) ) + X[(10)] + (0x8F1BBCDC); ((E)) = ( ( (((E))) << (((15))) ) | ( (((E))) >> (32 - (((15)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Bp)) ) | ( ~((Ap)) & ((Cp)) ) ) + X[(1)] + (0x7A6D76E9); (Ep) = ( ( ((Ep)) << (((11))) ) | ( ((Ep)) >> (32 - (((11)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((B))) ) | ( (((A))) & ~(((B))) ) ) + X[(0)] + (0x8F1BBCDC); ((D)) = ( ( (((D))) << (((14))) ) | ( (((D))) >> (32 - (((14)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Ap)) ) | ( ~((Ep)) & ((Bp)) ) ) + X[(3)] + (0x7A6D76E9); (Dp) = ( ( ((Dp)) << (((14))) ) | ( ((Dp)) >> (32 - (((14)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((A))) ) | ( (((E))) & ~(((A))) ) ) + X[(8)] + (0x8F1BBCDC); ((C)) = ( ( (((C))) << (((15))) ) | ( (((C))) >> (32 - (((15)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ep)) ) | ( ~((Dp)) & ((Ap)) ) ) + X[(11)] + (0x7A6D76E9); (Cp) = ( ( ((Cp)) << (((14))) ) | ( ((Cp)) >> (32 - (((14)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((E))) ) | ( (((D))) & ~(((E))) ) ) + X[(12)] + (0x8F1BBCDC); ((B)) = ( ( (((B))) << (((9))) ) | ( (((B))) >> (32 - (((9)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Dp)) ) | ( ~((Cp)) & ((Ep)) ) ) + X[(15)] + (0x7A6D76E9); (Bp) = ( ( ((Bp)) << (((6))) ) | ( ((Bp)) >> (32 - (((6)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((D))) ) | ( (((C))) & ~(((D))) ) ) + X[(4)] + (0x8F1BBCDC); ((A)) = ( ( (((A))) << (((8))) ) | ( (((A))) >> (32 - (((8)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Cp)) ) | ( ~((Bp)) & ((Dp)) ) ) + X[(0)] + (0x7A6D76E9); (Ap) = ( ( ((Ap)) << (((14))) ) | ( ((Ap)) >> (32 - (((14)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((C))) ) | ( (((B))) & ~(((C))) ) ) + X[(13)] + (0x8F1BBCDC); ((E)) = ( ( (((E))) << (((9))) ) | ( (((E))) >> (32 - (((9)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Bp)) ) | ( ~((Ap)) & ((Cp)) ) ) + X[(5)] + (0x7A6D76E9); (Ep) = ( ( ((Ep)) << (((6))) ) | ( ((Ep)) >> (32 - (((6)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((B))) ) | ( (((A))) & ~(((B))) ) ) + X[(3)] + (0x8F1BBCDC); ((D)) = ( ( (((D))) << (((14))) ) | ( (((D))) >> (32 - (((14)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Ap)) ) | ( ~((Ep)) & ((Bp)) ) ) + X[(12)] + (0x7A6D76E9); (Dp) = ( ( ((Dp)) << (((9))) ) | ( ((Dp)) >> (32 - (((9)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((A))) ) | ( (((E))) & ~(((A))) ) ) + X[(7)] + (0x8F1BBCDC); ((C)) = ( ( (((C))) << (((5))) ) | ( (((C))) >> (32 - (((5)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ep)) ) | ( ~((Dp)) & ((Ap)) ) ) + X[(2)] + (0x7A6D76E9); (Cp) = ( ( ((Cp)) << (((12))) ) | ( ((Cp)) >> (32 - (((12)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( ( (((C))) & (((E))) ) | ( (((D))) & ~(((E))) ) ) + X[(15)] + (0x8F1BBCDC); ((B)) = ( ( (((B))) << (((6))) ) | ( (((B))) >> (32 - (((6)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ( ((Cp)) & ((Dp)) ) | ( ~((Cp)) & ((Ep)) ) ) + X[(13)] + (0x7A6D76E9); (Bp) = ( ( ((Bp)) << (((9))) ) | ( ((Bp)) >> (32 - (((9)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( ( (((B))) & (((D))) ) | ( (((C))) & ~(((D))) ) ) + X[(14)] + (0x8F1BBCDC); ((A)) = ( ( (((A))) << (((8))) ) | ( (((A))) >> (32 - (((8)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ( ((Bp)) & ((Cp)) ) | ( ~((Bp)) & ((Dp)) ) ) + X[(9)] + (0x7A6D76E9); (Ap) = ( ( ((Ap)) << (((12))) ) | ( ((Ap)) >> (32 - (((12)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( ( (((A))) & (((C))) ) | ( (((B))) & ~(((C))) ) ) + X[(5)] + (0x8F1BBCDC); ((E)) = ( ( (((E))) << (((6))) ) | ( (((E))) >> (32 - (((6)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ( ((Ap)) & ((Bp)) ) | ( ~((Ap)) & ((Cp)) ) ) + X[(7)] + (0x7A6D76E9); (Ep) = ( ( ((Ep)) << (((5))) ) | ( ((Ep)) >> (32 - (((5)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( ( (((E))) & (((B))) ) | ( (((A))) & ~(((B))) ) ) + X[(6)] + (0x8F1BBCDC); ((D)) = ( ( (((D))) << (((5))) ) | ( (((D))) >> (32 - (((5)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ( ((Ep)) & ((Ap)) ) | ( ~((Ep)) & ((Bp)) ) ) + X[(10)] + (0x7A6D76E9); (Dp) = ( ( ((Dp)) << (((15))) ) | ( ((Dp)) >> (32 - (((15)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( ( (((D))) & (((A))) ) | ( (((E))) & ~(((A))) ) ) + X[(2)] + (0x8F1BBCDC); ((C)) = ( ( (((C))) << (((12))) ) | ( (((C))) >> (32 - (((12)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ( ((Dp)) & ((Ep)) ) | ( ~((Dp)) & ((Ap)) ) ) + X[(14)] + (0x7A6D76E9); (Cp) = ( ( ((Cp)) << (((8))) ) | ( ((Cp)) >> (32 - (((8)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ ( (((D))) | ~(((E))) ) ) + X[(4)] + (0xA953FD4E); ((B)) = ( ( (((B))) << (((9))) ) | ( (((B))) >> (32 - (((9)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ((Dp)) ^ ((Ep)) ) + X[(12)] + (0x00000000); (Bp) = ( ( ((Bp)) << (((8))) ) | ( ((Bp)) >> (32 - (((8)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ ( (((C))) | ~(((D))) ) ) + X[(0)] + (0xA953FD4E); ((A)) = ( ( (((A))) << (((15))) ) | ( (((A))) >> (32 - (((15)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ((Cp)) ^ ((Dp)) ) + X[(15)] + (0x00000000); (Ap) = ( ( ((Ap)) << (((5))) ) | ( ((Ap)) >> (32 - (((5)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ ( (((B))) | ~(((C))) ) ) + X[(5)] + (0xA953FD4E); ((E)) = ( ( (((E))) << (((5))) ) | ( (((E))) >> (32 - (((5)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ((Bp)) ^ ((Cp)) ) + X[(10)] + (0x00000000); (Ep) = ( ( ((Ep)) << (((12))) ) | ( ((Ep)) >> (32 - (((12)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ ( (((A))) | ~(((B))) ) ) + X[(9)] + (0xA953FD4E); ((D)) = ( ( (((D))) << (((11))) ) | ( (((D))) >> (32 - (((11)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ((Ap)) ^ ((Bp)) ) + X[(4)] + (0x00000000); (Dp) = ( ( ((Dp)) << (((9))) ) | ( ((Dp)) >> (32 - (((9)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ ( (((E))) | ~(((A))) ) ) + X[(7)] + (0xA953FD4E); ((C)) = ( ( (((C))) << (((6))) ) | ( (((C))) >> (32 - (((6)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ((Ep)) ^ ((Ap)) ) + X[(1)] + (0x00000000); (Cp) = ( ( ((Cp)) << (((12))) ) | ( ((Cp)) >> (32 - (((12)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ ( (((D))) | ~(((E))) ) ) + X[(12)] + (0xA953FD4E); ((B)) = ( ( (((B))) << (((8))) ) | ( (((B))) >> (32 - (((8)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ((Dp)) ^ ((Ep)) ) + X[(5)] + (0x00000000); (Bp) = ( ( ((Bp)) << (((5))) ) | ( ((Bp)) >> (32 - (((5)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ ( (((C))) | ~(((D))) ) ) + X[(2)] + (0xA953FD4E); ((A)) = ( ( (((A))) << (((13))) ) | ( (((A))) >> (32 - (((13)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ((Cp)) ^ ((Dp)) ) + X[(8)] + (0x00000000); (Ap) = ( ( ((Ap)) << (((14))) ) | ( ((Ap)) >> (32 - (((14)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ ( (((B))) | ~(((C))) ) ) + X[(10)] + (0xA953FD4E); ((E)) = ( ( (((E))) << (((12))) ) | ( (((E))) >> (32 - (((12)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ((Bp)) ^ ((Cp)) ) + X[(7)] + (0x00000000); (Ep) = ( ( ((Ep)) << (((6))) ) | ( ((Ep)) >> (32 - (((6)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ ( (((A))) | ~(((B))) ) ) + X[(14)] + (0xA953FD4E); ((D)) = ( ( (((D))) << (((5))) ) | ( (((D))) >> (32 - (((5)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ((Ap)) ^ ((Bp)) ) + X[(6)] + (0x00000000); (Dp) = ( ( ((Dp)) << (((8))) ) | ( ((Dp)) >> (32 - (((8)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ ( (((E))) | ~(((A))) ) ) + X[(1)] + (0xA953FD4E); ((C)) = ( ( (((C))) << (((12))) ) | ( (((C))) >> (32 - (((12)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ((Ep)) ^ ((Ap)) ) + X[(2)] + (0x00000000); (Cp) = ( ( ((Cp)) << (((13))) ) | ( ((Cp)) >> (32 - (((13)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ ( (((D))) | ~(((E))) ) ) + X[(3)] + (0xA953FD4E); ((B)) = ( ( (((B))) << (((13))) ) | ( (((B))) >> (32 - (((13)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ((Dp)) ^ ((Ep)) ) + X[(13)] + (0x00000000); (Bp) = ( ( ((Bp)) << (((6))) ) | ( ((Bp)) >> (32 - (((6)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((A)) += ( (((B))) ^ ( (((C))) | ~(((D))) ) ) + X[(8)] + (0xA953FD4E); ((A)) = ( ( (((A))) << (((14))) ) | ( (((A))) >> (32 - (((14)))) ) ) + ((E)); ((C)) = ( ( (((C))) << (10) ) | ( (((C))) >> (32 - (10)) ) ); } while( 0 ); do { (Ap) += ( ((Bp)) ^ ((Cp)) ^ ((Dp)) ) + X[(14)] + (0x00000000); (Ap) = ( ( ((Ap)) << (((5))) ) | ( ((Ap)) >> (32 - (((5)))) ) ) + (Ep); (Cp) = ( ( ((Cp)) << (10) ) | ( ((Cp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((E)) += ( (((A))) ^ ( (((B))) | ~(((C))) ) ) + X[(11)] + (0xA953FD4E); ((E)) = ( ( (((E))) << (((11))) ) | ( (((E))) >> (32 - (((11)))) ) ) + ((D)); ((B)) = ( ( (((B))) << (10) ) | ( (((B))) >> (32 - (10)) ) ); } while( 0 ); do { (Ep) += ( ((Ap)) ^ ((Bp)) ^ ((Cp)) ) + X[(0)] + (0x00000000); (Ep) = ( ( ((Ep)) << (((15))) ) | ( ((Ep)) >> (32 - (((15)))) ) ) + (Dp); (Bp) = ( ( ((Bp)) << (10) ) | ( ((Bp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((D)) += ( (((E))) ^ ( (((A))) | ~(((B))) ) ) + X[(6)] + (0xA953FD4E); ((D)) = ( ( (((D))) << (((8))) ) | ( (((D))) >> (32 - (((8)))) ) ) + ((C)); ((A)) = ( ( (((A))) << (10) ) | ( (((A))) >> (32 - (10)) ) ); } while( 0 ); do { (Dp) += ( ((Ep)) ^ ((Ap)) ^ ((Bp)) ) + X[(3)] + (0x00000000); (Dp) = ( ( ((Dp)) << (((13))) ) | ( ((Dp)) >> (32 - (((13)))) ) ) + (Cp); (Ap) = ( ( ((Ap)) << (10) ) | ( ((Ap)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((C)) += ( (((D))) ^ ( (((E))) | ~(((A))) ) ) + X[(15)] + (0xA953FD4E); ((C)) = ( ( (((C))) << (((5))) ) | ( (((C))) >> (32 - (((5)))) ) ) + ((B)); ((E)) = ( ( (((E))) << (10) ) | ( (((E))) >> (32 - (10)) ) ); } while( 0 ); do { (Cp) += ( ((Dp)) ^ ((Ep)) ^ ((Ap)) ) + X[(9)] + (0x00000000); (Cp) = ( ( ((Cp)) << (((11))) ) | ( ((Cp)) >> (32 - (((11)))) ) ) + (Bp); (Ep) = ( ( ((Ep)) << (10) ) | ( ((Ep)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    do { do { ((B)) += ( (((C))) ^ ( (((D))) | ~(((E))) ) ) + X[(13)] + (0xA953FD4E); ((B)) = ( ( (((B))) << (((6))) ) | ( (((B))) >> (32 - (((6)))) ) ) + ((A)); ((D)) = ( ( (((D))) << (10) ) | ( (((D))) >> (32 - (10)) ) ); } while( 0 ); do { (Bp) += ( ((Cp)) ^ ((Dp)) ^ ((Ep)) ) + X[(11)] + (0x00000000); (Bp) = ( ( ((Bp)) << (((11))) ) | ( ((Bp)) >> (32 - (((11)))) ) ) + (Ap); (Dp) = ( ( ((Dp)) << (10) ) | ( ((Dp)) >> (32 - (10)) ) ); } while( 0 ); } while( 0 );
    C = ctx->state[1] + C + Dp;
    ctx->state[1] = ctx->state[2] + D + Ep;
    ctx->state[2] = ctx->state[3] + E + Ap;
    ctx->state[3] = ctx->state[4] + A + Bp;
    ctx->state[4] = ctx->state[0] + B + Cp;
    ctx->state[0] = C;
    return( 0 );
}
void mbedtls_ripemd160_process( mbedtls_ripemd160_context *ctx,
                                const unsigned char data[64] )
{
    mbedtls_internal_ripemd160_process( ctx, data );
}
int mbedtls_ripemd160_update_ret( mbedtls_ripemd160_context *ctx,
                                  const unsigned char *input,
                                  size_t ilen )
{
    int ret = -0x006E;
    size_t fill;
    uint32_t left;
    if( ilen == 0 )
        return( 0 );
    left = ctx->total[0] & 0x3F;
    fill = 64 - left;
    ctx->total[0] += (uint32_t) ilen;
    ctx->total[0] &= 0xFFFFFFFF;
    if( ctx->total[0] < (uint32_t) ilen )
        ctx->total[1]++;
    if( left && ilen >= fill )
    {
        memcpy( (void *) (ctx->buffer + left), input, fill );
        if( ( ret = mbedtls_internal_ripemd160_process( ctx, ctx->buffer ) ) != 0 )
            return( ret );
        input += fill;
        ilen -= fill;
        left = 0;
    }
    while( ilen >= 64 )
    {
        if( ( ret = mbedtls_internal_ripemd160_process( ctx, input ) ) != 0 )
            return( ret );
        input += 64;
        ilen -= 64;
    }
    if( ilen > 0 )
    {
        memcpy( (void *) (ctx->buffer + left), input, ilen );
    }
    return( 0 );
}
void mbedtls_ripemd160_update( mbedtls_ripemd160_context *ctx,
                               const unsigned char *input,
                               size_t ilen )
{
    mbedtls_ripemd160_update_ret( ctx, input, ilen );
}
static const unsigned char ripemd160_padding[64] =
{
 0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};
int mbedtls_ripemd160_finish_ret( mbedtls_ripemd160_context *ctx,
                                  unsigned char output[20] )
{
    int ret = -0x006E;
    uint32_t last, padn;
    uint32_t high, low;
    unsigned char msglen[8];
    high = ( ctx->total[0] >> 29 )
         | ( ctx->total[1] << 3 );
    low = ( ctx->total[0] << 3 );
    { (msglen)[(0) ] = (unsigned char) ( ( (low) ) & 0xFF ); (msglen)[(0) + 1] = (unsigned char) ( ( (low) >> 8 ) & 0xFF ); (msglen)[(0) + 2] = (unsigned char) ( ( (low) >> 16 ) & 0xFF ); (msglen)[(0) + 3] = (unsigned char) ( ( (low) >> 24 ) & 0xFF ); };
    { (msglen)[(4) ] = (unsigned char) ( ( (high) ) & 0xFF ); (msglen)[(4) + 1] = (unsigned char) ( ( (high) >> 8 ) & 0xFF ); (msglen)[(4) + 2] = (unsigned char) ( ( (high) >> 16 ) & 0xFF ); (msglen)[(4) + 3] = (unsigned char) ( ( (high) >> 24 ) & 0xFF ); };
    last = ctx->total[0] & 0x3F;
    padn = ( last < 56 ) ? ( 56 - last ) : ( 120 - last );
    ret = mbedtls_ripemd160_update_ret( ctx, ripemd160_padding, padn );
    if( ret != 0 )
        return( ret );
    ret = mbedtls_ripemd160_update_ret( ctx, msglen, 8 );
    if( ret != 0 )
        return( ret );
    { (output)[(0) ] = (unsigned char) ( ( (ctx->state[0]) ) & 0xFF ); (output)[(0) + 1] = (unsigned char) ( ( (ctx->state[0]) >> 8 ) & 0xFF ); (output)[(0) + 2] = (unsigned char) ( ( (ctx->state[0]) >> 16 ) & 0xFF ); (output)[(0) + 3] = (unsigned char) ( ( (ctx->state[0]) >> 24 ) & 0xFF ); };
    { (output)[(4) ] = (unsigned char) ( ( (ctx->state[1]) ) & 0xFF ); (output)[(4) + 1] = (unsigned char) ( ( (ctx->state[1]) >> 8 ) & 0xFF ); (output)[(4) + 2] = (unsigned char) ( ( (ctx->state[1]) >> 16 ) & 0xFF ); (output)[(4) + 3] = (unsigned char) ( ( (ctx->state[1]) >> 24 ) & 0xFF ); };
    { (output)[(8) ] = (unsigned char) ( ( (ctx->state[2]) ) & 0xFF ); (output)[(8) + 1] = (unsigned char) ( ( (ctx->state[2]) >> 8 ) & 0xFF ); (output)[(8) + 2] = (unsigned char) ( ( (ctx->state[2]) >> 16 ) & 0xFF ); (output)[(8) + 3] = (unsigned char) ( ( (ctx->state[2]) >> 24 ) & 0xFF ); };
    { (output)[(12) ] = (unsigned char) ( ( (ctx->state[3]) ) & 0xFF ); (output)[(12) + 1] = (unsigned char) ( ( (ctx->state[3]) >> 8 ) & 0xFF ); (output)[(12) + 2] = (unsigned char) ( ( (ctx->state[3]) >> 16 ) & 0xFF ); (output)[(12) + 3] = (unsigned char) ( ( (ctx->state[3]) >> 24 ) & 0xFF ); };
    { (output)[(16) ] = (unsigned char) ( ( (ctx->state[4]) ) & 0xFF ); (output)[(16) + 1] = (unsigned char) ( ( (ctx->state[4]) >> 8 ) & 0xFF ); (output)[(16) + 2] = (unsigned char) ( ( (ctx->state[4]) >> 16 ) & 0xFF ); (output)[(16) + 3] = (unsigned char) ( ( (ctx->state[4]) >> 24 ) & 0xFF ); };
    return( 0 );
}
void mbedtls_ripemd160_finish( mbedtls_ripemd160_context *ctx,
                               unsigned char output[20] )
{
    mbedtls_ripemd160_finish_ret( ctx, output );
}
int mbedtls_ripemd160_ret( const unsigned char *input,
                           size_t ilen,
                           unsigned char output[20] )
{
    int ret = -0x006E;
    mbedtls_ripemd160_context ctx;
    mbedtls_ripemd160_init( &ctx );
    if( ( ret = mbedtls_ripemd160_starts_ret( &ctx ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_ripemd160_update_ret( &ctx, input, ilen ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_ripemd160_finish_ret( &ctx, output ) ) != 0 )
        goto exit;
exit:
    mbedtls_ripemd160_free( &ctx );
    return( ret );
}
void mbedtls_ripemd160( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[20] )
{
    mbedtls_ripemd160_ret( input, ilen, output );
}
static const unsigned char ripemd160_test_str[8][81] =
{
    { "" },
    { "a" },
    { "abc" },
    { "message digest" },
    { "abcdefghijklmnopqrstuvwxyz" },
    { "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" },
    { "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789" },
    { "12345678901234567890123456789012345678901234567890123456789012"
      "345678901234567890" },
};
static const size_t ripemd160_test_strlen[8] =
{
    0, 1, 3, 14, 26, 56, 62, 80
};
static const unsigned char ripemd160_test_md[8][20] =
{
    { 0x9c, 0x11, 0x85, 0xa5, 0xc5, 0xe9, 0xfc, 0x54, 0x61, 0x28,
      0x08, 0x97, 0x7e, 0xe8, 0xf5, 0x48, 0xb2, 0x25, 0x8d, 0x31 },
    { 0x0b, 0xdc, 0x9d, 0x2d, 0x25, 0x6b, 0x3e, 0xe9, 0xda, 0xae,
      0x34, 0x7b, 0xe6, 0xf4, 0xdc, 0x83, 0x5a, 0x46, 0x7f, 0xfe },
    { 0x8e, 0xb2, 0x08, 0xf7, 0xe0, 0x5d, 0x98, 0x7a, 0x9b, 0x04,
      0x4a, 0x8e, 0x98, 0xc6, 0xb0, 0x87, 0xf1, 0x5a, 0x0b, 0xfc },
    { 0x5d, 0x06, 0x89, 0xef, 0x49, 0xd2, 0xfa, 0xe5, 0x72, 0xb8,
      0x81, 0xb1, 0x23, 0xa8, 0x5f, 0xfa, 0x21, 0x59, 0x5f, 0x36 },
    { 0xf7, 0x1c, 0x27, 0x10, 0x9c, 0x69, 0x2c, 0x1b, 0x56, 0xbb,
      0xdc, 0xeb, 0x5b, 0x9d, 0x28, 0x65, 0xb3, 0x70, 0x8d, 0xbc },
    { 0x12, 0xa0, 0x53, 0x38, 0x4a, 0x9c, 0x0c, 0x88, 0xe4, 0x05,
      0xa0, 0x6c, 0x27, 0xdc, 0xf4, 0x9a, 0xda, 0x62, 0xeb, 0x2b },
    { 0xb0, 0xe2, 0x0b, 0x6e, 0x31, 0x16, 0x64, 0x02, 0x86, 0xed,
      0x3a, 0x87, 0xa5, 0x71, 0x30, 0x79, 0xb2, 0x1f, 0x51, 0x89 },
    { 0x9b, 0x75, 0x2e, 0x45, 0x57, 0x3d, 0x4b, 0x39, 0xf4, 0xdb,
      0xd3, 0x32, 0x3c, 0xab, 0x82, 0xbf, 0x63, 0x32, 0x6b, 0xfb },
};
int mbedtls_ripemd160_self_test( int verbose )
{
    int i, ret = 0;
    unsigned char output[20];
    memset( output, 0, sizeof output );
    for( i = 0; i < 8; i++ )
    {
        if( verbose != 0 )
            printf( "  RIPEMD-160 test #%d: ", i + 1 );
        ret = mbedtls_ripemd160_ret( ripemd160_test_str[i],
                                     ripemd160_test_strlen[i], output );
        if( ret != 0 )
            goto fail;
        if( memcmp( output, ripemd160_test_md[i], 20 ) != 0 )
        {
            ret = 1;
            goto fail;
        }
        if( verbose != 0 )
            printf( "passed\n" );
    }
    if( verbose != 0 )
        printf( "\n" );
    return( 0 );
fail:
    if( verbose != 0 )
        printf( "failed\n" );
    return( ret );
}
