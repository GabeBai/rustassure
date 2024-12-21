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
static void mbedtls_mpi_zeroize( mbedtls_mpi_uint *v, size_t n )
{
    mbedtls_platform_zeroize( v, (sizeof(mbedtls_mpi_uint)) * n );
}
void mbedtls_mpi_init( mbedtls_mpi *X )
{
    do { } while( 0 );
    X->s = 1;
    X->n = 0;
    X->p = ((void*)0);
}
void mbedtls_mpi_free( mbedtls_mpi *X )
{
    if( X == ((void*)0) )
        return;
    if( X->p != ((void*)0) )
    {
        mbedtls_mpi_zeroize( X->p, X->n );
        free( X->p );
    }
    X->s = 1;
    X->n = 0;
    X->p = ((void*)0);
}
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;
    do { } while( 0 );
    if( nblimbs > 10000 )
        return( -0x0010 );
    if( X->n < nblimbs )
    {
        if( ( p = (mbedtls_mpi_uint*)calloc( nblimbs, (sizeof(mbedtls_mpi_uint)) ) ) == ((void*)0) )
            return( -0x0010 );
        if( X->p != ((void*)0) )
        {
            memcpy( p, X->p, X->n * (sizeof(mbedtls_mpi_uint)) );
            mbedtls_mpi_zeroize( X->p, X->n );
            free( X->p );
        }
        X->n = nblimbs;
        X->p = p;
    }
    return( 0 );
}
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs )
{
    mbedtls_mpi_uint *p;
    size_t i;
    do { } while( 0 );
    if( nblimbs > 10000 )
        return( -0x0010 );
    if( X->n <= nblimbs )
        return( mbedtls_mpi_grow( X, nblimbs ) );
    for( i = X->n - 1; i > 0; i-- )
        if( X->p[i] != 0 )
            break;
    i++;
    if( i < nblimbs )
        i = nblimbs;
    if( ( p = (mbedtls_mpi_uint*)calloc( i, (sizeof(mbedtls_mpi_uint)) ) ) == ((void*)0) )
        return( -0x0010 );
    if( X->p != ((void*)0) )
    {
        memcpy( p, X->p, i * (sizeof(mbedtls_mpi_uint)) );
        mbedtls_mpi_zeroize( X->p, X->n );
        free( X->p );
    }
    X->n = i;
    X->p = p;
    return( 0 );
}
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y )
{
    int ret = 0;
    size_t i;
    do { } while( 0 );
    do { } while( 0 );
    if( X == Y )
        return( 0 );
    if( Y->n == 0 )
    {
        mbedtls_mpi_free( X );
        return( 0 );
    }
    for( i = Y->n - 1; i > 0; i-- )
        if( Y->p[i] != 0 )
            break;
    i++;
    X->s = Y->s;
    if( X->n < i )
    {
        do { if( ( ret = (mbedtls_mpi_grow( X, i )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else
    {
        memset( X->p + i, 0, ( X->n - i ) * (sizeof(mbedtls_mpi_uint)) );
    }
    memcpy( X->p, Y->p, i * (sizeof(mbedtls_mpi_uint)) );
cleanup:
    return( ret );
}
void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y )
{
    mbedtls_mpi T;
    do { } while( 0 );
    do { } while( 0 );
    memcpy( &T, X, sizeof( mbedtls_mpi ) );
    memcpy( X, Y, sizeof( mbedtls_mpi ) );
    memcpy( Y, &T, sizeof( mbedtls_mpi ) );
}
static void mpi_safe_cond_assign( size_t n,
                                  mbedtls_mpi_uint *dest,
                                  const mbedtls_mpi_uint *src,
                                  unsigned char assign )
{
    size_t i;
    for( i = 0; i < n; i++ )
        dest[i] = dest[i] * ( 1 - assign ) + src[i] * assign;
}
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign )
{
    int ret = 0;
    size_t i;
    do { } while( 0 );
    do { } while( 0 );
    assign = (assign | (unsigned char)-assign) >> 7;
    do { if( ( ret = (mbedtls_mpi_grow( X, Y->n )) ) != 0 ) goto cleanup; } while( 0 );
    X->s = X->s * ( 1 - assign ) + Y->s * assign;
    mpi_safe_cond_assign( Y->n, X->p, Y->p, assign );
    for( i = Y->n; i < X->n; i++ )
        X->p[i] *= ( 1 - assign );
cleanup:
    return( ret );
}
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char swap )
{
    int ret, s;
    size_t i;
    mbedtls_mpi_uint tmp;
    do { } while( 0 );
    do { } while( 0 );
    if( X == Y )
        return( 0 );
    swap = (swap | (unsigned char)-swap) >> 7;
    do { if( ( ret = (mbedtls_mpi_grow( X, Y->n )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_grow( Y, X->n )) ) != 0 ) goto cleanup; } while( 0 );
    s = X->s;
    X->s = X->s * ( 1 - swap ) + Y->s * swap;
    Y->s = Y->s * ( 1 - swap ) + s * swap;
    for( i = 0; i < X->n; i++ )
    {
        tmp = X->p[i];
        X->p[i] = X->p[i] * ( 1 - swap ) + Y->p[i] * swap;
        Y->p[i] = Y->p[i] * ( 1 - swap ) + tmp * swap;
    }
cleanup:
    return( ret );
}
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { if( ( ret = (mbedtls_mpi_grow( X, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    memset( X->p, 0, X->n * (sizeof(mbedtls_mpi_uint)) );
    X->p[0] = ( z < 0 ) ? -z : z;
    X->s = ( z < 0 ) ? -1 : 1;
cleanup:
    return( ret );
}
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos )
{
    do { } while( 0 );
    if( X->n * ((sizeof(mbedtls_mpi_uint)) << 3) <= pos )
        return( 0 );
    return( ( X->p[pos / ((sizeof(mbedtls_mpi_uint)) << 3)] >> ( pos % ((sizeof(mbedtls_mpi_uint)) << 3) ) ) & 0x01 );
}
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val )
{
    int ret = 0;
    size_t off = pos / ((sizeof(mbedtls_mpi_uint)) << 3);
    size_t idx = pos % ((sizeof(mbedtls_mpi_uint)) << 3);
    do { } while( 0 );
    if( val != 0 && val != 1 )
        return( -0x0004 );
    if( X->n * ((sizeof(mbedtls_mpi_uint)) << 3) <= pos )
    {
        if( val == 0 )
            return( 0 );
        do { if( ( ret = (mbedtls_mpi_grow( X, off + 1 )) ) != 0 ) goto cleanup; } while( 0 );
    }
    X->p[off] &= ~( (mbedtls_mpi_uint) 0x01 << idx );
    X->p[off] |= (mbedtls_mpi_uint) val << idx;
cleanup:
    return( ret );
}
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X )
{
    size_t i, j, count = 0;
    do { } while( 0 );
    for( i = 0; i < X->n; i++ )
        for( j = 0; j < ((sizeof(mbedtls_mpi_uint)) << 3); j++, count++ )
            if( ( ( X->p[i] >> j ) & 1 ) != 0 )
                return( count );
    return( 0 );
}
static size_t mbedtls_clz( const mbedtls_mpi_uint x )
{
    size_t j;
    mbedtls_mpi_uint mask = (mbedtls_mpi_uint) 1 << (((sizeof(mbedtls_mpi_uint)) << 3) - 1);
    for( j = 0; j < ((sizeof(mbedtls_mpi_uint)) << 3); j++ )
    {
        if( x & mask ) break;
        mask >>= 1;
    }
    return j;
}
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X )
{
    size_t i, j;
    if( X->n == 0 )
        return( 0 );
    for( i = X->n - 1; i > 0; i-- )
        if( X->p[i] != 0 )
            break;
    j = ((sizeof(mbedtls_mpi_uint)) << 3) - mbedtls_clz( X->p[i] );
    return( ( i * ((sizeof(mbedtls_mpi_uint)) << 3) ) + j );
}
size_t mbedtls_mpi_size( const mbedtls_mpi *X )
{
    return( ( mbedtls_mpi_bitlen( X ) + 7 ) >> 3 );
}
static int mpi_get_digit( mbedtls_mpi_uint *d, int radix, char c )
{
    *d = 255;
    if( c >= 0x30 && c <= 0x39 ) *d = c - 0x30;
    if( c >= 0x41 && c <= 0x46 ) *d = c - 0x37;
    if( c >= 0x61 && c <= 0x66 ) *d = c - 0x57;
    if( *d >= (mbedtls_mpi_uint) radix )
        return( -0x0006 );
    return( 0 );
}
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s )
{
    int ret = -0x006E;
    size_t i, j, slen, n;
    mbedtls_mpi_uint d;
    mbedtls_mpi T;
    do { } while( 0 );
    do { } while( 0 );
    if( radix < 2 || radix > 16 )
        return( -0x0004 );
    mbedtls_mpi_init( &T );
    slen = strlen( s );
    if( radix == 16 )
    {
        if( slen > ( (size_t) -1 ) >> 2 )
            return( -0x0004 );
        n = ( (slen << 2) / ((sizeof(mbedtls_mpi_uint)) << 3) + ( (slen << 2) % ((sizeof(mbedtls_mpi_uint)) << 3) != 0 ) );
        do { if( ( ret = (mbedtls_mpi_grow( X, n )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        for( i = slen, j = 0; i > 0; i--, j++ )
        {
            if( i == 1 && s[i - 1] == '-' )
            {
                X->s = -1;
                break;
            }
            do { if( ( ret = (mpi_get_digit( &d, radix, s[i - 1] )) ) != 0 ) goto cleanup; } while( 0 );
            X->p[j / ( 2 * (sizeof(mbedtls_mpi_uint)) )] |= d << ( ( j % ( 2 * (sizeof(mbedtls_mpi_uint)) ) ) << 2 );
        }
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        for( i = 0; i < slen; i++ )
        {
            if( i == 0 && s[i] == '-' )
            {
                X->s = -1;
                continue;
            }
            do { if( ( ret = (mpi_get_digit( &d, radix, s[i] )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_mul_int( &T, X, radix )) ) != 0 ) goto cleanup; } while( 0 );
            if( X->s == 1 )
            {
                do { if( ( ret = (mbedtls_mpi_add_int( X, &T, d )) ) != 0 ) goto cleanup; } while( 0 );
            }
            else
            {
                do { if( ( ret = (mbedtls_mpi_sub_int( X, &T, d )) ) != 0 ) goto cleanup; } while( 0 );
            }
        }
    }
cleanup:
    mbedtls_mpi_free( &T );
    return( ret );
}
static int mpi_write_hlp( mbedtls_mpi *X, int radix,
                          char **p, const size_t buflen )
{
    int ret = -0x006E;
    mbedtls_mpi_uint r;
    size_t length = 0;
    char *p_end = *p + buflen;
    do
    {
        if( length >= buflen )
        {
            return( -0x0008 );
        }
        do { if( ( ret = (mbedtls_mpi_mod_int( &r, X, radix )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_div_int( X, ((void*)0), X, radix )) ) != 0 ) goto cleanup; } while( 0 );
        if( r < 0xA )
            *(--p_end) = (char)( '0' + r );
        else
            *(--p_end) = (char)( 'A' + ( r - 0xA ) );
        length++;
    } while( mbedtls_mpi_cmp_int( X, 0 ) != 0 );
    memmove( *p, p_end, length );
    *p += length;
cleanup:
    return( ret );
}
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen )
{
    int ret = 0;
    size_t n;
    char *p;
    mbedtls_mpi T;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( radix < 2 || radix > 16 )
        return( -0x0004 );
    n = mbedtls_mpi_bitlen( X );
    if( radix >= 4 ) n >>= 1;
    if( radix >= 16 ) n >>= 1;
    n += 1;
    n += 1;
    n += 1;
    n += ( n & 1 );
    if( buflen < n )
    {
        *olen = n;
        return( -0x0008 );
    }
    p = buf;
    mbedtls_mpi_init( &T );
    if( X->s == -1 )
    {
        *p++ = '-';
        buflen--;
    }
    if( radix == 16 )
    {
        int c;
        size_t i, j, k;
        for( i = X->n, k = 0; i > 0; i-- )
        {
            for( j = (sizeof(mbedtls_mpi_uint)); j > 0; j-- )
            {
                c = ( X->p[i - 1] >> ( ( j - 1 ) << 3) ) & 0xFF;
                if( c == 0 && k == 0 && ( i + j ) != 2 )
                    continue;
                *(p++) = "0123456789ABCDEF" [c / 16];
                *(p++) = "0123456789ABCDEF" [c % 16];
                k = 1;
            }
        }
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_copy( &T, X )) ) != 0 ) goto cleanup; } while( 0 );
        if( T.s == -1 )
            T.s = 1;
        do { if( ( ret = (mpi_write_hlp( &T, radix, &p, buflen )) ) != 0 ) goto cleanup; } while( 0 );
    }
    *p++ = '\0';
    *olen = p - buf;
cleanup:
    mbedtls_mpi_free( &T );
    return( ret );
}
int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin )
{
    mbedtls_mpi_uint d;
    size_t slen;
    char *p;
    char s[ ( ((( 100 * ( 8 * 1024 ) ) + 332 - 1) / 332) + 10 + 6 ) ];
    do { } while( 0 );
    do { } while( 0 );
    if( radix < 2 || radix > 16 )
        return( -0x0004 );
    memset( s, 0, sizeof( s ) );
    if( fgets( s, sizeof( s ) - 1, fin ) == ((void*)0) )
        return( -0x0002 );
    slen = strlen( s );
    if( slen == sizeof( s ) - 2 )
        return( -0x0008 );
    if( slen > 0 && s[slen - 1] == '\n' ) { slen--; s[slen] = '\0'; }
    if( slen > 0 && s[slen - 1] == '\r' ) { slen--; s[slen] = '\0'; }
    p = s + slen;
    while( p-- > s )
        if( mpi_get_digit( &d, radix, *p ) != 0 )
            break;
    return( mbedtls_mpi_read_string( X, radix, p + 1 ) );
}
int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X, int radix, FILE *fout )
{
    int ret = -0x006E;
    size_t n, slen, plen;
    char s[ ( ((( 100 * ( 8 * 1024 ) ) + 332 - 1) / 332) + 10 + 6 ) ];
    do { } while( 0 );
    if( radix < 2 || radix > 16 )
        return( -0x0004 );
    memset( s, 0, sizeof( s ) );
    do { if( ( ret = (mbedtls_mpi_write_string( X, radix, s, sizeof( s ) - 2, &n )) ) != 0 ) goto cleanup; } while( 0 );
    if( p == ((void*)0) ) p = "";
    plen = strlen( p );
    slen = strlen( s );
    s[slen++] = '\r';
    s[slen++] = '\n';
    if( fout != ((void*)0) )
    {
        if( fwrite( p, 1, plen, fout ) != plen ||
            fwrite( s, 1, slen, fout ) != slen )
            return( -0x0002 );
    }
    else
        printf( "%s%s", p, s );
cleanup:
    return( ret );
}
static mbedtls_mpi_uint mpi_uint_bigendian_to_host_c( mbedtls_mpi_uint x )
{
    uint8_t i;
    unsigned char *x_ptr;
    mbedtls_mpi_uint tmp = 0;
    for( i = 0, x_ptr = (unsigned char*) &x; i < (sizeof(mbedtls_mpi_uint)); i++, x_ptr++ )
    {
        tmp <<= 8;
        tmp |= (mbedtls_mpi_uint) *x_ptr;
    }
    return( tmp );
}
static mbedtls_mpi_uint mpi_uint_bigendian_to_host( mbedtls_mpi_uint x )
{
    switch( sizeof(mbedtls_mpi_uint) )
    {
        case 4:
            return( __builtin_bswap32(x) );
        case 8:
            return( __builtin_bswap64(x) );
    }
    return( mpi_uint_bigendian_to_host_c( x ) );
}
static void mpi_bigendian_to_host( mbedtls_mpi_uint * const p, size_t limbs )
{
    mbedtls_mpi_uint *cur_limb_left;
    mbedtls_mpi_uint *cur_limb_right;
    if( limbs == 0 )
        return;
    for( cur_limb_left = p, cur_limb_right = p + ( limbs - 1 );
         cur_limb_left <= cur_limb_right;
         cur_limb_left++, cur_limb_right-- )
    {
        mbedtls_mpi_uint tmp;
        tmp = mpi_uint_bigendian_to_host( *cur_limb_left );
        *cur_limb_left = mpi_uint_bigendian_to_host( *cur_limb_right );
        *cur_limb_right = tmp;
    }
}
int mbedtls_mpi_read_binary_le( mbedtls_mpi *X,
                                const unsigned char *buf, size_t buflen )
{
    int ret = -0x006E;
    size_t i;
    size_t const limbs = ( (buflen) / (sizeof(mbedtls_mpi_uint)) + ( (buflen) % (sizeof(mbedtls_mpi_uint)) != 0 ) );
    if( X->n != limbs )
    {
        mbedtls_mpi_free( X );
        mbedtls_mpi_init( X );
        do { if( ( ret = (mbedtls_mpi_grow( X, limbs )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = 0; i < buflen; i++ )
        X->p[i / (sizeof(mbedtls_mpi_uint))] |= ((mbedtls_mpi_uint) buf[i]) << ((i % (sizeof(mbedtls_mpi_uint))) << 3);
cleanup:
    return( ret );
}
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf, size_t buflen )
{
    int ret = -0x006E;
    size_t const limbs = ( (buflen) / (sizeof(mbedtls_mpi_uint)) + ( (buflen) % (sizeof(mbedtls_mpi_uint)) != 0 ) );
    size_t const overhead = ( limbs * (sizeof(mbedtls_mpi_uint)) ) - buflen;
    unsigned char *Xp;
    do { } while( 0 );
    do { } while( 0 );
    if( X->n != limbs )
    {
        mbedtls_mpi_free( X );
        mbedtls_mpi_init( X );
        do { if( ( ret = (mbedtls_mpi_grow( X, limbs )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    if( buf != ((void*)0) )
    {
        Xp = (unsigned char*) X->p;
        memcpy( Xp + overhead, buf, buflen );
        mpi_bigendian_to_host( X->p, limbs );
    }
cleanup:
    return( ret );
}
int mbedtls_mpi_write_binary_le( const mbedtls_mpi *X,
                                 unsigned char *buf, size_t buflen )
{
    size_t stored_bytes = X->n * (sizeof(mbedtls_mpi_uint));
    size_t bytes_to_copy;
    size_t i;
    if( stored_bytes < buflen )
    {
        bytes_to_copy = stored_bytes;
    }
    else
    {
        bytes_to_copy = buflen;
        for( i = bytes_to_copy; i < stored_bytes; i++ )
        {
            if( ( ( ( X )->p[( i ) / (sizeof(mbedtls_mpi_uint))] >> ( ( ( i ) % (sizeof(mbedtls_mpi_uint)) ) * 8 ) ) & 0xff ) != 0 )
                return( -0x0008 );
        }
    }
    for( i = 0; i < bytes_to_copy; i++ )
        buf[i] = ( ( ( X )->p[( i ) / (sizeof(mbedtls_mpi_uint))] >> ( ( ( i ) % (sizeof(mbedtls_mpi_uint)) ) * 8 ) ) & 0xff );
    if( stored_bytes < buflen )
    {
        memset( buf + stored_bytes, 0, buflen - stored_bytes );
    }
    return( 0 );
}
int mbedtls_mpi_write_binary( const mbedtls_mpi *X,
                              unsigned char *buf, size_t buflen )
{
    size_t stored_bytes;
    size_t bytes_to_copy;
    unsigned char *p;
    size_t i;
    do { } while( 0 );
    do { } while( 0 );
    stored_bytes = X->n * (sizeof(mbedtls_mpi_uint));
    if( stored_bytes < buflen )
    {
        bytes_to_copy = stored_bytes;
        p = buf + buflen - stored_bytes;
        memset( buf, 0, buflen - stored_bytes );
    }
    else
    {
        bytes_to_copy = buflen;
        p = buf;
        for( i = bytes_to_copy; i < stored_bytes; i++ )
        {
            if( ( ( ( X )->p[( i ) / (sizeof(mbedtls_mpi_uint))] >> ( ( ( i ) % (sizeof(mbedtls_mpi_uint)) ) * 8 ) ) & 0xff ) != 0 )
                return( -0x0008 );
        }
    }
    for( i = 0; i < bytes_to_copy; i++ )
        p[bytes_to_copy - i - 1] = ( ( ( X )->p[( i ) / (sizeof(mbedtls_mpi_uint))] >> ( ( ( i ) % (sizeof(mbedtls_mpi_uint)) ) * 8 ) ) & 0xff );
    return( 0 );
}
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count )
{
    int ret = -0x006E;
    size_t i, v0, t1;
    mbedtls_mpi_uint r0 = 0, r1;
    do { } while( 0 );
    v0 = count / (((sizeof(mbedtls_mpi_uint)) << 3) );
    t1 = count & (((sizeof(mbedtls_mpi_uint)) << 3) - 1);
    i = mbedtls_mpi_bitlen( X ) + count;
    if( X->n * ((sizeof(mbedtls_mpi_uint)) << 3) < i )
        do { if( ( ret = (mbedtls_mpi_grow( X, ( (i) / ((sizeof(mbedtls_mpi_uint)) << 3) + ( (i) % ((sizeof(mbedtls_mpi_uint)) << 3) != 0 ) ) )) ) != 0 ) goto cleanup; } while( 0 );
    ret = 0;
    if( v0 > 0 )
    {
        for( i = X->n; i > v0; i-- )
            X->p[i - 1] = X->p[i - v0 - 1];
        for( ; i > 0; i-- )
            X->p[i - 1] = 0;
    }
    if( t1 > 0 )
    {
        for( i = v0; i < X->n; i++ )
        {
            r1 = X->p[i] >> (((sizeof(mbedtls_mpi_uint)) << 3) - t1);
            X->p[i] <<= t1;
            X->p[i] |= r0;
            r0 = r1;
        }
    }
cleanup:
    return( ret );
}
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count )
{
    size_t i, v0, v1;
    mbedtls_mpi_uint r0 = 0, r1;
    do { } while( 0 );
    v0 = count / ((sizeof(mbedtls_mpi_uint)) << 3);
    v1 = count & (((sizeof(mbedtls_mpi_uint)) << 3) - 1);
    if( v0 > X->n || ( v0 == X->n && v1 > 0 ) )
        return mbedtls_mpi_lset( X, 0 );
    if( v0 > 0 )
    {
        for( i = 0; i < X->n - v0; i++ )
            X->p[i] = X->p[i + v0];
        for( ; i < X->n; i++ )
            X->p[i] = 0;
    }
    if( v1 > 0 )
    {
        for( i = X->n; i > 0; i-- )
        {
            r1 = X->p[i - 1] << (((sizeof(mbedtls_mpi_uint)) << 3) - v1);
            X->p[i - 1] >>= v1;
            X->p[i - 1] |= r0;
            r0 = r1;
        }
    }
    return( 0 );
}
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y )
{
    size_t i, j;
    do { } while( 0 );
    do { } while( 0 );
    for( i = X->n; i > 0; i-- )
        if( X->p[i - 1] != 0 )
            break;
    for( j = Y->n; j > 0; j-- )
        if( Y->p[j - 1] != 0 )
            break;
    if( i == 0 && j == 0 )
        return( 0 );
    if( i > j ) return( 1 );
    if( j > i ) return( -1 );
    for( ; i > 0; i-- )
    {
        if( X->p[i - 1] > Y->p[i - 1] ) return( 1 );
        if( X->p[i - 1] < Y->p[i - 1] ) return( -1 );
    }
    return( 0 );
}
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y )
{
    size_t i, j;
    do { } while( 0 );
    do { } while( 0 );
    for( i = X->n; i > 0; i-- )
        if( X->p[i - 1] != 0 )
            break;
    for( j = Y->n; j > 0; j-- )
        if( Y->p[j - 1] != 0 )
            break;
    if( i == 0 && j == 0 )
        return( 0 );
    if( i > j ) return( X->s );
    if( j > i ) return( -Y->s );
    if( X->s > 0 && Y->s < 0 ) return( 1 );
    if( Y->s > 0 && X->s < 0 ) return( -1 );
    for( ; i > 0; i-- )
    {
        if( X->p[i - 1] > Y->p[i - 1] ) return( X->s );
        if( X->p[i - 1] < Y->p[i - 1] ) return( -X->s );
    }
    return( 0 );
}
static unsigned ct_lt_mpi_uint( const mbedtls_mpi_uint x,
        const mbedtls_mpi_uint y )
{
    mbedtls_mpi_uint ret;
    mbedtls_mpi_uint cond;
    cond = ( x ^ y );
    ret = ( x - y ) & ~cond;
    ret |= y & cond;
    ret = ret >> ( ((sizeof(mbedtls_mpi_uint)) << 3) - 1 );
    return (unsigned) ret;
}
int mbedtls_mpi_lt_mpi_ct( const mbedtls_mpi *X, const mbedtls_mpi *Y,
        unsigned *ret )
{
    size_t i;
    unsigned cond, done, X_is_negative, Y_is_negative;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( X->n != Y->n )
        return -0x0004;
    X_is_negative = ( X->s & 2 ) >> 1;
    Y_is_negative = ( Y->s & 2 ) >> 1;
    cond = ( X_is_negative ^ Y_is_negative );
    *ret = cond & X_is_negative;
    done = cond;
    for( i = X->n; i > 0; i-- )
    {
        cond = ct_lt_mpi_uint( Y->p[i - 1], X->p[i - 1] );
        *ret |= cond & ( 1 - done ) & X_is_negative;
        done |= cond;
        cond = ct_lt_mpi_uint( X->p[i - 1], Y->p[i - 1] );
        *ret |= cond & ( 1 - done ) & ( 1 - X_is_negative );
        done |= cond;
    }
    return( 0 );
}
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z )
{
    mbedtls_mpi Y;
    mbedtls_mpi_uint p[1];
    do { } while( 0 );
    *p = ( z < 0 ) ? -z : z;
    Y.s = ( z < 0 ) ? -1 : 1;
    Y.n = 1;
    Y.p = p;
    return( mbedtls_mpi_cmp_mpi( X, &Y ) );
}
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret = -0x006E;
    size_t i, j;
    mbedtls_mpi_uint *o, *p, c, tmp;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( X == B )
    {
        const mbedtls_mpi *T = A; A = X; B = T;
    }
    if( X != A )
        do { if( ( ret = (mbedtls_mpi_copy( X, A )) ) != 0 ) goto cleanup; } while( 0 );
    X->s = 1;
    for( j = B->n; j > 0; j-- )
        if( B->p[j - 1] != 0 )
            break;
    do { if( ( ret = (mbedtls_mpi_grow( X, j )) ) != 0 ) goto cleanup; } while( 0 );
    o = B->p; p = X->p; c = 0;
    for( i = 0; i < j; i++, o++, p++ )
    {
        tmp= *o;
        *p += c; c = ( *p < c );
        *p += tmp; c += ( *p < tmp );
    }
    while( c != 0 )
    {
        if( i >= X->n )
        {
            do { if( ( ret = (mbedtls_mpi_grow( X, i + 1 )) ) != 0 ) goto cleanup; } while( 0 );
            p = X->p + i;
        }
        *p += c; c = ( *p < c ); i++; p++;
    }
cleanup:
    return( ret );
}
static mbedtls_mpi_uint mpi_sub_hlp( size_t n,
                                     mbedtls_mpi_uint *d,
                                     const mbedtls_mpi_uint *s )
{
    size_t i;
    mbedtls_mpi_uint c, z;
    for( i = c = 0; i < n; i++, s++, d++ )
    {
        z = ( *d < c ); *d -= c;
        c = ( *d < *s ) + z; *d -= *s;
    }
    return( c );
}
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    mbedtls_mpi TB;
    int ret = -0x006E;
    size_t n;
    mbedtls_mpi_uint carry;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_mpi_init( &TB );
    if( X == B )
    {
        do { if( ( ret = (mbedtls_mpi_copy( &TB, B )) ) != 0 ) goto cleanup; } while( 0 );
        B = &TB;
    }
    if( X != A )
        do { if( ( ret = (mbedtls_mpi_copy( X, A )) ) != 0 ) goto cleanup; } while( 0 );
    X->s = 1;
    ret = 0;
    for( n = B->n; n > 0; n-- )
        if( B->p[n - 1] != 0 )
            break;
    carry = mpi_sub_hlp( n, X->p, B->p );
    if( carry != 0 )
    {
        for( ; n < X->n && X->p[n] == 0; n++ )
            --X->p[n];
        if( n == X->n )
            return( -0x000A );
        --X->p[n];
    }
cleanup:
    mbedtls_mpi_free( &TB );
    return( ret );
}
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret, s;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    s = A->s;
    if( A->s * B->s < 0 )
    {
        if( mbedtls_mpi_cmp_abs( A, B ) >= 0 )
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
            X->s = s;
        }
        else
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( X, B, A )) ) != 0 ) goto cleanup; } while( 0 );
            X->s = -s;
        }
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_add_abs( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
        X->s = s;
    }
