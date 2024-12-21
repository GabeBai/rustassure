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
typedef struct mbedtls_camellia_context
{
    int nr;
    uint32_t rk[68];
}
mbedtls_camellia_context;
void mbedtls_camellia_init( mbedtls_camellia_context *ctx );
void mbedtls_camellia_free( mbedtls_camellia_context *ctx );
int mbedtls_camellia_setkey_enc( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits );
int mbedtls_camellia_setkey_dec( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits );
int mbedtls_camellia_crypt_ecb( mbedtls_camellia_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
int mbedtls_camellia_crypt_cbc( mbedtls_camellia_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
int mbedtls_camellia_crypt_cfb128( mbedtls_camellia_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_camellia_crypt_ctr( mbedtls_camellia_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_camellia_self_test( int verbose );
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
static const unsigned char SIGMA_CHARS[6][8] =
{
    { 0xa0, 0x9e, 0x66, 0x7f, 0x3b, 0xcc, 0x90, 0x8b },
    { 0xb6, 0x7a, 0xe8, 0x58, 0x4c, 0xaa, 0x73, 0xb2 },
    { 0xc6, 0xef, 0x37, 0x2f, 0xe9, 0x4f, 0x82, 0xbe },
    { 0x54, 0xff, 0x53, 0xa5, 0xf1, 0xd3, 0x6f, 0x1c },
    { 0x10, 0xe5, 0x27, 0xfa, 0xde, 0x68, 0x2d, 0x1d },
    { 0xb0, 0x56, 0x88, 0xc2, 0xb3, 0xe6, 0xc1, 0xfd }
};
static const unsigned char FSb[256] =
{
 112, 130, 44, 236, 179, 39, 192, 229, 228, 133, 87, 53, 234, 12, 174, 65,
  35, 239, 107, 147, 69, 25, 165, 33, 237, 14, 79, 78, 29, 101, 146, 189,
 134, 184, 175, 143, 124, 235, 31, 206, 62, 48, 220, 95, 94, 197, 11, 26,
 166, 225, 57, 202, 213, 71, 93, 61, 217, 1, 90, 214, 81, 86, 108, 77,
 139, 13, 154, 102, 251, 204, 176, 45, 116, 18, 43, 32, 240, 177, 132, 153,
 223, 76, 203, 194, 52, 126, 118, 5, 109, 183, 169, 49, 209, 23, 4, 215,
  20, 88, 58, 97, 222, 27, 17, 28, 50, 15, 156, 22, 83, 24, 242, 34,
 254, 68, 207, 178, 195, 181, 122, 145, 36, 8, 232, 168, 96, 252, 105, 80,
 170, 208, 160, 125, 161, 137, 98, 151, 84, 91, 30, 149, 224, 255, 100, 210,
  16, 196, 0, 72, 163, 247, 117, 219, 138, 3, 230, 218, 9, 63, 221, 148,
 135, 92, 131, 2, 205, 74, 144, 51, 115, 103, 246, 243, 157, 127, 191, 226,
  82, 155, 216, 38, 200, 55, 198, 59, 129, 150, 111, 75, 19, 190, 99, 46,
 233, 121, 167, 140, 159, 110, 188, 142, 41, 245, 249, 182, 47, 253, 180, 89,
 120, 152, 6, 106, 231, 70, 113, 186, 212, 37, 171, 66, 136, 162, 141, 250,
 114, 7, 185, 85, 248, 238, 172, 10, 54, 73, 42, 104, 60, 56, 241, 164,
 64, 40, 211, 123, 187, 201, 67, 193, 21, 227, 173, 244, 119, 199, 128, 158
};
static const unsigned char FSb2[256] =
{
 224, 5, 88, 217, 103, 78, 129, 203, 201, 11, 174, 106, 213, 24, 93, 130,
  70, 223, 214, 39, 138, 50, 75, 66, 219, 28, 158, 156, 58, 202, 37, 123,
  13, 113, 95, 31, 248, 215, 62, 157, 124, 96, 185, 190, 188, 139, 22, 52,
  77, 195, 114, 149, 171, 142, 186, 122, 179, 2, 180, 173, 162, 172, 216, 154,
  23, 26, 53, 204, 247, 153, 97, 90, 232, 36, 86, 64, 225, 99, 9, 51,
 191, 152, 151, 133, 104, 252, 236, 10, 218, 111, 83, 98, 163, 46, 8, 175,
  40, 176, 116, 194, 189, 54, 34, 56, 100, 30, 57, 44, 166, 48, 229, 68,
 253, 136, 159, 101, 135, 107, 244, 35, 72, 16, 209, 81, 192, 249, 210, 160,
  85, 161, 65, 250, 67, 19, 196, 47, 168, 182, 60, 43, 193, 255, 200, 165,
  32, 137, 0, 144, 71, 239, 234, 183, 21, 6, 205, 181, 18, 126, 187, 41,
  15, 184, 7, 4, 155, 148, 33, 102, 230, 206, 237, 231, 59, 254, 127, 197,
 164, 55, 177, 76, 145, 110, 141, 118, 3, 45, 222, 150, 38, 125, 198, 92,
 211, 242, 79, 25, 63, 220, 121, 29, 82, 235, 243, 109, 94, 251, 105, 178,
 240, 49, 12, 212, 207, 140, 226, 117, 169, 74, 87, 132, 17, 69, 27, 245,
 228, 14, 115, 170, 241, 221, 89, 20, 108, 146, 84, 208, 120, 112, 227, 73,
 128, 80, 167, 246, 119, 147, 134, 131, 42, 199, 91, 233, 238, 143, 1, 61
};
static const unsigned char FSb3[256] =
{
  56, 65, 22, 118, 217, 147, 96, 242, 114, 194, 171, 154, 117, 6, 87, 160,
 145, 247, 181, 201, 162, 140, 210, 144, 246, 7, 167, 39, 142, 178, 73, 222,
  67, 92, 215, 199, 62, 245, 143, 103, 31, 24, 110, 175, 47, 226, 133, 13,
  83, 240, 156, 101, 234, 163, 174, 158, 236, 128, 45, 107, 168, 43, 54, 166,
 197, 134, 77, 51, 253, 102, 88, 150, 58, 9, 149, 16, 120, 216, 66, 204,
 239, 38, 229, 97, 26, 63, 59, 130, 182, 219, 212, 152, 232, 139, 2, 235,
  10, 44, 29, 176, 111, 141, 136, 14, 25, 135, 78, 11, 169, 12, 121, 17,
 127, 34, 231, 89, 225, 218, 61, 200, 18, 4, 116, 84, 48, 126, 180, 40,
  85, 104, 80, 190, 208, 196, 49, 203, 42, 173, 15, 202, 112, 255, 50, 105,
   8, 98, 0, 36, 209, 251, 186, 237, 69, 129, 115, 109, 132, 159, 238, 74,
 195, 46, 193, 1, 230, 37, 72, 153, 185, 179, 123, 249, 206, 191, 223, 113,
  41, 205, 108, 19, 100, 155, 99, 157, 192, 75, 183, 165, 137, 95, 177, 23,
 244, 188, 211, 70, 207, 55, 94, 71, 148, 250, 252, 91, 151, 254, 90, 172,
  60, 76, 3, 53, 243, 35, 184, 93, 106, 146, 213, 33, 68, 81, 198, 125,
  57, 131, 220, 170, 124, 119, 86, 5, 27, 164, 21, 52, 30, 28, 248, 82,
  32, 20, 233, 189, 221, 228, 161, 224, 138, 241, 214, 122, 187, 227, 64, 79
};
static const unsigned char FSb4[256] =
{
 112, 44, 179, 192, 228, 87, 234, 174, 35, 107, 69, 165, 237, 79, 29, 146,
 134, 175, 124, 31, 62, 220, 94, 11, 166, 57, 213, 93, 217, 90, 81, 108,
 139, 154, 251, 176, 116, 43, 240, 132, 223, 203, 52, 118, 109, 169, 209, 4,
  20, 58, 222, 17, 50, 156, 83, 242, 254, 207, 195, 122, 36, 232, 96, 105,
 170, 160, 161, 98, 84, 30, 224, 100, 16, 0, 163, 117, 138, 230, 9, 221,
 135, 131, 205, 144, 115, 246, 157, 191, 82, 216, 200, 198, 129, 111, 19, 99,
 233, 167, 159, 188, 41, 249, 47, 180, 120, 6, 231, 113, 212, 171, 136, 141,
 114, 185, 248, 172, 54, 42, 60, 241, 64, 211, 187, 67, 21, 173, 119, 128,
 130, 236, 39, 229, 133, 53, 12, 65, 239, 147, 25, 33, 14, 78, 101, 189,
 184, 143, 235, 206, 48, 95, 197, 26, 225, 202, 71, 61, 1, 214, 86, 77,
  13, 102, 204, 45, 18, 32, 177, 153, 76, 194, 126, 5, 183, 49, 23, 215,
  88, 97, 27, 28, 15, 22, 24, 34, 68, 178, 181, 145, 8, 168, 252, 80,
 208, 125, 137, 151, 91, 149, 255, 210, 196, 72, 247, 219, 3, 218, 63, 148,
  92, 2, 74, 51, 103, 243, 127, 226, 155, 38, 55, 59, 150, 75, 190, 46,
 121, 140, 110, 142, 245, 182, 253, 89, 152, 106, 70, 186, 37, 66, 162, 250,
  7, 85, 238, 10, 73, 104, 56, 164, 40, 123, 201, 193, 227, 244, 199, 158
};
static const unsigned char shifts[2][4][4] =
{
    {
        { 1, 1, 1, 1 },
        { 0, 0, 0, 0 },
        { 1, 1, 1, 1 },
        { 0, 0, 0, 0 }
    },
    {
        { 1, 0, 1, 1 },
        { 1, 1, 0, 1 },
        { 1, 1, 1, 0 },
        { 1, 1, 0, 1 }
    }
};
static const signed char indexes[2][4][20] =
{
    {
        { 0, 1, 2, 3, 8, 9, 10, 11, 38, 39,
          36, 37, 23, 20, 21, 22, 27, -1, -1, 26 },
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
          -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 },
        { 4, 5, 6, 7, 12, 13, 14, 15, 16, 17,
          18, 19, -1, 24, 25, -1, 31, 28, 29, 30 },
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
          -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 }
    },
    {
        { 0, 1, 2, 3, 61, 62, 63, 60, -1, -1,
          -1, -1, 27, 24, 25, 26, 35, 32, 33, 34 },
        { -1, -1, -1, -1, 8, 9, 10, 11, 16, 17,
          18, 19, -1, -1, -1, -1, 39, 36, 37, 38 },
        { -1, -1, -1, -1, 12, 13, 14, 15, 58, 59,
          56, 57, 31, 28, 29, 30, -1, -1, -1, -1 },
        { 4, 5, 6, 7, 65, 66, 67, 64, 20, 21,
          22, 23, -1, -1, -1, -1, 43, 40, 41, 42 }
    }
};
static const signed char transposes[2][20] =
{
    {
        21, 22, 23, 20,
        -1, -1, -1, -1,
        18, 19, 16, 17,
        11, 8, 9, 10,
        15, 12, 13, 14
    },
    {
        25, 26, 27, 24,
        29, 30, 31, 28,
        18, 19, 16, 17,
        -1, -1, -1, -1,
        -1, -1, -1, -1
    }
};
static void camellia_feistel( const uint32_t x[2], const uint32_t k[2],
                              uint32_t z[2])
{
    uint32_t I0, I1;
    I0 = x[0] ^ k[0];
    I1 = x[1] ^ k[1];
    I0 = ((uint32_t) FSb[((I0 >> 24) & 0xFF)] << 24) |
         ((uint32_t) FSb2[((I0 >> 16) & 0xFF)] << 16) |
         ((uint32_t) FSb3[((I0 >> 8) & 0xFF)] << 8) |
         ((uint32_t) FSb4[((I0 ) & 0xFF)] );
    I1 = ((uint32_t) FSb2[((I1 >> 24) & 0xFF)] << 24) |
         ((uint32_t) FSb3[((I1 >> 16) & 0xFF)] << 16) |
         ((uint32_t) FSb4[((I1 >> 8) & 0xFF)] << 8) |
         ((uint32_t) FSb[((I1 ) & 0xFF)] );
    I0 ^= (I1 << 8) | (I1 >> 24);
    I1 ^= (I0 << 16) | (I0 >> 16);
    I0 ^= (I1 >> 8) | (I1 << 24);
    I1 ^= (I0 >> 8) | (I0 << 24);
    z[0] ^= I1;
    z[1] ^= I0;
}
void mbedtls_camellia_init( mbedtls_camellia_context *ctx )
{
    do { } while( 0 );
    memset( ctx, 0, sizeof( mbedtls_camellia_context ) );
}
void mbedtls_camellia_free( mbedtls_camellia_context *ctx )
{
    if( ctx == ((void*)0) )
        return;
    mbedtls_platform_zeroize( ctx, sizeof( mbedtls_camellia_context ) );
}
int mbedtls_camellia_setkey_enc( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits )
{
    int idx;
    size_t i;
    uint32_t *RK;
    unsigned char t[64];
    uint32_t SIGMA[6][2];
    uint32_t KC[16];
    uint32_t TK[20];
    do { } while( 0 );
    do { } while( 0 );
    RK = ctx->rk;
    memset( t, 0, 64 );
    memset( RK, 0, sizeof(ctx->rk) );
    switch( keybits )
    {
        case 128: ctx->nr = 3; idx = 0; break;
        case 192:
        case 256: ctx->nr = 4; idx = 1; break;
        default : return( -0x0024 );
    }
    for( i = 0; i < keybits / 8; ++i )
        t[i] = key[i];
    if( keybits == 192 ) {
        for( i = 0; i < 8; i++ )
            t[24 + i] = ~t[16 + i];
    }
    for( i = 0; i < 6; i++ ) {
        { (SIGMA[i][0]) = ( (uint32_t) (SIGMA_CHARS[i])[(0) ] << 24 ) | ( (uint32_t) (SIGMA_CHARS[i])[(0) + 1] << 16 ) | ( (uint32_t) (SIGMA_CHARS[i])[(0) + 2] << 8 ) | ( (uint32_t) (SIGMA_CHARS[i])[(0) + 3] ); };
        { (SIGMA[i][1]) = ( (uint32_t) (SIGMA_CHARS[i])[(4) ] << 24 ) | ( (uint32_t) (SIGMA_CHARS[i])[(4) + 1] << 16 ) | ( (uint32_t) (SIGMA_CHARS[i])[(4) + 2] << 8 ) | ( (uint32_t) (SIGMA_CHARS[i])[(4) + 3] ); };
    }
    memset( KC, 0, sizeof(KC) );
    for( i = 0; i < 8; i++ )
        { (KC[i]) = ( (uint32_t) (t)[(i * 4) ] << 24 ) | ( (uint32_t) (t)[(i * 4) + 1] << 16 ) | ( (uint32_t) (t)[(i * 4) + 2] << 8 ) | ( (uint32_t) (t)[(i * 4) + 3] ); };
    for( i = 0; i < 4; ++i )
        KC[8 + i] = KC[i] ^ KC[4 + i];
    camellia_feistel( KC + 8, SIGMA[0], KC + 10 );
    camellia_feistel( KC + 10, SIGMA[1], KC + 8 );
    for( i = 0; i < 4; ++i )
        KC[8 + i] ^= KC[i];
    camellia_feistel( KC + 8, SIGMA[2], KC + 10 );
    camellia_feistel( KC + 10, SIGMA[3], KC + 8 );
    if( keybits > 128 ) {
        for( i = 0; i < 4; ++i )
            KC[12 + i] = KC[4 + i] ^ KC[8 + i];
        camellia_feistel( KC + 12, SIGMA[4], KC + 14 );
        camellia_feistel( KC + 14, SIGMA[5], KC + 12 );
    }
    { TK[0] = KC[(0) * 4 + 0]; TK[1] = KC[(0) * 4 + 1]; TK[2] = KC[(0) * 4 + 2]; TK[3] = KC[(0) * 4 + 3]; for( i = 1; i <= 4; i++ ) if( shifts[(idx)][(0)][i -1] ) { (TK + i * 4)[0] = (TK)[0] << (( 15 * i ) % 32) ^ (TK)[1] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[1] = (TK)[1] << (( 15 * i ) % 32) ^ (TK)[2] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[2] = (TK)[2] << (( 15 * i ) % 32) ^ (TK)[3] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[3] = (TK)[3] << (( 15 * i ) % 32) ^ (TK)[0] >> (32 - (( 15 * i ) % 32)); }; for( i = 0; i < 20; i++ ) if( indexes[(idx)][(0)][i] != -1 ) { RK[indexes[(idx)][(0)][i]] = TK[ i ]; } };
    if( keybits > 128 ) {
        { TK[0] = KC[(1) * 4 + 0]; TK[1] = KC[(1) * 4 + 1]; TK[2] = KC[(1) * 4 + 2]; TK[3] = KC[(1) * 4 + 3]; for( i = 1; i <= 4; i++ ) if( shifts[(idx)][(1)][i -1] ) { (TK + i * 4)[0] = (TK)[0] << (( 15 * i ) % 32) ^ (TK)[1] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[1] = (TK)[1] << (( 15 * i ) % 32) ^ (TK)[2] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[2] = (TK)[2] << (( 15 * i ) % 32) ^ (TK)[3] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[3] = (TK)[3] << (( 15 * i ) % 32) ^ (TK)[0] >> (32 - (( 15 * i ) % 32)); }; for( i = 0; i < 20; i++ ) if( indexes[(idx)][(1)][i] != -1 ) { RK[indexes[(idx)][(1)][i]] = TK[ i ]; } };
    }
    { TK[0] = KC[(2) * 4 + 0]; TK[1] = KC[(2) * 4 + 1]; TK[2] = KC[(2) * 4 + 2]; TK[3] = KC[(2) * 4 + 3]; for( i = 1; i <= 4; i++ ) if( shifts[(idx)][(2)][i -1] ) { (TK + i * 4)[0] = (TK)[0] << (( 15 * i ) % 32) ^ (TK)[1] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[1] = (TK)[1] << (( 15 * i ) % 32) ^ (TK)[2] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[2] = (TK)[2] << (( 15 * i ) % 32) ^ (TK)[3] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[3] = (TK)[3] << (( 15 * i ) % 32) ^ (TK)[0] >> (32 - (( 15 * i ) % 32)); }; for( i = 0; i < 20; i++ ) if( indexes[(idx)][(2)][i] != -1 ) { RK[indexes[(idx)][(2)][i]] = TK[ i ]; } };
    if( keybits > 128 ) {
        { TK[0] = KC[(3) * 4 + 0]; TK[1] = KC[(3) * 4 + 1]; TK[2] = KC[(3) * 4 + 2]; TK[3] = KC[(3) * 4 + 3]; for( i = 1; i <= 4; i++ ) if( shifts[(idx)][(3)][i -1] ) { (TK + i * 4)[0] = (TK)[0] << (( 15 * i ) % 32) ^ (TK)[1] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[1] = (TK)[1] << (( 15 * i ) % 32) ^ (TK)[2] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[2] = (TK)[2] << (( 15 * i ) % 32) ^ (TK)[3] >> (32 - (( 15 * i ) % 32)); (TK + i * 4)[3] = (TK)[3] << (( 15 * i ) % 32) ^ (TK)[0] >> (32 - (( 15 * i ) % 32)); }; for( i = 0; i < 20; i++ ) if( indexes[(idx)][(3)][i] != -1 ) { RK[indexes[(idx)][(3)][i]] = TK[ i ]; } };
    }
    for( i = 0; i < 20; i++ ) {
        if( transposes[idx][i] != -1 ) {
            RK[32 + 12 * idx + i] = RK[transposes[idx][i]];
        }
    }
    return( 0 );
}
int mbedtls_camellia_setkey_dec( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits )
{
    int idx, ret;
    size_t i;
    mbedtls_camellia_context cty;
    uint32_t *RK;
    uint32_t *SK;
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_camellia_init( &cty );
    if( ( ret = mbedtls_camellia_setkey_enc( &cty, key, keybits ) ) != 0 )
        goto exit;
    ctx->nr = cty.nr;
    idx = ( ctx->nr == 4 );
    RK = ctx->rk;
    SK = cty.rk + 24 * 2 + 8 * idx * 2;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    for( i = 22 + 8 * idx, SK -= 6; i > 0; i--, SK -= 4 )
    {
        *RK++ = *SK++;
        *RK++ = *SK++;
    }
    SK -= 2;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
    *RK++ = *SK++;
exit:
    mbedtls_camellia_free( &cty );
    return( ret );
}
int mbedtls_camellia_crypt_ecb( mbedtls_camellia_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] )
{
    int NR;
    uint32_t *RK, X[4];
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    ( (void) mode );
    NR = ctx->nr;
    RK = ctx->rk;
    { (X[0]) = ( (uint32_t) (input)[(0) ] << 24 ) | ( (uint32_t) (input)[(0) + 1] << 16 ) | ( (uint32_t) (input)[(0) + 2] << 8 ) | ( (uint32_t) (input)[(0) + 3] ); };
    { (X[1]) = ( (uint32_t) (input)[(4) ] << 24 ) | ( (uint32_t) (input)[(4) + 1] << 16 ) | ( (uint32_t) (input)[(4) + 2] << 8 ) | ( (uint32_t) (input)[(4) + 3] ); };
    { (X[2]) = ( (uint32_t) (input)[(8) ] << 24 ) | ( (uint32_t) (input)[(8) + 1] << 16 ) | ( (uint32_t) (input)[(8) + 2] << 8 ) | ( (uint32_t) (input)[(8) + 3] ); };
    { (X[3]) = ( (uint32_t) (input)[(12) ] << 24 ) | ( (uint32_t) (input)[(12) + 1] << 16 ) | ( (uint32_t) (input)[(12) + 2] << 8 ) | ( (uint32_t) (input)[(12) + 3] ); };
    X[0] ^= *RK++;
    X[1] ^= *RK++;
    X[2] ^= *RK++;
    X[3] ^= *RK++;
    while( NR ) {
        --NR;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;
        camellia_feistel( X, RK, X + 2 );
        RK += 2;
        camellia_feistel( X + 2, RK, X );
        RK += 2;
        if( NR ) {
            { (X[1]) = ((((X[0]) & (RK[0])) << 1) | (((X[0]) & (RK[0])) >> 31)) ^ (X[1]); (X[0]) = ((X[1]) | (RK[1])) ^ (X[0]); };
            RK += 2;
            { (X[2]) = ((X[3]) | (RK[1])) ^ (X[2]); (X[3]) = ((((X[2]) & (RK[0])) << 1) | (((X[2]) & (RK[0])) >> 31)) ^ (X[3]); };
            RK += 2;
        }
    }
    X[2] ^= *RK++;
    X[3] ^= *RK++;
    X[0] ^= *RK++;
    X[1] ^= *RK++;
    { (output)[(0) ] = (unsigned char) ( (X[2]) >> 24 ); (output)[(0) + 1] = (unsigned char) ( (X[2]) >> 16 ); (output)[(0) + 2] = (unsigned char) ( (X[2]) >> 8 ); (output)[(0) + 3] = (unsigned char) ( (X[2]) ); };
    { (output)[(4) ] = (unsigned char) ( (X[3]) >> 24 ); (output)[(4) + 1] = (unsigned char) ( (X[3]) >> 16 ); (output)[(4) + 2] = (unsigned char) ( (X[3]) >> 8 ); (output)[(4) + 3] = (unsigned char) ( (X[3]) ); };
    { (output)[(8) ] = (unsigned char) ( (X[0]) >> 24 ); (output)[(8) + 1] = (unsigned char) ( (X[0]) >> 16 ); (output)[(8) + 2] = (unsigned char) ( (X[0]) >> 8 ); (output)[(8) + 3] = (unsigned char) ( (X[0]) ); };
    { (output)[(12) ] = (unsigned char) ( (X[1]) >> 24 ); (output)[(12) + 1] = (unsigned char) ( (X[1]) >> 16 ); (output)[(12) + 2] = (unsigned char) ( (X[1]) >> 8 ); (output)[(12) + 3] = (unsigned char) ( (X[1]) ); };
    return( 0 );
}
int mbedtls_camellia_crypt_cbc( mbedtls_camellia_context *ctx,
                                int mode,
                                size_t length,
                                unsigned char iv[16],
                                const unsigned char *input,
                                unsigned char *output )
{
    int i;
    unsigned char temp[16];
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( length % 16 )
        return( -0x0026 );
    if( mode == 0 )
    {
        while( length > 0 )
        {
            memcpy( temp, input, 16 );
            mbedtls_camellia_crypt_ecb( ctx, mode, input, output );
            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( output[i] ^ iv[i] );
            memcpy( iv, temp, 16 );
            input += 16;
            output += 16;
            length -= 16;
        }
    }
    else
    {
        while( length > 0 )
        {
            for( i = 0; i < 16; i++ )
                output[i] = (unsigned char)( input[i] ^ iv[i] );
            mbedtls_camellia_crypt_ecb( ctx, mode, output, output );
            memcpy( iv, output, 16 );
            input += 16;
            output += 16;
            length -= 16;
        }
    }
    return( 0 );
}
int mbedtls_camellia_crypt_cfb128( mbedtls_camellia_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int c;
    size_t n;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    n = *iv_off;
    if( n >= 16 )
        return( -0x0024 );
    if( mode == 0 )
    {
        while( length-- )
        {
            if( n == 0 )
                mbedtls_camellia_crypt_ecb( ctx, 1, iv, iv );
            c = *input++;
            *output++ = (unsigned char)( c ^ iv[n] );
            iv[n] = (unsigned char) c;
            n = ( n + 1 ) & 0x0F;
        }
    }
    else
    {
        while( length-- )
        {
            if( n == 0 )
                mbedtls_camellia_crypt_ecb( ctx, 1, iv, iv );
            iv[n] = *output++ = (unsigned char)( iv[n] ^ *input++ );
            n = ( n + 1 ) & 0x0F;
        }
    }
    *iv_off = n;
    return( 0 );
}
int mbedtls_camellia_crypt_ctr( mbedtls_camellia_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output )
{
    int c, i;
    size_t n;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    n = *nc_off;
    if( n >= 16 )
        return( -0x0024 );
    while( length-- )
    {
        if( n == 0 ) {
            mbedtls_camellia_crypt_ecb( ctx, 1, nonce_counter,
                                stream_block );
            for( i = 16; i > 0; i-- )
                if( ++nonce_counter[i - 1] != 0 )
                    break;
        }
        c = *input++;
        *output++ = (unsigned char)( c ^ stream_block[n] );
        n = ( n + 1 ) & 0x0F;
    }
    *nc_off = n;
    return( 0 );
}
static const unsigned char camellia_test_ecb_key[3][2][32] =
{
    {
        { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef,
          0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x32, 0x10 },
        { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
    },
    {
        { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef,
          0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x32, 0x10,
          0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77 },
        { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
    },
    {
        { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef,
          0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x32, 0x10,
          0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
          0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff },
        { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
    },
};
static const unsigned char camellia_test_ecb_plain[2][16] =
{
    { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef,
      0xfe, 0xdc, 0xba, 0x98, 0x76, 0x54, 0x32, 0x10 },
    { 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
};
static const unsigned char camellia_test_ecb_cipher[3][2][16] =
{
    {
        { 0x67, 0x67, 0x31, 0x38, 0x54, 0x96, 0x69, 0x73,
          0x08, 0x57, 0x06, 0x56, 0x48, 0xea, 0xbe, 0x43 },
        { 0x38, 0x3C, 0x6C, 0x2A, 0xAB, 0xEF, 0x7F, 0xDE,
          0x25, 0xCD, 0x47, 0x0B, 0xF7, 0x74, 0xA3, 0x31 }
    },
    {
        { 0xb4, 0x99, 0x34, 0x01, 0xb3, 0xe9, 0x96, 0xf8,
          0x4e, 0xe5, 0xce, 0xe7, 0xd7, 0x9b, 0x09, 0xb9 },
        { 0xD1, 0x76, 0x3F, 0xC0, 0x19, 0xD7, 0x7C, 0xC9,
          0x30, 0xBF, 0xF2, 0xA5, 0x6F, 0x7C, 0x93, 0x64 }
    },
    {
        { 0x9a, 0xcc, 0x23, 0x7d, 0xff, 0x16, 0xd7, 0x6c,
          0x20, 0xef, 0x7c, 0x91, 0x9e, 0x3a, 0x75, 0x09 },
        { 0x05, 0x03, 0xFB, 0x10, 0xAB, 0x24, 0x1E, 0x7C,
          0xF4, 0x5D, 0x8C, 0xDE, 0xEE, 0x47, 0x43, 0x35 }
    }
};
static const unsigned char camellia_test_cbc_key[3][32] =
{
        { 0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6,
          0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C }
    ,
        { 0x8E, 0x73, 0xB0, 0xF7, 0xDA, 0x0E, 0x64, 0x52,
          0xC8, 0x10, 0xF3, 0x2B, 0x80, 0x90, 0x79, 0xE5,
          0x62, 0xF8, 0xEA, 0xD2, 0x52, 0x2C, 0x6B, 0x7B }
    ,
        { 0x60, 0x3D, 0xEB, 0x10, 0x15, 0xCA, 0x71, 0xBE,
          0x2B, 0x73, 0xAE, 0xF0, 0x85, 0x7D, 0x77, 0x81,
          0x1F, 0x35, 0x2C, 0x07, 0x3B, 0x61, 0x08, 0xD7,
          0x2D, 0x98, 0x10, 0xA3, 0x09, 0x14, 0xDF, 0xF4 }
};
static const unsigned char camellia_test_cbc_iv[16] =
    { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F }
;
static const unsigned char camellia_test_cbc_plain[3][16] =
{
    { 0x6B, 0xC1, 0xBE, 0xE2, 0x2E, 0x40, 0x9F, 0x96,
      0xE9, 0x3D, 0x7E, 0x11, 0x73, 0x93, 0x17, 0x2A },
    { 0xAE, 0x2D, 0x8A, 0x57, 0x1E, 0x03, 0xAC, 0x9C,
      0x9E, 0xB7, 0x6F, 0xAC, 0x45, 0xAF, 0x8E, 0x51 },
    { 0x30, 0xC8, 0x1C, 0x46, 0xA3, 0x5C, 0xE4, 0x11,
      0xE5, 0xFB, 0xC1, 0x19, 0x1A, 0x0A, 0x52, 0xEF }
};
static const unsigned char camellia_test_cbc_cipher[3][3][16] =
{
    {
        { 0x16, 0x07, 0xCF, 0x49, 0x4B, 0x36, 0xBB, 0xF0,
          0x0D, 0xAE, 0xB0, 0xB5, 0x03, 0xC8, 0x31, 0xAB },
        { 0xA2, 0xF2, 0xCF, 0x67, 0x16, 0x29, 0xEF, 0x78,
          0x40, 0xC5, 0xA5, 0xDF, 0xB5, 0x07, 0x48, 0x87 },
        { 0x0F, 0x06, 0x16, 0x50, 0x08, 0xCF, 0x8B, 0x8B,
          0x5A, 0x63, 0x58, 0x63, 0x62, 0x54, 0x3E, 0x54 }
    },
    {
        { 0x2A, 0x48, 0x30, 0xAB, 0x5A, 0xC4, 0xA1, 0xA2,
          0x40, 0x59, 0x55, 0xFD, 0x21, 0x95, 0xCF, 0x93 },
        { 0x5D, 0x5A, 0x86, 0x9B, 0xD1, 0x4C, 0xE5, 0x42,
          0x64, 0xF8, 0x92, 0xA6, 0xDD, 0x2E, 0xC3, 0xD5 },
        { 0x37, 0xD3, 0x59, 0xC3, 0x34, 0x98, 0x36, 0xD8,
          0x84, 0xE3, 0x10, 0xAD, 0xDF, 0x68, 0xC4, 0x49 }
    },
    {
        { 0xE6, 0xCF, 0xA3, 0x5F, 0xC0, 0x2B, 0x13, 0x4A,
          0x4D, 0x2C, 0x0B, 0x67, 0x37, 0xAC, 0x3E, 0xDA },
        { 0x36, 0xCB, 0xEB, 0x73, 0xBD, 0x50, 0x4B, 0x40,
          0x70, 0xB1, 0xB7, 0xDE, 0x2B, 0x21, 0xEB, 0x50 },
        { 0xE3, 0x1A, 0x60, 0x55, 0x29, 0x7D, 0x96, 0xCA,
          0x33, 0x30, 0xCD, 0xF1, 0xB1, 0x86, 0x0A, 0x83 }
    }
};
static const unsigned char camellia_test_ctr_key[3][16] =
{
    { 0xAE, 0x68, 0x52, 0xF8, 0x12, 0x10, 0x67, 0xCC,
      0x4B, 0xF7, 0xA5, 0x76, 0x55, 0x77, 0xF3, 0x9E },
    { 0x7E, 0x24, 0x06, 0x78, 0x17, 0xFA, 0xE0, 0xD7,
      0x43, 0xD6, 0xCE, 0x1F, 0x32, 0x53, 0x91, 0x63 },
    { 0x76, 0x91, 0xBE, 0x03, 0x5E, 0x50, 0x20, 0xA8,
      0xAC, 0x6E, 0x61, 0x85, 0x29, 0xF9, 0xA0, 0xDC }
};
static const unsigned char camellia_test_ctr_nonce_counter[3][16] =
{
    { 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00,
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01 },
    { 0x00, 0x6C, 0xB6, 0xDB, 0xC0, 0x54, 0x3B, 0x59,
      0xDA, 0x48, 0xD9, 0x0B, 0x00, 0x00, 0x00, 0x01 },
    { 0x00, 0xE0, 0x01, 0x7B, 0x27, 0x77, 0x7F, 0x3F,
      0x4A, 0x17, 0x86, 0xF0, 0x00, 0x00, 0x00, 0x01 }
};
static const unsigned char camellia_test_ctr_pt[3][48] =
{
    { 0x53, 0x69, 0x6E, 0x67, 0x6C, 0x65, 0x20, 0x62,
      0x6C, 0x6F, 0x63, 0x6B, 0x20, 0x6D, 0x73, 0x67 },
    { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
      0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
      0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F },
    { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
      0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
      0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
      0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
      0x20, 0x21, 0x22, 0x23 }
};
static const unsigned char camellia_test_ctr_ct[3][48] =
{
    { 0xD0, 0x9D, 0xC2, 0x9A, 0x82, 0x14, 0x61, 0x9A,
      0x20, 0x87, 0x7C, 0x76, 0xDB, 0x1F, 0x0B, 0x3F },
    { 0xDB, 0xF3, 0xC7, 0x8D, 0xC0, 0x83, 0x96, 0xD4,
      0xDA, 0x7C, 0x90, 0x77, 0x65, 0xBB, 0xCB, 0x44,
      0x2B, 0x8E, 0x8E, 0x0F, 0x31, 0xF0, 0xDC, 0xA7,
      0x2C, 0x74, 0x17, 0xE3, 0x53, 0x60, 0xE0, 0x48 },
    { 0xB1, 0x9D, 0x1F, 0xCD, 0xCB, 0x75, 0xEB, 0x88,
      0x2F, 0x84, 0x9C, 0xE2, 0x4D, 0x85, 0xCF, 0x73,
      0x9C, 0xE6, 0x4B, 0x2B, 0x5C, 0x9D, 0x73, 0xF1,
      0x4F, 0x2D, 0x5D, 0x9D, 0xCE, 0x98, 0x89, 0xCD,
      0xDF, 0x50, 0x86, 0x96 }
};
static const int camellia_test_ctr_len[3] =
    { 16, 32, 36 };
int mbedtls_camellia_self_test( int verbose )
{
    int i, j, u, v;
    unsigned char key[32];
    unsigned char buf[64];
    unsigned char src[16];
    unsigned char dst[16];
    unsigned char iv[16];
    size_t offset, len;
    unsigned char nonce_counter[16];
    unsigned char stream_block[16];
    mbedtls_camellia_context ctx;
    memset( key, 0, 32 );
    for( j = 0; j < 6; j++ ) {
        u = j >> 1;
    v = j & 1;
    if( verbose != 0 )
        printf( "  CAMELLIA-ECB-%3d (%s): ", 128 + u * 64,
                         (v == 0) ? "dec" : "enc");
    for( i = 0; i < 2; i++ ) {
        memcpy( key, camellia_test_ecb_key[u][i], 16 + 8 * u );
        if( v == 0 ) {
            mbedtls_camellia_setkey_dec( &ctx, key, 128 + u * 64 );
            memcpy( src, camellia_test_ecb_cipher[u][i], 16 );
            memcpy( dst, camellia_test_ecb_plain[i], 16 );
        } else {
            mbedtls_camellia_setkey_enc( &ctx, key, 128 + u * 64 );
            memcpy( src, camellia_test_ecb_plain[i], 16 );
            memcpy( dst, camellia_test_ecb_cipher[u][i], 16 );
        }
        mbedtls_camellia_crypt_ecb( &ctx, v, src, buf );
        if( memcmp( buf, dst, 16 ) != 0 )
        {
            if( verbose != 0 )
                printf( "failed\n" );
            return( 1 );
        }
    }
    if( verbose != 0 )
        printf( "passed\n" );
    }
    if( verbose != 0 )
        printf( "\n" );
    for( j = 0; j < 6; j++ )
    {
        u = j >> 1;
        v = j & 1;
        if( verbose != 0 )
            printf( "  CAMELLIA-CBC-%3d (%s): ", 128 + u * 64,
                             ( v == 0 ) ? "dec" : "enc" );
        memcpy( src, camellia_test_cbc_iv, 16 );
        memcpy( dst, camellia_test_cbc_iv, 16 );
        memcpy( key, camellia_test_cbc_key[u], 16 + 8 * u );
        if( v == 0 ) {
            mbedtls_camellia_setkey_dec( &ctx, key, 128 + u * 64 );
        } else {
            mbedtls_camellia_setkey_enc( &ctx, key, 128 + u * 64 );
        }
        for( i = 0; i < 3; i++ ) {
            if( v == 0 ) {
                memcpy( iv , src, 16 );
                memcpy( src, camellia_test_cbc_cipher[u][i], 16 );
                memcpy( dst, camellia_test_cbc_plain[i], 16 );
            } else {
                memcpy( iv , dst, 16 );
                memcpy( src, camellia_test_cbc_plain[i], 16 );
                memcpy( dst, camellia_test_cbc_cipher[u][i], 16 );
            }
            mbedtls_camellia_crypt_cbc( &ctx, v, 16, iv, src, buf );
            if( memcmp( buf, dst, 16 ) != 0 )
            {
                if( verbose != 0 )
                    printf( "failed\n" );
                return( 1 );
            }
        }
        if( verbose != 0 )
            printf( "passed\n" );
    }
    if( verbose != 0 )
        printf( "\n" );
    for( i = 0; i < 6; i++ )
    {
        u = i >> 1;
        v = i & 1;
        if( verbose != 0 )
            printf( "  CAMELLIA-CTR-128 (%s): ",
                             ( v == 0 ) ? "dec" : "enc" );
        memcpy( nonce_counter, camellia_test_ctr_nonce_counter[u], 16 );
        memcpy( key, camellia_test_ctr_key[u], 16 );
        offset = 0;
        mbedtls_camellia_setkey_enc( &ctx, key, 128 );
        if( v == 0 )
        {
            len = camellia_test_ctr_len[u];
            memcpy( buf, camellia_test_ctr_ct[u], len );
            mbedtls_camellia_crypt_ctr( &ctx, len, &offset, nonce_counter, stream_block,
                                buf, buf );
            if( memcmp( buf, camellia_test_ctr_pt[u], len ) != 0 )
            {
                if( verbose != 0 )
                    printf( "failed\n" );
                return( 1 );
            }
        }
        else
        {
            len = camellia_test_ctr_len[u];
            memcpy( buf, camellia_test_ctr_pt[u], len );
            mbedtls_camellia_crypt_ctr( &ctx, len, &offset, nonce_counter, stream_block,
                                buf, buf );
            if( memcmp( buf, camellia_test_ctr_ct[u], len ) != 0 )
            {
                if( verbose != 0 )
                    printf( "failed\n" );
                return( 1 );
            }
        }
        if( verbose != 0 )
            printf( "passed\n" );
    }
    if( verbose != 0 )
        printf( "\n" );
    return( 0 );
}
