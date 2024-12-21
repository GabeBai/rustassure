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
typedef __pid_t pid_t;
typedef __id_t id_t;
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
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
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
typedef struct mbedtls_platform_context
{
    char dummy;
}
mbedtls_platform_context;
int mbedtls_platform_setup( mbedtls_platform_context *ctx );
void mbedtls_platform_teardown( mbedtls_platform_context *ctx );
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
typedef struct mbedtls_hmac_drbg_context
{
    mbedtls_md_context_t md_ctx;
    unsigned char V[64];
    int reseed_counter;
    size_t entropy_len;
    int prediction_resistance;
    int reseed_interval;
    int (*f_entropy)(void *, unsigned char *, size_t);
    void *p_entropy;
} mbedtls_hmac_drbg_context;
void mbedtls_hmac_drbg_init( mbedtls_hmac_drbg_context *ctx );
int mbedtls_hmac_drbg_seed( mbedtls_hmac_drbg_context *ctx,
                    const mbedtls_md_info_t * md_info,
                    int (*f_entropy)(void *, unsigned char *, size_t),
                    void *p_entropy,
                    const unsigned char *custom,
                    size_t len );
int mbedtls_hmac_drbg_seed_buf( mbedtls_hmac_drbg_context *ctx,
                        const mbedtls_md_info_t * md_info,
                        const unsigned char *data, size_t data_len );
void mbedtls_hmac_drbg_set_prediction_resistance( mbedtls_hmac_drbg_context *ctx,
                                          int resistance );
void mbedtls_hmac_drbg_set_entropy_len( mbedtls_hmac_drbg_context *ctx,
                                size_t len );
void mbedtls_hmac_drbg_set_reseed_interval( mbedtls_hmac_drbg_context *ctx,
                                    int interval );
int mbedtls_hmac_drbg_update_ret( mbedtls_hmac_drbg_context *ctx,
                       const unsigned char *additional, size_t add_len );
int mbedtls_hmac_drbg_reseed( mbedtls_hmac_drbg_context *ctx,
                      const unsigned char *additional, size_t len );
int mbedtls_hmac_drbg_random_with_add( void *p_rng,
                               unsigned char *output, size_t output_len,
                               const unsigned char *additional,
                               size_t add_len );
int mbedtls_hmac_drbg_random( void *p_rng, unsigned char *output, size_t out_len );
void mbedtls_hmac_drbg_free( mbedtls_hmac_drbg_context *ctx );
                   void mbedtls_hmac_drbg_update(
    mbedtls_hmac_drbg_context *ctx,
    const unsigned char *additional, size_t add_len );