cleanup:
    return( ret );
}
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret, s;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    s = A->s;
    if( A->s * B->s > 0 )
    {
        if( mbedtls_mpi_cmp_abs( A, B ) >= 0 )
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
            X->s = s;
        }
        else
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( X, B, A )) ) != 0 ) goto cleanup; } while( 0 );
            X->s = -s;
        }
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_add_abs( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
        X->s = s;
    }
cleanup:
    return( ret );
}
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];
    do { } while( 0 );
    do { } while( 0 );
    p[0] = ( b < 0 ) ? -b : b;
    _B.s = ( b < 0 ) ? -1 : 1;
    _B.n = 1;
    _B.p = p;
    return( mbedtls_mpi_add_mpi( X, A, &_B ) );
}
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_sint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];
    do { } while( 0 );
    do { } while( 0 );
    p[0] = ( b < 0 ) ? -b : b;
    _B.s = ( b < 0 ) ? -1 : 1;
    _B.n = 1;
    _B.p = p;
    return( mbedtls_mpi_sub_mpi( X, A, &_B ) );
}
static
void mpi_mul_hlp( size_t i, mbedtls_mpi_uint *s, mbedtls_mpi_uint *d, mbedtls_mpi_uint b )
{
    mbedtls_mpi_uint c = 0, t = 0;
    for( ; i >= 16; i -= 16 )
    {
        __asm( "xorq   %%r8, %%r8\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        : "+c" (c), "+D" (d), "+S" (s) : "b" (b) : "rax", "rdx", "r8" );
    }
    for( ; i >= 8; i -= 8 )
    {
        __asm( "xorq   %%r8, %%r8\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n" "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        : "+c" (c), "+D" (d), "+S" (s) : "b" (b) : "rax", "rdx", "r8" );
    }
    for( ; i > 0; i-- )
    {
        __asm( "xorq   %%r8, %%r8\n"
        "movq   (%%rsi), %%rax\n" "mulq   %%rbx\n" "addq   $8, %%rsi\n" "addq   %%rcx, %%rax\n" "movq   %%r8, %%rcx\n" "adcq   $0, %%rdx\n" "nop    \n" "addq   %%rax, (%%rdi)\n" "adcq   %%rdx, %%rcx\n" "addq   $8, %%rdi\n"
        : "+c" (c), "+D" (d), "+S" (s) : "b" (b) : "rax", "rdx", "r8" );
    }
    t++;
    do {
        *d += c; c = ( *d < c ); d++;
    }
    while( c != 0 );
}
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret = -0x006E;
    size_t i, j;
    mbedtls_mpi TA, TB;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_mpi_init( &TA ); mbedtls_mpi_init( &TB );
    if( X == A ) { do { if( ( ret = (mbedtls_mpi_copy( &TA, A )) ) != 0 ) goto cleanup; } while( 0 ); A = &TA; }
    if( X == B ) { do { if( ( ret = (mbedtls_mpi_copy( &TB, B )) ) != 0 ) goto cleanup; } while( 0 ); B = &TB; }
    for( i = A->n; i > 0; i-- )
        if( A->p[i - 1] != 0 )
            break;
    for( j = B->n; j > 0; j-- )
        if( B->p[j - 1] != 0 )
            break;
    do { if( ( ret = (mbedtls_mpi_grow( X, i + j )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    for( ; j > 0; j-- )
        mpi_mul_hlp( i, A->p, X->p + j - 1, B->p[j - 1] );
    X->s = A->s * B->s;
cleanup:
    mbedtls_mpi_free( &TB ); mbedtls_mpi_free( &TA );
    return( ret );
}
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A, mbedtls_mpi_uint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];
    do { } while( 0 );
    do { } while( 0 );
    _B.s = 1;
    _B.n = 1;
    _B.p = p;
    p[0] = b;
    return( mbedtls_mpi_mul_mpi( X, A, &_B ) );
}
static mbedtls_mpi_uint mbedtls_int_div_int( mbedtls_mpi_uint u1,
            mbedtls_mpi_uint u0, mbedtls_mpi_uint d, mbedtls_mpi_uint *r )
{
    mbedtls_t_udbl dividend, quotient;
    if( 0 == d || u1 >= d )
    {
        if (r != ((void*)0)) *r = ~0;
        return ( ~0 );
    }
    dividend = (mbedtls_t_udbl) u1 << ((sizeof(mbedtls_mpi_uint)) << 3);
    dividend |= (mbedtls_t_udbl) u0;
    quotient = dividend / d;
    if( quotient > ( (mbedtls_t_udbl) 1 << ((sizeof(mbedtls_mpi_uint)) << 3) ) - 1 )
        quotient = ( (mbedtls_t_udbl) 1 << ((sizeof(mbedtls_mpi_uint)) << 3) ) - 1;
    if( r != ((void*)0) )
        *r = (mbedtls_mpi_uint)( dividend - (quotient * d ) );
    return (mbedtls_mpi_uint) quotient;
}
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B )
{
    int ret = -0x006E;
    size_t i, n, t, k;
    mbedtls_mpi X, Y, Z, T1, T2;
    mbedtls_mpi_uint TP2[3];
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_int( B, 0 ) == 0 )
        return( -0x000C );
    mbedtls_mpi_init( &X ); mbedtls_mpi_init( &Y ); mbedtls_mpi_init( &Z );
    mbedtls_mpi_init( &T1 );
    T2.s = 1;
    T2.n = sizeof( TP2 ) / sizeof( *TP2 );
    T2.p = TP2;
    if( mbedtls_mpi_cmp_abs( A, B ) < 0 )
    {
        if( Q != ((void*)0) ) do { if( ( ret = (mbedtls_mpi_lset( Q, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        if( R != ((void*)0) ) do { if( ( ret = (mbedtls_mpi_copy( R, A )) ) != 0 ) goto cleanup; } while( 0 );
        return( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_copy( &X, A )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &Y, B )) ) != 0 ) goto cleanup; } while( 0 );
    X.s = Y.s = 1;
    do { if( ( ret = (mbedtls_mpi_grow( &Z, A->n + 2 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &Z, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_grow( &T1, 2 )) ) != 0 ) goto cleanup; } while( 0 );
    k = mbedtls_mpi_bitlen( &Y ) % ((sizeof(mbedtls_mpi_uint)) << 3);
    if( k < ((sizeof(mbedtls_mpi_uint)) << 3) - 1 )
    {
        k = ((sizeof(mbedtls_mpi_uint)) << 3) - 1 - k;
        do { if( ( ret = (mbedtls_mpi_shift_l( &X, k )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shift_l( &Y, k )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else k = 0;
    n = X.n - 1;
    t = Y.n - 1;
    do { if( ( ret = (mbedtls_mpi_shift_l( &Y, ((sizeof(mbedtls_mpi_uint)) << 3) * ( n - t ) )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( &X, &Y ) >= 0 )
    {
        Z.p[n - t]++;
        do { if( ( ret = (mbedtls_mpi_sub_mpi( &X, &X, &Y )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_shift_r( &Y, ((sizeof(mbedtls_mpi_uint)) << 3) * ( n - t ) )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = n; i > t ; i-- )
    {
        if( X.p[i] >= Y.p[t] )
            Z.p[i - t - 1] = ~0;
        else
        {
            Z.p[i - t - 1] = mbedtls_int_div_int( X.p[i], X.p[i - 1],
                                                            Y.p[t], ((void*)0));
        }
        T2.p[0] = ( i < 2 ) ? 0 : X.p[i - 2];
        T2.p[1] = ( i < 1 ) ? 0 : X.p[i - 1];
        T2.p[2] = X.p[i];
        Z.p[i - t - 1]++;
        do
        {
            Z.p[i - t - 1]--;
            do { if( ( ret = (mbedtls_mpi_lset( &T1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
            T1.p[0] = ( t < 1 ) ? 0 : Y.p[t - 1];
            T1.p[1] = Y.p[t];
            do { if( ( ret = (mbedtls_mpi_mul_int( &T1, &T1, Z.p[i - t - 1] )) ) != 0 ) goto cleanup; } while( 0 );
        }
        while( mbedtls_mpi_cmp_mpi( &T1, &T2 ) > 0 );
        do { if( ( ret = (mbedtls_mpi_mul_int( &T1, &Y, Z.p[i - t - 1] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shift_l( &T1, ((sizeof(mbedtls_mpi_uint)) << 3) * ( i - t - 1 ) )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_mpi( &X, &X, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( &X, 0 ) < 0 )
        {
            do { if( ( ret = (mbedtls_mpi_copy( &T1, &Y )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_l( &T1, ((sizeof(mbedtls_mpi_uint)) << 3) * ( i - t - 1 ) )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_add_mpi( &X, &X, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
            Z.p[i - t - 1]--;
        }
    }
    if( Q != ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_copy( Q, &Z )) ) != 0 ) goto cleanup; } while( 0 );
        Q->s = A->s * B->s;
    }
    if( R != ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_shift_r( &X, k )) ) != 0 ) goto cleanup; } while( 0 );
        X.s = A->s;
        do { if( ( ret = (mbedtls_mpi_copy( R, &X )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( R, 0 ) == 0 )
            R->s = 1;
    }
cleanup:
    mbedtls_mpi_free( &X ); mbedtls_mpi_free( &Y ); mbedtls_mpi_free( &Z );
    mbedtls_mpi_free( &T1 );
    mbedtls_platform_zeroize( TP2, sizeof( TP2 ) );
    return( ret );
}
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R,
                         const mbedtls_mpi *A,
                         mbedtls_mpi_sint b )
{
    mbedtls_mpi _B;
    mbedtls_mpi_uint p[1];
    do { } while( 0 );
    p[0] = ( b < 0 ) ? -b : b;
    _B.s = ( b < 0 ) ? -1 : 1;
    _B.n = 1;
    _B.p = p;
    return( mbedtls_mpi_div_mpi( Q, R, A, &_B ) );
}
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_int( B, 0 ) < 0 )
        return( -0x000A );
    do { if( ( ret = (mbedtls_mpi_div_mpi( ((void*)0), R, A, B )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_int( R, 0 ) < 0 )
      do { if( ( ret = (mbedtls_mpi_add_mpi( R, R, B )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( R, B ) >= 0 )
      do { if( ( ret = (mbedtls_mpi_sub_mpi( R, R, B )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A, mbedtls_mpi_sint b )
{
    size_t i;
    mbedtls_mpi_uint x, y, z;
    do { } while( 0 );
    do { } while( 0 );
    if( b == 0 )
        return( -0x000C );
    if( b < 0 )
        return( -0x000A );
    if( b == 1 )
    {
        *r = 0;
        return( 0 );
    }
    if( b == 2 )
    {
        *r = A->p[0] & 1;
        return( 0 );
    }
    for( i = A->n, y = 0; i > 0; i-- )
    {
        x = A->p[i - 1];
        y = ( y << ((sizeof(mbedtls_mpi_uint)) << 2) ) | ( x >> ((sizeof(mbedtls_mpi_uint)) << 2) );
        z = y / b;
        y -= z * b;
        x <<= ((sizeof(mbedtls_mpi_uint)) << 2);
        y = ( y << ((sizeof(mbedtls_mpi_uint)) << 2) ) | ( x >> ((sizeof(mbedtls_mpi_uint)) << 2) );
        z = y / b;
        y -= z * b;
    }
    if( A->s < 0 && y != 0 )
        y = b - y;
    *r = y;
    return( 0 );
}
static void mpi_montg_init( mbedtls_mpi_uint *mm, const mbedtls_mpi *N )
{
    mbedtls_mpi_uint x, m0 = N->p[0];
    unsigned int i;
    x = m0;
    x += ( ( m0 + 2 ) & 4 ) << 1;
    for( i = ((sizeof(mbedtls_mpi_uint)) << 3); i >= 8; i /= 2 )
        x *= ( 2 - ( m0 * x ) );
    *mm = ~x + 1;
}
static void mpi_montmul( mbedtls_mpi *A, const mbedtls_mpi *B, const mbedtls_mpi *N, mbedtls_mpi_uint mm,
                         const mbedtls_mpi *T )
{
    size_t i, n, m;
    mbedtls_mpi_uint u0, u1, *d;
    memset( T->p, 0, T->n * (sizeof(mbedtls_mpi_uint)) );
    d = T->p;
    n = N->n;
    m = ( B->n < n ) ? B->n : n;
    for( i = 0; i < n; i++ )
    {
        u0 = A->p[i];
        u1 = ( d[0] + u0 * B->p[0] ) * mm;
        mpi_mul_hlp( m, B->p, d, u0 );
        mpi_mul_hlp( n, N->p, d, u1 );
        *d++ = u0; d[n + 1] = 0;
    }
    memcpy( A->p, d, n * (sizeof(mbedtls_mpi_uint)) );
    d[n] += 1;
    d[n] -= mpi_sub_hlp( n, d, N->p );
    mpi_safe_cond_assign( n, A->p, d, (unsigned char) d[n] );
}
static void mpi_montred( mbedtls_mpi *A, const mbedtls_mpi *N,
                         mbedtls_mpi_uint mm, const mbedtls_mpi *T )
{
    mbedtls_mpi_uint z = 1;
    mbedtls_mpi U;
    U.n = U.s = (int) z;
    U.p = &z;
    mpi_montmul( A, &U, N, mm, T );
}
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *E, const mbedtls_mpi *N,
                         mbedtls_mpi *_RR )
{
    int ret = -0x006E;
    size_t wbits, wsize, one = 1;
    size_t i, j, nblimbs;
    size_t bufsize, nbits;
    mbedtls_mpi_uint ei, mm, state;
    mbedtls_mpi RR, T, W[ 2 << 6 ], Apos;
    int neg;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_int( N, 0 ) <= 0 || ( N->p[0] & 1 ) == 0 )
        return( -0x0004 );
    if( mbedtls_mpi_cmp_int( E, 0 ) < 0 )
        return( -0x0004 );
    mpi_montg_init( &mm, N );
    mbedtls_mpi_init( &RR ); mbedtls_mpi_init( &T );
    mbedtls_mpi_init( &Apos );
    memset( W, 0, sizeof( W ) );
    i = mbedtls_mpi_bitlen( E );
    wsize = ( i > 671 ) ? 6 : ( i > 239 ) ? 5 :
            ( i > 79 ) ? 4 : ( i > 23 ) ? 3 : 1;
    j = N->n + 1;
    do { if( ( ret = (mbedtls_mpi_grow( X, j )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_grow( &W[1], j )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_grow( &T, j * 2 )) ) != 0 ) goto cleanup; } while( 0 );
    neg = ( A->s == -1 );
    if( neg )
    {
        do { if( ( ret = (mbedtls_mpi_copy( &Apos, A )) ) != 0 ) goto cleanup; } while( 0 );
        Apos.s = 1;
        A = &Apos;
    }
    if( _RR == ((void*)0) || _RR->p == ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_lset( &RR, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shift_l( &RR, N->n * 2 * ((sizeof(mbedtls_mpi_uint)) << 3) )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &RR, &RR, N )) ) != 0 ) goto cleanup; } while( 0 );
        if( _RR != ((void*)0) )
            memcpy( _RR, &RR, sizeof( mbedtls_mpi ) );
    }
    else
        memcpy( &RR, _RR, sizeof( mbedtls_mpi ) );
    if( mbedtls_mpi_cmp_mpi( A, N ) >= 0 )
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &W[1], A, N )) ) != 0 ) goto cleanup; } while( 0 );
    else
        do { if( ( ret = (mbedtls_mpi_copy( &W[1], A )) ) != 0 ) goto cleanup; } while( 0 );
    mpi_montmul( &W[1], &RR, N, mm, &T );
    do { if( ( ret = (mbedtls_mpi_copy( X, &RR )) ) != 0 ) goto cleanup; } while( 0 );
    mpi_montred( X, N, mm, &T );
    if( wsize > 1 )
    {
        j = one << ( wsize - 1 );
        do { if( ( ret = (mbedtls_mpi_grow( &W[j], N->n + 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_copy( &W[j], &W[1] )) ) != 0 ) goto cleanup; } while( 0 );
        for( i = 0; i < wsize - 1; i++ )
            mpi_montmul( &W[j], &W[j], N, mm, &T );
        for( i = j + 1; i < ( one << wsize ); i++ )
        {
            do { if( ( ret = (mbedtls_mpi_grow( &W[i], N->n + 1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_copy( &W[i], &W[i - 1] )) ) != 0 ) goto cleanup; } while( 0 );
            mpi_montmul( &W[i], &W[1], N, mm, &T );
        }
    }
    nblimbs = E->n;
    bufsize = 0;
    nbits = 0;
    wbits = 0;
    state = 0;
    while( 1 )
    {
        if( bufsize == 0 )
        {
            if( nblimbs == 0 )
                break;
            nblimbs--;
            bufsize = sizeof( mbedtls_mpi_uint ) << 3;
        }
        bufsize--;
        ei = (E->p[nblimbs] >> bufsize) & 1;
        if( ei == 0 && state == 0 )
            continue;
        if( ei == 0 && state == 1 )
        {
            mpi_montmul( X, X, N, mm, &T );
            continue;
        }
        state = 2;
        nbits++;
        wbits |= ( ei << ( wsize - nbits ) );
        if( nbits == wsize )
        {
            for( i = 0; i < wsize; i++ )
                mpi_montmul( X, X, N, mm, &T );
            mpi_montmul( X, &W[wbits], N, mm, &T );
            state--;
            nbits = 0;
            wbits = 0;
        }
    }
    for( i = 0; i < nbits; i++ )
    {
        mpi_montmul( X, X, N, mm, &T );
        wbits <<= 1;
        if( ( wbits & ( one << wsize ) ) != 0 )
            mpi_montmul( X, &W[1], N, mm, &T );
    }
    mpi_montred( X, N, mm, &T );
    if( neg && E->n != 0 && ( E->p[0] & 1 ) != 0 )
    {
        X->s = -1;
        do { if( ( ret = (mbedtls_mpi_add_mpi( X, N, X )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    for( i = ( one << ( wsize - 1 ) ); i < ( one << wsize ); i++ )
        mbedtls_mpi_free( &W[i] );
    mbedtls_mpi_free( &W[1] ); mbedtls_mpi_free( &T ); mbedtls_mpi_free( &Apos );
    if( _RR == ((void*)0) || _RR->p == ((void*)0) )
        mbedtls_mpi_free( &RR );
    return( ret );
}
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A, const mbedtls_mpi *B )
{
    int ret = -0x006E;
    size_t lz, lzt;
    mbedtls_mpi TA, TB;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_mpi_init( &TA ); mbedtls_mpi_init( &TB );
    do { if( ( ret = (mbedtls_mpi_copy( &TA, A )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &TB, B )) ) != 0 ) goto cleanup; } while( 0 );
    lz = mbedtls_mpi_lsb( &TA );
    lzt = mbedtls_mpi_lsb( &TB );
    if( lzt < lz )
        lz = lzt;
    do { if( ( ret = (mbedtls_mpi_shift_r( &TA, lz )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_r( &TB, lz )) ) != 0 ) goto cleanup; } while( 0 );
    TA.s = TB.s = 1;
    while( mbedtls_mpi_cmp_int( &TA, 0 ) != 0 )
    {
        do { if( ( ret = (mbedtls_mpi_shift_r( &TA, mbedtls_mpi_lsb( &TA ) )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shift_r( &TB, mbedtls_mpi_lsb( &TB ) )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_mpi( &TA, &TB ) >= 0 )
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( &TA, &TA, &TB )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( &TA, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else
        {
            do { if( ( ret = (mbedtls_mpi_sub_abs( &TB, &TB, &TA )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( &TB, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
    do { if( ( ret = (mbedtls_mpi_shift_l( &TB, lz )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( G, &TB )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &TA ); mbedtls_mpi_free( &TB );
    return( ret );
}
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret = -0x006E;
    size_t const limbs = ( (size) / (sizeof(mbedtls_mpi_uint)) + ( (size) % (sizeof(mbedtls_mpi_uint)) != 0 ) );
    size_t const overhead = ( limbs * (sizeof(mbedtls_mpi_uint)) ) - size;
    unsigned char *Xp;
    do { } while( 0 );
    do { } while( 0 );
    if( X->n != limbs )
    {
        mbedtls_mpi_free( X );
        mbedtls_mpi_init( X );
        do { if( ( ret = (mbedtls_mpi_grow( X, limbs )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_lset( X, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    Xp = (unsigned char*) X->p;
    f_rng( p_rng, Xp + overhead, size );
    mpi_bigendian_to_host( X->p, limbs );
cleanup:
    return( ret );
}
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A, const mbedtls_mpi *N )
{
    int ret = -0x006E;
    mbedtls_mpi G, TA, TU, U1, U2, TB, TV, V1, V2;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_int( N, 1 ) <= 0 )
        return( -0x0004 );
    mbedtls_mpi_init( &TA ); mbedtls_mpi_init( &TU ); mbedtls_mpi_init( &U1 ); mbedtls_mpi_init( &U2 );
    mbedtls_mpi_init( &G ); mbedtls_mpi_init( &TB ); mbedtls_mpi_init( &TV );
    mbedtls_mpi_init( &V1 ); mbedtls_mpi_init( &V2 );
    do { if( ( ret = (mbedtls_mpi_gcd( &G, A, N )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_int( &G, 1 ) != 0 )
    {
        ret = -0x000E;
        goto cleanup;
    }
    do { if( ( ret = (mbedtls_mpi_mod_mpi( &TA, A, N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &TU, &TA )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &TB, N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &TV, N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &U1, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &U2, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &V1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &V2, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do
    {
        while( ( TU.p[0] & 1 ) == 0 )
        {
            do { if( ( ret = (mbedtls_mpi_shift_r( &TU, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            if( ( U1.p[0] & 1 ) != 0 || ( U2.p[0] & 1 ) != 0 )
            {
                do { if( ( ret = (mbedtls_mpi_add_mpi( &U1, &U1, &TB )) ) != 0 ) goto cleanup; } while( 0 );
                do { if( ( ret = (mbedtls_mpi_sub_mpi( &U2, &U2, &TA )) ) != 0 ) goto cleanup; } while( 0 );
            }
            do { if( ( ret = (mbedtls_mpi_shift_r( &U1, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( &U2, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        }
        while( ( TV.p[0] & 1 ) == 0 )
        {
            do { if( ( ret = (mbedtls_mpi_shift_r( &TV, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            if( ( V1.p[0] & 1 ) != 0 || ( V2.p[0] & 1 ) != 0 )
            {
                do { if( ( ret = (mbedtls_mpi_add_mpi( &V1, &V1, &TB )) ) != 0 ) goto cleanup; } while( 0 );
                do { if( ( ret = (mbedtls_mpi_sub_mpi( &V2, &V2, &TA )) ) != 0 ) goto cleanup; } while( 0 );
            }
            do { if( ( ret = (mbedtls_mpi_shift_r( &V1, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( &V2, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        }
        if( mbedtls_mpi_cmp_mpi( &TU, &TV ) >= 0 )
        {
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &TU, &TU, &TV )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &U1, &U1, &V1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &U2, &U2, &V2 )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else
        {
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &TV, &TV, &TU )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &V1, &V1, &U1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &V2, &V2, &U2 )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
    while( mbedtls_mpi_cmp_int( &TU, 0 ) != 0 );
    while( mbedtls_mpi_cmp_int( &V1, 0 ) < 0 )
        do { if( ( ret = (mbedtls_mpi_add_mpi( &V1, &V1, N )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( &V1, N ) >= 0 )
        do { if( ( ret = (mbedtls_mpi_sub_mpi( &V1, &V1, N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( X, &V1 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &TA ); mbedtls_mpi_free( &TU ); mbedtls_mpi_free( &U1 ); mbedtls_mpi_free( &U2 );
    mbedtls_mpi_free( &G ); mbedtls_mpi_free( &TB ); mbedtls_mpi_free( &TV );
    mbedtls_mpi_free( &V1 ); mbedtls_mpi_free( &V2 );
    return( ret );
}
static const int small_prime[] =
{
        3, 5, 7, 11, 13, 17, 19, 23,
       29, 31, 37, 41, 43, 47, 53, 59,
       61, 67, 71, 73, 79, 83, 89, 97,
      101, 103, 107, 109, 113, 127, 131, 137,
      139, 149, 151, 157, 163, 167, 173, 179,
      181, 191, 193, 197, 199, 211, 223, 227,
      229, 233, 239, 241, 251, 257, 263, 269,
      271, 277, 281, 283, 293, 307, 311, 313,
      317, 331, 337, 347, 349, 353, 359, 367,
      373, 379, 383, 389, 397, 401, 409, 419,
      421, 431, 433, 439, 443, 449, 457, 461,
      463, 467, 479, 487, 491, 499, 503, 509,
      521, 523, 541, 547, 557, 563, 569, 571,
      577, 587, 593, 599, 601, 607, 613, 617,
      619, 631, 641, 643, 647, 653, 659, 661,
      673, 677, 683, 691, 701, 709, 719, 727,
      733, 739, 743, 751, 757, 761, 769, 773,
      787, 797, 809, 811, 821, 823, 827, 829,
      839, 853, 857, 859, 863, 877, 881, 883,
      887, 907, 911, 919, 929, 937, 941, 947,
      953, 967, 971, 977, 983, 991, 997, -103
};
static int mpi_check_small_factors( const mbedtls_mpi *X )
{
    int ret = 0;
    size_t i;
    mbedtls_mpi_uint r;
    if( ( X->p[0] & 1 ) == 0 )
        return( -0x000E );
    for( i = 0; small_prime[i] > 0; i++ )
    {
        if( mbedtls_mpi_cmp_int( X, small_prime[i] ) <= 0 )
            return( 1 );
        do { if( ( ret = (mbedtls_mpi_mod_int( &r, X, small_prime[i] )) ) != 0 ) goto cleanup; } while( 0 );
        if( r == 0 )
            return( -0x000E );
    }
cleanup:
    return( ret );
}
static int mpi_miller_rabin( const mbedtls_mpi *X, size_t rounds,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    int ret, count;
    size_t i, j, k, s;
    mbedtls_mpi W, R, T, A, RR;
    do { } while( 0 );
    do { } while( 0 );
    mbedtls_mpi_init( &W ); mbedtls_mpi_init( &R );
    mbedtls_mpi_init( &T ); mbedtls_mpi_init( &A );
    mbedtls_mpi_init( &RR );
    do { if( ( ret = (mbedtls_mpi_sub_int( &W, X, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    s = mbedtls_mpi_lsb( &W );
    do { if( ( ret = (mbedtls_mpi_copy( &R, &W )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_r( &R, s )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = 0; i < rounds; i++ )
    {
        count = 0;
        do {
            do { if( ( ret = (mbedtls_mpi_fill_random( &A, X->n * (sizeof(mbedtls_mpi_uint)), f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
            j = mbedtls_mpi_bitlen( &A );
            k = mbedtls_mpi_bitlen( &W );
            if (j > k) {
                A.p[A.n - 1] &= ( (mbedtls_mpi_uint) 1 << ( k - ( A.n - 1 ) * ((sizeof(mbedtls_mpi_uint)) << 3) - 1 ) ) - 1;
            }
            if (count++ > 30) {
                ret = -0x000E;
                goto cleanup;
            }
        } while ( mbedtls_mpi_cmp_mpi( &A, &W ) >= 0 ||
                  mbedtls_mpi_cmp_int( &A, 1 ) <= 0 );
        do { if( ( ret = (mbedtls_mpi_exp_mod( &A, &A, &R, X, &RR )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_mpi( &A, &W ) == 0 ||
            mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
            continue;
        j = 1;
        while( j < s && mbedtls_mpi_cmp_mpi( &A, &W ) != 0 )
        {
            do { if( ( ret = (mbedtls_mpi_mul_mpi( &T, &A, &A )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_mod_mpi( &A, &T, X )) ) != 0 ) goto cleanup; } while( 0 );
            if( mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
                break;
            j++;
        }
        if( mbedtls_mpi_cmp_mpi( &A, &W ) != 0 ||
            mbedtls_mpi_cmp_int( &A, 1 ) == 0 )
        {
            ret = -0x000E;
            break;
        }
    }
cleanup:
    mbedtls_mpi_free( &W ); mbedtls_mpi_free( &R );
    mbedtls_mpi_free( &T ); mbedtls_mpi_free( &A );
    mbedtls_mpi_free( &RR );
    return( ret );
}
int mbedtls_mpi_is_prime_ext( const mbedtls_mpi *X, int rounds,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng )
{
    int ret = -0x006E;
    mbedtls_mpi XX;
    do { } while( 0 );
    do { } while( 0 );
    XX.s = 1;
    XX.n = X->n;
    XX.p = X->p;
    if( mbedtls_mpi_cmp_int( &XX, 0 ) == 0 ||
        mbedtls_mpi_cmp_int( &XX, 1 ) == 0 )
        return( -0x000E );
    if( mbedtls_mpi_cmp_int( &XX, 2 ) == 0 )
        return( 0 );
    if( ( ret = mpi_check_small_factors( &XX ) ) != 0 )
    {
        if( ret == 1 )
            return( 0 );
        return( ret );
    }
    return( mpi_miller_rabin( &XX, rounds, f_rng, p_rng ) );
}
int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                  int (*f_rng)(void *, unsigned char *, size_t),
                  void *p_rng )
{
    do { } while( 0 );
    do { } while( 0 );
    return( mbedtls_mpi_is_prime_ext( X, 40, f_rng, p_rng ) );
}
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int flags,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng )
{
    int ret = -0x000E;
    size_t k, n;
    int rounds;
    mbedtls_mpi_uint r;
    mbedtls_mpi Y;
    do { } while( 0 );
    do { } while( 0 );
    if( nbits < 3 || nbits > ( 8 * 1024 ) )
        return( -0x0004 );
    mbedtls_mpi_init( &Y );
    n = ( (nbits) / ((sizeof(mbedtls_mpi_uint)) << 3) + ( (nbits) % ((sizeof(mbedtls_mpi_uint)) << 3) != 0 ) );
    if( ( flags & MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR ) == 0 )
    {
        rounds = ( ( nbits >= 1300 ) ? 2 : ( nbits >= 850 ) ? 3 :
                   ( nbits >= 650 ) ? 4 : ( nbits >= 350 ) ? 8 :
                   ( nbits >= 250 ) ? 12 : ( nbits >= 150 ) ? 18 : 27 );
    }
    else
    {
        rounds = ( ( nbits >= 1450 ) ? 4 : ( nbits >= 1150 ) ? 5 :
                   ( nbits >= 1000 ) ? 6 : ( nbits >= 850 ) ? 7 :
                   ( nbits >= 750 ) ? 8 : ( nbits >= 500 ) ? 13 :
                   ( nbits >= 250 ) ? 28 : ( nbits >= 150 ) ? 40 : 51 );
    }
    while( 1 )
    {
        do { if( ( ret = (mbedtls_mpi_fill_random( X, n * (sizeof(mbedtls_mpi_uint)), f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        if( X->p[n-1] < 0xb504f333f9de6485ULL ) continue;
        k = n * ((sizeof(mbedtls_mpi_uint)) << 3);
        if( k > nbits ) do { if( ( ret = (mbedtls_mpi_shift_r( X, k - nbits )) ) != 0 ) goto cleanup; } while( 0 );
        X->p[0] |= 1;
        if( ( flags & MBEDTLS_MPI_GEN_PRIME_FLAG_DH ) == 0 )
        {
            ret = mbedtls_mpi_is_prime_ext( X, rounds, f_rng, p_rng );
            if( ret != -0x000E )
                goto cleanup;
        }
        else
        {
            X->p[0] |= 2;
            do { if( ( ret = (mbedtls_mpi_mod_int( &r, X, 3 )) ) != 0 ) goto cleanup; } while( 0 );
            if( r == 0 )
                do { if( ( ret = (mbedtls_mpi_add_int( X, X, 8 )) ) != 0 ) goto cleanup; } while( 0 );
            else if( r == 1 )
                do { if( ( ret = (mbedtls_mpi_add_int( X, X, 4 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_copy( &Y, X )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( &Y, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            while( 1 )
            {
                if( ( ret = mpi_check_small_factors( X ) ) == 0 &&
                    ( ret = mpi_check_small_factors( &Y ) ) == 0 &&
                    ( ret = mpi_miller_rabin( X, rounds, f_rng, p_rng ) )
                                                                    == 0 &&
                    ( ret = mpi_miller_rabin( &Y, rounds, f_rng, p_rng ) )
                                                                    == 0 )
                    goto cleanup;
                if( ret != -0x000E )
                    goto cleanup;
                do { if( ( ret = (mbedtls_mpi_add_int( X, X, 12 )) ) != 0 ) goto cleanup; } while( 0 );
                do { if( ( ret = (mbedtls_mpi_add_int( &Y, &Y, 6 )) ) != 0 ) goto cleanup; } while( 0 );
            }
        }
    }
cleanup:
    mbedtls_mpi_free( &Y );
    return( ret );
}
static const int gcd_pairs[3][3] =
{
    { 693, 609, 21 },
    { 1764, 868, 28 },
    { 768454923, 542167814, 1 }
};
int mbedtls_mpi_self_test( int verbose )
{
    int ret, i;
    mbedtls_mpi A, E, N, X, Y, U, V;
    mbedtls_mpi_init( &A ); mbedtls_mpi_init( &E ); mbedtls_mpi_init( &N ); mbedtls_mpi_init( &X );
    mbedtls_mpi_init( &Y ); mbedtls_mpi_init( &U ); mbedtls_mpi_init( &V );
    do { if( ( ret = (mbedtls_mpi_read_string( &A, 16, "EFE021C2645FD1DC586E69184AF4A31E" "D5F53E93B5F123FA41680867BA110131" "944FE7952E2517337780CB0DB80E61AA" "E7C8DDC6C5C6AADEB34EB38A2F40D5E6" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &E, 16, "B2E7EFD37075B9F03FF989C7C5051C20" "34D2A323810251127E7BF8625A4F49A5" "F3E27F4DA8BD59C47D6DAABA4C8127BD" "5B5C25763222FEFCCFC38B832366C29E" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &N, 16, "0066A198186C18C10B2F5ED9B522752A" "9830B69916E535C8F047518A889A43A5" "94B6BED27A168D31D4A52F88925AA8F5" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &X, &A, &N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &U, 16, "602AB7ECA597A3D6B56FF9829A5E8B85" "9E857EA95A03512E2BAE7391688D264A" "A5663B0341DB9CCFD2C4C5F421FEC814" "8001B72E848A38CAE1C65F78E56ABDEF" "E12D3C039B8A02D6BE593F0BBBDA56F1" "ECF677152EF804370C1A305CAF3B5BF1" "30879B56C61DE584A0F53A2447A51E" )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  MPI test #1 (mul_mpi): " );
    if( mbedtls_mpi_cmp_mpi( &X, &U ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    do { if( ( ret = (mbedtls_mpi_div_mpi( &X, &Y, &A, &N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &U, 16, "256567336059E52CAE22925474705F39A94" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &V, 16, "6613F26162223DF488E9CD48CC132C7A" "0AC93C701B001B092E4E5B9F73BCD27B" "9EE50D0657C77F374E903CDFA4C642" )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  MPI test #2 (div_mpi): " );
    if( mbedtls_mpi_cmp_mpi( &X, &U ) != 0 ||
        mbedtls_mpi_cmp_mpi( &Y, &V ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    do { if( ( ret = (mbedtls_mpi_exp_mod( &X, &A, &E, &N, ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &U, 16, "36E139AEA55215609D2816998ED020BB" "BD96C37890F65171D948E9BC7CBAA4D9" "325D24D6A3C12710F10A09FA08AB87" )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  MPI test #3 (exp_mod): " );
    if( mbedtls_mpi_cmp_mpi( &X, &U ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    do { if( ( ret = (mbedtls_mpi_inv_mod( &X, &A, &N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &U, 16, "003A0AAEDD7E784FC07D8F9EC6E3BFD5" "C3DBA76456363A10869622EAC2DD84EC" "C5B8A74DAC4D09E03B5E0BE779F2DF61" )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  MPI test #4 (inv_mod): " );
    if( mbedtls_mpi_cmp_mpi( &X, &U ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    if( verbose != 0 )
        printf( "  MPI test #5 (simple gcd): " );
    for( i = 0; i < 3; i++ )
    {
        do { if( ( ret = (mbedtls_mpi_lset( &X, gcd_pairs[i][0] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_lset( &Y, gcd_pairs[i][1] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_gcd( &A, &X, &Y )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( &A, gcd_pairs[i][2] ) != 0 )
        {
            if( verbose != 0 )
                printf( "failed at %d\n", i );
            ret = 1;
            goto cleanup;
        }
    }
    if( verbose != 0 )
        printf( "passed\n" );
cleanup:
    if( ret != 0 && verbose != 0 )
        printf( "Unexpected error, return code = %08X\n", (unsigned int) ret );
    mbedtls_mpi_free( &A ); mbedtls_mpi_free( &E ); mbedtls_mpi_free( &N ); mbedtls_mpi_free( &X );
    mbedtls_mpi_free( &Y ); mbedtls_mpi_free( &U ); mbedtls_mpi_free( &V );
    if( verbose != 0 )
        printf( "\n" );
    return( ret );
}
