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
void mbedtls_sha1_init( mbedtls_sha1_context *ctx )
{
    do { } while( 0 );
    memset( ctx, 0, sizeof( mbedtls_sha1_context ) );
}
void mbedtls_sha1_free( mbedtls_sha1_context *ctx )
{
    if( ctx == ((void*)0) )
        return;
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_sha1_context ) );
}
void mbedtls_sha1_clone( mbedtls_sha1_context *dst,
                         const mbedtls_sha1_context *src )
{
    do { } while( 0 );
    do { } while( 0 );
    *dst = *src;
}
int mbedtls_sha1_starts_ret( mbedtls_sha1_context *ctx )
{
    do { } while( 0 );
    ctx->total[0] = 0;
    ctx->total[1] = 0;
    ctx->state[0] = 0x67452301;
    ctx->state[1] = 0xEFCDAB89;
    ctx->state[2] = 0x98BADCFE;
    ctx->state[3] = 0x10325476;
    ctx->state[4] = 0xC3D2E1F0;
    return( 0 );
}
void mbedtls_sha1_starts( mbedtls_sha1_context *ctx )
{
    mbedtls_sha1_starts_ret( ctx );
}
int mbedtls_internal_sha1_process( mbedtls_sha1_context *ctx,
                                   const unsigned char data[64] )
{
    uint32_t temp, W[16], A, B, C, D, E;
    do { } while( 0 );
    do { } while( 0 );
    { (W[ 0]) = ( (uint32_t) (data)[(0) ] << 24 ) | ( (uint32_t) (data)[(0) + 1] << 16 ) | ( (uint32_t) (data)[(0) + 2] << 8 ) | ( (uint32_t) (data)[(0) + 3] ); };
    { (W[ 1]) = ( (uint32_t) (data)[(4) ] << 24 ) | ( (uint32_t) (data)[(4) + 1] << 16 ) | ( (uint32_t) (data)[(4) + 2] << 8 ) | ( (uint32_t) (data)[(4) + 3] ); };
    { (W[ 2]) = ( (uint32_t) (data)[(8) ] << 24 ) | ( (uint32_t) (data)[(8) + 1] << 16 ) | ( (uint32_t) (data)[(8) + 2] << 8 ) | ( (uint32_t) (data)[(8) + 3] ); };
    { (W[ 3]) = ( (uint32_t) (data)[(12) ] << 24 ) | ( (uint32_t) (data)[(12) + 1] << 16 ) | ( (uint32_t) (data)[(12) + 2] << 8 ) | ( (uint32_t) (data)[(12) + 3] ); };
    { (W[ 4]) = ( (uint32_t) (data)[(16) ] << 24 ) | ( (uint32_t) (data)[(16) + 1] << 16 ) | ( (uint32_t) (data)[(16) + 2] << 8 ) | ( (uint32_t) (data)[(16) + 3] ); };
    { (W[ 5]) = ( (uint32_t) (data)[(20) ] << 24 ) | ( (uint32_t) (data)[(20) + 1] << 16 ) | ( (uint32_t) (data)[(20) + 2] << 8 ) | ( (uint32_t) (data)[(20) + 3] ); };
    { (W[ 6]) = ( (uint32_t) (data)[(24) ] << 24 ) | ( (uint32_t) (data)[(24) + 1] << 16 ) | ( (uint32_t) (data)[(24) + 2] << 8 ) | ( (uint32_t) (data)[(24) + 3] ); };
    { (W[ 7]) = ( (uint32_t) (data)[(28) ] << 24 ) | ( (uint32_t) (data)[(28) + 1] << 16 ) | ( (uint32_t) (data)[(28) + 2] << 8 ) | ( (uint32_t) (data)[(28) + 3] ); };
    { (W[ 8]) = ( (uint32_t) (data)[(32) ] << 24 ) | ( (uint32_t) (data)[(32) + 1] << 16 ) | ( (uint32_t) (data)[(32) + 2] << 8 ) | ( (uint32_t) (data)[(32) + 3] ); };
    { (W[ 9]) = ( (uint32_t) (data)[(36) ] << 24 ) | ( (uint32_t) (data)[(36) + 1] << 16 ) | ( (uint32_t) (data)[(36) + 2] << 8 ) | ( (uint32_t) (data)[(36) + 3] ); };
    { (W[10]) = ( (uint32_t) (data)[(40) ] << 24 ) | ( (uint32_t) (data)[(40) + 1] << 16 ) | ( (uint32_t) (data)[(40) + 2] << 8 ) | ( (uint32_t) (data)[(40) + 3] ); };
    { (W[11]) = ( (uint32_t) (data)[(44) ] << 24 ) | ( (uint32_t) (data)[(44) + 1] << 16 ) | ( (uint32_t) (data)[(44) + 2] << 8 ) | ( (uint32_t) (data)[(44) + 3] ); };
    { (W[12]) = ( (uint32_t) (data)[(48) ] << 24 ) | ( (uint32_t) (data)[(48) + 1] << 16 ) | ( (uint32_t) (data)[(48) + 2] << 8 ) | ( (uint32_t) (data)[(48) + 3] ); };
    { (W[13]) = ( (uint32_t) (data)[(52) ] << 24 ) | ( (uint32_t) (data)[(52) + 1] << 16 ) | ( (uint32_t) (data)[(52) + 2] << 8 ) | ( (uint32_t) (data)[(52) + 3] ); };
    { (W[14]) = ( (uint32_t) (data)[(56) ] << 24 ) | ( (uint32_t) (data)[(56) + 1] << 16 ) | ( (uint32_t) (data)[(56) + 2] << 8 ) | ( (uint32_t) (data)[(56) + 3] ); };
    { (W[15]) = ( (uint32_t) (data)[(60) ] << 24 ) | ( (uint32_t) (data)[(60) + 1] << 16 ) | ( (uint32_t) (data)[(60) + 2] << 8 ) | ( (uint32_t) (data)[(60) + 3] ); };
    A = ctx->state[0];
    B = ctx->state[1];
    C = ctx->state[2];
    D = ctx->state[3];
    E = ctx->state[4];
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ (((B)) & (((C)) ^ ((D))))) + 0x5A827999 + (W[0]); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ (((A)) & (((B)) ^ ((C))))) + 0x5A827999 + (W[1]); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ (((E)) & (((A)) ^ ((B))))) + 0x5A827999 + (W[2]); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ (((D)) & (((E)) ^ ((A))))) + 0x5A827999 + (W[3]); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ (((C)) & (((D)) ^ ((E))))) + 0x5A827999 + (W[4]); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ (((B)) & (((C)) ^ ((D))))) + 0x5A827999 + (W[5]); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ (((A)) & (((B)) ^ ((C))))) + 0x5A827999 + (W[6]); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ (((E)) & (((A)) ^ ((B))))) + 0x5A827999 + (W[7]); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ (((D)) & (((E)) ^ ((A))))) + 0x5A827999 + (W[8]); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ (((C)) & (((D)) ^ ((E))))) + 0x5A827999 + (W[9]); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ (((B)) & (((C)) ^ ((D))))) + 0x5A827999 + (W[10]); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ (((A)) & (((B)) ^ ((C))))) + 0x5A827999 + (W[11]); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ (((E)) & (((A)) ^ ((B))))) + 0x5A827999 + (W[12]); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ (((D)) & (((E)) ^ ((A))))) + 0x5A827999 + (W[13]); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ (((C)) & (((D)) ^ ((E))))) + 0x5A827999 + (W[14]); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ (((B)) & (((C)) ^ ((D))))) + 0x5A827999 + (W[15]); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ (((A)) & (((B)) ^ ((C))))) + 0x5A827999 + (( temp = W[( (16) - 3 ) & 0x0F] ^ W[( (16) - 8 ) & 0x0F] ^ W[( (16) - 14 ) & 0x0F] ^ W[ (16) & 0x0F], ( W[(16) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ (((E)) & (((A)) ^ ((B))))) + 0x5A827999 + (( temp = W[( (17) - 3 ) & 0x0F] ^ W[( (17) - 8 ) & 0x0F] ^ W[( (17) - 14 ) & 0x0F] ^ W[ (17) & 0x0F], ( W[(17) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ (((D)) & (((E)) ^ ((A))))) + 0x5A827999 + (( temp = W[( (18) - 3 ) & 0x0F] ^ W[( (18) - 8 ) & 0x0F] ^ W[( (18) - 14 ) & 0x0F] ^ W[ (18) & 0x0F], ( W[(18) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ (((C)) & (((D)) ^ ((E))))) + 0x5A827999 + (( temp = W[( (19) - 3 ) & 0x0F] ^ W[( (19) - 8 ) & 0x0F] ^ W[( (19) - 14 ) & 0x0F] ^ W[ (19) & 0x0F], ( W[(19) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0x6ED9EBA1 + (( temp = W[( (20) - 3 ) & 0x0F] ^ W[( (20) - 8 ) & 0x0F] ^ W[( (20) - 14 ) & 0x0F] ^ W[ (20) & 0x0F], ( W[(20) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0x6ED9EBA1 + (( temp = W[( (21) - 3 ) & 0x0F] ^ W[( (21) - 8 ) & 0x0F] ^ W[( (21) - 14 ) & 0x0F] ^ W[ (21) & 0x0F], ( W[(21) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0x6ED9EBA1 + (( temp = W[( (22) - 3 ) & 0x0F] ^ W[( (22) - 8 ) & 0x0F] ^ W[( (22) - 14 ) & 0x0F] ^ W[ (22) & 0x0F], ( W[(22) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0x6ED9EBA1 + (( temp = W[( (23) - 3 ) & 0x0F] ^ W[( (23) - 8 ) & 0x0F] ^ W[( (23) - 14 ) & 0x0F] ^ W[ (23) & 0x0F], ( W[(23) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0x6ED9EBA1 + (( temp = W[( (24) - 3 ) & 0x0F] ^ W[( (24) - 8 ) & 0x0F] ^ W[( (24) - 14 ) & 0x0F] ^ W[ (24) & 0x0F], ( W[(24) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0x6ED9EBA1 + (( temp = W[( (25) - 3 ) & 0x0F] ^ W[( (25) - 8 ) & 0x0F] ^ W[( (25) - 14 ) & 0x0F] ^ W[ (25) & 0x0F], ( W[(25) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0x6ED9EBA1 + (( temp = W[( (26) - 3 ) & 0x0F] ^ W[( (26) - 8 ) & 0x0F] ^ W[( (26) - 14 ) & 0x0F] ^ W[ (26) & 0x0F], ( W[(26) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0x6ED9EBA1 + (( temp = W[( (27) - 3 ) & 0x0F] ^ W[( (27) - 8 ) & 0x0F] ^ W[( (27) - 14 ) & 0x0F] ^ W[ (27) & 0x0F], ( W[(27) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0x6ED9EBA1 + (( temp = W[( (28) - 3 ) & 0x0F] ^ W[( (28) - 8 ) & 0x0F] ^ W[( (28) - 14 ) & 0x0F] ^ W[ (28) & 0x0F], ( W[(28) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0x6ED9EBA1 + (( temp = W[( (29) - 3 ) & 0x0F] ^ W[( (29) - 8 ) & 0x0F] ^ W[( (29) - 14 ) & 0x0F] ^ W[ (29) & 0x0F], ( W[(29) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0x6ED9EBA1 + (( temp = W[( (30) - 3 ) & 0x0F] ^ W[( (30) - 8 ) & 0x0F] ^ W[( (30) - 14 ) & 0x0F] ^ W[ (30) & 0x0F], ( W[(30) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0x6ED9EBA1 + (( temp = W[( (31) - 3 ) & 0x0F] ^ W[( (31) - 8 ) & 0x0F] ^ W[( (31) - 14 ) & 0x0F] ^ W[ (31) & 0x0F], ( W[(31) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0x6ED9EBA1 + (( temp = W[( (32) - 3 ) & 0x0F] ^ W[( (32) - 8 ) & 0x0F] ^ W[( (32) - 14 ) & 0x0F] ^ W[ (32) & 0x0F], ( W[(32) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0x6ED9EBA1 + (( temp = W[( (33) - 3 ) & 0x0F] ^ W[( (33) - 8 ) & 0x0F] ^ W[( (33) - 14 ) & 0x0F] ^ W[ (33) & 0x0F], ( W[(33) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0x6ED9EBA1 + (( temp = W[( (34) - 3 ) & 0x0F] ^ W[( (34) - 8 ) & 0x0F] ^ W[( (34) - 14 ) & 0x0F] ^ W[ (34) & 0x0F], ( W[(34) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0x6ED9EBA1 + (( temp = W[( (35) - 3 ) & 0x0F] ^ W[( (35) - 8 ) & 0x0F] ^ W[( (35) - 14 ) & 0x0F] ^ W[ (35) & 0x0F], ( W[(35) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0x6ED9EBA1 + (( temp = W[( (36) - 3 ) & 0x0F] ^ W[( (36) - 8 ) & 0x0F] ^ W[( (36) - 14 ) & 0x0F] ^ W[ (36) & 0x0F], ( W[(36) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0x6ED9EBA1 + (( temp = W[( (37) - 3 ) & 0x0F] ^ W[( (37) - 8 ) & 0x0F] ^ W[( (37) - 14 ) & 0x0F] ^ W[ (37) & 0x0F], ( W[(37) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0x6ED9EBA1 + (( temp = W[( (38) - 3 ) & 0x0F] ^ W[( (38) - 8 ) & 0x0F] ^ W[( (38) - 14 ) & 0x0F] ^ W[ (38) & 0x0F], ( W[(38) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0x6ED9EBA1 + (( temp = W[( (39) - 3 ) & 0x0F] ^ W[( (39) - 8 ) & 0x0F] ^ W[( (39) - 14 ) & 0x0F] ^ W[ (39) & 0x0F], ( W[(39) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((B)) & ((C))) | (((D)) & (((B)) | ((C))))) + 0x8F1BBCDC + (( temp = W[( (40) - 3 ) & 0x0F] ^ W[( (40) - 8 ) & 0x0F] ^ W[( (40) - 14 ) & 0x0F] ^ W[ (40) & 0x0F], ( W[(40) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((A)) & ((B))) | (((C)) & (((A)) | ((B))))) + 0x8F1BBCDC + (( temp = W[( (41) - 3 ) & 0x0F] ^ W[( (41) - 8 ) & 0x0F] ^ W[( (41) - 14 ) & 0x0F] ^ W[ (41) & 0x0F], ( W[(41) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((E)) & ((A))) | (((B)) & (((E)) | ((A))))) + 0x8F1BBCDC + (( temp = W[( (42) - 3 ) & 0x0F] ^ W[( (42) - 8 ) & 0x0F] ^ W[( (42) - 14 ) & 0x0F] ^ W[ (42) & 0x0F], ( W[(42) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((D)) & ((E))) | (((A)) & (((D)) | ((E))))) + 0x8F1BBCDC + (( temp = W[( (43) - 3 ) & 0x0F] ^ W[( (43) - 8 ) & 0x0F] ^ W[( (43) - 14 ) & 0x0F] ^ W[ (43) & 0x0F], ( W[(43) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((C)) & ((D))) | (((E)) & (((C)) | ((D))))) + 0x8F1BBCDC + (( temp = W[( (44) - 3 ) & 0x0F] ^ W[( (44) - 8 ) & 0x0F] ^ W[( (44) - 14 ) & 0x0F] ^ W[ (44) & 0x0F], ( W[(44) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((B)) & ((C))) | (((D)) & (((B)) | ((C))))) + 0x8F1BBCDC + (( temp = W[( (45) - 3 ) & 0x0F] ^ W[( (45) - 8 ) & 0x0F] ^ W[( (45) - 14 ) & 0x0F] ^ W[ (45) & 0x0F], ( W[(45) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((A)) & ((B))) | (((C)) & (((A)) | ((B))))) + 0x8F1BBCDC + (( temp = W[( (46) - 3 ) & 0x0F] ^ W[( (46) - 8 ) & 0x0F] ^ W[( (46) - 14 ) & 0x0F] ^ W[ (46) & 0x0F], ( W[(46) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((E)) & ((A))) | (((B)) & (((E)) | ((A))))) + 0x8F1BBCDC + (( temp = W[( (47) - 3 ) & 0x0F] ^ W[( (47) - 8 ) & 0x0F] ^ W[( (47) - 14 ) & 0x0F] ^ W[ (47) & 0x0F], ( W[(47) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((D)) & ((E))) | (((A)) & (((D)) | ((E))))) + 0x8F1BBCDC + (( temp = W[( (48) - 3 ) & 0x0F] ^ W[( (48) - 8 ) & 0x0F] ^ W[( (48) - 14 ) & 0x0F] ^ W[ (48) & 0x0F], ( W[(48) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((C)) & ((D))) | (((E)) & (((C)) | ((D))))) + 0x8F1BBCDC + (( temp = W[( (49) - 3 ) & 0x0F] ^ W[( (49) - 8 ) & 0x0F] ^ W[( (49) - 14 ) & 0x0F] ^ W[ (49) & 0x0F], ( W[(49) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((B)) & ((C))) | (((D)) & (((B)) | ((C))))) + 0x8F1BBCDC + (( temp = W[( (50) - 3 ) & 0x0F] ^ W[( (50) - 8 ) & 0x0F] ^ W[( (50) - 14 ) & 0x0F] ^ W[ (50) & 0x0F], ( W[(50) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((A)) & ((B))) | (((C)) & (((A)) | ((B))))) + 0x8F1BBCDC + (( temp = W[( (51) - 3 ) & 0x0F] ^ W[( (51) - 8 ) & 0x0F] ^ W[( (51) - 14 ) & 0x0F] ^ W[ (51) & 0x0F], ( W[(51) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((E)) & ((A))) | (((B)) & (((E)) | ((A))))) + 0x8F1BBCDC + (( temp = W[( (52) - 3 ) & 0x0F] ^ W[( (52) - 8 ) & 0x0F] ^ W[( (52) - 14 ) & 0x0F] ^ W[ (52) & 0x0F], ( W[(52) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((D)) & ((E))) | (((A)) & (((D)) | ((E))))) + 0x8F1BBCDC + (( temp = W[( (53) - 3 ) & 0x0F] ^ W[( (53) - 8 ) & 0x0F] ^ W[( (53) - 14 ) & 0x0F] ^ W[ (53) & 0x0F], ( W[(53) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((C)) & ((D))) | (((E)) & (((C)) | ((D))))) + 0x8F1BBCDC + (( temp = W[( (54) - 3 ) & 0x0F] ^ W[( (54) - 8 ) & 0x0F] ^ W[( (54) - 14 ) & 0x0F] ^ W[ (54) & 0x0F], ( W[(54) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((B)) & ((C))) | (((D)) & (((B)) | ((C))))) + 0x8F1BBCDC + (( temp = W[( (55) - 3 ) & 0x0F] ^ W[( (55) - 8 ) & 0x0F] ^ W[( (55) - 14 ) & 0x0F] ^ W[ (55) & 0x0F], ( W[(55) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((A)) & ((B))) | (((C)) & (((A)) | ((B))))) + 0x8F1BBCDC + (( temp = W[( (56) - 3 ) & 0x0F] ^ W[( (56) - 8 ) & 0x0F] ^ W[( (56) - 14 ) & 0x0F] ^ W[ (56) & 0x0F], ( W[(56) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((E)) & ((A))) | (((B)) & (((E)) | ((A))))) + 0x8F1BBCDC + (( temp = W[( (57) - 3 ) & 0x0F] ^ W[( (57) - 8 ) & 0x0F] ^ W[( (57) - 14 ) & 0x0F] ^ W[ (57) & 0x0F], ( W[(57) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((D)) & ((E))) | (((A)) & (((D)) | ((E))))) + 0x8F1BBCDC + (( temp = W[( (58) - 3 ) & 0x0F] ^ W[( (58) - 8 ) & 0x0F] ^ W[( (58) - 14 ) & 0x0F] ^ W[ (58) & 0x0F], ( W[(58) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + ((((C)) & ((D))) | (((E)) & (((C)) | ((D))))) + 0x8F1BBCDC + (( temp = W[( (59) - 3 ) & 0x0F] ^ W[( (59) - 8 ) & 0x0F] ^ W[( (59) - 14 ) & 0x0F] ^ W[ (59) & 0x0F], ( W[(59) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0xCA62C1D6 + (( temp = W[( (60) - 3 ) & 0x0F] ^ W[( (60) - 8 ) & 0x0F] ^ W[( (60) - 14 ) & 0x0F] ^ W[ (60) & 0x0F], ( W[(60) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0xCA62C1D6 + (( temp = W[( (61) - 3 ) & 0x0F] ^ W[( (61) - 8 ) & 0x0F] ^ W[( (61) - 14 ) & 0x0F] ^ W[ (61) & 0x0F], ( W[(61) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0xCA62C1D6 + (( temp = W[( (62) - 3 ) & 0x0F] ^ W[( (62) - 8 ) & 0x0F] ^ W[( (62) - 14 ) & 0x0F] ^ W[ (62) & 0x0F], ( W[(62) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0xCA62C1D6 + (( temp = W[( (63) - 3 ) & 0x0F] ^ W[( (63) - 8 ) & 0x0F] ^ W[( (63) - 14 ) & 0x0F] ^ W[ (63) & 0x0F], ( W[(63) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0xCA62C1D6 + (( temp = W[( (64) - 3 ) & 0x0F] ^ W[( (64) - 8 ) & 0x0F] ^ W[( (64) - 14 ) & 0x0F] ^ W[ (64) & 0x0F], ( W[(64) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0xCA62C1D6 + (( temp = W[( (65) - 3 ) & 0x0F] ^ W[( (65) - 8 ) & 0x0F] ^ W[( (65) - 14 ) & 0x0F] ^ W[ (65) & 0x0F], ( W[(65) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0xCA62C1D6 + (( temp = W[( (66) - 3 ) & 0x0F] ^ W[( (66) - 8 ) & 0x0F] ^ W[( (66) - 14 ) & 0x0F] ^ W[ (66) & 0x0F], ( W[(66) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0xCA62C1D6 + (( temp = W[( (67) - 3 ) & 0x0F] ^ W[( (67) - 8 ) & 0x0F] ^ W[( (67) - 14 ) & 0x0F] ^ W[ (67) & 0x0F], ( W[(67) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0xCA62C1D6 + (( temp = W[( (68) - 3 ) & 0x0F] ^ W[( (68) - 8 ) & 0x0F] ^ W[( (68) - 14 ) & 0x0F] ^ W[ (68) & 0x0F], ( W[(68) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0xCA62C1D6 + (( temp = W[( (69) - 3 ) & 0x0F] ^ W[( (69) - 8 ) & 0x0F] ^ W[( (69) - 14 ) & 0x0F] ^ W[ (69) & 0x0F], ( W[(69) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0xCA62C1D6 + (( temp = W[( (70) - 3 ) & 0x0F] ^ W[( (70) - 8 ) & 0x0F] ^ W[( (70) - 14 ) & 0x0F] ^ W[ (70) & 0x0F], ( W[(70) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0xCA62C1D6 + (( temp = W[( (71) - 3 ) & 0x0F] ^ W[( (71) - 8 ) & 0x0F] ^ W[( (71) - 14 ) & 0x0F] ^ W[ (71) & 0x0F], ( W[(71) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0xCA62C1D6 + (( temp = W[( (72) - 3 ) & 0x0F] ^ W[( (72) - 8 ) & 0x0F] ^ W[( (72) - 14 ) & 0x0F] ^ W[ (72) & 0x0F], ( W[(72) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0xCA62C1D6 + (( temp = W[( (73) - 3 ) & 0x0F] ^ W[( (73) - 8 ) & 0x0F] ^ W[( (73) - 14 ) & 0x0F] ^ W[ (73) & 0x0F], ( W[(73) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0xCA62C1D6 + (( temp = W[( (74) - 3 ) & 0x0F] ^ W[( (74) - 8 ) & 0x0F] ^ W[( (74) - 14 ) & 0x0F] ^ W[ (74) & 0x0F], ( W[(74) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (E) += ((((A)) << (5)) | ((((A)) & 0xFFFFFFFF) >> (32 - (5)))) + (((B)) ^ ((C)) ^ ((D))) + 0xCA62C1D6 + (( temp = W[( (75) - 3 ) & 0x0F] ^ W[( (75) - 8 ) & 0x0F] ^ W[( (75) - 14 ) & 0x0F] ^ W[ (75) & 0x0F], ( W[(75) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (B) = ((((B)) << (30)) | ((((B)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (D) += ((((E)) << (5)) | ((((E)) & 0xFFFFFFFF) >> (32 - (5)))) + (((A)) ^ ((B)) ^ ((C))) + 0xCA62C1D6 + (( temp = W[( (76) - 3 ) & 0x0F] ^ W[( (76) - 8 ) & 0x0F] ^ W[( (76) - 14 ) & 0x0F] ^ W[ (76) & 0x0F], ( W[(76) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (A) = ((((A)) << (30)) | ((((A)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (C) += ((((D)) << (5)) | ((((D)) & 0xFFFFFFFF) >> (32 - (5)))) + (((E)) ^ ((A)) ^ ((B))) + 0xCA62C1D6 + (( temp = W[( (77) - 3 ) & 0x0F] ^ W[( (77) - 8 ) & 0x0F] ^ W[( (77) - 14 ) & 0x0F] ^ W[ (77) & 0x0F], ( W[(77) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (E) = ((((E)) << (30)) | ((((E)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (B) += ((((C)) << (5)) | ((((C)) & 0xFFFFFFFF) >> (32 - (5)))) + (((D)) ^ ((E)) ^ ((A))) + 0xCA62C1D6 + (( temp = W[( (78) - 3 ) & 0x0F] ^ W[( (78) - 8 ) & 0x0F] ^ W[( (78) - 14 ) & 0x0F] ^ W[ (78) & 0x0F], ( W[(78) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (D) = ((((D)) << (30)) | ((((D)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    do { (A) += ((((B)) << (5)) | ((((B)) & 0xFFFFFFFF) >> (32 - (5)))) + (((C)) ^ ((D)) ^ ((E))) + 0xCA62C1D6 + (( temp = W[( (79) - 3 ) & 0x0F] ^ W[( (79) - 8 ) & 0x0F] ^ W[( (79) - 14 ) & 0x0F] ^ W[ (79) & 0x0F], ( W[(79) & 0x0F] = (((temp) << (1)) | (((temp) & 0xFFFFFFFF) >> (32 - (1)))) ) )); (C) = ((((C)) << (30)) | ((((C)) & 0xFFFFFFFF) >> (32 - (30)))); } while( 0 );
    ctx->state[0] += A;
    ctx->state[1] += B;
    ctx->state[2] += C;
    ctx->state[3] += D;
    ctx->state[4] += E;
    return( 0 );
}
void mbedtls_sha1_process( mbedtls_sha1_context *ctx,
                           const unsigned char data[64] )
{
    mbedtls_internal_sha1_process( ctx, data );
}
int mbedtls_sha1_update_ret( mbedtls_sha1_context *ctx,
                             const unsigned char *input,
                             size_t ilen )
{
    int ret = -0x006E;
    size_t fill;
    uint32_t left;
    do { } while( 0 );
    do { } while( 0 );
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
        if( ( ret = mbedtls_internal_sha1_process( ctx, ctx->buffer ) ) != 0 )
            return( ret );
        input += fill;
        ilen -= fill;
        left = 0;
    }
    while( ilen >= 64 )
    {
        if( ( ret = mbedtls_internal_sha1_process( ctx, input ) ) != 0 )
            return( ret );
        input += 64;
        ilen -= 64;
    }
    if( ilen > 0 )
        memcpy( (void *) (ctx->buffer + left), input, ilen );
    return( 0 );
}
void mbedtls_sha1_update( mbedtls_sha1_context *ctx,
                          const unsigned char *input,
                          size_t ilen )
{
    mbedtls_sha1_update_ret( ctx, input, ilen );
}
int mbedtls_sha1_finish_ret( mbedtls_sha1_context *ctx,
                             unsigned char output[20] )
{
    int ret = -0x006E;
    uint32_t used;
    uint32_t high, low;
    do { } while( 0 );
    do { } while( 0 );
    used = ctx->total[0] & 0x3F;
    ctx->buffer[used++] = 0x80;
    if( used <= 56 )
    {
        memset( ctx->buffer + used, 0, 56 - used );
    }
    else
    {
        memset( ctx->buffer + used, 0, 64 - used );
        if( ( ret = mbedtls_internal_sha1_process( ctx, ctx->buffer ) ) != 0 )
            return( ret );
        memset( ctx->buffer, 0, 56 );
    }
    high = ( ctx->total[0] >> 29 )
         | ( ctx->total[1] << 3 );
    low = ( ctx->total[0] << 3 );
    { (ctx->buffer)[(56) ] = (unsigned char) ( (high) >> 24 ); (ctx->buffer)[(56) + 1] = (unsigned char) ( (high) >> 16 ); (ctx->buffer)[(56) + 2] = (unsigned char) ( (high) >> 8 ); (ctx->buffer)[(56) + 3] = (unsigned char) ( (high) ); };
    { (ctx->buffer)[(60) ] = (unsigned char) ( (low) >> 24 ); (ctx->buffer)[(60) + 1] = (unsigned char) ( (low) >> 16 ); (ctx->buffer)[(60) + 2] = (unsigned char) ( (low) >> 8 ); (ctx->buffer)[(60) + 3] = (unsigned char) ( (low) ); };
    if( ( ret = mbedtls_internal_sha1_process( ctx, ctx->buffer ) ) != 0 )
        return( ret );
    { (output)[(0) ] = (unsigned char) ( (ctx->state[0]) >> 24 ); (output)[(0) + 1] = (unsigned char) ( (ctx->state[0]) >> 16 ); (output)[(0) + 2] = (unsigned char) ( (ctx->state[0]) >> 8 ); (output)[(0) + 3] = (unsigned char) ( (ctx->state[0]) ); };
    { (output)[(4) ] = (unsigned char) ( (ctx->state[1]) >> 24 ); (output)[(4) + 1] = (unsigned char) ( (ctx->state[1]) >> 16 ); (output)[(4) + 2] = (unsigned char) ( (ctx->state[1]) >> 8 ); (output)[(4) + 3] = (unsigned char) ( (ctx->state[1]) ); };
    { (output)[(8) ] = (unsigned char) ( (ctx->state[2]) >> 24 ); (output)[(8) + 1] = (unsigned char) ( (ctx->state[2]) >> 16 ); (output)[(8) + 2] = (unsigned char) ( (ctx->state[2]) >> 8 ); (output)[(8) + 3] = (unsigned char) ( (ctx->state[2]) ); };
    { (output)[(12) ] = (unsigned char) ( (ctx->state[3]) >> 24 ); (output)[(12) + 1] = (unsigned char) ( (ctx->state[3]) >> 16 ); (output)[(12) + 2] = (unsigned char) ( (ctx->state[3]) >> 8 ); (output)[(12) + 3] = (unsigned char) ( (ctx->state[3]) ); };
    { (output)[(16) ] = (unsigned char) ( (ctx->state[4]) >> 24 ); (output)[(16) + 1] = (unsigned char) ( (ctx->state[4]) >> 16 ); (output)[(16) + 2] = (unsigned char) ( (ctx->state[4]) >> 8 ); (output)[(16) + 3] = (unsigned char) ( (ctx->state[4]) ); };
    return( 0 );
}
void mbedtls_sha1_finish( mbedtls_sha1_context *ctx,
                          unsigned char output[20] )
{
    mbedtls_sha1_finish_ret( ctx, output );
}
int mbedtls_sha1_ret( const unsigned char *input,
                      size_t ilen,
                      unsigned char output[20] )
{
    int ret = -0x006E;
    mbedtls_sha1_context ctx;
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_sha1_init( &ctx );
    if( ( ret = mbedtls_sha1_starts_ret( &ctx ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_sha1_update_ret( &ctx, input, ilen ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_sha1_finish_ret( &ctx, output ) ) != 0 )
        goto exit;
exit:
    mbedtls_sha1_free( &ctx );
    return( ret );
}
void mbedtls_sha1( const unsigned char *input,
                   size_t ilen,
                   unsigned char output[20] )
{
    mbedtls_sha1_ret( input, ilen, output );
}
static const unsigned char sha1_test_buf[3][57] =
{
    { "abc" },
    { "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq" },
    { "" }
};
static const size_t sha1_test_buflen[3] =
{
    3, 56, 1000
};
static const unsigned char sha1_test_sum[3][20] =
{
    { 0xA9, 0x99, 0x3E, 0x36, 0x47, 0x06, 0x81, 0x6A, 0xBA, 0x3E,
      0x25, 0x71, 0x78, 0x50, 0xC2, 0x6C, 0x9C, 0xD0, 0xD8, 0x9D },
    { 0x84, 0x98, 0x3E, 0x44, 0x1C, 0x3B, 0xD2, 0x6E, 0xBA, 0xAE,
      0x4A, 0xA1, 0xF9, 0x51, 0x29, 0xE5, 0xE5, 0x46, 0x70, 0xF1 },
    { 0x34, 0xAA, 0x97, 0x3C, 0xD4, 0xC4, 0xDA, 0xA4, 0xF6, 0x1E,
      0xEB, 0x2B, 0xDB, 0xAD, 0x27, 0x31, 0x65, 0x34, 0x01, 0x6F }
};
int mbedtls_sha1_self_test( int verbose )
{
    int i, j, buflen, ret = 0;
    unsigned char buf[1024];
    unsigned char sha1sum[20];
    mbedtls_sha1_context ctx;
    mbedtls_sha1_init( &ctx );
    for( i = 0; i < 3; i++ )
    {
        if( verbose != 0 )
            printf( "  SHA-1 test #%d: ", i + 1 );
        if( ( ret = mbedtls_sha1_starts_ret( &ctx ) ) != 0 )
            goto fail;
        if( i == 2 )
        {
            memset( buf, 'a', buflen = 1000 );
            for( j = 0; j < 1000; j++ )
            {
                ret = mbedtls_sha1_update_ret( &ctx, buf, buflen );
                if( ret != 0 )
                    goto fail;
            }
        }
        else
        {
            ret = mbedtls_sha1_update_ret( &ctx, sha1_test_buf[i],
                                           sha1_test_buflen[i] );
            if( ret != 0 )
                goto fail;
        }
        if( ( ret = mbedtls_sha1_finish_ret( &ctx, sha1sum ) ) != 0 )
            goto fail;
        if( memcmp( sha1sum, sha1_test_sum[i], 20 ) != 0 )
        {
            ret = 1;
            goto fail;
        }
        if( verbose != 0 )
            printf( "passed\n" );
    }
    if( verbose != 0 )
        printf( "\n" );
    goto exit;
fail:
    if( verbose != 0 )
        printf( "failed\n" );
exit:
    mbedtls_sha1_free( &ctx );
    return( ret );
}