int mbedtls_hmac_drbg_write_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path );
int mbedtls_hmac_drbg_update_seed_file( mbedtls_hmac_drbg_context *ctx, const char *path );
int mbedtls_hmac_drbg_self_test( int verbose );
static unsigned long add_count, dbl_count, mul_count;
typedef mbedtls_hmac_drbg_context ecp_drbg_context;
static inline void ecp_drbg_init( ecp_drbg_context *ctx )
{
    mbedtls_hmac_drbg_init( ctx );
}
static inline void ecp_drbg_free( ecp_drbg_context *ctx )
{
    mbedtls_hmac_drbg_free( ctx );
}
static inline int ecp_drbg_random( void *p_rng,
                                   unsigned char *output, size_t output_len )
{
    return( mbedtls_hmac_drbg_random( p_rng, output, output_len ) );
}
static int ecp_drbg_seed( ecp_drbg_context *ctx,
                   const mbedtls_mpi *secret, size_t secret_len )
{
    int ret;
    unsigned char secret_bytes[( ( 521 + 7 ) / 8 )];
    const mbedtls_md_type_t md_type = mbedtls_md_list()[0];
    const mbedtls_md_info_t *md_info = mbedtls_md_info_from_type( md_type );
    if( secret_len > ( ( 521 + 7 ) / 8 ) )
    {
        ret = -0x4D00;
        goto cleanup;
    }
    do { if( ( ret = (mbedtls_mpi_write_binary( secret, secret_bytes, secret_len )) ) != 0 ) goto cleanup; } while( 0 );
    ret = mbedtls_hmac_drbg_seed_buf( ctx, md_info, secret_bytes, secret_len );
cleanup:
    mbedtls_platform_zeroize( secret_bytes, secret_len );
    return( ret );
}
static const mbedtls_ecp_curve_info ecp_supported_curves[] =
{
    { MBEDTLS_ECP_DP_SECP521R1, 25, 521, "secp521r1" },
    { MBEDTLS_ECP_DP_BP512R1, 28, 512, "brainpoolP512r1" },
    { MBEDTLS_ECP_DP_SECP384R1, 24, 384, "secp384r1" },
    { MBEDTLS_ECP_DP_BP384R1, 27, 384, "brainpoolP384r1" },
    { MBEDTLS_ECP_DP_SECP256R1, 23, 256, "secp256r1" },
    { MBEDTLS_ECP_DP_SECP256K1, 22, 256, "secp256k1" },
    { MBEDTLS_ECP_DP_BP256R1, 26, 256, "brainpoolP256r1" },
    { MBEDTLS_ECP_DP_SECP224R1, 21, 224, "secp224r1" },
    { MBEDTLS_ECP_DP_SECP224K1, 20, 224, "secp224k1" },
    { MBEDTLS_ECP_DP_SECP192R1, 19, 192, "secp192r1" },
    { MBEDTLS_ECP_DP_SECP192K1, 18, 192, "secp192k1" },
    { MBEDTLS_ECP_DP_NONE, 0, 0, ((void*)0) },
};
static mbedtls_ecp_group_id ecp_supported_grp_id[sizeof( ecp_supported_curves ) / sizeof( ecp_supported_curves[0] )];
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void )
{
    return( ecp_supported_curves );
}
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void )
{
    static int init_done = 0;
    if( ! init_done )
    {
        size_t i = 0;
        const mbedtls_ecp_curve_info *curve_info;
        for( curve_info = mbedtls_ecp_curve_list();
             curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
             curve_info++ )
        {
            ecp_supported_grp_id[i++] = curve_info->grp_id;
        }
        ecp_supported_grp_id[i] = MBEDTLS_ECP_DP_NONE;
        init_done = 1;
    }
    return( ecp_supported_grp_id );
}
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id )
{
    const mbedtls_ecp_curve_info *curve_info;
    for( curve_info = mbedtls_ecp_curve_list();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( curve_info->grp_id == grp_id )
            return( curve_info );
    }
    return( ((void*)0) );
}
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id )
{
    const mbedtls_ecp_curve_info *curve_info;
    for( curve_info = mbedtls_ecp_curve_list();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( curve_info->tls_id == tls_id )
            return( curve_info );
    }
    return( ((void*)0) );
}
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name )
{
    const mbedtls_ecp_curve_info *curve_info;
    if( name == ((void*)0) )
        return( ((void*)0) );
    for( curve_info = mbedtls_ecp_curve_list();
         curve_info->grp_id != MBEDTLS_ECP_DP_NONE;
         curve_info++ )
    {
        if( strcmp( curve_info->name, name ) == 0 )
            return( curve_info );
    }
    return( ((void*)0) );
}
mbedtls_ecp_curve_type mbedtls_ecp_get_type( const mbedtls_ecp_group *grp )
{
    if( grp->G.X.p == ((void*)0) )
        return( MBEDTLS_ECP_TYPE_NONE );
    if( grp->G.Y.p == ((void*)0) )
        return( MBEDTLS_ECP_TYPE_MONTGOMERY );
    else
        return( MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS );
}
void mbedtls_ecp_point_init( mbedtls_ecp_point *pt )
{
    do { } while( 0 );
    mbedtls_mpi_init( &pt->X );
    mbedtls_mpi_init( &pt->Y );
    mbedtls_mpi_init( &pt->Z );
}
void mbedtls_ecp_group_init( mbedtls_ecp_group *grp )
{
    do { } while( 0 );
    grp->id = MBEDTLS_ECP_DP_NONE;
    mbedtls_mpi_init( &grp->P );
    mbedtls_mpi_init( &grp->A );
    mbedtls_mpi_init( &grp->B );
    mbedtls_ecp_point_init( &grp->G );
    mbedtls_mpi_init( &grp->N );
    grp->pbits = 0;
    grp->nbits = 0;
    grp->h = 0;
    grp->modp = ((void*)0);
    grp->t_pre = ((void*)0);
    grp->t_post = ((void*)0);
    grp->t_data = ((void*)0);
    grp->T = ((void*)0);
    grp->T_size = 0;
}
void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key )
{
    do { } while( 0 );
    mbedtls_ecp_group_init( &key->grp );
    mbedtls_mpi_init( &key->d );
    mbedtls_ecp_point_init( &key->Q );
}
void mbedtls_ecp_point_free( mbedtls_ecp_point *pt )
{
    if( pt == ((void*)0) )
        return;
    mbedtls_mpi_free( &( pt->X ) );
    mbedtls_mpi_free( &( pt->Y ) );
    mbedtls_mpi_free( &( pt->Z ) );
}
void mbedtls_ecp_group_free( mbedtls_ecp_group *grp )
{
    size_t i;
    if( grp == ((void*)0) )
        return;
    if( grp->h != 1 )
    {
        mbedtls_mpi_free( &grp->P );
        mbedtls_mpi_free( &grp->A );
        mbedtls_mpi_free( &grp->B );
        mbedtls_ecp_point_free( &grp->G );
        mbedtls_mpi_free( &grp->N );
    }
    if( grp->T != ((void*)0) )
    {
        for( i = 0; i < grp->T_size; i++ )
            mbedtls_ecp_point_free( &grp->T[i] );
        free( grp->T );
    }
    mbedtls_platform_zeroize( grp, sizeof( mbedtls_ecp_group ) );
}
void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key )
{
    if( key == ((void*)0) )
        return;
    mbedtls_ecp_group_free( &key->grp );
    mbedtls_mpi_free( &key->d );
    mbedtls_ecp_point_free( &key->Q );
}
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &P->X, &Q->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &P->Y, &Q->Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &P->Z, &Q->Z )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst, const mbedtls_ecp_group *src )
{
    do { } while( 0 );
    do { } while( 0 );
    return( mbedtls_ecp_group_load( dst, src->id ) );
}
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &pt->X , 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &pt->Y , 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &pt->Z , 0 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt )
{
    do { } while( 0 );
    return( mbedtls_mpi_cmp_int( &pt->Z, 0 ) == 0 );
}
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q )
{
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &P->X, &Q->X ) == 0 &&
        mbedtls_mpi_cmp_mpi( &P->Y, &Q->Y ) == 0 &&
        mbedtls_mpi_cmp_mpi( &P->Z, &Q->Z ) == 0 )
    {
        return( 0 );
    }
    return( -0x4F80 );
}
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &P->X, radix, x )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &P->Y, radix, y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &P->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp,
                                    const mbedtls_ecp_point *P,
                                    int format, size_t *olen,
                                    unsigned char *buf, size_t buflen )
{
    int ret = -0x4E80;
    size_t plen;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    plen = mbedtls_mpi_size( &grp->P );
    (void) format;
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        *olen = plen;
        if( buflen < *olen )
            return( -0x4F00 );
        do { if( ( ret = (mbedtls_mpi_write_binary_le( &P->X, buf, plen )) ) != 0 ) goto cleanup; } while( 0 );
    }
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        if( mbedtls_mpi_cmp_int( &P->Z, 0 ) == 0 )
        {
            if( buflen < 1 )
                return( -0x4F00 );
            buf[0] = 0x00;
            *olen = 1;
            return( 0 );
        }
        if( format == 0 )
        {
            *olen = 2 * plen + 1;
            if( buflen < *olen )
                return( -0x4F00 );
            buf[0] = 0x04;
            do { if( ( ret = (mbedtls_mpi_write_binary( &P->X, buf + 1, plen )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_write_binary( &P->Y, buf + 1 + plen, plen )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else if( format == 1 )
        {
            *olen = plen + 1;
            if( buflen < *olen )
                return( -0x4F00 );
            buf[0] = 0x02 + mbedtls_mpi_get_bit( &P->Y, 0 );
            do { if( ( ret = (mbedtls_mpi_write_binary( &P->X, buf + 1, plen )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
cleanup:
    return( ret );
}
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *pt,
                                   const unsigned char *buf, size_t ilen )
{
    int ret = -0x4E80;
    size_t plen;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( ilen < 1 )
        return( -0x4F80 );
    plen = mbedtls_mpi_size( &grp->P );
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        if( plen != ilen )
            return( -0x4F80 );
        do { if( ( ret = (mbedtls_mpi_read_binary_le( &pt->X, buf, plen )) ) != 0 ) goto cleanup; } while( 0 );
        mbedtls_mpi_free( &pt->Y );
        if( grp->id == MBEDTLS_ECP_DP_CURVE25519 )
            do { if( ( ret = (mbedtls_mpi_set_bit( &pt->X, plen * 8 - 1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_lset( &pt->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    }
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        if( buf[0] == 0x00 )
        {
            if( ilen == 1 )
                return( mbedtls_ecp_set_zero( pt ) );
            else
                return( -0x4F80 );
        }
        if( buf[0] != 0x04 )
            return( -0x4E80 );
        if( ilen != 2 * plen + 1 )
            return( -0x4F80 );
        do { if( ( ret = (mbedtls_mpi_read_binary( &pt->X, buf + 1, plen )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_read_binary( &pt->Y, buf + 1 + plen, plen )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_lset( &pt->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    return( ret );
}
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point *pt,
                                const unsigned char **buf, size_t buf_len )
{
    unsigned char data_len;
    const unsigned char *buf_start;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( buf_len < 2 )
        return( -0x4F80 );
    data_len = *(*buf)++;
    if( data_len < 1 || data_len > buf_len - 1 )
        return( -0x4F80 );
    buf_start = *buf;
    *buf += data_len;
    return( mbedtls_ecp_point_read_binary( grp, pt, buf_start, data_len ) );
}
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt,
                         int format, size_t *olen,
                         unsigned char *buf, size_t blen )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( blen < 1 )
        return( -0x4F80 );
    if( ( ret = mbedtls_ecp_point_write_binary( grp, pt, format,
                    olen, buf + 1, blen - 1) ) != 0 )
        return( ret );
    buf[0] = (unsigned char) *olen;
    ++*olen;
    return( 0 );
}
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp,
                                const unsigned char **buf, size_t len )
{
    int ret = -0x006E;
    mbedtls_ecp_group_id grp_id;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( ( ret = mbedtls_ecp_tls_read_group_id( &grp_id, buf, len ) ) != 0 )
        return( ret );
    return( mbedtls_ecp_group_load( grp, grp_id ) );
}
int mbedtls_ecp_tls_read_group_id( mbedtls_ecp_group_id *grp,
                                   const unsigned char **buf, size_t len )
{
    uint16_t tls_id;
    const mbedtls_ecp_curve_info *curve_info;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( len < 3 )
        return( -0x4F80 );
    if( *(*buf)++ != 3 )
        return( -0x4F80 );
    tls_id = *(*buf)++;
    tls_id <<= 8;
    tls_id |= *(*buf)++;
    if( ( curve_info = mbedtls_ecp_curve_info_from_tls_id( tls_id ) ) == ((void*)0) )
        return( -0x4E80 );
    *grp = curve_info->grp_id;
    return( 0 );
}
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp, size_t *olen,
                         unsigned char *buf, size_t blen )
{
    const mbedtls_ecp_curve_info *curve_info;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( ( curve_info = mbedtls_ecp_curve_info_from_grp_id( grp->id ) ) == ((void*)0) )
        return( -0x4F80 );
    *olen = 3;
    if( blen < *olen )
        return( -0x4F00 );
    *buf++ = 3;
    buf[0] = curve_info->tls_id >> 8;
    buf[1] = curve_info->tls_id & 0xFF;
    return( 0 );
}
static int ecp_modp( mbedtls_mpi *N, const mbedtls_ecp_group *grp )
{
    int ret = -0x006E;
    if( grp->modp == ((void*)0) )
        return( mbedtls_mpi_mod_mpi( N, N, &grp->P ) );
    if( ( N->s < 0 && mbedtls_mpi_cmp_int( N, 0 ) != 0 ) ||
        mbedtls_mpi_bitlen( N ) > 2 * grp->pbits )
    {
        return( -0x4F80 );
    }
    do { if( ( ret = (grp->modp( N )) ) != 0 ) goto cleanup; } while( 0 );
    while( N->s < 0 && mbedtls_mpi_cmp_int( N, 0 ) != 0 )
        do { if( ( ret = (mbedtls_mpi_add_mpi( N, N, &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( N, &grp->P ) >= 0 )
        do { if( ( ret = (mbedtls_mpi_sub_abs( N, N, &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static inline int mbedtls_mpi_mul_mod( const mbedtls_ecp_group *grp,
                                       mbedtls_mpi *X,
                                       const mbedtls_mpi *A,
                                       const mbedtls_mpi *B )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_mul_mpi( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
    do { do { if( ( ret = (ecp_modp( &(*X), grp )) ) != 0 ) goto cleanup; } while( 0 ); mul_count++; } while( 0 );
cleanup:
    return( ret );
}
static inline int mbedtls_mpi_sub_mod( const mbedtls_ecp_group *grp,
                                       mbedtls_mpi *X,
                                       const mbedtls_mpi *A,
                                       const mbedtls_mpi *B )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_sub_mpi( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
    while( (*X).s < 0 && mbedtls_mpi_cmp_int( &(*X), 0 ) != 0 ) do { if( ( ret = (mbedtls_mpi_add_mpi( &(*X), &(*X), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static inline int mbedtls_mpi_add_mod( const mbedtls_ecp_group *grp,
                                       mbedtls_mpi *X,
                                       const mbedtls_mpi *A,
                                       const mbedtls_mpi *B )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_add_mpi( X, A, B )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( &(*X), &grp->P ) >= 0 ) do { if( ( ret = (mbedtls_mpi_sub_abs( &(*X), &(*X), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static inline int mbedtls_mpi_shift_l_mod( const mbedtls_ecp_group *grp,
                                           mbedtls_mpi *X,
                                           size_t count )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_shift_l( X, count )) ) != 0 ) goto cleanup; } while( 0 );
    while( mbedtls_mpi_cmp_mpi( &(*X), &grp->P ) >= 0 ) do { if( ( ret = (mbedtls_mpi_sub_abs( &(*X), &(*X), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_normalize_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt )
{
    int ret = -0x006E;
    mbedtls_mpi Zi, ZZi;
    if( mbedtls_mpi_cmp_int( &pt->Z, 0 ) == 0 )
        return( 0 );
    mbedtls_mpi_init( &Zi ); mbedtls_mpi_init( &ZZi );
    do { if( ( ret = (mbedtls_mpi_inv_mod( &Zi, &pt->Z, &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &ZZi, &Zi, &Zi )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->X, &pt->X, &ZZi )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->Y, &pt->Y, &ZZi )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->Y, &pt->Y, &Zi )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &pt->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &Zi ); mbedtls_mpi_free( &ZZi );
    return( ret );
}
static int ecp_normalize_jac_many( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *T[], size_t T_size )
{
    int ret = -0x006E;
    size_t i;
    mbedtls_mpi *c, u, Zi, ZZi;
    if( T_size < 2 )
        return( ecp_normalize_jac( grp, *T ) );
    if( ( c = calloc( T_size, sizeof( mbedtls_mpi ) ) ) == ((void*)0) )
        return( -0x4D80 );
    for( i = 0; i < T_size; i++ )
        mbedtls_mpi_init( &c[i] );
    mbedtls_mpi_init( &u ); mbedtls_mpi_init( &Zi ); mbedtls_mpi_init( &ZZi );
    do { if( ( ret = (mbedtls_mpi_copy( &c[0], &T[0]->Z )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = 1; i < T_size; i++ )
    {
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &c[i], &c[i-1], &T[i]->Z )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_inv_mod( &u, &c[T_size-1], &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = T_size - 1; ; i-- )
    {
        if( i == 0 ) {
            do { if( ( ret = (mbedtls_mpi_copy( &Zi, &u )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else
        {
            do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &Zi, &u, &c[i-1] )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &u, &u, &T[i]->Z )) ) != 0 ) goto cleanup; } while( 0 );
        }
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &ZZi, &Zi, &Zi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T[i]->X, &T[i]->X, &ZZi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T[i]->Y, &T[i]->Y, &ZZi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T[i]->Y, &T[i]->Y, &Zi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shrink( &T[i]->X, grp->P.n )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_shrink( &T[i]->Y, grp->P.n )) ) != 0 ) goto cleanup; } while( 0 );
        mbedtls_mpi_free( &T[i]->Z );
        if( i == 0 )
            break;
    }
cleanup:
    mbedtls_mpi_free( &u ); mbedtls_mpi_free( &Zi ); mbedtls_mpi_free( &ZZi );
    for( i = 0; i < T_size; i++ )
        mbedtls_mpi_free( &c[i] );
    free( c );
    return( ret );
}
static int ecp_safe_invert_jac( const mbedtls_ecp_group *grp,
                            mbedtls_ecp_point *Q,
                            unsigned char inv )
{
    int ret = -0x006E;
    unsigned char nonzero;
    mbedtls_mpi mQY;
    mbedtls_mpi_init( &mQY );
    do { if( ( ret = (mbedtls_mpi_sub_mpi( &mQY, &grp->P, &Q->Y )) ) != 0 ) goto cleanup; } while( 0 );
    nonzero = mbedtls_mpi_cmp_int( &Q->Y, 0 ) != 0;
    do { if( ( ret = (mbedtls_mpi_safe_cond_assign( &Q->Y, &mQY, inv & nonzero )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &mQY );
    return( ret );
}
static int ecp_double_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                           const mbedtls_ecp_point *P )
{
    int ret = -0x006E;
    mbedtls_mpi M, S, T, U;
    dbl_count++;
    mbedtls_mpi_init( &M ); mbedtls_mpi_init( &S ); mbedtls_mpi_init( &T ); mbedtls_mpi_init( &U );
    if( grp->A.p == ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &P->Z, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_add_mod( grp, &T, &P->X, &S )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &U, &P->X, &S )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &T, &U )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_int( &M, &S, 3 )) ) != 0 ) goto cleanup; } while( 0 ); while( mbedtls_mpi_cmp_mpi( &(M), &grp->P ) >= 0 ) do { if( ( ret = (mbedtls_mpi_sub_abs( &(M), &(M), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &P->X, &P->X )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_int( &M, &S, 3 )) ) != 0 ) goto cleanup; } while( 0 ); while( mbedtls_mpi_cmp_mpi( &(M), &grp->P ) >= 0 ) do { if( ( ret = (mbedtls_mpi_sub_abs( &(M), &(M), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( &grp->A, 0 ) != 0 )
        {
            do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &P->Z, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T, &S, &S )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &T, &grp->A )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_add_mod( grp, &M, &M, &S )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T, &P->Y, &P->Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l_mod( grp, &T, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &P->X, &T )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l_mod( grp, &S, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &U, &T, &T )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l_mod( grp, &U, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T, &M, &M )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &T, &T, &S )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &T, &T, &S )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &S, &S, &T )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S, &S, &M )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &S, &S, &U )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &U, &P->Y, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l_mod( grp, &U, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->X, &T )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->Y, &S )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->Z, &U )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &M ); mbedtls_mpi_free( &S ); mbedtls_mpi_free( &T ); mbedtls_mpi_free( &U );
    return( ret );
}
static int ecp_add_mixed( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                          const mbedtls_ecp_point *P, const mbedtls_ecp_point *Q )
{
    int ret = -0x006E;
    mbedtls_mpi T1, T2, T3, T4, X, Y, Z;
    add_count++;
    if( mbedtls_mpi_cmp_int( &P->Z, 0 ) == 0 )
        return( mbedtls_ecp_copy( R, Q ) );
    if( Q->Z.p != ((void*)0) && mbedtls_mpi_cmp_int( &Q->Z, 0 ) == 0 )
        return( mbedtls_ecp_copy( R, P ) );
    if( Q->Z.p != ((void*)0) && mbedtls_mpi_cmp_int( &Q->Z, 1 ) != 0 )
        return( -0x4F80 );
    mbedtls_mpi_init( &T1 ); mbedtls_mpi_init( &T2 ); mbedtls_mpi_init( &T3 ); mbedtls_mpi_init( &T4 );
    mbedtls_mpi_init( &X ); mbedtls_mpi_init( &Y ); mbedtls_mpi_init( &Z );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T1, &P->Z, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T2, &T1, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T1, &T1, &Q->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T2, &T2, &Q->Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &T1, &T1, &P->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &T2, &T2, &P->Y )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_int( &T1, 0 ) == 0 )
    {
        if( mbedtls_mpi_cmp_int( &T2, 0 ) == 0 )
        {
            ret = ecp_double_jac( grp, R, P );
            goto cleanup;
        }
        else
        {
            ret = mbedtls_ecp_set_zero( R );
            goto cleanup;
        }
    }
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &Z, &P->Z, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T3, &T1, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T4, &T3, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T3, &T3, &P->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &T1, &T3 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l_mod( grp, &T1, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &X, &T2, &T2 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &X, &X, &T1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &X, &X, &T4 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &T3, &T3, &X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T3, &T3, &T2 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &T4, &T4, &P->Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &Y, &T3, &T4 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->X, &X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->Y, &Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &R->Z, &Z )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &T1 ); mbedtls_mpi_free( &T2 ); mbedtls_mpi_free( &T3 ); mbedtls_mpi_free( &T4 );
    mbedtls_mpi_free( &X ); mbedtls_mpi_free( &Y ); mbedtls_mpi_free( &Z );
    return( ret );
}
static int ecp_randomize_jac( const mbedtls_ecp_group *grp, mbedtls_ecp_point *pt,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = -0x006E;
    mbedtls_mpi l, ll;
    size_t p_size;
    int count = 0;
    p_size = ( grp->pbits + 7 ) / 8;
    mbedtls_mpi_init( &l ); mbedtls_mpi_init( &ll );
    do
    {
        do { if( ( ret = (mbedtls_mpi_fill_random( &l, p_size, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        while( mbedtls_mpi_cmp_mpi( &l, &grp->P ) >= 0 )
            do { if( ( ret = (mbedtls_mpi_shift_r( &l, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        if( count++ > 10 )
        {
            ret = -0x4D00;
            goto cleanup;
        }
    }
    while( mbedtls_mpi_cmp_int( &l, 1 ) <= 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->Z, &pt->Z, &l )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &ll, &l, &l )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->X, &pt->X, &ll )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &ll, &ll, &l )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &pt->Y, &pt->Y, &ll )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &l ); mbedtls_mpi_free( &ll );
    return( ret );
}
static void ecp_comb_recode_core( unsigned char x[], size_t d,
                                  unsigned char w, const mbedtls_mpi *m )
{
    size_t i, j;
    unsigned char c, cc, adjust;
    memset( x, 0, d+1 );
    for( i = 0; i < d; i++ )
        for( j = 0; j < w; j++ )
            x[i] |= mbedtls_mpi_get_bit( m, i + d * j ) << j;
    c = 0;
    for( i = 1; i <= d; i++ )
    {
        cc = x[i] & c;
        x[i] = x[i] ^ c;
        c = cc;
        adjust = 1 - ( x[i] & 0x01 );
        c |= x[i] & ( x[i-1] * adjust );
        x[i] = x[i] ^ ( x[i-1] * adjust );
        x[i-1] |= adjust << 7;
    }
}
static int ecp_precompute_comb( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point T[], const mbedtls_ecp_point *P,
                                unsigned char w, size_t d,
                                mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    unsigned char i;
    size_t j = 0;
    const unsigned char T_size = 1U << ( w - 1 );
    mbedtls_ecp_point *cur, *TT[( 1 << ( 6 - 1 ) ) - 1];
    (void) rs_ctx;
    do { if( ( ret = (mbedtls_ecp_copy( &T[0], P )) ) != 0 ) goto cleanup; } while( 0 );
        j = 0;
    for( ; j < d * ( w - 1 ); j++ )
    {
                                                 ;
        i = 1U << ( j / d );
        cur = T + i;
        if( j % d == 0 )
            do { if( ( ret = (mbedtls_ecp_copy( cur, T + ( i >> 1 ) )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_double_jac( grp, cur, cur )) ) != 0 ) goto cleanup; } while( 0 );
    }
    j = 0;
    for( i = 1; i < T_size; i <<= 1 )
        TT[j++] = T + i;
                                                         ;
    do { if( ( ret = (ecp_normalize_jac_many( grp, TT, j )) ) != 0 ) goto cleanup; } while( 0 );
                                                              ;
    for( i = 1; i < T_size; i <<= 1 )
    {
        j = i;
        while( j-- )
            do { if( ( ret = (ecp_add_mixed( grp, &T[i + j], &T[j], &T[i] )) ) != 0 ) goto cleanup; } while( 0 );
    }
    for( j = 0; j + 1 < T_size; j++ )
        TT[j] = T + j + 1;
                                                         ;
    do { if( ( ret = (ecp_normalize_jac_many( grp, TT, j )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_select_comb( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                            const mbedtls_ecp_point T[], unsigned char T_size,
                            unsigned char i )
{
    int ret = -0x006E;
    unsigned char ii, j;
    ii = ( i & 0x7Fu ) >> 1;
    for( j = 0; j < T_size; j++ )
    {
        do { if( ( ret = (mbedtls_mpi_safe_cond_assign( &R->X, &T[j].X, j == ii )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_safe_cond_assign( &R->Y, &T[j].Y, j == ii )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (ecp_safe_invert_jac( grp, R, i >> 7 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_mul_comb_core( const mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                              const mbedtls_ecp_point T[], unsigned char T_size,
                              const unsigned char x[], size_t d,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng,
                              mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    mbedtls_ecp_point Txi;
    size_t i;
    mbedtls_ecp_point_init( &Txi );
    (void) rs_ctx;
    {
        i = d;
        do { if( ( ret = (ecp_select_comb( grp, R, T, T_size, x[i] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_lset( &R->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (ecp_randomize_jac( grp, R, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    }
    while( i != 0 )
    {
                                                                       ;
        --i;
        do { if( ( ret = (ecp_double_jac( grp, R, R )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_select_comb( grp, &Txi, T, T_size, x[i] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_add_mixed( grp, R, R, &Txi )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    mbedtls_ecp_point_free( &Txi );
    return( ret );
}
static int ecp_comb_recode_scalar( const mbedtls_ecp_group *grp,
                                   const mbedtls_mpi *m,
                                   unsigned char k[( 521 + 1 ) / 2 + 1],
                                   size_t d,
                                   unsigned char w,
                                   unsigned char *parity_trick )
{
    int ret = -0x006E;
    mbedtls_mpi M, mm;
    mbedtls_mpi_init( &M );
    mbedtls_mpi_init( &mm );
    if( mbedtls_mpi_get_bit( &grp->N, 0 ) != 1 )
        return( -0x4F80 );
    *parity_trick = ( mbedtls_mpi_get_bit( m, 0 ) == 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &M, m )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mpi( &mm, &grp->N, m )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_safe_cond_assign( &M, &mm, *parity_trick )) ) != 0 ) goto cleanup; } while( 0 );
    ecp_comb_recode_core( k, d, w, &M );
cleanup:
    mbedtls_mpi_free( &mm );
    mbedtls_mpi_free( &M );
    return( ret );
}
static int ecp_mul_comb_after_precomp( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point *R,
                                const mbedtls_mpi *m,
                                const mbedtls_ecp_point *T,
                                unsigned char T_size,
                                unsigned char w,
                                size_t d,
                                int (*f_rng)(void *, unsigned char *, size_t),
                                void *p_rng,
                                mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    unsigned char parity_trick;
    unsigned char k[( 521 + 1 ) / 2 + 1];
    mbedtls_ecp_point *RR = R;
    do { if( ( ret = (ecp_comb_recode_scalar( grp, m, k, d, w, &parity_trick )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (ecp_mul_comb_core( grp, RR, T, T_size, k, d, f_rng, p_rng, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (ecp_safe_invert_jac( grp, RR, parity_trick )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_randomize_jac( grp, RR, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (ecp_normalize_jac( grp, RR )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static unsigned char ecp_pick_window_size( const mbedtls_ecp_group *grp,
                                           unsigned char p_eq_g )
{
    unsigned char w;
    w = grp->nbits >= 384 ? 5 : 4;
    if( p_eq_g )
        w++;
    if( w >= grp->nbits )
        w = 2;
    return( w );
}
static int ecp_mul_comb( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                         const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    unsigned char w, p_eq_g, i;
    size_t d;
    unsigned char T_size = 0, T_ok = 0;
    mbedtls_ecp_point *T = ((void*)0);
    ecp_drbg_context drbg_ctx;
    ecp_drbg_init( &drbg_ctx );
    (void) rs_ctx;;
    if( f_rng == ((void*)0) )
    {
        f_rng = &ecp_drbg_random;
            p_rng = &drbg_ctx;
        {
            const size_t m_len = ( grp->nbits + 7 ) / 8;
            do { if( ( ret = (ecp_drbg_seed( p_rng, m, m_len )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
    p_eq_g = ( mbedtls_mpi_cmp_mpi( &P->Y, &grp->G.Y ) == 0 &&
               mbedtls_mpi_cmp_mpi( &P->X, &grp->G.X ) == 0 );
    w = ecp_pick_window_size( grp, p_eq_g );
    T_size = 1U << ( w - 1 );
    d = ( grp->nbits + w - 1 ) / w;
    if( p_eq_g && grp->T != ((void*)0) )
    {
        T = grp->T;
        T_ok = 1;
    }
    else
    {
        T = calloc( T_size, sizeof( mbedtls_ecp_point ) );
        if( T == ((void*)0) )
        {
            ret = -0x4D80;
            goto cleanup;
        }
        for( i = 0; i < T_size; i++ )
            mbedtls_ecp_point_init( &T[i] );
        T_ok = 0;
    }
    if( !T_ok )
    {
        do { if( ( ret = (ecp_precompute_comb( grp, T, P, w, d, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
        if( p_eq_g )
        {
            grp->T = T;
            grp->T_size = T_size;
        }
    }
    do { if( ( ret = (ecp_mul_comb_after_precomp( grp, R, m, T, T_size, w, d, f_rng, p_rng, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    ecp_drbg_free( &drbg_ctx );
    if( T == grp->T )
        T = ((void*)0);
    if( T != ((void*)0) )
    {
        for( i = 0; i < T_size; i++ )
            mbedtls_ecp_point_free( &T[i] );
        free( T );
    }
    if( ret != 0 )
        mbedtls_ecp_point_free( R );
    (void) rs_ctx;;
    return( ret );
}
static int ecp_normalize_mxz( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_inv_mod( &P->Z, &P->Z, &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &P->X, &P->X, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &P->Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_randomize_mxz( const mbedtls_ecp_group *grp, mbedtls_ecp_point *P,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = -0x006E;
    mbedtls_mpi l;
    size_t p_size;
    int count = 0;
    p_size = ( grp->pbits + 7 ) / 8;
    mbedtls_mpi_init( &l );
    do
    {
        do { if( ( ret = (mbedtls_mpi_fill_random( &l, p_size, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        while( mbedtls_mpi_cmp_mpi( &l, &grp->P ) >= 0 )
            do { if( ( ret = (mbedtls_mpi_shift_r( &l, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        if( count++ > 10 )
        {
            ret = -0x4D00;
            goto cleanup;
        }
    }
    while( mbedtls_mpi_cmp_int( &l, 1 ) <= 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &P->X, &P->X, &l )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &P->Z, &P->Z, &l )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &l );
    return( ret );
}
static int ecp_double_add_mxz( const mbedtls_ecp_group *grp,
                               mbedtls_ecp_point *R, mbedtls_ecp_point *S,
                               const mbedtls_ecp_point *P, const mbedtls_ecp_point *Q,
                               const mbedtls_mpi *d )
{
    int ret = -0x006E;
    mbedtls_mpi A, AA, B, BB, E, C, D, DA, CB;
    mbedtls_mpi_init( &A ); mbedtls_mpi_init( &AA ); mbedtls_mpi_init( &B );
    mbedtls_mpi_init( &BB ); mbedtls_mpi_init( &E ); mbedtls_mpi_init( &C );
    mbedtls_mpi_init( &D ); mbedtls_mpi_init( &DA ); mbedtls_mpi_init( &CB );
    do { if( ( ret = (mbedtls_mpi_add_mod( grp, &A, &P->X, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &AA, &A, &A )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &B, &P->X, &P->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &BB, &B, &B )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &E, &AA, &BB )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mod( grp, &C, &Q->X, &Q->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &D, &Q->X, &Q->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &DA, &D, &A )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &CB, &C, &B )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mod( grp, &S->X, &DA, &CB )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S->X, &S->X, &S->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mod( grp, &S->Z, &DA, &CB )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S->Z, &S->Z, &S->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &S->Z, d, &S->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &R->X, &AA, &BB )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &R->Z, &grp->A, &E )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mod( grp, &R->Z, &BB, &R->Z )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &R->Z, &E, &R->Z )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &A ); mbedtls_mpi_free( &AA ); mbedtls_mpi_free( &B );
    mbedtls_mpi_free( &BB ); mbedtls_mpi_free( &E ); mbedtls_mpi_free( &C );
    mbedtls_mpi_free( &D ); mbedtls_mpi_free( &DA ); mbedtls_mpi_free( &CB );
    return( ret );
}
static int ecp_mul_mxz( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
                        const mbedtls_mpi *m, const mbedtls_ecp_point *P,
                        int (*f_rng)(void *, unsigned char *, size_t),
                        void *p_rng )
{
    int ret = -0x006E;
    size_t i;
    unsigned char b;
    mbedtls_ecp_point RP;
    mbedtls_mpi PX;
    ecp_drbg_context drbg_ctx;
    ecp_drbg_init( &drbg_ctx );
    mbedtls_ecp_point_init( &RP ); mbedtls_mpi_init( &PX );
    if( f_rng == ((void*)0) )
    {
        const size_t m_len = ( grp->nbits + 7 ) / 8;
        do { if( ( ret = (ecp_drbg_seed( &drbg_ctx, m, m_len )) ) != 0 ) goto cleanup; } while( 0 );
        f_rng = &ecp_drbg_random;
        p_rng = &drbg_ctx;
    }
    do { if( ( ret = (mbedtls_mpi_copy( &PX, &P->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_ecp_copy( &RP, P )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &R->X, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &R->Z, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    mbedtls_mpi_free( &R->Y );
    while( mbedtls_mpi_cmp_mpi( &(RP.X), &grp->P ) >= 0 ) do { if( ( ret = (mbedtls_mpi_sub_abs( &(RP.X), &(RP.X), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_randomize_mxz( grp, &RP, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    i = mbedtls_mpi_bitlen( m );
    while( i-- > 0 )
    {
        b = mbedtls_mpi_get_bit( m, i );
        do { if( ( ret = (mbedtls_mpi_safe_cond_swap( &R->X, &RP.X, b )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_safe_cond_swap( &R->Z, &RP.Z, b )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (ecp_double_add_mxz( grp, R, &RP, R, &RP, &PX )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_safe_cond_swap( &R->X, &RP.X, b )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_safe_cond_swap( &R->Z, &RP.Z, b )) ) != 0 ) goto cleanup; } while( 0 );
    }
        do { if( ( ret = (ecp_randomize_mxz( grp, R, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (ecp_normalize_mxz( grp, R )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    ecp_drbg_free( &drbg_ctx );
    mbedtls_ecp_point_free( &RP ); mbedtls_mpi_free( &PX );
    return( ret );
}
int mbedtls_ecp_mul_restartable( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x4F80;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    (void) rs_ctx;
    {
                                                 ;
        do { if( ( ret = (mbedtls_ecp_check_privkey( grp, m )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_ecp_check_pubkey( grp, P )) ) != 0 ) goto cleanup; } while( 0 );
    }
    ret = -0x4F80;
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
        do { if( ( ret = (ecp_mul_mxz( grp, R, m, P, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
        do { if( ( ret = (ecp_mul_comb( grp, R, m, P, f_rng, p_rng, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    return( mbedtls_ecp_mul_restartable( grp, R, m, P, f_rng, p_rng, ((void*)0) ) );
}
static int ecp_check_pubkey_sw( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt )
{
    int ret = -0x006E;
    mbedtls_mpi YY, RHS;
    if( mbedtls_mpi_cmp_int( &pt->X, 0 ) < 0 ||
        mbedtls_mpi_cmp_int( &pt->Y, 0 ) < 0 ||
        mbedtls_mpi_cmp_mpi( &pt->X, &grp->P ) >= 0 ||
        mbedtls_mpi_cmp_mpi( &pt->Y, &grp->P ) >= 0 )
        return( -0x4C80 );
    mbedtls_mpi_init( &YY ); mbedtls_mpi_init( &RHS );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &YY, &pt->Y, &pt->Y )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &RHS, &pt->X, &pt->X )) ) != 0 ) goto cleanup; } while( 0 );
    if( grp->A.p == ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_sub_int( &RHS, &RHS, 3 )) ) != 0 ) goto cleanup; } while( 0 ); while( (RHS).s < 0 && mbedtls_mpi_cmp_int( &(RHS), 0 ) != 0 ) do { if( ( ret = (mbedtls_mpi_add_mpi( &(RHS), &(RHS), &grp->P )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else
    {
        do { if( ( ret = (mbedtls_mpi_add_mod( grp, &RHS, &RHS, &grp->A )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_mul_mod( grp, &RHS, &RHS, &pt->X )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mod( grp, &RHS, &RHS, &grp->B )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &YY, &RHS ) != 0 )
        ret = -0x4C80;
cleanup:
    mbedtls_mpi_free( &YY ); mbedtls_mpi_free( &RHS );
    return( ret );
}
static int mbedtls_ecp_mul_shortcuts( mbedtls_ecp_group *grp,
                                      mbedtls_ecp_point *R,
                                      const mbedtls_mpi *m,
                                      const mbedtls_ecp_point *P,
                                      mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    if( mbedtls_mpi_cmp_int( m, 1 ) == 0 )
    {
        do { if( ( ret = (mbedtls_ecp_copy( R, P )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else if( mbedtls_mpi_cmp_int( m, -1 ) == 0 )
    {
        do { if( ( ret = (mbedtls_ecp_copy( R, P )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( &R->Y, 0 ) != 0 )
            do { if( ( ret = (mbedtls_mpi_sub_mpi( &R->Y, &grp->P, &R->Y )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else
    {
        do { if( ( ret = (mbedtls_ecp_mul_restartable( grp, R, m, P, ((void*)0), ((void*)0), rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    return( ret );
}
int mbedtls_ecp_muladd_restartable(
             mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q,
             mbedtls_ecp_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    mbedtls_ecp_point mP;
    mbedtls_ecp_point *pmP = &mP;
    mbedtls_ecp_point *pR = R;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_ecp_get_type( grp ) != MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
        return( -0x4E80 );
    mbedtls_ecp_point_init( &mP );
    (void) rs_ctx;;
    do { if( ( ret = (mbedtls_ecp_mul_shortcuts( grp, pmP, m, P, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_ecp_mul_shortcuts( grp, pR, n, Q, rs_ctx )) ) != 0 ) goto cleanup; } while( 0 );
                                             ;
    do { if( ( ret = (ecp_add_mixed( grp, pR, pmP, pR )) ) != 0 ) goto cleanup; } while( 0 );
                                             ;
    do { if( ( ret = (ecp_normalize_jac( grp, pR )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_ecp_point_free( &mP );
    (void) rs_ctx;;
    return( ret );
}
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    return( mbedtls_ecp_muladd_restartable( grp, R, m, P, n, Q, ((void*)0) ) );
}
static int ecp_check_pubkey_mx( const mbedtls_ecp_group *grp, const mbedtls_ecp_point *pt )
{
    if( mbedtls_mpi_size( &pt->X ) > ( grp->nbits + 7 ) / 8 )
        return( -0x4C80 );
    return( 0 );
}
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp,
                              const mbedtls_ecp_point *pt )
{
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_mpi_cmp_int( &pt->Z, 1 ) != 0 )
        return( -0x4C80 );
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
        return( ecp_check_pubkey_mx( grp, pt ) );
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
        return( ecp_check_pubkey_sw( grp, pt ) );
    return( -0x4F80 );
}
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp,
                               const mbedtls_mpi *d )
{
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        if( mbedtls_mpi_get_bit( d, 0 ) != 0 ||
            mbedtls_mpi_get_bit( d, 1 ) != 0 ||
            mbedtls_mpi_bitlen( d ) - 1 != grp->nbits )
            return( -0x4C80 );
        if( grp->nbits == 254 && mbedtls_mpi_get_bit( d, 2 ) != 0 )
            return( -0x4C80 );
        return( 0 );
    }
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        if( mbedtls_mpi_cmp_int( d, 1 ) < 0 ||
            mbedtls_mpi_cmp_mpi( d, &grp->N ) >= 0 )
            return( -0x4C80 );
        else
            return( 0 );
    }
    return( -0x4F80 );
}
int mbedtls_ecp_gen_privkey( const mbedtls_ecp_group *grp,
                     mbedtls_mpi *d,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret = -0x4F80;
    size_t n_size;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    n_size = ( grp->nbits + 7 ) / 8;
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        size_t b;
        do {
            do { if( ( ret = (mbedtls_mpi_fill_random( d, n_size, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        } while( mbedtls_mpi_bitlen( d ) == 0);
        b = mbedtls_mpi_bitlen( d ) - 1;
        if( b > grp->nbits )
            do { if( ( ret = (mbedtls_mpi_shift_r( d, b - grp->nbits )) ) != 0 ) goto cleanup; } while( 0 );
        else
            do { if( ( ret = (mbedtls_mpi_set_bit( d, grp->nbits, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_set_bit( d, 0, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_set_bit( d, 1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        if( grp->nbits == 254 )
        {
            do { if( ( ret = (mbedtls_mpi_set_bit( d, 2, 0 )) ) != 0 ) goto cleanup; } while( 0 );
        }
    }
    if( mbedtls_ecp_get_type( grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        int count = 0;
        unsigned cmp = 0;
        do
        {
            do { if( ( ret = (mbedtls_mpi_fill_random( d, n_size, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_shift_r( d, 8 * n_size - grp->nbits )) ) != 0 ) goto cleanup; } while( 0 );
            if( ++count > 30 )
            {
                ret = -0x4D00;
                goto cleanup;
            }
            ret = mbedtls_mpi_lt_mpi_ct( d, &grp->N, &cmp );
            if( ret != 0 )
            {
                goto cleanup;
            }
        }
        while( mbedtls_mpi_cmp_int( d, 1 ) < 0 || cmp != 1 );
    }
cleanup:
    return( ret );
}
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                     const mbedtls_ecp_point *G,
                     mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { if( ( ret = (mbedtls_ecp_gen_privkey( grp, d, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_ecp_mul( grp, Q, d, G, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp,
                             mbedtls_mpi *d, mbedtls_ecp_point *Q,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    return( mbedtls_ecp_gen_keypair_base( grp, &grp->G, d, Q, f_rng, p_rng ) );
}
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    if( ( ret = mbedtls_ecp_group_load( &key->grp, grp_id ) ) != 0 )
        return( ret );
    return( mbedtls_ecp_gen_keypair( &key->grp, &key->d, &key->Q, f_rng, p_rng ) );
}
int mbedtls_ecp_read_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                          const unsigned char *buf, size_t buflen )
{
    int ret = 0;
    do { } while( 0 );
    do { } while( 0 );
    if( ( ret = mbedtls_ecp_group_load( &key->grp, grp_id ) ) != 0 )
        return( ret );
    ret = -0x4E80;
    if( mbedtls_ecp_get_type( &key->grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        if( grp_id == MBEDTLS_ECP_DP_CURVE25519 )
        {
            if( buflen != 32 )
                return -0x4C80;
            do { if( ( ret = (mbedtls_mpi_read_binary_le( &key->d, buf, buflen )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_set_bit( &key->d, 0, 0 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_set_bit( &key->d, 1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_set_bit( &key->d, 2, 0 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_set_bit( &key->d, 32 * 8 - 1, 0 )) ) != 0 ) goto cleanup; } while( 0 );
            do { if( ( ret = (mbedtls_mpi_set_bit( &key->d, 32 * 8 - 2, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else
            ret = -0x4E80;
    }
    if( mbedtls_ecp_get_type( &key->grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        do { if( ( ret = (mbedtls_mpi_read_binary( &key->d, buf, buflen )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_ecp_check_privkey( &key->grp, &key->d )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    if( ret != 0 )
        mbedtls_mpi_free( &key->d );
    return( ret );
}
int mbedtls_ecp_write_key( mbedtls_ecp_keypair *key,
                           unsigned char *buf, size_t buflen )
{
    int ret = -0x4E80;
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_ecp_get_type( &key->grp ) == MBEDTLS_ECP_TYPE_MONTGOMERY )
    {
        if( key->grp.id == MBEDTLS_ECP_DP_CURVE25519 )
        {
            if( buflen < 32 )
                return -0x4F00;
            do { if( ( ret = (mbedtls_mpi_write_binary_le( &key->d, buf, buflen )) ) != 0 ) goto cleanup; } while( 0 );
        }
        else
            ret = -0x4E80;
    }
    if( mbedtls_ecp_get_type( &key->grp ) == MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS )
    {
        do { if( ( ret = (mbedtls_mpi_write_binary( &key->d, buf, buflen )) ) != 0 ) goto cleanup; } while( 0 );
    }
cleanup:
    return( ret );
}
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub, const mbedtls_ecp_keypair *prv )
{
    int ret = -0x006E;
    mbedtls_ecp_point Q;
    mbedtls_ecp_group grp;
    do { } while( 0 );
    do { } while( 0 );
    if( pub->grp.id == MBEDTLS_ECP_DP_NONE ||
        pub->grp.id != prv->grp.id ||
        mbedtls_mpi_cmp_mpi( &pub->Q.X, &prv->Q.X ) ||
        mbedtls_mpi_cmp_mpi( &pub->Q.Y, &prv->Q.Y ) ||
        mbedtls_mpi_cmp_mpi( &pub->Q.Z, &prv->Q.Z ) )
    {
        return( -0x4F80 );
    }
    mbedtls_ecp_point_init( &Q );
    mbedtls_ecp_group_init( &grp );
    mbedtls_ecp_group_copy( &grp, &prv->grp );
    do { if( ( ret = (mbedtls_ecp_mul( &grp, &Q, &prv->d, &prv->grp.G, ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &Q.X, &prv->Q.X ) ||
        mbedtls_mpi_cmp_mpi( &Q.Y, &prv->Q.Y ) ||
        mbedtls_mpi_cmp_mpi( &Q.Z, &prv->Q.Z ) )
    {
        ret = -0x4F80;
        goto cleanup;
    }
cleanup:
    mbedtls_ecp_point_free( &Q );
    mbedtls_ecp_group_free( &grp );
    return( ret );
}
static int self_test_adjust_exponent( const mbedtls_ecp_group *grp,
                                      mbedtls_mpi *m )
{
    int ret = 0;
    switch( grp->id )
    {
        default:
            (void) grp;
            (void) m;
            goto cleanup;
    }
cleanup:
    return( ret );
}
static int self_test_point( int verbose,
                            mbedtls_ecp_group *grp,
                            mbedtls_ecp_point *R,
                            mbedtls_mpi *m,
                            const mbedtls_ecp_point *P,
                            const char *const *exponents,
                            size_t n_exponents )
{
    int ret = 0;
    size_t i = 0;
    unsigned long add_c_prev, dbl_c_prev, mul_c_prev;
    add_count = 0;
    dbl_count = 0;
    mul_count = 0;
    do { if( ( ret = (mbedtls_mpi_read_string( m, 16, exponents[0] )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (self_test_adjust_exponent( grp, m )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_ecp_mul( grp, R, m, P, ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = 1; i < n_exponents; i++ )
    {
        add_c_prev = add_count;
        dbl_c_prev = dbl_count;
        mul_c_prev = mul_count;
        add_count = 0;
        dbl_count = 0;
        mul_count = 0;
        do { if( ( ret = (mbedtls_mpi_read_string( m, 16, exponents[i] )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (self_test_adjust_exponent( grp, m )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_ecp_mul( grp, R, m, P, ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
        if( add_count != add_c_prev ||
            dbl_count != dbl_c_prev ||
            mul_count != mul_c_prev )
        {
            ret = 1;
            break;
        }
    }
cleanup:
    if( verbose != 0 )
    {
        if( ret != 0 )
            printf( "failed (%u)\n", (unsigned int) i );
        else
            printf( "passed\n" );
    }
    return( ret );
}
int mbedtls_ecp_self_test( int verbose )
{
    int ret = -0x006E;
    mbedtls_ecp_group grp;
    mbedtls_ecp_point R, P;
    mbedtls_mpi m;
    const char *sw_exponents[] =
    {
        "000000000000000000000000000000000000000000000001",
        "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8C",
        "5EA6F389A38B8BC81E767753B15AA5569E1782E30ABE7D25",
        "400000000000000000000000000000000000000000000000",
        "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
        "555555555555555555555555555555555555555555555555",
    };
    const char *m_exponents[] =
    {
        "4000000000000000000000000000000000000000000000000000000000000000",
        "5C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C30",
        "5715ECCE24583F7A7023C24164390586842E816D7280A49EF6DF4EAE6B280BF8",
        "41A2B017516F6D254E1F002BCCBADD54BE30F8CEC737A0E912B4963B6BA74460",
        "5555555555555555555555555555555555555555555555555555555555555550",
        "7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8",
    };
    mbedtls_ecp_group_init( &grp );
    mbedtls_ecp_point_init( &R );
    mbedtls_ecp_point_init( &P );
    mbedtls_mpi_init( &m );
    do { if( ( ret = (mbedtls_ecp_group_load( &grp, MBEDTLS_ECP_DP_SECP192R1 )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  ECP SW test #1 (constant op_count, base point G): " );
    do { if( ( ret = (mbedtls_mpi_lset( &m, 2 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_ecp_mul( &grp, &P, &m, &grp.G, ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    ret = self_test_point( verbose,
                           &grp, &R, &m, &grp.G,
                           sw_exponents,
                           sizeof( sw_exponents ) / sizeof( sw_exponents[0] ));
    if( ret != 0 )
        goto cleanup;
    if( verbose != 0 )
        printf( "  ECP SW test #2 (constant op_count, other point): " );
    ret = self_test_point( verbose,
                           &grp, &R, &m, &P,
                           sw_exponents,
                           sizeof( sw_exponents ) / sizeof( sw_exponents[0] ));
    if( ret != 0 )
        goto cleanup;
    mbedtls_ecp_group_free( &grp );
    mbedtls_ecp_point_free( &R );
    if( verbose != 0 )
        printf( "  ECP Montgomery test (constant op_count): " );
    do { if( ( ret = (mbedtls_ecp_group_load( &grp, MBEDTLS_ECP_DP_CURVE25519 )) ) != 0 ) goto cleanup; } while( 0 );
    ret = self_test_point( verbose,
                           &grp, &R, &m, &grp.G,
                           m_exponents,
                           sizeof( m_exponents ) / sizeof( m_exponents[0] ));
    if( ret != 0 )
        goto cleanup;
cleanup:
    if( ret < 0 && verbose != 0 )
        printf( "Unexpected error, return code = %08X\n", (unsigned int) ret );
    mbedtls_ecp_group_free( &grp );
    mbedtls_ecp_point_free( &R );
    mbedtls_ecp_point_free( &P );
    mbedtls_mpi_free( &m );
    if( verbose != 0 )
        printf( "\n" );
    return( ret );
}
