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
static const mbedtls_mpi_uint secp192r1_p[] = {
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFE) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp192r1_b[] = {
    ( (mbedtls_mpi_uint) (0xB1) << 0 ) | ( (mbedtls_mpi_uint) (0xB9) << 8 ) | ( (mbedtls_mpi_uint) (0x46) << 16 ) | ( (mbedtls_mpi_uint) (0xC1) << 24 ) | ( (mbedtls_mpi_uint) (0xEC) << 32 ) | ( (mbedtls_mpi_uint) (0xDE) << 40 ) | ( (mbedtls_mpi_uint) (0xB8) << 48 ) | ( (mbedtls_mpi_uint) (0xFE) << 56 ),
    ( (mbedtls_mpi_uint) (0x49) << 0 ) | ( (mbedtls_mpi_uint) (0x30) << 8 ) | ( (mbedtls_mpi_uint) (0x24) << 16 ) | ( (mbedtls_mpi_uint) (0x72) << 24 ) | ( (mbedtls_mpi_uint) (0xAB) << 32 ) | ( (mbedtls_mpi_uint) (0xE9) << 40 ) | ( (mbedtls_mpi_uint) (0xA7) << 48 ) | ( (mbedtls_mpi_uint) (0x0F) << 56 ),
    ( (mbedtls_mpi_uint) (0xE7) << 0 ) | ( (mbedtls_mpi_uint) (0x80) << 8 ) | ( (mbedtls_mpi_uint) (0x9C) << 16 ) | ( (mbedtls_mpi_uint) (0xE5) << 24 ) | ( (mbedtls_mpi_uint) (0x19) << 32 ) | ( (mbedtls_mpi_uint) (0x05) << 40 ) | ( (mbedtls_mpi_uint) (0x21) << 48 ) | ( (mbedtls_mpi_uint) (0x64) << 56 ),
};
static const mbedtls_mpi_uint secp192r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x12) << 0 ) | ( (mbedtls_mpi_uint) (0x10) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0x82) << 24 ) | ( (mbedtls_mpi_uint) (0xFD) << 32 ) | ( (mbedtls_mpi_uint) (0x0A) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xF4) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x88) << 8 ) | ( (mbedtls_mpi_uint) (0xA1) << 16 ) | ( (mbedtls_mpi_uint) (0x43) << 24 ) | ( (mbedtls_mpi_uint) (0xEB) << 32 ) | ( (mbedtls_mpi_uint) (0x20) << 40 ) | ( (mbedtls_mpi_uint) (0xBF) << 48 ) | ( (mbedtls_mpi_uint) (0x7C) << 56 ),
    ( (mbedtls_mpi_uint) (0xF6) << 0 ) | ( (mbedtls_mpi_uint) (0x90) << 8 ) | ( (mbedtls_mpi_uint) (0x30) << 16 ) | ( (mbedtls_mpi_uint) (0xB0) << 24 ) | ( (mbedtls_mpi_uint) (0x0E) << 32 ) | ( (mbedtls_mpi_uint) (0xA8) << 40 ) | ( (mbedtls_mpi_uint) (0x8D) << 48 ) | ( (mbedtls_mpi_uint) (0x18) << 56 ),
};
static const mbedtls_mpi_uint secp192r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x11) << 0 ) | ( (mbedtls_mpi_uint) (0x48) << 8 ) | ( (mbedtls_mpi_uint) (0x79) << 16 ) | ( (mbedtls_mpi_uint) (0x1E) << 24 ) | ( (mbedtls_mpi_uint) (0xA1) << 32 ) | ( (mbedtls_mpi_uint) (0x77) << 40 ) | ( (mbedtls_mpi_uint) (0xF9) << 48 ) | ( (mbedtls_mpi_uint) (0x73) << 56 ),
    ( (mbedtls_mpi_uint) (0xD5) << 0 ) | ( (mbedtls_mpi_uint) (0xCD) << 8 ) | ( (mbedtls_mpi_uint) (0x24) << 16 ) | ( (mbedtls_mpi_uint) (0x6B) << 24 ) | ( (mbedtls_mpi_uint) (0xED) << 32 ) | ( (mbedtls_mpi_uint) (0x11) << 40 ) | ( (mbedtls_mpi_uint) (0x10) << 48 ) | ( (mbedtls_mpi_uint) (0x63) << 56 ),
    ( (mbedtls_mpi_uint) (0x78) << 0 ) | ( (mbedtls_mpi_uint) (0xDA) << 8 ) | ( (mbedtls_mpi_uint) (0xC8) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0x95) << 32 ) | ( (mbedtls_mpi_uint) (0x2B) << 40 ) | ( (mbedtls_mpi_uint) (0x19) << 48 ) | ( (mbedtls_mpi_uint) (0x07) << 56 ),
};
static const mbedtls_mpi_uint secp192r1_n[] = {
    ( (mbedtls_mpi_uint) (0x31) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0xD2) << 16 ) | ( (mbedtls_mpi_uint) (0xB4) << 24 ) | ( (mbedtls_mpi_uint) (0xB1) << 32 ) | ( (mbedtls_mpi_uint) (0xC9) << 40 ) | ( (mbedtls_mpi_uint) (0x6B) << 48 ) | ( (mbedtls_mpi_uint) (0x14) << 56 ),
    ( (mbedtls_mpi_uint) (0x36) << 0 ) | ( (mbedtls_mpi_uint) (0xF8) << 8 ) | ( (mbedtls_mpi_uint) (0xDE) << 16 ) | ( (mbedtls_mpi_uint) (0x99) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp224r1_p[] = {
    ( (mbedtls_mpi_uint) (0x01) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
};
static const mbedtls_mpi_uint secp224r1_b[] = {
    ( (mbedtls_mpi_uint) (0xB4) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0x55) << 16 ) | ( (mbedtls_mpi_uint) (0x23) << 24 ) | ( (mbedtls_mpi_uint) (0x43) << 32 ) | ( (mbedtls_mpi_uint) (0x39) << 40 ) | ( (mbedtls_mpi_uint) (0x0B) << 48 ) | ( (mbedtls_mpi_uint) (0x27) << 56 ),
    ( (mbedtls_mpi_uint) (0xBA) << 0 ) | ( (mbedtls_mpi_uint) (0xD8) << 8 ) | ( (mbedtls_mpi_uint) (0xBF) << 16 ) | ( (mbedtls_mpi_uint) (0xD7) << 24 ) | ( (mbedtls_mpi_uint) (0xB7) << 32 ) | ( (mbedtls_mpi_uint) (0xB0) << 40 ) | ( (mbedtls_mpi_uint) (0x44) << 48 ) | ( (mbedtls_mpi_uint) (0x50) << 56 ),
    ( (mbedtls_mpi_uint) (0x56) << 0 ) | ( (mbedtls_mpi_uint) (0x32) << 8 ) | ( (mbedtls_mpi_uint) (0x41) << 16 ) | ( (mbedtls_mpi_uint) (0xF5) << 24 ) | ( (mbedtls_mpi_uint) (0xAB) << 32 ) | ( (mbedtls_mpi_uint) (0xB3) << 40 ) | ( (mbedtls_mpi_uint) (0x04) << 48 ) | ( (mbedtls_mpi_uint) (0x0C) << 56 ),
    ( (mbedtls_mpi_uint) (0x85) << 0 ) | ( (mbedtls_mpi_uint) (0x0A) << 8 ) | ( (mbedtls_mpi_uint) (0x05) << 16 ) | ( (mbedtls_mpi_uint) (0xB4) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x21) << 0 ) | ( (mbedtls_mpi_uint) (0x1D) << 8 ) | ( (mbedtls_mpi_uint) (0x5C) << 16 ) | ( (mbedtls_mpi_uint) (0x11) << 24 ) | ( (mbedtls_mpi_uint) (0xD6) << 32 ) | ( (mbedtls_mpi_uint) (0x80) << 40 ) | ( (mbedtls_mpi_uint) (0x32) << 48 ) | ( (mbedtls_mpi_uint) (0x34) << 56 ),
    ( (mbedtls_mpi_uint) (0x22) << 0 ) | ( (mbedtls_mpi_uint) (0x11) << 8 ) | ( (mbedtls_mpi_uint) (0xC2) << 16 ) | ( (mbedtls_mpi_uint) (0x56) << 24 ) | ( (mbedtls_mpi_uint) (0xD3) << 32 ) | ( (mbedtls_mpi_uint) (0xC1) << 40 ) | ( (mbedtls_mpi_uint) (0x03) << 48 ) | ( (mbedtls_mpi_uint) (0x4A) << 56 ),
    ( (mbedtls_mpi_uint) (0xB9) << 0 ) | ( (mbedtls_mpi_uint) (0x90) << 8 ) | ( (mbedtls_mpi_uint) (0x13) << 16 ) | ( (mbedtls_mpi_uint) (0x32) << 24 ) | ( (mbedtls_mpi_uint) (0x7F) << 32 ) | ( (mbedtls_mpi_uint) (0xBF) << 40 ) | ( (mbedtls_mpi_uint) (0xB4) << 48 ) | ( (mbedtls_mpi_uint) (0x6B) << 56 ),
    ( (mbedtls_mpi_uint) (0xBD) << 0 ) | ( (mbedtls_mpi_uint) (0x0C) << 8 ) | ( (mbedtls_mpi_uint) (0x0E) << 16 ) | ( (mbedtls_mpi_uint) (0xB7) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x34) << 0 ) | ( (mbedtls_mpi_uint) (0x7E) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x85) << 24 ) | ( (mbedtls_mpi_uint) (0x99) << 32 ) | ( (mbedtls_mpi_uint) (0x81) << 40 ) | ( (mbedtls_mpi_uint) (0xD5) << 48 ) | ( (mbedtls_mpi_uint) (0x44) << 56 ),
    ( (mbedtls_mpi_uint) (0x64) << 0 ) | ( (mbedtls_mpi_uint) (0x47) << 8 ) | ( (mbedtls_mpi_uint) (0x07) << 16 ) | ( (mbedtls_mpi_uint) (0x5A) << 24 ) | ( (mbedtls_mpi_uint) (0xA0) << 32 ) | ( (mbedtls_mpi_uint) (0x75) << 40 ) | ( (mbedtls_mpi_uint) (0x43) << 48 ) | ( (mbedtls_mpi_uint) (0xCD) << 56 ),
    ( (mbedtls_mpi_uint) (0xE6) << 0 ) | ( (mbedtls_mpi_uint) (0xDF) << 8 ) | ( (mbedtls_mpi_uint) (0x22) << 16 ) | ( (mbedtls_mpi_uint) (0x4C) << 24 ) | ( (mbedtls_mpi_uint) (0xFB) << 32 ) | ( (mbedtls_mpi_uint) (0x23) << 40 ) | ( (mbedtls_mpi_uint) (0xF7) << 48 ) | ( (mbedtls_mpi_uint) (0xB5) << 56 ),
    ( (mbedtls_mpi_uint) (0x88) << 0 ) | ( (mbedtls_mpi_uint) (0x63) << 8 ) | ( (mbedtls_mpi_uint) (0x37) << 16 ) | ( (mbedtls_mpi_uint) (0xBD) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224r1_n[] = {
    ( (mbedtls_mpi_uint) (0x3D) << 0 ) | ( (mbedtls_mpi_uint) (0x2A) << 8 ) | ( (mbedtls_mpi_uint) (0x5C) << 16 ) | ( (mbedtls_mpi_uint) (0x5C) << 24 ) | ( (mbedtls_mpi_uint) (0x45) << 32 ) | ( (mbedtls_mpi_uint) (0x29) << 40 ) | ( (mbedtls_mpi_uint) (0xDD) << 48 ) | ( (mbedtls_mpi_uint) (0x13) << 56 ),
    ( (mbedtls_mpi_uint) (0x3E) << 0 ) | ( (mbedtls_mpi_uint) (0xF0) << 8 ) | ( (mbedtls_mpi_uint) (0xB8) << 16 ) | ( (mbedtls_mpi_uint) (0xE0) << 24 ) | ( (mbedtls_mpi_uint) (0xA2) << 32 ) | ( (mbedtls_mpi_uint) (0x16) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp256r1_p[] = {
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x01) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp256r1_b[] = {
    ( (mbedtls_mpi_uint) (0x4B) << 0 ) | ( (mbedtls_mpi_uint) (0x60) << 8 ) | ( (mbedtls_mpi_uint) (0xD2) << 16 ) | ( (mbedtls_mpi_uint) (0x27) << 24 ) | ( (mbedtls_mpi_uint) (0x3E) << 32 ) | ( (mbedtls_mpi_uint) (0x3C) << 40 ) | ( (mbedtls_mpi_uint) (0xCE) << 48 ) | ( (mbedtls_mpi_uint) (0x3B) << 56 ),
    ( (mbedtls_mpi_uint) (0xF6) << 0 ) | ( (mbedtls_mpi_uint) (0xB0) << 8 ) | ( (mbedtls_mpi_uint) (0x53) << 16 ) | ( (mbedtls_mpi_uint) (0xCC) << 24 ) | ( (mbedtls_mpi_uint) (0xB0) << 32 ) | ( (mbedtls_mpi_uint) (0x06) << 40 ) | ( (mbedtls_mpi_uint) (0x1D) << 48 ) | ( (mbedtls_mpi_uint) (0x65) << 56 ),
    ( (mbedtls_mpi_uint) (0xBC) << 0 ) | ( (mbedtls_mpi_uint) (0x86) << 8 ) | ( (mbedtls_mpi_uint) (0x98) << 16 ) | ( (mbedtls_mpi_uint) (0x76) << 24 ) | ( (mbedtls_mpi_uint) (0x55) << 32 ) | ( (mbedtls_mpi_uint) (0xBD) << 40 ) | ( (mbedtls_mpi_uint) (0xEB) << 48 ) | ( (mbedtls_mpi_uint) (0xB3) << 56 ),
    ( (mbedtls_mpi_uint) (0xE7) << 0 ) | ( (mbedtls_mpi_uint) (0x93) << 8 ) | ( (mbedtls_mpi_uint) (0x3A) << 16 ) | ( (mbedtls_mpi_uint) (0xAA) << 24 ) | ( (mbedtls_mpi_uint) (0xD8) << 32 ) | ( (mbedtls_mpi_uint) (0x35) << 40 ) | ( (mbedtls_mpi_uint) (0xC6) << 48 ) | ( (mbedtls_mpi_uint) (0x5A) << 56 ),
};
static const mbedtls_mpi_uint secp256r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x96) << 0 ) | ( (mbedtls_mpi_uint) (0xC2) << 8 ) | ( (mbedtls_mpi_uint) (0x98) << 16 ) | ( (mbedtls_mpi_uint) (0xD8) << 24 ) | ( (mbedtls_mpi_uint) (0x45) << 32 ) | ( (mbedtls_mpi_uint) (0x39) << 40 ) | ( (mbedtls_mpi_uint) (0xA1) << 48 ) | ( (mbedtls_mpi_uint) (0xF4) << 56 ),
    ( (mbedtls_mpi_uint) (0xA0) << 0 ) | ( (mbedtls_mpi_uint) (0x33) << 8 ) | ( (mbedtls_mpi_uint) (0xEB) << 16 ) | ( (mbedtls_mpi_uint) (0x2D) << 24 ) | ( (mbedtls_mpi_uint) (0x81) << 32 ) | ( (mbedtls_mpi_uint) (0x7D) << 40 ) | ( (mbedtls_mpi_uint) (0x03) << 48 ) | ( (mbedtls_mpi_uint) (0x77) << 56 ),
    ( (mbedtls_mpi_uint) (0xF2) << 0 ) | ( (mbedtls_mpi_uint) (0x40) << 8 ) | ( (mbedtls_mpi_uint) (0xA4) << 16 ) | ( (mbedtls_mpi_uint) (0x63) << 24 ) | ( (mbedtls_mpi_uint) (0xE5) << 32 ) | ( (mbedtls_mpi_uint) (0xE6) << 40 ) | ( (mbedtls_mpi_uint) (0xBC) << 48 ) | ( (mbedtls_mpi_uint) (0xF8) << 56 ),
    ( (mbedtls_mpi_uint) (0x47) << 0 ) | ( (mbedtls_mpi_uint) (0x42) << 8 ) | ( (mbedtls_mpi_uint) (0x2C) << 16 ) | ( (mbedtls_mpi_uint) (0xE1) << 24 ) | ( (mbedtls_mpi_uint) (0xF2) << 32 ) | ( (mbedtls_mpi_uint) (0xD1) << 40 ) | ( (mbedtls_mpi_uint) (0x17) << 48 ) | ( (mbedtls_mpi_uint) (0x6B) << 56 ),
};
static const mbedtls_mpi_uint secp256r1_gy[] = {
    ( (mbedtls_mpi_uint) (0xF5) << 0 ) | ( (mbedtls_mpi_uint) (0x51) << 8 ) | ( (mbedtls_mpi_uint) (0xBF) << 16 ) | ( (mbedtls_mpi_uint) (0x37) << 24 ) | ( (mbedtls_mpi_uint) (0x68) << 32 ) | ( (mbedtls_mpi_uint) (0x40) << 40 ) | ( (mbedtls_mpi_uint) (0xB6) << 48 ) | ( (mbedtls_mpi_uint) (0xCB) << 56 ),
    ( (mbedtls_mpi_uint) (0xCE) << 0 ) | ( (mbedtls_mpi_uint) (0x5E) << 8 ) | ( (mbedtls_mpi_uint) (0x31) << 16 ) | ( (mbedtls_mpi_uint) (0x6B) << 24 ) | ( (mbedtls_mpi_uint) (0x57) << 32 ) | ( (mbedtls_mpi_uint) (0x33) << 40 ) | ( (mbedtls_mpi_uint) (0xCE) << 48 ) | ( (mbedtls_mpi_uint) (0x2B) << 56 ),
    ( (mbedtls_mpi_uint) (0x16) << 0 ) | ( (mbedtls_mpi_uint) (0x9E) << 8 ) | ( (mbedtls_mpi_uint) (0x0F) << 16 ) | ( (mbedtls_mpi_uint) (0x7C) << 24 ) | ( (mbedtls_mpi_uint) (0x4A) << 32 ) | ( (mbedtls_mpi_uint) (0xEB) << 40 ) | ( (mbedtls_mpi_uint) (0xE7) << 48 ) | ( (mbedtls_mpi_uint) (0x8E) << 56 ),
    ( (mbedtls_mpi_uint) (0x9B) << 0 ) | ( (mbedtls_mpi_uint) (0x7F) << 8 ) | ( (mbedtls_mpi_uint) (0x1A) << 16 ) | ( (mbedtls_mpi_uint) (0xFE) << 24 ) | ( (mbedtls_mpi_uint) (0xE2) << 32 ) | ( (mbedtls_mpi_uint) (0x42) << 40 ) | ( (mbedtls_mpi_uint) (0xE3) << 48 ) | ( (mbedtls_mpi_uint) (0x4F) << 56 ),
};
static const mbedtls_mpi_uint secp256r1_n[] = {
    ( (mbedtls_mpi_uint) (0x51) << 0 ) | ( (mbedtls_mpi_uint) (0x25) << 8 ) | ( (mbedtls_mpi_uint) (0x63) << 16 ) | ( (mbedtls_mpi_uint) (0xFC) << 24 ) | ( (mbedtls_mpi_uint) (0xC2) << 32 ) | ( (mbedtls_mpi_uint) (0xCA) << 40 ) | ( (mbedtls_mpi_uint) (0xB9) << 48 ) | ( (mbedtls_mpi_uint) (0xF3) << 56 ),
    ( (mbedtls_mpi_uint) (0x84) << 0 ) | ( (mbedtls_mpi_uint) (0x9E) << 8 ) | ( (mbedtls_mpi_uint) (0x17) << 16 ) | ( (mbedtls_mpi_uint) (0xA7) << 24 ) | ( (mbedtls_mpi_uint) (0xAD) << 32 ) | ( (mbedtls_mpi_uint) (0xFA) << 40 ) | ( (mbedtls_mpi_uint) (0xE6) << 48 ) | ( (mbedtls_mpi_uint) (0xBC) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp384r1_p[] = {
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFE) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp384r1_b[] = {
    ( (mbedtls_mpi_uint) (0xEF) << 0 ) | ( (mbedtls_mpi_uint) (0x2A) << 8 ) | ( (mbedtls_mpi_uint) (0xEC) << 16 ) | ( (mbedtls_mpi_uint) (0xD3) << 24 ) | ( (mbedtls_mpi_uint) (0xED) << 32 ) | ( (mbedtls_mpi_uint) (0xC8) << 40 ) | ( (mbedtls_mpi_uint) (0x85) << 48 ) | ( (mbedtls_mpi_uint) (0x2A) << 56 ),
    ( (mbedtls_mpi_uint) (0x9D) << 0 ) | ( (mbedtls_mpi_uint) (0xD1) << 8 ) | ( (mbedtls_mpi_uint) (0x2E) << 16 ) | ( (mbedtls_mpi_uint) (0x8A) << 24 ) | ( (mbedtls_mpi_uint) (0x8D) << 32 ) | ( (mbedtls_mpi_uint) (0x39) << 40 ) | ( (mbedtls_mpi_uint) (0x56) << 48 ) | ( (mbedtls_mpi_uint) (0xC6) << 56 ),
    ( (mbedtls_mpi_uint) (0x5A) << 0 ) | ( (mbedtls_mpi_uint) (0x87) << 8 ) | ( (mbedtls_mpi_uint) (0x13) << 16 ) | ( (mbedtls_mpi_uint) (0x50) << 24 ) | ( (mbedtls_mpi_uint) (0x8F) << 32 ) | ( (mbedtls_mpi_uint) (0x08) << 40 ) | ( (mbedtls_mpi_uint) (0x14) << 48 ) | ( (mbedtls_mpi_uint) (0x03) << 56 ),
    ( (mbedtls_mpi_uint) (0x12) << 0 ) | ( (mbedtls_mpi_uint) (0x41) << 8 ) | ( (mbedtls_mpi_uint) (0x81) << 16 ) | ( (mbedtls_mpi_uint) (0xFE) << 24 ) | ( (mbedtls_mpi_uint) (0x6E) << 32 ) | ( (mbedtls_mpi_uint) (0x9C) << 40 ) | ( (mbedtls_mpi_uint) (0x1D) << 48 ) | ( (mbedtls_mpi_uint) (0x18) << 56 ),
    ( (mbedtls_mpi_uint) (0x19) << 0 ) | ( (mbedtls_mpi_uint) (0x2D) << 8 ) | ( (mbedtls_mpi_uint) (0xF8) << 16 ) | ( (mbedtls_mpi_uint) (0xE3) << 24 ) | ( (mbedtls_mpi_uint) (0x6B) << 32 ) | ( (mbedtls_mpi_uint) (0x05) << 40 ) | ( (mbedtls_mpi_uint) (0x8E) << 48 ) | ( (mbedtls_mpi_uint) (0x98) << 56 ),
    ( (mbedtls_mpi_uint) (0xE4) << 0 ) | ( (mbedtls_mpi_uint) (0xE7) << 8 ) | ( (mbedtls_mpi_uint) (0x3E) << 16 ) | ( (mbedtls_mpi_uint) (0xE2) << 24 ) | ( (mbedtls_mpi_uint) (0xA7) << 32 ) | ( (mbedtls_mpi_uint) (0x2F) << 40 ) | ( (mbedtls_mpi_uint) (0x31) << 48 ) | ( (mbedtls_mpi_uint) (0xB3) << 56 ),
};
static const mbedtls_mpi_uint secp384r1_gx[] = {
    ( (mbedtls_mpi_uint) (0xB7) << 0 ) | ( (mbedtls_mpi_uint) (0x0A) << 8 ) | ( (mbedtls_mpi_uint) (0x76) << 16 ) | ( (mbedtls_mpi_uint) (0x72) << 24 ) | ( (mbedtls_mpi_uint) (0x38) << 32 ) | ( (mbedtls_mpi_uint) (0x5E) << 40 ) | ( (mbedtls_mpi_uint) (0x54) << 48 ) | ( (mbedtls_mpi_uint) (0x3A) << 56 ),
    ( (mbedtls_mpi_uint) (0x6C) << 0 ) | ( (mbedtls_mpi_uint) (0x29) << 8 ) | ( (mbedtls_mpi_uint) (0x55) << 16 ) | ( (mbedtls_mpi_uint) (0xBF) << 24 ) | ( (mbedtls_mpi_uint) (0x5D) << 32 ) | ( (mbedtls_mpi_uint) (0xF2) << 40 ) | ( (mbedtls_mpi_uint) (0x02) << 48 ) | ( (mbedtls_mpi_uint) (0x55) << 56 ),
    ( (mbedtls_mpi_uint) (0x38) << 0 ) | ( (mbedtls_mpi_uint) (0x2A) << 8 ) | ( (mbedtls_mpi_uint) (0x54) << 16 ) | ( (mbedtls_mpi_uint) (0x82) << 24 ) | ( (mbedtls_mpi_uint) (0xE0) << 32 ) | ( (mbedtls_mpi_uint) (0x41) << 40 ) | ( (mbedtls_mpi_uint) (0xF7) << 48 ) | ( (mbedtls_mpi_uint) (0x59) << 56 ),
    ( (mbedtls_mpi_uint) (0x98) << 0 ) | ( (mbedtls_mpi_uint) (0x9B) << 8 ) | ( (mbedtls_mpi_uint) (0xA7) << 16 ) | ( (mbedtls_mpi_uint) (0x8B) << 24 ) | ( (mbedtls_mpi_uint) (0x62) << 32 ) | ( (mbedtls_mpi_uint) (0x3B) << 40 ) | ( (mbedtls_mpi_uint) (0x1D) << 48 ) | ( (mbedtls_mpi_uint) (0x6E) << 56 ),
    ( (mbedtls_mpi_uint) (0x74) << 0 ) | ( (mbedtls_mpi_uint) (0xAD) << 8 ) | ( (mbedtls_mpi_uint) (0x20) << 16 ) | ( (mbedtls_mpi_uint) (0xF3) << 24 ) | ( (mbedtls_mpi_uint) (0x1E) << 32 ) | ( (mbedtls_mpi_uint) (0xC7) << 40 ) | ( (mbedtls_mpi_uint) (0xB1) << 48 ) | ( (mbedtls_mpi_uint) (0x8E) << 56 ),
    ( (mbedtls_mpi_uint) (0x37) << 0 ) | ( (mbedtls_mpi_uint) (0x05) << 8 ) | ( (mbedtls_mpi_uint) (0x8B) << 16 ) | ( (mbedtls_mpi_uint) (0xBE) << 24 ) | ( (mbedtls_mpi_uint) (0x22) << 32 ) | ( (mbedtls_mpi_uint) (0xCA) << 40 ) | ( (mbedtls_mpi_uint) (0x87) << 48 ) | ( (mbedtls_mpi_uint) (0xAA) << 56 ),
};
static const mbedtls_mpi_uint secp384r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x5F) << 0 ) | ( (mbedtls_mpi_uint) (0x0E) << 8 ) | ( (mbedtls_mpi_uint) (0xEA) << 16 ) | ( (mbedtls_mpi_uint) (0x90) << 24 ) | ( (mbedtls_mpi_uint) (0x7C) << 32 ) | ( (mbedtls_mpi_uint) (0x1D) << 40 ) | ( (mbedtls_mpi_uint) (0x43) << 48 ) | ( (mbedtls_mpi_uint) (0x7A) << 56 ),
    ( (mbedtls_mpi_uint) (0x9D) << 0 ) | ( (mbedtls_mpi_uint) (0x81) << 8 ) | ( (mbedtls_mpi_uint) (0x7E) << 16 ) | ( (mbedtls_mpi_uint) (0x1D) << 24 ) | ( (mbedtls_mpi_uint) (0xCE) << 32 ) | ( (mbedtls_mpi_uint) (0xB1) << 40 ) | ( (mbedtls_mpi_uint) (0x60) << 48 ) | ( (mbedtls_mpi_uint) (0x0A) << 56 ),
    ( (mbedtls_mpi_uint) (0xC0) << 0 ) | ( (mbedtls_mpi_uint) (0xB8) << 8 ) | ( (mbedtls_mpi_uint) (0xF0) << 16 ) | ( (mbedtls_mpi_uint) (0xB5) << 24 ) | ( (mbedtls_mpi_uint) (0x13) << 32 ) | ( (mbedtls_mpi_uint) (0x31) << 40 ) | ( (mbedtls_mpi_uint) (0xDA) << 48 ) | ( (mbedtls_mpi_uint) (0xE9) << 56 ),
    ( (mbedtls_mpi_uint) (0x7C) << 0 ) | ( (mbedtls_mpi_uint) (0x14) << 8 ) | ( (mbedtls_mpi_uint) (0x9A) << 16 ) | ( (mbedtls_mpi_uint) (0x28) << 24 ) | ( (mbedtls_mpi_uint) (0xBD) << 32 ) | ( (mbedtls_mpi_uint) (0x1D) << 40 ) | ( (mbedtls_mpi_uint) (0xF4) << 48 ) | ( (mbedtls_mpi_uint) (0xF8) << 56 ),
    ( (mbedtls_mpi_uint) (0x29) << 0 ) | ( (mbedtls_mpi_uint) (0xDC) << 8 ) | ( (mbedtls_mpi_uint) (0x92) << 16 ) | ( (mbedtls_mpi_uint) (0x92) << 24 ) | ( (mbedtls_mpi_uint) (0xBF) << 32 ) | ( (mbedtls_mpi_uint) (0x98) << 40 ) | ( (mbedtls_mpi_uint) (0x9E) << 48 ) | ( (mbedtls_mpi_uint) (0x5D) << 56 ),
    ( (mbedtls_mpi_uint) (0x6F) << 0 ) | ( (mbedtls_mpi_uint) (0x2C) << 8 ) | ( (mbedtls_mpi_uint) (0x26) << 16 ) | ( (mbedtls_mpi_uint) (0x96) << 24 ) | ( (mbedtls_mpi_uint) (0x4A) << 32 ) | ( (mbedtls_mpi_uint) (0xDE) << 40 ) | ( (mbedtls_mpi_uint) (0x17) << 48 ) | ( (mbedtls_mpi_uint) (0x36) << 56 ),
};
static const mbedtls_mpi_uint secp384r1_n[] = {
    ( (mbedtls_mpi_uint) (0x73) << 0 ) | ( (mbedtls_mpi_uint) (0x29) << 8 ) | ( (mbedtls_mpi_uint) (0xC5) << 16 ) | ( (mbedtls_mpi_uint) (0xCC) << 24 ) | ( (mbedtls_mpi_uint) (0x6A) << 32 ) | ( (mbedtls_mpi_uint) (0x19) << 40 ) | ( (mbedtls_mpi_uint) (0xEC) << 48 ) | ( (mbedtls_mpi_uint) (0xEC) << 56 ),
    ( (mbedtls_mpi_uint) (0x7A) << 0 ) | ( (mbedtls_mpi_uint) (0xA7) << 8 ) | ( (mbedtls_mpi_uint) (0xB0) << 16 ) | ( (mbedtls_mpi_uint) (0x48) << 24 ) | ( (mbedtls_mpi_uint) (0xB2) << 32 ) | ( (mbedtls_mpi_uint) (0x0D) << 40 ) | ( (mbedtls_mpi_uint) (0x1A) << 48 ) | ( (mbedtls_mpi_uint) (0x58) << 56 ),
    ( (mbedtls_mpi_uint) (0xDF) << 0 ) | ( (mbedtls_mpi_uint) (0x2D) << 8 ) | ( (mbedtls_mpi_uint) (0x37) << 16 ) | ( (mbedtls_mpi_uint) (0xF4) << 24 ) | ( (mbedtls_mpi_uint) (0x81) << 32 ) | ( (mbedtls_mpi_uint) (0x4D) << 40 ) | ( (mbedtls_mpi_uint) (0x63) << 48 ) | ( (mbedtls_mpi_uint) (0xC7) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp521r1_p[] = {
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0x01) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp521r1_b[] = {
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x3F) << 8 ) | ( (mbedtls_mpi_uint) (0x50) << 16 ) | ( (mbedtls_mpi_uint) (0x6B) << 24 ) | ( (mbedtls_mpi_uint) (0xD4) << 32 ) | ( (mbedtls_mpi_uint) (0x1F) << 40 ) | ( (mbedtls_mpi_uint) (0x45) << 48 ) | ( (mbedtls_mpi_uint) (0xEF) << 56 ),
    ( (mbedtls_mpi_uint) (0xF1) << 0 ) | ( (mbedtls_mpi_uint) (0x34) << 8 ) | ( (mbedtls_mpi_uint) (0x2C) << 16 ) | ( (mbedtls_mpi_uint) (0x3D) << 24 ) | ( (mbedtls_mpi_uint) (0x88) << 32 ) | ( (mbedtls_mpi_uint) (0xDF) << 40 ) | ( (mbedtls_mpi_uint) (0x73) << 48 ) | ( (mbedtls_mpi_uint) (0x35) << 56 ),
    ( (mbedtls_mpi_uint) (0x07) << 0 ) | ( (mbedtls_mpi_uint) (0xBF) << 8 ) | ( (mbedtls_mpi_uint) (0xB1) << 16 ) | ( (mbedtls_mpi_uint) (0x3B) << 24 ) | ( (mbedtls_mpi_uint) (0xBD) << 32 ) | ( (mbedtls_mpi_uint) (0xC0) << 40 ) | ( (mbedtls_mpi_uint) (0x52) << 48 ) | ( (mbedtls_mpi_uint) (0x16) << 56 ),
    ( (mbedtls_mpi_uint) (0x7B) << 0 ) | ( (mbedtls_mpi_uint) (0x93) << 8 ) | ( (mbedtls_mpi_uint) (0x7E) << 16 ) | ( (mbedtls_mpi_uint) (0xEC) << 24 ) | ( (mbedtls_mpi_uint) (0x51) << 32 ) | ( (mbedtls_mpi_uint) (0x39) << 40 ) | ( (mbedtls_mpi_uint) (0x19) << 48 ) | ( (mbedtls_mpi_uint) (0x56) << 56 ),
    ( (mbedtls_mpi_uint) (0xE1) << 0 ) | ( (mbedtls_mpi_uint) (0x09) << 8 ) | ( (mbedtls_mpi_uint) (0xF1) << 16 ) | ( (mbedtls_mpi_uint) (0x8E) << 24 ) | ( (mbedtls_mpi_uint) (0x91) << 32 ) | ( (mbedtls_mpi_uint) (0x89) << 40 ) | ( (mbedtls_mpi_uint) (0xB4) << 48 ) | ( (mbedtls_mpi_uint) (0xB8) << 56 ),
    ( (mbedtls_mpi_uint) (0xF3) << 0 ) | ( (mbedtls_mpi_uint) (0x15) << 8 ) | ( (mbedtls_mpi_uint) (0xB3) << 16 ) | ( (mbedtls_mpi_uint) (0x99) << 24 ) | ( (mbedtls_mpi_uint) (0x5B) << 32 ) | ( (mbedtls_mpi_uint) (0x72) << 40 ) | ( (mbedtls_mpi_uint) (0xDA) << 48 ) | ( (mbedtls_mpi_uint) (0xA2) << 56 ),
    ( (mbedtls_mpi_uint) (0xEE) << 0 ) | ( (mbedtls_mpi_uint) (0x40) << 8 ) | ( (mbedtls_mpi_uint) (0x85) << 16 ) | ( (mbedtls_mpi_uint) (0xB6) << 24 ) | ( (mbedtls_mpi_uint) (0xA0) << 32 ) | ( (mbedtls_mpi_uint) (0x21) << 40 ) | ( (mbedtls_mpi_uint) (0x9A) << 48 ) | ( (mbedtls_mpi_uint) (0x92) << 56 ),
    ( (mbedtls_mpi_uint) (0x1F) << 0 ) | ( (mbedtls_mpi_uint) (0x9A) << 8 ) | ( (mbedtls_mpi_uint) (0x1C) << 16 ) | ( (mbedtls_mpi_uint) (0x8E) << 24 ) | ( (mbedtls_mpi_uint) (0x61) << 32 ) | ( (mbedtls_mpi_uint) (0xB9) << 40 ) | ( (mbedtls_mpi_uint) (0x3E) << 48 ) | ( (mbedtls_mpi_uint) (0x95) << 56 ),
    ( (mbedtls_mpi_uint) (0x51) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp521r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x66) << 0 ) | ( (mbedtls_mpi_uint) (0xBD) << 8 ) | ( (mbedtls_mpi_uint) (0xE5) << 16 ) | ( (mbedtls_mpi_uint) (0xC2) << 24 ) | ( (mbedtls_mpi_uint) (0x31) << 32 ) | ( (mbedtls_mpi_uint) (0x7E) << 40 ) | ( (mbedtls_mpi_uint) (0x7E) << 48 ) | ( (mbedtls_mpi_uint) (0xF9) << 56 ),
    ( (mbedtls_mpi_uint) (0x9B) << 0 ) | ( (mbedtls_mpi_uint) (0x42) << 8 ) | ( (mbedtls_mpi_uint) (0x6A) << 16 ) | ( (mbedtls_mpi_uint) (0x85) << 24 ) | ( (mbedtls_mpi_uint) (0xC1) << 32 ) | ( (mbedtls_mpi_uint) (0xB3) << 40 ) | ( (mbedtls_mpi_uint) (0x48) << 48 ) | ( (mbedtls_mpi_uint) (0x33) << 56 ),
    ( (mbedtls_mpi_uint) (0xDE) << 0 ) | ( (mbedtls_mpi_uint) (0xA8) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xA2) << 24 ) | ( (mbedtls_mpi_uint) (0x27) << 32 ) | ( (mbedtls_mpi_uint) (0xC1) << 40 ) | ( (mbedtls_mpi_uint) (0x1D) << 48 ) | ( (mbedtls_mpi_uint) (0xFE) << 56 ),
    ( (mbedtls_mpi_uint) (0x28) << 0 ) | ( (mbedtls_mpi_uint) (0x59) << 8 ) | ( (mbedtls_mpi_uint) (0xE7) << 16 ) | ( (mbedtls_mpi_uint) (0xEF) << 24 ) | ( (mbedtls_mpi_uint) (0x77) << 32 ) | ( (mbedtls_mpi_uint) (0x5E) << 40 ) | ( (mbedtls_mpi_uint) (0x4B) << 48 ) | ( (mbedtls_mpi_uint) (0xA1) << 56 ),
    ( (mbedtls_mpi_uint) (0xBA) << 0 ) | ( (mbedtls_mpi_uint) (0x3D) << 8 ) | ( (mbedtls_mpi_uint) (0x4D) << 16 ) | ( (mbedtls_mpi_uint) (0x6B) << 24 ) | ( (mbedtls_mpi_uint) (0x60) << 32 ) | ( (mbedtls_mpi_uint) (0xAF) << 40 ) | ( (mbedtls_mpi_uint) (0x28) << 48 ) | ( (mbedtls_mpi_uint) (0xF8) << 56 ),
    ( (mbedtls_mpi_uint) (0x21) << 0 ) | ( (mbedtls_mpi_uint) (0xB5) << 8 ) | ( (mbedtls_mpi_uint) (0x3F) << 16 ) | ( (mbedtls_mpi_uint) (0x05) << 24 ) | ( (mbedtls_mpi_uint) (0x39) << 32 ) | ( (mbedtls_mpi_uint) (0x81) << 40 ) | ( (mbedtls_mpi_uint) (0x64) << 48 ) | ( (mbedtls_mpi_uint) (0x9C) << 56 ),
    ( (mbedtls_mpi_uint) (0x42) << 0 ) | ( (mbedtls_mpi_uint) (0xB4) << 8 ) | ( (mbedtls_mpi_uint) (0x95) << 16 ) | ( (mbedtls_mpi_uint) (0x23) << 24 ) | ( (mbedtls_mpi_uint) (0x66) << 32 ) | ( (mbedtls_mpi_uint) (0xCB) << 40 ) | ( (mbedtls_mpi_uint) (0x3E) << 48 ) | ( (mbedtls_mpi_uint) (0x9E) << 56 ),
    ( (mbedtls_mpi_uint) (0xCD) << 0 ) | ( (mbedtls_mpi_uint) (0xE9) << 8 ) | ( (mbedtls_mpi_uint) (0x04) << 16 ) | ( (mbedtls_mpi_uint) (0x04) << 24 ) | ( (mbedtls_mpi_uint) (0xB7) << 32 ) | ( (mbedtls_mpi_uint) (0x06) << 40 ) | ( (mbedtls_mpi_uint) (0x8E) << 48 ) | ( (mbedtls_mpi_uint) (0x85) << 56 ),
    ( (mbedtls_mpi_uint) (0xC6) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp521r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x50) << 0 ) | ( (mbedtls_mpi_uint) (0x66) << 8 ) | ( (mbedtls_mpi_uint) (0xD1) << 16 ) | ( (mbedtls_mpi_uint) (0x9F) << 24 ) | ( (mbedtls_mpi_uint) (0x76) << 32 ) | ( (mbedtls_mpi_uint) (0x94) << 40 ) | ( (mbedtls_mpi_uint) (0xBE) << 48 ) | ( (mbedtls_mpi_uint) (0x88) << 56 ),
    ( (mbedtls_mpi_uint) (0x40) << 0 ) | ( (mbedtls_mpi_uint) (0xC2) << 8 ) | ( (mbedtls_mpi_uint) (0x72) << 16 ) | ( (mbedtls_mpi_uint) (0xA2) << 24 ) | ( (mbedtls_mpi_uint) (0x86) << 32 ) | ( (mbedtls_mpi_uint) (0x70) << 40 ) | ( (mbedtls_mpi_uint) (0x3C) << 48 ) | ( (mbedtls_mpi_uint) (0x35) << 56 ),
    ( (mbedtls_mpi_uint) (0x61) << 0 ) | ( (mbedtls_mpi_uint) (0x07) << 8 ) | ( (mbedtls_mpi_uint) (0xAD) << 16 ) | ( (mbedtls_mpi_uint) (0x3F) << 24 ) | ( (mbedtls_mpi_uint) (0x01) << 32 ) | ( (mbedtls_mpi_uint) (0xB9) << 40 ) | ( (mbedtls_mpi_uint) (0x50) << 48 ) | ( (mbedtls_mpi_uint) (0xC5) << 56 ),
    ( (mbedtls_mpi_uint) (0x40) << 0 ) | ( (mbedtls_mpi_uint) (0x26) << 8 ) | ( (mbedtls_mpi_uint) (0xF4) << 16 ) | ( (mbedtls_mpi_uint) (0x5E) << 24 ) | ( (mbedtls_mpi_uint) (0x99) << 32 ) | ( (mbedtls_mpi_uint) (0x72) << 40 ) | ( (mbedtls_mpi_uint) (0xEE) << 48 ) | ( (mbedtls_mpi_uint) (0x97) << 56 ),
    ( (mbedtls_mpi_uint) (0x2C) << 0 ) | ( (mbedtls_mpi_uint) (0x66) << 8 ) | ( (mbedtls_mpi_uint) (0x3E) << 16 ) | ( (mbedtls_mpi_uint) (0x27) << 24 ) | ( (mbedtls_mpi_uint) (0x17) << 32 ) | ( (mbedtls_mpi_uint) (0xBD) << 40 ) | ( (mbedtls_mpi_uint) (0xAF) << 48 ) | ( (mbedtls_mpi_uint) (0x17) << 56 ),
    ( (mbedtls_mpi_uint) (0x68) << 0 ) | ( (mbedtls_mpi_uint) (0x44) << 8 ) | ( (mbedtls_mpi_uint) (0x9B) << 16 ) | ( (mbedtls_mpi_uint) (0x57) << 24 ) | ( (mbedtls_mpi_uint) (0x49) << 32 ) | ( (mbedtls_mpi_uint) (0x44) << 40 ) | ( (mbedtls_mpi_uint) (0xF5) << 48 ) | ( (mbedtls_mpi_uint) (0x98) << 56 ),
    ( (mbedtls_mpi_uint) (0xD9) << 0 ) | ( (mbedtls_mpi_uint) (0x1B) << 8 ) | ( (mbedtls_mpi_uint) (0x7D) << 16 ) | ( (mbedtls_mpi_uint) (0x2C) << 24 ) | ( (mbedtls_mpi_uint) (0xB4) << 32 ) | ( (mbedtls_mpi_uint) (0x5F) << 40 ) | ( (mbedtls_mpi_uint) (0x8A) << 48 ) | ( (mbedtls_mpi_uint) (0x5C) << 56 ),
    ( (mbedtls_mpi_uint) (0x04) << 0 ) | ( (mbedtls_mpi_uint) (0xC0) << 8 ) | ( (mbedtls_mpi_uint) (0x3B) << 16 ) | ( (mbedtls_mpi_uint) (0x9A) << 24 ) | ( (mbedtls_mpi_uint) (0x78) << 32 ) | ( (mbedtls_mpi_uint) (0x6A) << 40 ) | ( (mbedtls_mpi_uint) (0x29) << 48 ) | ( (mbedtls_mpi_uint) (0x39) << 56 ),
    ( (mbedtls_mpi_uint) (0x18) << 0 ) | ( (mbedtls_mpi_uint) (0x01) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp521r1_n[] = {
    ( (mbedtls_mpi_uint) (0x09) << 0 ) | ( (mbedtls_mpi_uint) (0x64) << 8 ) | ( (mbedtls_mpi_uint) (0x38) << 16 ) | ( (mbedtls_mpi_uint) (0x91) << 24 ) | ( (mbedtls_mpi_uint) (0x1E) << 32 ) | ( (mbedtls_mpi_uint) (0xB7) << 40 ) | ( (mbedtls_mpi_uint) (0x6F) << 48 ) | ( (mbedtls_mpi_uint) (0xBB) << 56 ),
    ( (mbedtls_mpi_uint) (0xAE) << 0 ) | ( (mbedtls_mpi_uint) (0x47) << 8 ) | ( (mbedtls_mpi_uint) (0x9C) << 16 ) | ( (mbedtls_mpi_uint) (0x89) << 24 ) | ( (mbedtls_mpi_uint) (0xB8) << 32 ) | ( (mbedtls_mpi_uint) (0xC9) << 40 ) | ( (mbedtls_mpi_uint) (0xB5) << 48 ) | ( (mbedtls_mpi_uint) (0x3B) << 56 ),
    ( (mbedtls_mpi_uint) (0xD0) << 0 ) | ( (mbedtls_mpi_uint) (0xA5) << 8 ) | ( (mbedtls_mpi_uint) (0x09) << 16 ) | ( (mbedtls_mpi_uint) (0xF7) << 24 ) | ( (mbedtls_mpi_uint) (0x48) << 32 ) | ( (mbedtls_mpi_uint) (0x01) << 40 ) | ( (mbedtls_mpi_uint) (0xCC) << 48 ) | ( (mbedtls_mpi_uint) (0x7F) << 56 ),
    ( (mbedtls_mpi_uint) (0x6B) << 0 ) | ( (mbedtls_mpi_uint) (0x96) << 8 ) | ( (mbedtls_mpi_uint) (0x2F) << 16 ) | ( (mbedtls_mpi_uint) (0xBF) << 24 ) | ( (mbedtls_mpi_uint) (0x83) << 32 ) | ( (mbedtls_mpi_uint) (0x87) << 40 ) | ( (mbedtls_mpi_uint) (0x86) << 48 ) | ( (mbedtls_mpi_uint) (0x51) << 56 ),
    ( (mbedtls_mpi_uint) (0xFA) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0x01) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_p[] = {
    ( (mbedtls_mpi_uint) (0x37) << 0 ) | ( (mbedtls_mpi_uint) (0xEE) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFE) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_a[] = {
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_b[] = {
    ( (mbedtls_mpi_uint) (0x03) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_gx[] = {
    ( (mbedtls_mpi_uint) (0x7D) << 0 ) | ( (mbedtls_mpi_uint) (0x6C) << 8 ) | ( (mbedtls_mpi_uint) (0xE0) << 16 ) | ( (mbedtls_mpi_uint) (0xEA) << 24 ) | ( (mbedtls_mpi_uint) (0xB1) << 32 ) | ( (mbedtls_mpi_uint) (0xD1) << 40 ) | ( (mbedtls_mpi_uint) (0xA5) << 48 ) | ( (mbedtls_mpi_uint) (0x1D) << 56 ),
    ( (mbedtls_mpi_uint) (0x34) << 0 ) | ( (mbedtls_mpi_uint) (0xF4) << 8 ) | ( (mbedtls_mpi_uint) (0xB7) << 16 ) | ( (mbedtls_mpi_uint) (0x80) << 24 ) | ( (mbedtls_mpi_uint) (0x02) << 32 ) | ( (mbedtls_mpi_uint) (0x7D) << 40 ) | ( (mbedtls_mpi_uint) (0xB0) << 48 ) | ( (mbedtls_mpi_uint) (0x26) << 56 ),
    ( (mbedtls_mpi_uint) (0xAE) << 0 ) | ( (mbedtls_mpi_uint) (0xE9) << 8 ) | ( (mbedtls_mpi_uint) (0x57) << 16 ) | ( (mbedtls_mpi_uint) (0xC0) << 24 ) | ( (mbedtls_mpi_uint) (0x0E) << 32 ) | ( (mbedtls_mpi_uint) (0xF1) << 40 ) | ( (mbedtls_mpi_uint) (0x4F) << 48 ) | ( (mbedtls_mpi_uint) (0xDB) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_gy[] = {
    ( (mbedtls_mpi_uint) (0x9D) << 0 ) | ( (mbedtls_mpi_uint) (0x2F) << 8 ) | ( (mbedtls_mpi_uint) (0x5E) << 16 ) | ( (mbedtls_mpi_uint) (0xD9) << 24 ) | ( (mbedtls_mpi_uint) (0x88) << 32 ) | ( (mbedtls_mpi_uint) (0xAA) << 40 ) | ( (mbedtls_mpi_uint) (0x82) << 48 ) | ( (mbedtls_mpi_uint) (0x40) << 56 ),
    ( (mbedtls_mpi_uint) (0x34) << 0 ) | ( (mbedtls_mpi_uint) (0x86) << 8 ) | ( (mbedtls_mpi_uint) (0xBE) << 16 ) | ( (mbedtls_mpi_uint) (0x15) << 24 ) | ( (mbedtls_mpi_uint) (0xD0) << 32 ) | ( (mbedtls_mpi_uint) (0x63) << 40 ) | ( (mbedtls_mpi_uint) (0x41) << 48 ) | ( (mbedtls_mpi_uint) (0x84) << 56 ),
    ( (mbedtls_mpi_uint) (0xA7) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0x56) << 16 ) | ( (mbedtls_mpi_uint) (0x9C) << 24 ) | ( (mbedtls_mpi_uint) (0x6D) << 32 ) | ( (mbedtls_mpi_uint) (0x2F) << 40 ) | ( (mbedtls_mpi_uint) (0x2F) << 48 ) | ( (mbedtls_mpi_uint) (0x9B) << 56 ),
};
static const mbedtls_mpi_uint secp192k1_n[] = {
    ( (mbedtls_mpi_uint) (0x8D) << 0 ) | ( (mbedtls_mpi_uint) (0xFD) << 8 ) | ( (mbedtls_mpi_uint) (0xDE) << 16 ) | ( (mbedtls_mpi_uint) (0x74) << 24 ) | ( (mbedtls_mpi_uint) (0x6A) << 32 ) | ( (mbedtls_mpi_uint) (0x46) << 40 ) | ( (mbedtls_mpi_uint) (0x69) << 48 ) | ( (mbedtls_mpi_uint) (0x0F) << 56 ),
    ( (mbedtls_mpi_uint) (0x17) << 0 ) | ( (mbedtls_mpi_uint) (0xFC) << 8 ) | ( (mbedtls_mpi_uint) (0xF2) << 16 ) | ( (mbedtls_mpi_uint) (0x26) << 24 ) | ( (mbedtls_mpi_uint) (0xFE) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_p[] = {
    ( (mbedtls_mpi_uint) (0x6D) << 0 ) | ( (mbedtls_mpi_uint) (0xE5) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFE) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_a[] = {
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_b[] = {
    ( (mbedtls_mpi_uint) (0x05) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_gx[] = {
    ( (mbedtls_mpi_uint) (0x5C) << 0 ) | ( (mbedtls_mpi_uint) (0xA4) << 8 ) | ( (mbedtls_mpi_uint) (0xB7) << 16 ) | ( (mbedtls_mpi_uint) (0xB6) << 24 ) | ( (mbedtls_mpi_uint) (0x0E) << 32 ) | ( (mbedtls_mpi_uint) (0x65) << 40 ) | ( (mbedtls_mpi_uint) (0x7E) << 48 ) | ( (mbedtls_mpi_uint) (0x0F) << 56 ),
    ( (mbedtls_mpi_uint) (0xA9) << 0 ) | ( (mbedtls_mpi_uint) (0x75) << 8 ) | ( (mbedtls_mpi_uint) (0x70) << 16 ) | ( (mbedtls_mpi_uint) (0xE4) << 24 ) | ( (mbedtls_mpi_uint) (0xE9) << 32 ) | ( (mbedtls_mpi_uint) (0x67) << 40 ) | ( (mbedtls_mpi_uint) (0xA4) << 48 ) | ( (mbedtls_mpi_uint) (0x69) << 56 ),
    ( (mbedtls_mpi_uint) (0xA1) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0xFC) << 16 ) | ( (mbedtls_mpi_uint) (0x30) << 24 ) | ( (mbedtls_mpi_uint) (0xDF) << 32 ) | ( (mbedtls_mpi_uint) (0x99) << 40 ) | ( (mbedtls_mpi_uint) (0xF0) << 48 ) | ( (mbedtls_mpi_uint) (0x4D) << 56 ),
    ( (mbedtls_mpi_uint) (0x33) << 0 ) | ( (mbedtls_mpi_uint) (0x5B) << 8 ) | ( (mbedtls_mpi_uint) (0x45) << 16 ) | ( (mbedtls_mpi_uint) (0xA1) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_gy[] = {
    ( (mbedtls_mpi_uint) (0xA5) << 0 ) | ( (mbedtls_mpi_uint) (0x61) << 8 ) | ( (mbedtls_mpi_uint) (0x6D) << 16 ) | ( (mbedtls_mpi_uint) (0x55) << 24 ) | ( (mbedtls_mpi_uint) (0xDB) << 32 ) | ( (mbedtls_mpi_uint) (0x4B) << 40 ) | ( (mbedtls_mpi_uint) (0xCA) << 48 ) | ( (mbedtls_mpi_uint) (0xE2) << 56 ),
    ( (mbedtls_mpi_uint) (0x59) << 0 ) | ( (mbedtls_mpi_uint) (0xBD) << 8 ) | ( (mbedtls_mpi_uint) (0xB0) << 16 ) | ( (mbedtls_mpi_uint) (0xC0) << 24 ) | ( (mbedtls_mpi_uint) (0xF7) << 32 ) | ( (mbedtls_mpi_uint) (0x19) << 40 ) | ( (mbedtls_mpi_uint) (0xE3) << 48 ) | ( (mbedtls_mpi_uint) (0xF7) << 56 ),
    ( (mbedtls_mpi_uint) (0xD6) << 0 ) | ( (mbedtls_mpi_uint) (0xFB) << 8 ) | ( (mbedtls_mpi_uint) (0xCA) << 16 ) | ( (mbedtls_mpi_uint) (0x82) << 24 ) | ( (mbedtls_mpi_uint) (0x42) << 32 ) | ( (mbedtls_mpi_uint) (0x34) << 40 ) | ( (mbedtls_mpi_uint) (0xBA) << 48 ) | ( (mbedtls_mpi_uint) (0x7F) << 56 ),
    ( (mbedtls_mpi_uint) (0xED) << 0 ) | ( (mbedtls_mpi_uint) (0x9F) << 8 ) | ( (mbedtls_mpi_uint) (0x08) << 16 ) | ( (mbedtls_mpi_uint) (0x7E) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp224k1_n[] = {
    ( (mbedtls_mpi_uint) (0xF7) << 0 ) | ( (mbedtls_mpi_uint) (0xB1) << 8 ) | ( (mbedtls_mpi_uint) (0x9F) << 16 ) | ( (mbedtls_mpi_uint) (0x76) << 24 ) | ( (mbedtls_mpi_uint) (0x71) << 32 ) | ( (mbedtls_mpi_uint) (0xA9) << 40 ) | ( (mbedtls_mpi_uint) (0xF0) << 48 ) | ( (mbedtls_mpi_uint) (0xCA) << 56 ),
    ( (mbedtls_mpi_uint) (0x84) << 0 ) | ( (mbedtls_mpi_uint) (0x61) << 8 ) | ( (mbedtls_mpi_uint) (0xEC) << 16 ) | ( (mbedtls_mpi_uint) (0xD2) << 24 ) | ( (mbedtls_mpi_uint) (0xE8) << 32 ) | ( (mbedtls_mpi_uint) (0xDC) << 40 ) | ( (mbedtls_mpi_uint) (0x01) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x01) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_p[] = {
    ( (mbedtls_mpi_uint) (0x2F) << 0 ) | ( (mbedtls_mpi_uint) (0xFC) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFE) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_a[] = {
    ( (mbedtls_mpi_uint) (0x00) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_b[] = {
    ( (mbedtls_mpi_uint) (0x07) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0) << 16 ) | ( (mbedtls_mpi_uint) (0) << 24 ) | ( (mbedtls_mpi_uint) (0) << 32 ) | ( (mbedtls_mpi_uint) (0) << 40 ) | ( (mbedtls_mpi_uint) (0) << 48 ) | ( (mbedtls_mpi_uint) (0) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_gx[] = {
    ( (mbedtls_mpi_uint) (0x98) << 0 ) | ( (mbedtls_mpi_uint) (0x17) << 8 ) | ( (mbedtls_mpi_uint) (0xF8) << 16 ) | ( (mbedtls_mpi_uint) (0x16) << 24 ) | ( (mbedtls_mpi_uint) (0x5B) << 32 ) | ( (mbedtls_mpi_uint) (0x81) << 40 ) | ( (mbedtls_mpi_uint) (0xF2) << 48 ) | ( (mbedtls_mpi_uint) (0x59) << 56 ),
    ( (mbedtls_mpi_uint) (0xD9) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0xCE) << 16 ) | ( (mbedtls_mpi_uint) (0x2D) << 24 ) | ( (mbedtls_mpi_uint) (0xDB) << 32 ) | ( (mbedtls_mpi_uint) (0xFC) << 40 ) | ( (mbedtls_mpi_uint) (0x9B) << 48 ) | ( (mbedtls_mpi_uint) (0x02) << 56 ),
    ( (mbedtls_mpi_uint) (0x07) << 0 ) | ( (mbedtls_mpi_uint) (0x0B) << 8 ) | ( (mbedtls_mpi_uint) (0x87) << 16 ) | ( (mbedtls_mpi_uint) (0xCE) << 24 ) | ( (mbedtls_mpi_uint) (0x95) << 32 ) | ( (mbedtls_mpi_uint) (0x62) << 40 ) | ( (mbedtls_mpi_uint) (0xA0) << 48 ) | ( (mbedtls_mpi_uint) (0x55) << 56 ),
    ( (mbedtls_mpi_uint) (0xAC) << 0 ) | ( (mbedtls_mpi_uint) (0xBB) << 8 ) | ( (mbedtls_mpi_uint) (0xDC) << 16 ) | ( (mbedtls_mpi_uint) (0xF9) << 24 ) | ( (mbedtls_mpi_uint) (0x7E) << 32 ) | ( (mbedtls_mpi_uint) (0x66) << 40 ) | ( (mbedtls_mpi_uint) (0xBE) << 48 ) | ( (mbedtls_mpi_uint) (0x79) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_gy[] = {
    ( (mbedtls_mpi_uint) (0xB8) << 0 ) | ( (mbedtls_mpi_uint) (0xD4) << 8 ) | ( (mbedtls_mpi_uint) (0x10) << 16 ) | ( (mbedtls_mpi_uint) (0xFB) << 24 ) | ( (mbedtls_mpi_uint) (0x8F) << 32 ) | ( (mbedtls_mpi_uint) (0xD0) << 40 ) | ( (mbedtls_mpi_uint) (0x47) << 48 ) | ( (mbedtls_mpi_uint) (0x9C) << 56 ),
    ( (mbedtls_mpi_uint) (0x19) << 0 ) | ( (mbedtls_mpi_uint) (0x54) << 8 ) | ( (mbedtls_mpi_uint) (0x85) << 16 ) | ( (mbedtls_mpi_uint) (0xA6) << 24 ) | ( (mbedtls_mpi_uint) (0x48) << 32 ) | ( (mbedtls_mpi_uint) (0xB4) << 40 ) | ( (mbedtls_mpi_uint) (0x17) << 48 ) | ( (mbedtls_mpi_uint) (0xFD) << 56 ),
    ( (mbedtls_mpi_uint) (0xA8) << 0 ) | ( (mbedtls_mpi_uint) (0x08) << 8 ) | ( (mbedtls_mpi_uint) (0x11) << 16 ) | ( (mbedtls_mpi_uint) (0x0E) << 24 ) | ( (mbedtls_mpi_uint) (0xFC) << 32 ) | ( (mbedtls_mpi_uint) (0xFB) << 40 ) | ( (mbedtls_mpi_uint) (0xA4) << 48 ) | ( (mbedtls_mpi_uint) (0x5D) << 56 ),
    ( (mbedtls_mpi_uint) (0x65) << 0 ) | ( (mbedtls_mpi_uint) (0xC4) << 8 ) | ( (mbedtls_mpi_uint) (0xA3) << 16 ) | ( (mbedtls_mpi_uint) (0x26) << 24 ) | ( (mbedtls_mpi_uint) (0x77) << 32 ) | ( (mbedtls_mpi_uint) (0xDA) << 40 ) | ( (mbedtls_mpi_uint) (0x3A) << 48 ) | ( (mbedtls_mpi_uint) (0x48) << 56 ),
};
static const mbedtls_mpi_uint secp256k1_n[] = {
    ( (mbedtls_mpi_uint) (0x41) << 0 ) | ( (mbedtls_mpi_uint) (0x41) << 8 ) | ( (mbedtls_mpi_uint) (0x36) << 16 ) | ( (mbedtls_mpi_uint) (0xD0) << 24 ) | ( (mbedtls_mpi_uint) (0x8C) << 32 ) | ( (mbedtls_mpi_uint) (0x5E) << 40 ) | ( (mbedtls_mpi_uint) (0xD2) << 48 ) | ( (mbedtls_mpi_uint) (0xBF) << 56 ),
    ( (mbedtls_mpi_uint) (0x3B) << 0 ) | ( (mbedtls_mpi_uint) (0xA0) << 8 ) | ( (mbedtls_mpi_uint) (0x48) << 16 ) | ( (mbedtls_mpi_uint) (0xAF) << 24 ) | ( (mbedtls_mpi_uint) (0xE6) << 32 ) | ( (mbedtls_mpi_uint) (0xDC) << 40 ) | ( (mbedtls_mpi_uint) (0xAE) << 48 ) | ( (mbedtls_mpi_uint) (0xBA) << 56 ),
    ( (mbedtls_mpi_uint) (0xFE) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0xFF) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0xFF) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0xFF) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_p[] = {
    ( (mbedtls_mpi_uint) (0x77) << 0 ) | ( (mbedtls_mpi_uint) (0x53) << 8 ) | ( (mbedtls_mpi_uint) (0x6E) << 16 ) | ( (mbedtls_mpi_uint) (0x1F) << 24 ) | ( (mbedtls_mpi_uint) (0x1D) << 32 ) | ( (mbedtls_mpi_uint) (0x48) << 40 ) | ( (mbedtls_mpi_uint) (0x13) << 48 ) | ( (mbedtls_mpi_uint) (0x20) << 56 ),
    ( (mbedtls_mpi_uint) (0x28) << 0 ) | ( (mbedtls_mpi_uint) (0x20) << 8 ) | ( (mbedtls_mpi_uint) (0x26) << 16 ) | ( (mbedtls_mpi_uint) (0xD5) << 24 ) | ( (mbedtls_mpi_uint) (0x23) << 32 ) | ( (mbedtls_mpi_uint) (0xF6) << 40 ) | ( (mbedtls_mpi_uint) (0x3B) << 48 ) | ( (mbedtls_mpi_uint) (0x6E) << 56 ),
    ( (mbedtls_mpi_uint) (0x72) << 0 ) | ( (mbedtls_mpi_uint) (0x8D) << 8 ) | ( (mbedtls_mpi_uint) (0x83) << 16 ) | ( (mbedtls_mpi_uint) (0x9D) << 24 ) | ( (mbedtls_mpi_uint) (0x90) << 32 ) | ( (mbedtls_mpi_uint) (0x0A) << 40 ) | ( (mbedtls_mpi_uint) (0x66) << 48 ) | ( (mbedtls_mpi_uint) (0x3E) << 56 ),
    ( (mbedtls_mpi_uint) (0xBC) << 0 ) | ( (mbedtls_mpi_uint) (0xA9) << 8 ) | ( (mbedtls_mpi_uint) (0xEE) << 16 ) | ( (mbedtls_mpi_uint) (0xA1) << 24 ) | ( (mbedtls_mpi_uint) (0xDB) << 32 ) | ( (mbedtls_mpi_uint) (0x57) << 40 ) | ( (mbedtls_mpi_uint) (0xFB) << 48 ) | ( (mbedtls_mpi_uint) (0xA9) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_a[] = {
    ( (mbedtls_mpi_uint) (0xD9) << 0 ) | ( (mbedtls_mpi_uint) (0xB5) << 8 ) | ( (mbedtls_mpi_uint) (0x30) << 16 ) | ( (mbedtls_mpi_uint) (0xF3) << 24 ) | ( (mbedtls_mpi_uint) (0x44) << 32 ) | ( (mbedtls_mpi_uint) (0x4B) << 40 ) | ( (mbedtls_mpi_uint) (0x4A) << 48 ) | ( (mbedtls_mpi_uint) (0xE9) << 56 ),
    ( (mbedtls_mpi_uint) (0x6C) << 0 ) | ( (mbedtls_mpi_uint) (0x5C) << 8 ) | ( (mbedtls_mpi_uint) (0xDC) << 16 ) | ( (mbedtls_mpi_uint) (0x26) << 24 ) | ( (mbedtls_mpi_uint) (0xC1) << 32 ) | ( (mbedtls_mpi_uint) (0x55) << 40 ) | ( (mbedtls_mpi_uint) (0x80) << 48 ) | ( (mbedtls_mpi_uint) (0xFB) << 56 ),
    ( (mbedtls_mpi_uint) (0xE7) << 0 ) | ( (mbedtls_mpi_uint) (0xFF) << 8 ) | ( (mbedtls_mpi_uint) (0x7A) << 16 ) | ( (mbedtls_mpi_uint) (0x41) << 24 ) | ( (mbedtls_mpi_uint) (0x30) << 32 ) | ( (mbedtls_mpi_uint) (0x75) << 40 ) | ( (mbedtls_mpi_uint) (0xF6) << 48 ) | ( (mbedtls_mpi_uint) (0xEE) << 56 ),
    ( (mbedtls_mpi_uint) (0x57) << 0 ) | ( (mbedtls_mpi_uint) (0x30) << 8 ) | ( (mbedtls_mpi_uint) (0x2C) << 16 ) | ( (mbedtls_mpi_uint) (0xFC) << 24 ) | ( (mbedtls_mpi_uint) (0x75) << 32 ) | ( (mbedtls_mpi_uint) (0x09) << 40 ) | ( (mbedtls_mpi_uint) (0x5A) << 48 ) | ( (mbedtls_mpi_uint) (0x7D) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_b[] = {
    ( (mbedtls_mpi_uint) (0xB6) << 0 ) | ( (mbedtls_mpi_uint) (0x07) << 8 ) | ( (mbedtls_mpi_uint) (0x8C) << 16 ) | ( (mbedtls_mpi_uint) (0xFF) << 24 ) | ( (mbedtls_mpi_uint) (0x18) << 32 ) | ( (mbedtls_mpi_uint) (0xDC) << 40 ) | ( (mbedtls_mpi_uint) (0xCC) << 48 ) | ( (mbedtls_mpi_uint) (0x6B) << 56 ),
    ( (mbedtls_mpi_uint) (0xCE) << 0 ) | ( (mbedtls_mpi_uint) (0xE1) << 8 ) | ( (mbedtls_mpi_uint) (0xF7) << 16 ) | ( (mbedtls_mpi_uint) (0x5C) << 24 ) | ( (mbedtls_mpi_uint) (0x29) << 32 ) | ( (mbedtls_mpi_uint) (0x16) << 40 ) | ( (mbedtls_mpi_uint) (0x84) << 48 ) | ( (mbedtls_mpi_uint) (0x95) << 56 ),
    ( (mbedtls_mpi_uint) (0xBF) << 0 ) | ( (mbedtls_mpi_uint) (0x7C) << 8 ) | ( (mbedtls_mpi_uint) (0xD7) << 16 ) | ( (mbedtls_mpi_uint) (0xBB) << 24 ) | ( (mbedtls_mpi_uint) (0xD9) << 32 ) | ( (mbedtls_mpi_uint) (0xB5) << 40 ) | ( (mbedtls_mpi_uint) (0x30) << 48 ) | ( (mbedtls_mpi_uint) (0xF3) << 56 ),
    ( (mbedtls_mpi_uint) (0x44) << 0 ) | ( (mbedtls_mpi_uint) (0x4B) << 8 ) | ( (mbedtls_mpi_uint) (0x4A) << 16 ) | ( (mbedtls_mpi_uint) (0xE9) << 24 ) | ( (mbedtls_mpi_uint) (0x6C) << 32 ) | ( (mbedtls_mpi_uint) (0x5C) << 40 ) | ( (mbedtls_mpi_uint) (0xDC) << 48 ) | ( (mbedtls_mpi_uint) (0x26) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x62) << 0 ) | ( (mbedtls_mpi_uint) (0x32) << 8 ) | ( (mbedtls_mpi_uint) (0xCE) << 16 ) | ( (mbedtls_mpi_uint) (0x9A) << 24 ) | ( (mbedtls_mpi_uint) (0xBD) << 32 ) | ( (mbedtls_mpi_uint) (0x53) << 40 ) | ( (mbedtls_mpi_uint) (0x44) << 48 ) | ( (mbedtls_mpi_uint) (0x3A) << 56 ),
    ( (mbedtls_mpi_uint) (0xC2) << 0 ) | ( (mbedtls_mpi_uint) (0x23) << 8 ) | ( (mbedtls_mpi_uint) (0xBD) << 16 ) | ( (mbedtls_mpi_uint) (0xE3) << 24 ) | ( (mbedtls_mpi_uint) (0xE1) << 32 ) | ( (mbedtls_mpi_uint) (0x27) << 40 ) | ( (mbedtls_mpi_uint) (0xDE) << 48 ) | ( (mbedtls_mpi_uint) (0xB9) << 56 ),
    ( (mbedtls_mpi_uint) (0xAF) << 0 ) | ( (mbedtls_mpi_uint) (0xB7) << 8 ) | ( (mbedtls_mpi_uint) (0x81) << 16 ) | ( (mbedtls_mpi_uint) (0xFC) << 24 ) | ( (mbedtls_mpi_uint) (0x2F) << 32 ) | ( (mbedtls_mpi_uint) (0x48) << 40 ) | ( (mbedtls_mpi_uint) (0x4B) << 48 ) | ( (mbedtls_mpi_uint) (0x2C) << 56 ),
    ( (mbedtls_mpi_uint) (0xCB) << 0 ) | ( (mbedtls_mpi_uint) (0x57) << 8 ) | ( (mbedtls_mpi_uint) (0x7E) << 16 ) | ( (mbedtls_mpi_uint) (0xCB) << 24 ) | ( (mbedtls_mpi_uint) (0xB9) << 32 ) | ( (mbedtls_mpi_uint) (0xAE) << 40 ) | ( (mbedtls_mpi_uint) (0xD2) << 48 ) | ( (mbedtls_mpi_uint) (0x8B) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x97) << 0 ) | ( (mbedtls_mpi_uint) (0x69) << 8 ) | ( (mbedtls_mpi_uint) (0x04) << 16 ) | ( (mbedtls_mpi_uint) (0x2F) << 24 ) | ( (mbedtls_mpi_uint) (0xC7) << 32 ) | ( (mbedtls_mpi_uint) (0x54) << 40 ) | ( (mbedtls_mpi_uint) (0x1D) << 48 ) | ( (mbedtls_mpi_uint) (0x5C) << 56 ),
    ( (mbedtls_mpi_uint) (0x54) << 0 ) | ( (mbedtls_mpi_uint) (0x8E) << 8 ) | ( (mbedtls_mpi_uint) (0xED) << 16 ) | ( (mbedtls_mpi_uint) (0x2D) << 24 ) | ( (mbedtls_mpi_uint) (0x13) << 32 ) | ( (mbedtls_mpi_uint) (0x45) << 40 ) | ( (mbedtls_mpi_uint) (0x77) << 48 ) | ( (mbedtls_mpi_uint) (0xC2) << 56 ),
    ( (mbedtls_mpi_uint) (0xC9) << 0 ) | ( (mbedtls_mpi_uint) (0x1D) << 8 ) | ( (mbedtls_mpi_uint) (0x61) << 16 ) | ( (mbedtls_mpi_uint) (0x14) << 24 ) | ( (mbedtls_mpi_uint) (0x1A) << 32 ) | ( (mbedtls_mpi_uint) (0x46) << 40 ) | ( (mbedtls_mpi_uint) (0xF8) << 48 ) | ( (mbedtls_mpi_uint) (0x97) << 56 ),
    ( (mbedtls_mpi_uint) (0xFD) << 0 ) | ( (mbedtls_mpi_uint) (0xC4) << 8 ) | ( (mbedtls_mpi_uint) (0xDA) << 16 ) | ( (mbedtls_mpi_uint) (0xC3) << 24 ) | ( (mbedtls_mpi_uint) (0x35) << 32 ) | ( (mbedtls_mpi_uint) (0xF8) << 40 ) | ( (mbedtls_mpi_uint) (0x7E) << 48 ) | ( (mbedtls_mpi_uint) (0x54) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP256r1_n[] = {
    ( (mbedtls_mpi_uint) (0xA7) << 0 ) | ( (mbedtls_mpi_uint) (0x56) << 8 ) | ( (mbedtls_mpi_uint) (0x48) << 16 ) | ( (mbedtls_mpi_uint) (0x97) << 24 ) | ( (mbedtls_mpi_uint) (0x82) << 32 ) | ( (mbedtls_mpi_uint) (0x0E) << 40 ) | ( (mbedtls_mpi_uint) (0x1E) << 48 ) | ( (mbedtls_mpi_uint) (0x90) << 56 ),
    ( (mbedtls_mpi_uint) (0xF7) << 0 ) | ( (mbedtls_mpi_uint) (0xA6) << 8 ) | ( (mbedtls_mpi_uint) (0x61) << 16 ) | ( (mbedtls_mpi_uint) (0xB5) << 24 ) | ( (mbedtls_mpi_uint) (0xA3) << 32 ) | ( (mbedtls_mpi_uint) (0x7A) << 40 ) | ( (mbedtls_mpi_uint) (0x39) << 48 ) | ( (mbedtls_mpi_uint) (0x8C) << 56 ),
    ( (mbedtls_mpi_uint) (0x71) << 0 ) | ( (mbedtls_mpi_uint) (0x8D) << 8 ) | ( (mbedtls_mpi_uint) (0x83) << 16 ) | ( (mbedtls_mpi_uint) (0x9D) << 24 ) | ( (mbedtls_mpi_uint) (0x90) << 32 ) | ( (mbedtls_mpi_uint) (0x0A) << 40 ) | ( (mbedtls_mpi_uint) (0x66) << 48 ) | ( (mbedtls_mpi_uint) (0x3E) << 56 ),
    ( (mbedtls_mpi_uint) (0xBC) << 0 ) | ( (mbedtls_mpi_uint) (0xA9) << 8 ) | ( (mbedtls_mpi_uint) (0xEE) << 16 ) | ( (mbedtls_mpi_uint) (0xA1) << 24 ) | ( (mbedtls_mpi_uint) (0xDB) << 32 ) | ( (mbedtls_mpi_uint) (0x57) << 40 ) | ( (mbedtls_mpi_uint) (0xFB) << 48 ) | ( (mbedtls_mpi_uint) (0xA9) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_p[] = {
    ( (mbedtls_mpi_uint) (0x53) << 0 ) | ( (mbedtls_mpi_uint) (0xEC) << 8 ) | ( (mbedtls_mpi_uint) (0x07) << 16 ) | ( (mbedtls_mpi_uint) (0x31) << 24 ) | ( (mbedtls_mpi_uint) (0x13) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x47) << 48 ) | ( (mbedtls_mpi_uint) (0x87) << 56 ),
    ( (mbedtls_mpi_uint) (0x71) << 0 ) | ( (mbedtls_mpi_uint) (0x1A) << 8 ) | ( (mbedtls_mpi_uint) (0x1D) << 16 ) | ( (mbedtls_mpi_uint) (0x90) << 24 ) | ( (mbedtls_mpi_uint) (0x29) << 32 ) | ( (mbedtls_mpi_uint) (0xA7) << 40 ) | ( (mbedtls_mpi_uint) (0xD3) << 48 ) | ( (mbedtls_mpi_uint) (0xAC) << 56 ),
    ( (mbedtls_mpi_uint) (0x23) << 0 ) | ( (mbedtls_mpi_uint) (0x11) << 8 ) | ( (mbedtls_mpi_uint) (0xB7) << 16 ) | ( (mbedtls_mpi_uint) (0x7F) << 24 ) | ( (mbedtls_mpi_uint) (0x19) << 32 ) | ( (mbedtls_mpi_uint) (0xDA) << 40 ) | ( (mbedtls_mpi_uint) (0xB1) << 48 ) | ( (mbedtls_mpi_uint) (0x12) << 56 ),
    ( (mbedtls_mpi_uint) (0xB4) << 0 ) | ( (mbedtls_mpi_uint) (0x56) << 8 ) | ( (mbedtls_mpi_uint) (0x54) << 16 ) | ( (mbedtls_mpi_uint) (0xED) << 24 ) | ( (mbedtls_mpi_uint) (0x09) << 32 ) | ( (mbedtls_mpi_uint) (0x71) << 40 ) | ( (mbedtls_mpi_uint) (0x2F) << 48 ) | ( (mbedtls_mpi_uint) (0x15) << 56 ),
    ( (mbedtls_mpi_uint) (0xDF) << 0 ) | ( (mbedtls_mpi_uint) (0x41) << 8 ) | ( (mbedtls_mpi_uint) (0xE6) << 16 ) | ( (mbedtls_mpi_uint) (0x50) << 24 ) | ( (mbedtls_mpi_uint) (0x7E) << 32 ) | ( (mbedtls_mpi_uint) (0x6F) << 40 ) | ( (mbedtls_mpi_uint) (0x5D) << 48 ) | ( (mbedtls_mpi_uint) (0x0F) << 56 ),
    ( (mbedtls_mpi_uint) (0x28) << 0 ) | ( (mbedtls_mpi_uint) (0x6D) << 8 ) | ( (mbedtls_mpi_uint) (0x38) << 16 ) | ( (mbedtls_mpi_uint) (0xA3) << 24 ) | ( (mbedtls_mpi_uint) (0x82) << 32 ) | ( (mbedtls_mpi_uint) (0x1E) << 40 ) | ( (mbedtls_mpi_uint) (0xB9) << 48 ) | ( (mbedtls_mpi_uint) (0x8C) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_a[] = {
    ( (mbedtls_mpi_uint) (0x26) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0xCE) << 16 ) | ( (mbedtls_mpi_uint) (0x22) << 24 ) | ( (mbedtls_mpi_uint) (0xDD) << 32 ) | ( (mbedtls_mpi_uint) (0xC7) << 40 ) | ( (mbedtls_mpi_uint) (0xA8) << 48 ) | ( (mbedtls_mpi_uint) (0x04) << 56 ),
    ( (mbedtls_mpi_uint) (0xEB) << 0 ) | ( (mbedtls_mpi_uint) (0xD4) << 8 ) | ( (mbedtls_mpi_uint) (0x3A) << 16 ) | ( (mbedtls_mpi_uint) (0x50) << 24 ) | ( (mbedtls_mpi_uint) (0x4A) << 32 ) | ( (mbedtls_mpi_uint) (0x81) << 40 ) | ( (mbedtls_mpi_uint) (0xA5) << 48 ) | ( (mbedtls_mpi_uint) (0x8A) << 56 ),
    ( (mbedtls_mpi_uint) (0x0F) << 0 ) | ( (mbedtls_mpi_uint) (0xF9) << 8 ) | ( (mbedtls_mpi_uint) (0x91) << 16 ) | ( (mbedtls_mpi_uint) (0xBA) << 24 ) | ( (mbedtls_mpi_uint) (0xEF) << 32 ) | ( (mbedtls_mpi_uint) (0x65) << 40 ) | ( (mbedtls_mpi_uint) (0x91) << 48 ) | ( (mbedtls_mpi_uint) (0x13) << 56 ),
    ( (mbedtls_mpi_uint) (0x87) << 0 ) | ( (mbedtls_mpi_uint) (0x27) << 8 ) | ( (mbedtls_mpi_uint) (0xB2) << 16 ) | ( (mbedtls_mpi_uint) (0x4F) << 24 ) | ( (mbedtls_mpi_uint) (0x8E) << 32 ) | ( (mbedtls_mpi_uint) (0xA2) << 40 ) | ( (mbedtls_mpi_uint) (0xBE) << 48 ) | ( (mbedtls_mpi_uint) (0xC2) << 56 ),
    ( (mbedtls_mpi_uint) (0xA0) << 0 ) | ( (mbedtls_mpi_uint) (0xAF) << 8 ) | ( (mbedtls_mpi_uint) (0x05) << 16 ) | ( (mbedtls_mpi_uint) (0xCE) << 24 ) | ( (mbedtls_mpi_uint) (0x0A) << 32 ) | ( (mbedtls_mpi_uint) (0x08) << 40 ) | ( (mbedtls_mpi_uint) (0x72) << 48 ) | ( (mbedtls_mpi_uint) (0x3C) << 56 ),
    ( (mbedtls_mpi_uint) (0x0C) << 0 ) | ( (mbedtls_mpi_uint) (0x15) << 8 ) | ( (mbedtls_mpi_uint) (0x8C) << 16 ) | ( (mbedtls_mpi_uint) (0x3D) << 24 ) | ( (mbedtls_mpi_uint) (0xC6) << 32 ) | ( (mbedtls_mpi_uint) (0x82) << 40 ) | ( (mbedtls_mpi_uint) (0xC3) << 48 ) | ( (mbedtls_mpi_uint) (0x7B) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_b[] = {
    ( (mbedtls_mpi_uint) (0x11) << 0 ) | ( (mbedtls_mpi_uint) (0x4C) << 8 ) | ( (mbedtls_mpi_uint) (0x50) << 16 ) | ( (mbedtls_mpi_uint) (0xFA) << 24 ) | ( (mbedtls_mpi_uint) (0x96) << 32 ) | ( (mbedtls_mpi_uint) (0x86) << 40 ) | ( (mbedtls_mpi_uint) (0xB7) << 48 ) | ( (mbedtls_mpi_uint) (0x3A) << 56 ),
    ( (mbedtls_mpi_uint) (0x94) << 0 ) | ( (mbedtls_mpi_uint) (0xC9) << 8 ) | ( (mbedtls_mpi_uint) (0xDB) << 16 ) | ( (mbedtls_mpi_uint) (0x95) << 24 ) | ( (mbedtls_mpi_uint) (0x02) << 32 ) | ( (mbedtls_mpi_uint) (0x39) << 40 ) | ( (mbedtls_mpi_uint) (0xB4) << 48 ) | ( (mbedtls_mpi_uint) (0x7C) << 56 ),
    ( (mbedtls_mpi_uint) (0xD5) << 0 ) | ( (mbedtls_mpi_uint) (0x62) << 8 ) | ( (mbedtls_mpi_uint) (0xEB) << 16 ) | ( (mbedtls_mpi_uint) (0x3E) << 24 ) | ( (mbedtls_mpi_uint) (0xA5) << 32 ) | ( (mbedtls_mpi_uint) (0x0E) << 40 ) | ( (mbedtls_mpi_uint) (0x88) << 48 ) | ( (mbedtls_mpi_uint) (0x2E) << 56 ),
    ( (mbedtls_mpi_uint) (0xA6) << 0 ) | ( (mbedtls_mpi_uint) (0xD2) << 8 ) | ( (mbedtls_mpi_uint) (0xDC) << 16 ) | ( (mbedtls_mpi_uint) (0x07) << 24 ) | ( (mbedtls_mpi_uint) (0xE1) << 32 ) | ( (mbedtls_mpi_uint) (0x7D) << 40 ) | ( (mbedtls_mpi_uint) (0xB7) << 48 ) | ( (mbedtls_mpi_uint) (0x2F) << 56 ),
    ( (mbedtls_mpi_uint) (0x7C) << 0 ) | ( (mbedtls_mpi_uint) (0x44) << 8 ) | ( (mbedtls_mpi_uint) (0xF0) << 16 ) | ( (mbedtls_mpi_uint) (0x16) << 24 ) | ( (mbedtls_mpi_uint) (0x54) << 32 ) | ( (mbedtls_mpi_uint) (0xB5) << 40 ) | ( (mbedtls_mpi_uint) (0x39) << 48 ) | ( (mbedtls_mpi_uint) (0x8B) << 56 ),
    ( (mbedtls_mpi_uint) (0x26) << 0 ) | ( (mbedtls_mpi_uint) (0x28) << 8 ) | ( (mbedtls_mpi_uint) (0xCE) << 16 ) | ( (mbedtls_mpi_uint) (0x22) << 24 ) | ( (mbedtls_mpi_uint) (0xDD) << 32 ) | ( (mbedtls_mpi_uint) (0xC7) << 40 ) | ( (mbedtls_mpi_uint) (0xA8) << 48 ) | ( (mbedtls_mpi_uint) (0x04) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x1E) << 0 ) | ( (mbedtls_mpi_uint) (0xAF) << 8 ) | ( (mbedtls_mpi_uint) (0xD4) << 16 ) | ( (mbedtls_mpi_uint) (0x47) << 24 ) | ( (mbedtls_mpi_uint) (0xE2) << 32 ) | ( (mbedtls_mpi_uint) (0xB2) << 40 ) | ( (mbedtls_mpi_uint) (0x87) << 48 ) | ( (mbedtls_mpi_uint) (0xEF) << 56 ),
    ( (mbedtls_mpi_uint) (0xAA) << 0 ) | ( (mbedtls_mpi_uint) (0x46) << 8 ) | ( (mbedtls_mpi_uint) (0xD6) << 16 ) | ( (mbedtls_mpi_uint) (0x36) << 24 ) | ( (mbedtls_mpi_uint) (0x34) << 32 ) | ( (mbedtls_mpi_uint) (0xE0) << 40 ) | ( (mbedtls_mpi_uint) (0x26) << 48 ) | ( (mbedtls_mpi_uint) (0xE8) << 56 ),
    ( (mbedtls_mpi_uint) (0xE8) << 0 ) | ( (mbedtls_mpi_uint) (0x10) << 8 ) | ( (mbedtls_mpi_uint) (0xBD) << 16 ) | ( (mbedtls_mpi_uint) (0x0C) << 24 ) | ( (mbedtls_mpi_uint) (0xFE) << 32 ) | ( (mbedtls_mpi_uint) (0xCA) << 40 ) | ( (mbedtls_mpi_uint) (0x7F) << 48 ) | ( (mbedtls_mpi_uint) (0xDB) << 56 ),
    ( (mbedtls_mpi_uint) (0xE3) << 0 ) | ( (mbedtls_mpi_uint) (0x4F) << 8 ) | ( (mbedtls_mpi_uint) (0xF1) << 16 ) | ( (mbedtls_mpi_uint) (0x7E) << 24 ) | ( (mbedtls_mpi_uint) (0xE7) << 32 ) | ( (mbedtls_mpi_uint) (0xA3) << 40 ) | ( (mbedtls_mpi_uint) (0x47) << 48 ) | ( (mbedtls_mpi_uint) (0x88) << 56 ),
    ( (mbedtls_mpi_uint) (0x6B) << 0 ) | ( (mbedtls_mpi_uint) (0x3F) << 8 ) | ( (mbedtls_mpi_uint) (0xC1) << 16 ) | ( (mbedtls_mpi_uint) (0xB7) << 24 ) | ( (mbedtls_mpi_uint) (0x81) << 32 ) | ( (mbedtls_mpi_uint) (0x3A) << 40 ) | ( (mbedtls_mpi_uint) (0xA6) << 48 ) | ( (mbedtls_mpi_uint) (0xA2) << 56 ),
    ( (mbedtls_mpi_uint) (0xFF) << 0 ) | ( (mbedtls_mpi_uint) (0x45) << 8 ) | ( (mbedtls_mpi_uint) (0xCF) << 16 ) | ( (mbedtls_mpi_uint) (0x68) << 24 ) | ( (mbedtls_mpi_uint) (0xF0) << 32 ) | ( (mbedtls_mpi_uint) (0x64) << 40 ) | ( (mbedtls_mpi_uint) (0x1C) << 48 ) | ( (mbedtls_mpi_uint) (0x1D) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x15) << 0 ) | ( (mbedtls_mpi_uint) (0x53) << 8 ) | ( (mbedtls_mpi_uint) (0x3C) << 16 ) | ( (mbedtls_mpi_uint) (0x26) << 24 ) | ( (mbedtls_mpi_uint) (0x41) << 32 ) | ( (mbedtls_mpi_uint) (0x03) << 40 ) | ( (mbedtls_mpi_uint) (0x82) << 48 ) | ( (mbedtls_mpi_uint) (0x42) << 56 ),
    ( (mbedtls_mpi_uint) (0x11) << 0 ) | ( (mbedtls_mpi_uint) (0x81) << 8 ) | ( (mbedtls_mpi_uint) (0x91) << 16 ) | ( (mbedtls_mpi_uint) (0x77) << 24 ) | ( (mbedtls_mpi_uint) (0x21) << 32 ) | ( (mbedtls_mpi_uint) (0x46) << 40 ) | ( (mbedtls_mpi_uint) (0x46) << 48 ) | ( (mbedtls_mpi_uint) (0x0E) << 56 ),
    ( (mbedtls_mpi_uint) (0x28) << 0 ) | ( (mbedtls_mpi_uint) (0x29) << 8 ) | ( (mbedtls_mpi_uint) (0x91) << 16 ) | ( (mbedtls_mpi_uint) (0xF9) << 24 ) | ( (mbedtls_mpi_uint) (0x4F) << 32 ) | ( (mbedtls_mpi_uint) (0x05) << 40 ) | ( (mbedtls_mpi_uint) (0x9C) << 48 ) | ( (mbedtls_mpi_uint) (0xE1) << 56 ),
    ( (mbedtls_mpi_uint) (0x64) << 0 ) | ( (mbedtls_mpi_uint) (0x58) << 8 ) | ( (mbedtls_mpi_uint) (0xEC) << 16 ) | ( (mbedtls_mpi_uint) (0xFE) << 24 ) | ( (mbedtls_mpi_uint) (0x29) << 32 ) | ( (mbedtls_mpi_uint) (0x0B) << 40 ) | ( (mbedtls_mpi_uint) (0xB7) << 48 ) | ( (mbedtls_mpi_uint) (0x62) << 56 ),
    ( (mbedtls_mpi_uint) (0x52) << 0 ) | ( (mbedtls_mpi_uint) (0xD5) << 8 ) | ( (mbedtls_mpi_uint) (0xCF) << 16 ) | ( (mbedtls_mpi_uint) (0x95) << 24 ) | ( (mbedtls_mpi_uint) (0x8E) << 32 ) | ( (mbedtls_mpi_uint) (0xEB) << 40 ) | ( (mbedtls_mpi_uint) (0xB1) << 48 ) | ( (mbedtls_mpi_uint) (0x5C) << 56 ),
    ( (mbedtls_mpi_uint) (0xA4) << 0 ) | ( (mbedtls_mpi_uint) (0xC2) << 8 ) | ( (mbedtls_mpi_uint) (0xF9) << 16 ) | ( (mbedtls_mpi_uint) (0x20) << 24 ) | ( (mbedtls_mpi_uint) (0x75) << 32 ) | ( (mbedtls_mpi_uint) (0x1D) << 40 ) | ( (mbedtls_mpi_uint) (0xBE) << 48 ) | ( (mbedtls_mpi_uint) (0x8A) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP384r1_n[] = {
    ( (mbedtls_mpi_uint) (0x65) << 0 ) | ( (mbedtls_mpi_uint) (0x65) << 8 ) | ( (mbedtls_mpi_uint) (0x04) << 16 ) | ( (mbedtls_mpi_uint) (0xE9) << 24 ) | ( (mbedtls_mpi_uint) (0x02) << 32 ) | ( (mbedtls_mpi_uint) (0x32) << 40 ) | ( (mbedtls_mpi_uint) (0x88) << 48 ) | ( (mbedtls_mpi_uint) (0x3B) << 56 ),
    ( (mbedtls_mpi_uint) (0x10) << 0 ) | ( (mbedtls_mpi_uint) (0xC3) << 8 ) | ( (mbedtls_mpi_uint) (0x7F) << 16 ) | ( (mbedtls_mpi_uint) (0x6B) << 24 ) | ( (mbedtls_mpi_uint) (0xAF) << 32 ) | ( (mbedtls_mpi_uint) (0xB6) << 40 ) | ( (mbedtls_mpi_uint) (0x3A) << 48 ) | ( (mbedtls_mpi_uint) (0xCF) << 56 ),
    ( (mbedtls_mpi_uint) (0xA7) << 0 ) | ( (mbedtls_mpi_uint) (0x25) << 8 ) | ( (mbedtls_mpi_uint) (0x04) << 16 ) | ( (mbedtls_mpi_uint) (0xAC) << 24 ) | ( (mbedtls_mpi_uint) (0x6C) << 32 ) | ( (mbedtls_mpi_uint) (0x6E) << 40 ) | ( (mbedtls_mpi_uint) (0x16) << 48 ) | ( (mbedtls_mpi_uint) (0x1F) << 56 ),
    ( (mbedtls_mpi_uint) (0xB3) << 0 ) | ( (mbedtls_mpi_uint) (0x56) << 8 ) | ( (mbedtls_mpi_uint) (0x54) << 16 ) | ( (mbedtls_mpi_uint) (0xED) << 24 ) | ( (mbedtls_mpi_uint) (0x09) << 32 ) | ( (mbedtls_mpi_uint) (0x71) << 40 ) | ( (mbedtls_mpi_uint) (0x2F) << 48 ) | ( (mbedtls_mpi_uint) (0x15) << 56 ),
    ( (mbedtls_mpi_uint) (0xDF) << 0 ) | ( (mbedtls_mpi_uint) (0x41) << 8 ) | ( (mbedtls_mpi_uint) (0xE6) << 16 ) | ( (mbedtls_mpi_uint) (0x50) << 24 ) | ( (mbedtls_mpi_uint) (0x7E) << 32 ) | ( (mbedtls_mpi_uint) (0x6F) << 40 ) | ( (mbedtls_mpi_uint) (0x5D) << 48 ) | ( (mbedtls_mpi_uint) (0x0F) << 56 ),
    ( (mbedtls_mpi_uint) (0x28) << 0 ) | ( (mbedtls_mpi_uint) (0x6D) << 8 ) | ( (mbedtls_mpi_uint) (0x38) << 16 ) | ( (mbedtls_mpi_uint) (0xA3) << 24 ) | ( (mbedtls_mpi_uint) (0x82) << 32 ) | ( (mbedtls_mpi_uint) (0x1E) << 40 ) | ( (mbedtls_mpi_uint) (0xB9) << 48 ) | ( (mbedtls_mpi_uint) (0x8C) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_p[] = {
    ( (mbedtls_mpi_uint) (0xF3) << 0 ) | ( (mbedtls_mpi_uint) (0x48) << 8 ) | ( (mbedtls_mpi_uint) (0x3A) << 16 ) | ( (mbedtls_mpi_uint) (0x58) << 24 ) | ( (mbedtls_mpi_uint) (0x56) << 32 ) | ( (mbedtls_mpi_uint) (0x60) << 40 ) | ( (mbedtls_mpi_uint) (0xAA) << 48 ) | ( (mbedtls_mpi_uint) (0x28) << 56 ),
    ( (mbedtls_mpi_uint) (0x85) << 0 ) | ( (mbedtls_mpi_uint) (0xC6) << 8 ) | ( (mbedtls_mpi_uint) (0x82) << 16 ) | ( (mbedtls_mpi_uint) (0x2D) << 24 ) | ( (mbedtls_mpi_uint) (0x2F) << 32 ) | ( (mbedtls_mpi_uint) (0xFF) << 40 ) | ( (mbedtls_mpi_uint) (0x81) << 48 ) | ( (mbedtls_mpi_uint) (0x28) << 56 ),
    ( (mbedtls_mpi_uint) (0xE6) << 0 ) | ( (mbedtls_mpi_uint) (0x80) << 8 ) | ( (mbedtls_mpi_uint) (0xA3) << 16 ) | ( (mbedtls_mpi_uint) (0xE6) << 24 ) | ( (mbedtls_mpi_uint) (0x2A) << 32 ) | ( (mbedtls_mpi_uint) (0xA1) << 40 ) | ( (mbedtls_mpi_uint) (0xCD) << 48 ) | ( (mbedtls_mpi_uint) (0xAE) << 56 ),
    ( (mbedtls_mpi_uint) (0x42) << 0 ) | ( (mbedtls_mpi_uint) (0x68) << 8 ) | ( (mbedtls_mpi_uint) (0xC6) << 16 ) | ( (mbedtls_mpi_uint) (0x9B) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0x9B) << 40 ) | ( (mbedtls_mpi_uint) (0x4D) << 48 ) | ( (mbedtls_mpi_uint) (0x7D) << 56 ),
    ( (mbedtls_mpi_uint) (0x71) << 0 ) | ( (mbedtls_mpi_uint) (0x08) << 8 ) | ( (mbedtls_mpi_uint) (0x33) << 16 ) | ( (mbedtls_mpi_uint) (0x70) << 24 ) | ( (mbedtls_mpi_uint) (0xCA) << 32 ) | ( (mbedtls_mpi_uint) (0x9C) << 40 ) | ( (mbedtls_mpi_uint) (0x63) << 48 ) | ( (mbedtls_mpi_uint) (0xD6) << 56 ),
    ( (mbedtls_mpi_uint) (0x0E) << 0 ) | ( (mbedtls_mpi_uint) (0xD2) << 8 ) | ( (mbedtls_mpi_uint) (0xC9) << 16 ) | ( (mbedtls_mpi_uint) (0xB3) << 24 ) | ( (mbedtls_mpi_uint) (0xB3) << 32 ) | ( (mbedtls_mpi_uint) (0x8D) << 40 ) | ( (mbedtls_mpi_uint) (0x30) << 48 ) | ( (mbedtls_mpi_uint) (0xCB) << 56 ),
    ( (mbedtls_mpi_uint) (0x07) << 0 ) | ( (mbedtls_mpi_uint) (0xFC) << 8 ) | ( (mbedtls_mpi_uint) (0xC9) << 16 ) | ( (mbedtls_mpi_uint) (0x33) << 24 ) | ( (mbedtls_mpi_uint) (0xAE) << 32 ) | ( (mbedtls_mpi_uint) (0xE6) << 40 ) | ( (mbedtls_mpi_uint) (0xD4) << 48 ) | ( (mbedtls_mpi_uint) (0x3F) << 56 ),
    ( (mbedtls_mpi_uint) (0x8B) << 0 ) | ( (mbedtls_mpi_uint) (0xC4) << 8 ) | ( (mbedtls_mpi_uint) (0xE9) << 16 ) | ( (mbedtls_mpi_uint) (0xDB) << 24 ) | ( (mbedtls_mpi_uint) (0xB8) << 32 ) | ( (mbedtls_mpi_uint) (0x9D) << 40 ) | ( (mbedtls_mpi_uint) (0xDD) << 48 ) | ( (mbedtls_mpi_uint) (0xAA) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_a[] = {
    ( (mbedtls_mpi_uint) (0xCA) << 0 ) | ( (mbedtls_mpi_uint) (0x94) << 8 ) | ( (mbedtls_mpi_uint) (0xFC) << 16 ) | ( (mbedtls_mpi_uint) (0x77) << 24 ) | ( (mbedtls_mpi_uint) (0x4D) << 32 ) | ( (mbedtls_mpi_uint) (0xAC) << 40 ) | ( (mbedtls_mpi_uint) (0xC1) << 48 ) | ( (mbedtls_mpi_uint) (0xE7) << 56 ),
    ( (mbedtls_mpi_uint) (0xB9) << 0 ) | ( (mbedtls_mpi_uint) (0xC7) << 8 ) | ( (mbedtls_mpi_uint) (0xF2) << 16 ) | ( (mbedtls_mpi_uint) (0x2B) << 24 ) | ( (mbedtls_mpi_uint) (0xA7) << 32 ) | ( (mbedtls_mpi_uint) (0x17) << 40 ) | ( (mbedtls_mpi_uint) (0x11) << 48 ) | ( (mbedtls_mpi_uint) (0x7F) << 56 ),
    ( (mbedtls_mpi_uint) (0xB5) << 0 ) | ( (mbedtls_mpi_uint) (0xC8) << 8 ) | ( (mbedtls_mpi_uint) (0x9A) << 16 ) | ( (mbedtls_mpi_uint) (0x8B) << 24 ) | ( (mbedtls_mpi_uint) (0xC9) << 32 ) | ( (mbedtls_mpi_uint) (0xF1) << 40 ) | ( (mbedtls_mpi_uint) (0x2E) << 48 ) | ( (mbedtls_mpi_uint) (0x0A) << 56 ),
    ( (mbedtls_mpi_uint) (0xA1) << 0 ) | ( (mbedtls_mpi_uint) (0x3A) << 8 ) | ( (mbedtls_mpi_uint) (0x25) << 16 ) | ( (mbedtls_mpi_uint) (0xA8) << 24 ) | ( (mbedtls_mpi_uint) (0x5A) << 32 ) | ( (mbedtls_mpi_uint) (0x5D) << 40 ) | ( (mbedtls_mpi_uint) (0xED) << 48 ) | ( (mbedtls_mpi_uint) (0x2D) << 56 ),
    ( (mbedtls_mpi_uint) (0xBC) << 0 ) | ( (mbedtls_mpi_uint) (0x63) << 8 ) | ( (mbedtls_mpi_uint) (0x98) << 16 ) | ( (mbedtls_mpi_uint) (0xEA) << 24 ) | ( (mbedtls_mpi_uint) (0xCA) << 32 ) | ( (mbedtls_mpi_uint) (0x41) << 40 ) | ( (mbedtls_mpi_uint) (0x34) << 48 ) | ( (mbedtls_mpi_uint) (0xA8) << 56 ),
    ( (mbedtls_mpi_uint) (0x10) << 0 ) | ( (mbedtls_mpi_uint) (0x16) << 8 ) | ( (mbedtls_mpi_uint) (0xF9) << 16 ) | ( (mbedtls_mpi_uint) (0x3D) << 24 ) | ( (mbedtls_mpi_uint) (0x8D) << 32 ) | ( (mbedtls_mpi_uint) (0xDD) << 40 ) | ( (mbedtls_mpi_uint) (0xCB) << 48 ) | ( (mbedtls_mpi_uint) (0x94) << 56 ),
    ( (mbedtls_mpi_uint) (0xC5) << 0 ) | ( (mbedtls_mpi_uint) (0x4C) << 8 ) | ( (mbedtls_mpi_uint) (0x23) << 16 ) | ( (mbedtls_mpi_uint) (0xAC) << 24 ) | ( (mbedtls_mpi_uint) (0x45) << 32 ) | ( (mbedtls_mpi_uint) (0x71) << 40 ) | ( (mbedtls_mpi_uint) (0x32) << 48 ) | ( (mbedtls_mpi_uint) (0xE2) << 56 ),
    ( (mbedtls_mpi_uint) (0x89) << 0 ) | ( (mbedtls_mpi_uint) (0x3B) << 8 ) | ( (mbedtls_mpi_uint) (0x60) << 16 ) | ( (mbedtls_mpi_uint) (0x8B) << 24 ) | ( (mbedtls_mpi_uint) (0x31) << 32 ) | ( (mbedtls_mpi_uint) (0xA3) << 40 ) | ( (mbedtls_mpi_uint) (0x30) << 48 ) | ( (mbedtls_mpi_uint) (0x78) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_b[] = {
    ( (mbedtls_mpi_uint) (0x23) << 0 ) | ( (mbedtls_mpi_uint) (0xF7) << 8 ) | ( (mbedtls_mpi_uint) (0x16) << 16 ) | ( (mbedtls_mpi_uint) (0x80) << 24 ) | ( (mbedtls_mpi_uint) (0x63) << 32 ) | ( (mbedtls_mpi_uint) (0xBD) << 40 ) | ( (mbedtls_mpi_uint) (0x09) << 48 ) | ( (mbedtls_mpi_uint) (0x28) << 56 ),
    ( (mbedtls_mpi_uint) (0xDD) << 0 ) | ( (mbedtls_mpi_uint) (0xE5) << 8 ) | ( (mbedtls_mpi_uint) (0xBA) << 16 ) | ( (mbedtls_mpi_uint) (0x5E) << 24 ) | ( (mbedtls_mpi_uint) (0xB7) << 32 ) | ( (mbedtls_mpi_uint) (0x50) << 40 ) | ( (mbedtls_mpi_uint) (0x40) << 48 ) | ( (mbedtls_mpi_uint) (0x98) << 56 ),
    ( (mbedtls_mpi_uint) (0x67) << 0 ) | ( (mbedtls_mpi_uint) (0x3E) << 8 ) | ( (mbedtls_mpi_uint) (0x08) << 16 ) | ( (mbedtls_mpi_uint) (0xDC) << 24 ) | ( (mbedtls_mpi_uint) (0xCA) << 32 ) | ( (mbedtls_mpi_uint) (0x94) << 40 ) | ( (mbedtls_mpi_uint) (0xFC) << 48 ) | ( (mbedtls_mpi_uint) (0x77) << 56 ),
    ( (mbedtls_mpi_uint) (0x4D) << 0 ) | ( (mbedtls_mpi_uint) (0xAC) << 8 ) | ( (mbedtls_mpi_uint) (0xC1) << 16 ) | ( (mbedtls_mpi_uint) (0xE7) << 24 ) | ( (mbedtls_mpi_uint) (0xB9) << 32 ) | ( (mbedtls_mpi_uint) (0xC7) << 40 ) | ( (mbedtls_mpi_uint) (0xF2) << 48 ) | ( (mbedtls_mpi_uint) (0x2B) << 56 ),
    ( (mbedtls_mpi_uint) (0xA7) << 0 ) | ( (mbedtls_mpi_uint) (0x17) << 8 ) | ( (mbedtls_mpi_uint) (0x11) << 16 ) | ( (mbedtls_mpi_uint) (0x7F) << 24 ) | ( (mbedtls_mpi_uint) (0xB5) << 32 ) | ( (mbedtls_mpi_uint) (0xC8) << 40 ) | ( (mbedtls_mpi_uint) (0x9A) << 48 ) | ( (mbedtls_mpi_uint) (0x8B) << 56 ),
    ( (mbedtls_mpi_uint) (0xC9) << 0 ) | ( (mbedtls_mpi_uint) (0xF1) << 8 ) | ( (mbedtls_mpi_uint) (0x2E) << 16 ) | ( (mbedtls_mpi_uint) (0x0A) << 24 ) | ( (mbedtls_mpi_uint) (0xA1) << 32 ) | ( (mbedtls_mpi_uint) (0x3A) << 40 ) | ( (mbedtls_mpi_uint) (0x25) << 48 ) | ( (mbedtls_mpi_uint) (0xA8) << 56 ),
    ( (mbedtls_mpi_uint) (0x5A) << 0 ) | ( (mbedtls_mpi_uint) (0x5D) << 8 ) | ( (mbedtls_mpi_uint) (0xED) << 16 ) | ( (mbedtls_mpi_uint) (0x2D) << 24 ) | ( (mbedtls_mpi_uint) (0xBC) << 32 ) | ( (mbedtls_mpi_uint) (0x63) << 40 ) | ( (mbedtls_mpi_uint) (0x98) << 48 ) | ( (mbedtls_mpi_uint) (0xEA) << 56 ),
    ( (mbedtls_mpi_uint) (0xCA) << 0 ) | ( (mbedtls_mpi_uint) (0x41) << 8 ) | ( (mbedtls_mpi_uint) (0x34) << 16 ) | ( (mbedtls_mpi_uint) (0xA8) << 24 ) | ( (mbedtls_mpi_uint) (0x10) << 32 ) | ( (mbedtls_mpi_uint) (0x16) << 40 ) | ( (mbedtls_mpi_uint) (0xF9) << 48 ) | ( (mbedtls_mpi_uint) (0x3D) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_gx[] = {
    ( (mbedtls_mpi_uint) (0x22) << 0 ) | ( (mbedtls_mpi_uint) (0xF8) << 8 ) | ( (mbedtls_mpi_uint) (0xB9) << 16 ) | ( (mbedtls_mpi_uint) (0xBC) << 24 ) | ( (mbedtls_mpi_uint) (0x09) << 32 ) | ( (mbedtls_mpi_uint) (0x22) << 40 ) | ( (mbedtls_mpi_uint) (0x35) << 48 ) | ( (mbedtls_mpi_uint) (0x8B) << 56 ),
    ( (mbedtls_mpi_uint) (0x68) << 0 ) | ( (mbedtls_mpi_uint) (0x5E) << 8 ) | ( (mbedtls_mpi_uint) (0x6A) << 16 ) | ( (mbedtls_mpi_uint) (0x40) << 24 ) | ( (mbedtls_mpi_uint) (0x47) << 32 ) | ( (mbedtls_mpi_uint) (0x50) << 40 ) | ( (mbedtls_mpi_uint) (0x6D) << 48 ) | ( (mbedtls_mpi_uint) (0x7C) << 56 ),
    ( (mbedtls_mpi_uint) (0x5F) << 0 ) | ( (mbedtls_mpi_uint) (0x7D) << 8 ) | ( (mbedtls_mpi_uint) (0xB9) << 16 ) | ( (mbedtls_mpi_uint) (0x93) << 24 ) | ( (mbedtls_mpi_uint) (0x7B) << 32 ) | ( (mbedtls_mpi_uint) (0x68) << 40 ) | ( (mbedtls_mpi_uint) (0xD1) << 48 ) | ( (mbedtls_mpi_uint) (0x50) << 56 ),
    ( (mbedtls_mpi_uint) (0x8D) << 0 ) | ( (mbedtls_mpi_uint) (0xD4) << 8 ) | ( (mbedtls_mpi_uint) (0xD0) << 16 ) | ( (mbedtls_mpi_uint) (0xE2) << 24 ) | ( (mbedtls_mpi_uint) (0x78) << 32 ) | ( (mbedtls_mpi_uint) (0x1F) << 40 ) | ( (mbedtls_mpi_uint) (0x3B) << 48 ) | ( (mbedtls_mpi_uint) (0xFF) << 56 ),
    ( (mbedtls_mpi_uint) (0x8E) << 0 ) | ( (mbedtls_mpi_uint) (0x09) << 8 ) | ( (mbedtls_mpi_uint) (0xD0) << 16 ) | ( (mbedtls_mpi_uint) (0xF4) << 24 ) | ( (mbedtls_mpi_uint) (0xEE) << 32 ) | ( (mbedtls_mpi_uint) (0x62) << 40 ) | ( (mbedtls_mpi_uint) (0x3B) << 48 ) | ( (mbedtls_mpi_uint) (0xB4) << 56 ),
    ( (mbedtls_mpi_uint) (0xC1) << 0 ) | ( (mbedtls_mpi_uint) (0x16) << 8 ) | ( (mbedtls_mpi_uint) (0xD9) << 16 ) | ( (mbedtls_mpi_uint) (0xB5) << 24 ) | ( (mbedtls_mpi_uint) (0x70) << 32 ) | ( (mbedtls_mpi_uint) (0x9F) << 40 ) | ( (mbedtls_mpi_uint) (0xED) << 48 ) | ( (mbedtls_mpi_uint) (0x85) << 56 ),
    ( (mbedtls_mpi_uint) (0x93) << 0 ) | ( (mbedtls_mpi_uint) (0x6A) << 8 ) | ( (mbedtls_mpi_uint) (0x4C) << 16 ) | ( (mbedtls_mpi_uint) (0x9C) << 24 ) | ( (mbedtls_mpi_uint) (0x2E) << 32 ) | ( (mbedtls_mpi_uint) (0x32) << 40 ) | ( (mbedtls_mpi_uint) (0x21) << 48 ) | ( (mbedtls_mpi_uint) (0x5A) << 56 ),
    ( (mbedtls_mpi_uint) (0x64) << 0 ) | ( (mbedtls_mpi_uint) (0xD9) << 8 ) | ( (mbedtls_mpi_uint) (0x2E) << 16 ) | ( (mbedtls_mpi_uint) (0xD8) << 24 ) | ( (mbedtls_mpi_uint) (0xBD) << 32 ) | ( (mbedtls_mpi_uint) (0xE4) << 40 ) | ( (mbedtls_mpi_uint) (0xAE) << 48 ) | ( (mbedtls_mpi_uint) (0x81) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_gy[] = {
    ( (mbedtls_mpi_uint) (0x92) << 0 ) | ( (mbedtls_mpi_uint) (0x08) << 8 ) | ( (mbedtls_mpi_uint) (0xD8) << 16 ) | ( (mbedtls_mpi_uint) (0x3A) << 24 ) | ( (mbedtls_mpi_uint) (0x0F) << 32 ) | ( (mbedtls_mpi_uint) (0x1E) << 40 ) | ( (mbedtls_mpi_uint) (0xCD) << 48 ) | ( (mbedtls_mpi_uint) (0x78) << 56 ),
    ( (mbedtls_mpi_uint) (0x06) << 0 ) | ( (mbedtls_mpi_uint) (0x54) << 8 ) | ( (mbedtls_mpi_uint) (0xF0) << 16 ) | ( (mbedtls_mpi_uint) (0xA8) << 24 ) | ( (mbedtls_mpi_uint) (0x2F) << 32 ) | ( (mbedtls_mpi_uint) (0x2B) << 40 ) | ( (mbedtls_mpi_uint) (0xCA) << 48 ) | ( (mbedtls_mpi_uint) (0xD1) << 56 ),
    ( (mbedtls_mpi_uint) (0xAE) << 0 ) | ( (mbedtls_mpi_uint) (0x63) << 8 ) | ( (mbedtls_mpi_uint) (0x27) << 16 ) | ( (mbedtls_mpi_uint) (0x8A) << 24 ) | ( (mbedtls_mpi_uint) (0xD8) << 32 ) | ( (mbedtls_mpi_uint) (0x4B) << 40 ) | ( (mbedtls_mpi_uint) (0xCA) << 48 ) | ( (mbedtls_mpi_uint) (0x5B) << 56 ),
    ( (mbedtls_mpi_uint) (0x5E) << 0 ) | ( (mbedtls_mpi_uint) (0x48) << 8 ) | ( (mbedtls_mpi_uint) (0x5F) << 16 ) | ( (mbedtls_mpi_uint) (0x4A) << 24 ) | ( (mbedtls_mpi_uint) (0x49) << 32 ) | ( (mbedtls_mpi_uint) (0xDE) << 40 ) | ( (mbedtls_mpi_uint) (0xDC) << 48 ) | ( (mbedtls_mpi_uint) (0xB2) << 56 ),
    ( (mbedtls_mpi_uint) (0x11) << 0 ) | ( (mbedtls_mpi_uint) (0x81) << 8 ) | ( (mbedtls_mpi_uint) (0x1F) << 16 ) | ( (mbedtls_mpi_uint) (0x88) << 24 ) | ( (mbedtls_mpi_uint) (0x5B) << 32 ) | ( (mbedtls_mpi_uint) (0xC5) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0xA0) << 56 ),
    ( (mbedtls_mpi_uint) (0x1A) << 0 ) | ( (mbedtls_mpi_uint) (0x7B) << 8 ) | ( (mbedtls_mpi_uint) (0xA5) << 16 ) | ( (mbedtls_mpi_uint) (0x24) << 24 ) | ( (mbedtls_mpi_uint) (0x00) << 32 ) | ( (mbedtls_mpi_uint) (0xF7) << 40 ) | ( (mbedtls_mpi_uint) (0x09) << 48 ) | ( (mbedtls_mpi_uint) (0xF2) << 56 ),
    ( (mbedtls_mpi_uint) (0xFD) << 0 ) | ( (mbedtls_mpi_uint) (0x22) << 8 ) | ( (mbedtls_mpi_uint) (0x78) << 16 ) | ( (mbedtls_mpi_uint) (0xCF) << 24 ) | ( (mbedtls_mpi_uint) (0xA9) << 32 ) | ( (mbedtls_mpi_uint) (0xBF) << 40 ) | ( (mbedtls_mpi_uint) (0xEA) << 48 ) | ( (mbedtls_mpi_uint) (0xC0) << 56 ),
    ( (mbedtls_mpi_uint) (0xEC) << 0 ) | ( (mbedtls_mpi_uint) (0x32) << 8 ) | ( (mbedtls_mpi_uint) (0x63) << 16 ) | ( (mbedtls_mpi_uint) (0x56) << 24 ) | ( (mbedtls_mpi_uint) (0x5D) << 32 ) | ( (mbedtls_mpi_uint) (0x38) << 40 ) | ( (mbedtls_mpi_uint) (0xDE) << 48 ) | ( (mbedtls_mpi_uint) (0x7D) << 56 ),
};
static const mbedtls_mpi_uint brainpoolP512r1_n[] = {
    ( (mbedtls_mpi_uint) (0x69) << 0 ) | ( (mbedtls_mpi_uint) (0x00) << 8 ) | ( (mbedtls_mpi_uint) (0xA9) << 16 ) | ( (mbedtls_mpi_uint) (0x9C) << 24 ) | ( (mbedtls_mpi_uint) (0x82) << 32 ) | ( (mbedtls_mpi_uint) (0x96) << 40 ) | ( (mbedtls_mpi_uint) (0x87) << 48 ) | ( (mbedtls_mpi_uint) (0xB5) << 56 ),
    ( (mbedtls_mpi_uint) (0xDD) << 0 ) | ( (mbedtls_mpi_uint) (0xDA) << 8 ) | ( (mbedtls_mpi_uint) (0x5D) << 16 ) | ( (mbedtls_mpi_uint) (0x08) << 24 ) | ( (mbedtls_mpi_uint) (0x81) << 32 ) | ( (mbedtls_mpi_uint) (0xD3) << 40 ) | ( (mbedtls_mpi_uint) (0xB1) << 48 ) | ( (mbedtls_mpi_uint) (0x1D) << 56 ),
    ( (mbedtls_mpi_uint) (0x47) << 0 ) | ( (mbedtls_mpi_uint) (0x10) << 8 ) | ( (mbedtls_mpi_uint) (0xAC) << 16 ) | ( (mbedtls_mpi_uint) (0x7F) << 24 ) | ( (mbedtls_mpi_uint) (0x19) << 32 ) | ( (mbedtls_mpi_uint) (0x61) << 40 ) | ( (mbedtls_mpi_uint) (0x86) << 48 ) | ( (mbedtls_mpi_uint) (0x41) << 56 ),
    ( (mbedtls_mpi_uint) (0x19) << 0 ) | ( (mbedtls_mpi_uint) (0x26) << 8 ) | ( (mbedtls_mpi_uint) (0xA9) << 16 ) | ( (mbedtls_mpi_uint) (0x4C) << 24 ) | ( (mbedtls_mpi_uint) (0x41) << 32 ) | ( (mbedtls_mpi_uint) (0x5C) << 40 ) | ( (mbedtls_mpi_uint) (0x3E) << 48 ) | ( (mbedtls_mpi_uint) (0x55) << 56 ),
    ( (mbedtls_mpi_uint) (0x70) << 0 ) | ( (mbedtls_mpi_uint) (0x08) << 8 ) | ( (mbedtls_mpi_uint) (0x33) << 16 ) | ( (mbedtls_mpi_uint) (0x70) << 24 ) | ( (mbedtls_mpi_uint) (0xCA) << 32 ) | ( (mbedtls_mpi_uint) (0x9C) << 40 ) | ( (mbedtls_mpi_uint) (0x63) << 48 ) | ( (mbedtls_mpi_uint) (0xD6) << 56 ),
    ( (mbedtls_mpi_uint) (0x0E) << 0 ) | ( (mbedtls_mpi_uint) (0xD2) << 8 ) | ( (mbedtls_mpi_uint) (0xC9) << 16 ) | ( (mbedtls_mpi_uint) (0xB3) << 24 ) | ( (mbedtls_mpi_uint) (0xB3) << 32 ) | ( (mbedtls_mpi_uint) (0x8D) << 40 ) | ( (mbedtls_mpi_uint) (0x30) << 48 ) | ( (mbedtls_mpi_uint) (0xCB) << 56 ),
    ( (mbedtls_mpi_uint) (0x07) << 0 ) | ( (mbedtls_mpi_uint) (0xFC) << 8 ) | ( (mbedtls_mpi_uint) (0xC9) << 16 ) | ( (mbedtls_mpi_uint) (0x33) << 24 ) | ( (mbedtls_mpi_uint) (0xAE) << 32 ) | ( (mbedtls_mpi_uint) (0xE6) << 40 ) | ( (mbedtls_mpi_uint) (0xD4) << 48 ) | ( (mbedtls_mpi_uint) (0x3F) << 56 ),
    ( (mbedtls_mpi_uint) (0x8B) << 0 ) | ( (mbedtls_mpi_uint) (0xC4) << 8 ) | ( (mbedtls_mpi_uint) (0xE9) << 16 ) | ( (mbedtls_mpi_uint) (0xDB) << 24 ) | ( (mbedtls_mpi_uint) (0xB8) << 32 ) | ( (mbedtls_mpi_uint) (0x9D) << 40 ) | ( (mbedtls_mpi_uint) (0xDD) << 48 ) | ( (mbedtls_mpi_uint) (0xAA) << 56 ),
};
static inline void ecp_mpi_load( mbedtls_mpi *X, const mbedtls_mpi_uint *p, size_t len )
{
    X->s = 1;
    X->n = len / sizeof( mbedtls_mpi_uint );
    X->p = (mbedtls_mpi_uint *) p;
}
static inline void ecp_mpi_set1( mbedtls_mpi *X )
{
    static mbedtls_mpi_uint one[] = { 1 };
    X->s = 1;
    X->n = 1;
    X->p = one;
}
static int ecp_group_load( mbedtls_ecp_group *grp,
                           const mbedtls_mpi_uint *p, size_t plen,
                           const mbedtls_mpi_uint *a, size_t alen,
                           const mbedtls_mpi_uint *b, size_t blen,
                           const mbedtls_mpi_uint *gx, size_t gxlen,
                           const mbedtls_mpi_uint *gy, size_t gylen,
                           const mbedtls_mpi_uint *n, size_t nlen)
{
    ecp_mpi_load( &grp->P, p, plen );
    if( a != ((void*)0) )
        ecp_mpi_load( &grp->A, a, alen );
    ecp_mpi_load( &grp->B, b, blen );
    ecp_mpi_load( &grp->N, n, nlen );
    ecp_mpi_load( &grp->G.X, gx, gxlen );
    ecp_mpi_load( &grp->G.Y, gy, gylen );
    ecp_mpi_set1( &grp->G.Z );
    grp->pbits = mbedtls_mpi_bitlen( &grp->P );
    grp->nbits = mbedtls_mpi_bitlen( &grp->N );
    grp->h = 1;
    return( 0 );
}
static int ecp_mod_p192( mbedtls_mpi * );
static int ecp_mod_p224( mbedtls_mpi * );
static int ecp_mod_p256( mbedtls_mpi * );
static int ecp_mod_p384( mbedtls_mpi * );
static int ecp_mod_p521( mbedtls_mpi * );
static int ecp_mod_p255( mbedtls_mpi * );
static int ecp_mod_p448( mbedtls_mpi * );
static int ecp_mod_p192k1( mbedtls_mpi * );
static int ecp_mod_p224k1( mbedtls_mpi * );
static int ecp_mod_p256k1( mbedtls_mpi * );
static int ecp_use_curve25519( mbedtls_ecp_group *grp )
{
    int ret = -0x006E;
    do { if( ( ret = (mbedtls_mpi_read_string( &grp->A, 16, "01DB42" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l( &grp->P, 255 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_int( &grp->P, &grp->P, 19 )) ) != 0 ) goto cleanup; } while( 0 );
    grp->pbits = mbedtls_mpi_bitlen( &grp->P );
    do { if( ( ret = (mbedtls_mpi_read_string( &grp->N, 16, "14DEF9DEA2F79CD65812631A5CF5D3ED" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_set_bit( &grp->N, 252, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->G.X, 9 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->G.Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    mbedtls_mpi_free( &grp->G.Y );
    grp->nbits = 254;
cleanup:
    if( ret != 0 )
        mbedtls_ecp_group_free( grp );
    return( ret );
}
static int ecp_use_curve448( mbedtls_ecp_group *grp )
{
    mbedtls_mpi Ns;
    int ret = -0x006E;
    mbedtls_mpi_init( &Ns );
    do { if( ( ret = (mbedtls_mpi_read_string( &grp->A, 16, "98AA" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l( &grp->P, 224 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_int( &grp->P, &grp->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_shift_l( &grp->P, 224 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_int( &grp->P, &grp->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    grp->pbits = mbedtls_mpi_bitlen( &grp->P );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->G.X, 5 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_lset( &grp->G.Z, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    mbedtls_mpi_free( &grp->G.Y );
    do { if( ( ret = (mbedtls_mpi_set_bit( &grp->N, 446, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &Ns, 16, "8335DC163BB124B65129C96FDE933D8D723A70AADC873D6D54A7BB0D" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mpi( &grp->N, &grp->N, &Ns )) ) != 0 ) goto cleanup; } while( 0 );
    grp->nbits = 447;
cleanup:
    mbedtls_mpi_free( &Ns );
    if( ret != 0 )
        mbedtls_ecp_group_free( grp );
    return( ret );
}
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id )
{
    do { } while( 0 );
    mbedtls_ecp_group_free( grp );
    grp->id = id;
    switch( id )
    {
        case MBEDTLS_ECP_DP_SECP192R1:
            grp->modp = ecp_mod_p192;;
            return( ecp_group_load( grp, secp192r1_p, sizeof( secp192r1_p ), ((void*)0), 0, secp192r1_b, sizeof( secp192r1_b ), secp192r1_gx, sizeof( secp192r1_gx ), secp192r1_gy, sizeof( secp192r1_gy ), secp192r1_n, sizeof( secp192r1_n ) ) );
        case MBEDTLS_ECP_DP_SECP224R1:
            grp->modp = ecp_mod_p224;;
            return( ecp_group_load( grp, secp224r1_p, sizeof( secp224r1_p ), ((void*)0), 0, secp224r1_b, sizeof( secp224r1_b ), secp224r1_gx, sizeof( secp224r1_gx ), secp224r1_gy, sizeof( secp224r1_gy ), secp224r1_n, sizeof( secp224r1_n ) ) );
        case MBEDTLS_ECP_DP_SECP256R1:
            grp->modp = ecp_mod_p256;;
            return( ecp_group_load( grp, secp256r1_p, sizeof( secp256r1_p ), ((void*)0), 0, secp256r1_b, sizeof( secp256r1_b ), secp256r1_gx, sizeof( secp256r1_gx ), secp256r1_gy, sizeof( secp256r1_gy ), secp256r1_n, sizeof( secp256r1_n ) ) );
        case MBEDTLS_ECP_DP_SECP384R1:
            grp->modp = ecp_mod_p384;;
            return( ecp_group_load( grp, secp384r1_p, sizeof( secp384r1_p ), ((void*)0), 0, secp384r1_b, sizeof( secp384r1_b ), secp384r1_gx, sizeof( secp384r1_gx ), secp384r1_gy, sizeof( secp384r1_gy ), secp384r1_n, sizeof( secp384r1_n ) ) );
        case MBEDTLS_ECP_DP_SECP521R1:
            grp->modp = ecp_mod_p521;;
            return( ecp_group_load( grp, secp521r1_p, sizeof( secp521r1_p ), ((void*)0), 0, secp521r1_b, sizeof( secp521r1_b ), secp521r1_gx, sizeof( secp521r1_gx ), secp521r1_gy, sizeof( secp521r1_gy ), secp521r1_n, sizeof( secp521r1_n ) ) );
        case MBEDTLS_ECP_DP_SECP192K1:
            grp->modp = ecp_mod_p192k1;
            return( ecp_group_load( grp, secp192k1_p, sizeof( secp192k1_p ), secp192k1_a, sizeof( secp192k1_a ), secp192k1_b, sizeof( secp192k1_b ), secp192k1_gx, sizeof( secp192k1_gx ), secp192k1_gy, sizeof( secp192k1_gy ), secp192k1_n, sizeof( secp192k1_n ) ) );
        case MBEDTLS_ECP_DP_SECP224K1:
            grp->modp = ecp_mod_p224k1;
            return( ecp_group_load( grp, secp224k1_p, sizeof( secp224k1_p ), secp224k1_a, sizeof( secp224k1_a ), secp224k1_b, sizeof( secp224k1_b ), secp224k1_gx, sizeof( secp224k1_gx ), secp224k1_gy, sizeof( secp224k1_gy ), secp224k1_n, sizeof( secp224k1_n ) ) );
        case MBEDTLS_ECP_DP_SECP256K1:
            grp->modp = ecp_mod_p256k1;
            return( ecp_group_load( grp, secp256k1_p, sizeof( secp256k1_p ), secp256k1_a, sizeof( secp256k1_a ), secp256k1_b, sizeof( secp256k1_b ), secp256k1_gx, sizeof( secp256k1_gx ), secp256k1_gy, sizeof( secp256k1_gy ), secp256k1_n, sizeof( secp256k1_n ) ) );
        case MBEDTLS_ECP_DP_BP256R1:
            return( ecp_group_load( grp, brainpoolP256r1_p, sizeof( brainpoolP256r1_p ), brainpoolP256r1_a, sizeof( brainpoolP256r1_a ), brainpoolP256r1_b, sizeof( brainpoolP256r1_b ), brainpoolP256r1_gx, sizeof( brainpoolP256r1_gx ), brainpoolP256r1_gy, sizeof( brainpoolP256r1_gy ), brainpoolP256r1_n, sizeof( brainpoolP256r1_n ) ) );
        case MBEDTLS_ECP_DP_BP384R1:
            return( ecp_group_load( grp, brainpoolP384r1_p, sizeof( brainpoolP384r1_p ), brainpoolP384r1_a, sizeof( brainpoolP384r1_a ), brainpoolP384r1_b, sizeof( brainpoolP384r1_b ), brainpoolP384r1_gx, sizeof( brainpoolP384r1_gx ), brainpoolP384r1_gy, sizeof( brainpoolP384r1_gy ), brainpoolP384r1_n, sizeof( brainpoolP384r1_n ) ) );
        case MBEDTLS_ECP_DP_BP512R1:
            return( ecp_group_load( grp, brainpoolP512r1_p, sizeof( brainpoolP512r1_p ), brainpoolP512r1_a, sizeof( brainpoolP512r1_a ), brainpoolP512r1_b, sizeof( brainpoolP512r1_b ), brainpoolP512r1_gx, sizeof( brainpoolP512r1_gx ), brainpoolP512r1_gy, sizeof( brainpoolP512r1_gy ), brainpoolP512r1_n, sizeof( brainpoolP512r1_n ) ) );
        case MBEDTLS_ECP_DP_CURVE25519:
            grp->modp = ecp_mod_p255;
            return( ecp_use_curve25519( grp ) );
        case MBEDTLS_ECP_DP_CURVE448:
            grp->modp = ecp_mod_p448;
            return( ecp_use_curve448( grp ) );
        default:
            grp->id = MBEDTLS_ECP_DP_NONE;
            return( -0x4E80 );
    }
}
static inline void add64( mbedtls_mpi_uint *dst, mbedtls_mpi_uint *src, mbedtls_mpi_uint *carry )
{
    unsigned char i;
    mbedtls_mpi_uint c = 0;
    for( i = 0; i < 8 / sizeof( mbedtls_mpi_uint ); i++, dst++, src++ )
    {
        *dst += c; c = ( *dst < c );
        *dst += *src; c += ( *dst < *src );
    }
    *carry += c;
}
static inline void carry64( mbedtls_mpi_uint *dst, mbedtls_mpi_uint *carry )
{
    unsigned char i;
    for( i = 0; i < 8 / sizeof( mbedtls_mpi_uint ); i++, dst++ )
    {
        *dst += *carry;
        *carry = ( *dst < *carry );
    }
}
static int ecp_mod_p192( mbedtls_mpi *N )
{
    int ret = -0x006E;
    mbedtls_mpi_uint c = 0;
    mbedtls_mpi_uint *p, *end;
    do { if( ( ret = (mbedtls_mpi_grow( N, 6 * 8 / sizeof( mbedtls_mpi_uint ) )) ) != 0 ) goto cleanup; } while( 0 );
    p = N->p;
    end = p + N->n;
    add64( p, N->p + (3) * 8 / sizeof( mbedtls_mpi_uint ), &c ); add64( p, N->p + (5) * 8 / sizeof( mbedtls_mpi_uint ), &c ); p += 8 / sizeof( mbedtls_mpi_uint ); carry64( p, &c );
    add64( p, N->p + (3) * 8 / sizeof( mbedtls_mpi_uint ), &c ); add64( p, N->p + (4) * 8 / sizeof( mbedtls_mpi_uint ), &c ); add64( p, N->p + (5) * 8 / sizeof( mbedtls_mpi_uint ), &c ); p += 8 / sizeof( mbedtls_mpi_uint ); carry64( p, &c );
    add64( p, N->p + (4) * 8 / sizeof( mbedtls_mpi_uint ), &c ); add64( p, N->p + (5) * 8 / sizeof( mbedtls_mpi_uint ), &c ); p += 8 / sizeof( mbedtls_mpi_uint ); *p = c; while( ++p < end ) *p = 0;
cleanup:
    return( ret );
}
static inline void add32( uint32_t *dst, uint32_t src, signed char *carry )
{
    *dst += src;
    *carry += ( *dst < src );
}
static inline void sub32( uint32_t *dst, uint32_t src, signed char *carry )
{
    *carry -= ( *dst < src );
    *dst -= src;
}
static inline int fix_negative( mbedtls_mpi *N, signed char c, mbedtls_mpi *C, size_t bits )
{
    int ret = -0x006E;
    if( bits == 224 )
        C->p[ C->n - 1 ] = ((mbedtls_mpi_uint) -c) << 32;
    else
        C->p[ C->n - 1 ] = (mbedtls_mpi_uint) -c;
    do { if( ( ret = (mbedtls_mpi_sub_abs( N, C, N )) ) != 0 ) goto cleanup; } while( 0 );
    N->s = -1;
cleanup:
    return( ret );
}
static int ecp_mod_p224( mbedtls_mpi *N )
{
    int ret = -0x006E; signed char c = 0, cc; uint32_t cur; size_t i = 0, bits = (224); mbedtls_mpi C; mbedtls_mpi_uint Cp[ (224) / 8 / sizeof( mbedtls_mpi_uint) + 1 ]; C.s = 1; C.n = (224) / 8 / sizeof( mbedtls_mpi_uint) + 1; C.p = Cp; memset( Cp, 0, C.n * sizeof( mbedtls_mpi_uint ) ); do { if( ( ret = (mbedtls_mpi_grow( N, (224) * 2 / 8 / sizeof( mbedtls_mpi_uint ) )) ) != 0 ) goto cleanup; } while( 0 ); cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );;;
    sub32( &cur, (7) % 2 ? (uint32_t)( N->p[(7)/2] >> 32 ) : (uint32_t)( N->p[(7)/2] ), &c );; sub32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );; sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; add32( &cur, (7) % 2 ? (uint32_t)( N->p[(7)/2] >> 32 ) : (uint32_t)( N->p[(7)/2] ), &c );; add32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; add32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = c > 0 ? c : 0; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; cur = 0; while( ++i < N->n * 2 ) { if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; } if( c < 0 ) fix_negative( N, c, &C, bits );;
cleanup:
    return( ret );
}
static int ecp_mod_p256( mbedtls_mpi *N )
{
    int ret = -0x006E; signed char c = 0, cc; uint32_t cur; size_t i = 0, bits = (256); mbedtls_mpi C; mbedtls_mpi_uint Cp[ (256) / 8 / sizeof( mbedtls_mpi_uint) + 1 ]; C.s = 1; C.n = (256) / 8 / sizeof( mbedtls_mpi_uint) + 1; C.p = Cp; memset( Cp, 0, C.n * sizeof( mbedtls_mpi_uint ) ); do { if( ( ret = (mbedtls_mpi_grow( N, (256) * 2 / 8 / sizeof( mbedtls_mpi_uint ) )) ) != 0 ) goto cleanup; } while( 0 ); cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );;;
    add32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );; add32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );;
    sub32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; sub32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; add32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );;
    sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; sub32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; sub32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; add32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );;
    sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; sub32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; sub32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; add32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );;
    sub32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; sub32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );; sub32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );;
    sub32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; sub32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );;
    sub32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; sub32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );;
    sub32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );; sub32( &cur, (9) % 2 ? (uint32_t)( N->p[(9)/2] >> 32 ) : (uint32_t)( N->p[(9)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (8) % 2 ? (uint32_t)( N->p[(8)/2] >> 32 ) : (uint32_t)( N->p[(8)/2] ), &c );;
    sub32( &cur, (10) % 2 ? (uint32_t)( N->p[(10)/2] >> 32 ) : (uint32_t)( N->p[(10)/2] ), &c );; sub32( &cur, (11) % 2 ? (uint32_t)( N->p[(11)/2] >> 32 ) : (uint32_t)( N->p[(11)/2] ), &c );; sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = c > 0 ? c : 0; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; cur = 0; while( ++i < N->n * 2 ) { if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; } if( c < 0 ) fix_negative( N, c, &C, bits );;
cleanup:
    return( ret );
}
static int ecp_mod_p384( mbedtls_mpi *N )
{
    int ret = -0x006E; signed char c = 0, cc; uint32_t cur; size_t i = 0, bits = (384); mbedtls_mpi C; mbedtls_mpi_uint Cp[ (384) / 8 / sizeof( mbedtls_mpi_uint) + 1 ]; C.s = 1; C.n = (384) / 8 / sizeof( mbedtls_mpi_uint) + 1; C.p = Cp; memset( Cp, 0, C.n * sizeof( mbedtls_mpi_uint ) ); do { if( ( ret = (mbedtls_mpi_grow( N, (384) * 2 / 8 / sizeof( mbedtls_mpi_uint ) )) ) != 0 ) goto cleanup; } while( 0 ); cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );;;
    add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; add32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );;
    sub32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );;
    sub32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; sub32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );;
    sub32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; sub32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );;
    sub32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; sub32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; sub32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; add32( &cur, (16) % 2 ? (uint32_t)( N->p[(16)/2] >> 32 ) : (uint32_t)( N->p[(16)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (12) % 2 ? (uint32_t)( N->p[(12)/2] >> 32 ) : (uint32_t)( N->p[(12)/2] ), &c );; add32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );;
    sub32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; sub32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; sub32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; add32( &cur, (17) % 2 ? (uint32_t)( N->p[(17)/2] >> 32 ) : (uint32_t)( N->p[(17)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (13) % 2 ? (uint32_t)( N->p[(13)/2] >> 32 ) : (uint32_t)( N->p[(13)/2] ), &c );; add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );;
    sub32( &cur, (16) % 2 ? (uint32_t)( N->p[(16)/2] >> 32 ) : (uint32_t)( N->p[(16)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; add32( &cur, (18) % 2 ? (uint32_t)( N->p[(18)/2] >> 32 ) : (uint32_t)( N->p[(18)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (14) % 2 ? (uint32_t)( N->p[(14)/2] >> 32 ) : (uint32_t)( N->p[(14)/2] ), &c );; add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );;
    sub32( &cur, (17) % 2 ? (uint32_t)( N->p[(17)/2] >> 32 ) : (uint32_t)( N->p[(17)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (19) % 2 ? (uint32_t)( N->p[(19)/2] >> 32 ) : (uint32_t)( N->p[(19)/2] ), &c );; add32( &cur, (16) % 2 ? (uint32_t)( N->p[(16)/2] >> 32 ) : (uint32_t)( N->p[(16)/2] ), &c );; add32( &cur, (15) % 2 ? (uint32_t)( N->p[(15)/2] >> 32 ) : (uint32_t)( N->p[(15)/2] ), &c );; add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );;
    sub32( &cur, (18) % 2 ? (uint32_t)( N->p[(18)/2] >> 32 ) : (uint32_t)( N->p[(18)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; add32( &cur, (17) % 2 ? (uint32_t)( N->p[(17)/2] >> 32 ) : (uint32_t)( N->p[(17)/2] ), &c );; add32( &cur, (16) % 2 ? (uint32_t)( N->p[(16)/2] >> 32 ) : (uint32_t)( N->p[(16)/2] ), &c );;
    sub32( &cur, (19) % 2 ? (uint32_t)( N->p[(19)/2] >> 32 ) : (uint32_t)( N->p[(19)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; add32( &cur, (18) % 2 ? (uint32_t)( N->p[(18)/2] >> 32 ) : (uint32_t)( N->p[(18)/2] ), &c );; add32( &cur, (17) % 2 ? (uint32_t)( N->p[(17)/2] >> 32 ) : (uint32_t)( N->p[(17)/2] ), &c );;
    sub32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; add32( &cur, (19) % 2 ? (uint32_t)( N->p[(19)/2] >> 32 ) : (uint32_t)( N->p[(19)/2] ), &c );; add32( &cur, (18) % 2 ? (uint32_t)( N->p[(18)/2] >> 32 ) : (uint32_t)( N->p[(18)/2] ), &c );;
    sub32( &cur, (21) % 2 ? (uint32_t)( N->p[(21)/2] >> 32 ) : (uint32_t)( N->p[(21)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = (i) % 2 ? (uint32_t)( N->p[(i)/2] >> 32 ) : (uint32_t)( N->p[(i)/2] );; cc = c; c = 0; if( cc < 0 ) sub32( &cur, -cc, &c ); else add32( &cur, cc, &c );;
    add32( &cur, (23) % 2 ? (uint32_t)( N->p[(23)/2] >> 32 ) : (uint32_t)( N->p[(23)/2] ), &c );; add32( &cur, (20) % 2 ? (uint32_t)( N->p[(20)/2] >> 32 ) : (uint32_t)( N->p[(20)/2] ), &c );; add32( &cur, (19) % 2 ? (uint32_t)( N->p[(19)/2] >> 32 ) : (uint32_t)( N->p[(19)/2] ), &c );;
    sub32( &cur, (22) % 2 ? (uint32_t)( N->p[(22)/2] >> 32 ) : (uint32_t)( N->p[(22)/2] ), &c );; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; i++; cur = c > 0 ? c : 0; if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; cur = 0; while( ++i < N->n * 2 ) { if( i % 2 ) { N->p[i/2] &= 0x00000000FFFFFFFF; N->p[i/2] |= ((mbedtls_mpi_uint) cur) << 32; } else { N->p[i/2] &= 0xFFFFFFFF00000000; N->p[i/2] |= (mbedtls_mpi_uint) cur; }; } if( c < 0 ) fix_negative( N, c, &C, bits );;
cleanup:
    return( ret );
}
static int ecp_mod_p521( mbedtls_mpi *N )
{
    int ret = -0x006E;
    size_t i;
    mbedtls_mpi M;
    mbedtls_mpi_uint Mp[( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) + 1];
    if( N->n < ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) )
        return( 0 );
    M.s = 1;
    M.n = N->n - ( ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) - 1 );
    if( M.n > ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) + 1 )
        M.n = ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) + 1;
    M.p = Mp;
    memcpy( Mp, N->p + ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) - 1, M.n * sizeof( mbedtls_mpi_uint ) );
    do { if( ( ret = (mbedtls_mpi_shift_r( &M, 521 % ( 8 * sizeof( mbedtls_mpi_uint ) ) )) ) != 0 ) goto cleanup; } while( 0 );
    N->p[( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) - 1] &= 0x01FF;
    for( i = ( 521 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ); i < N->n; i++ )
        N->p[i] = 0;
    do { if( ( ret = (mbedtls_mpi_add_abs( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_mod_p255( mbedtls_mpi *N )
{
    int ret = -0x006E;
    size_t i;
    mbedtls_mpi M;
    mbedtls_mpi_uint Mp[( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) + 2];
    if( N->n < ( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) )
        return( 0 );
    M.s = 1;
    M.n = N->n - ( ( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) - 1 );
    if( M.n > ( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) + 1 )
        return( -0x4F80 );
    M.p = Mp;
    memset( Mp, 0, sizeof Mp );
    memcpy( Mp, N->p + ( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ) - 1, M.n * sizeof( mbedtls_mpi_uint ) );
    do { if( ( ret = (mbedtls_mpi_shift_r( &M, 255 % ( 8 * sizeof( mbedtls_mpi_uint ) ) )) ) != 0 ) goto cleanup; } while( 0 );
    M.n++;
    do { if( ( ret = (mbedtls_mpi_set_bit( N, 255, 0 )) ) != 0 ) goto cleanup; } while( 0 );
    for( i = ( 255 / 8 / sizeof( mbedtls_mpi_uint ) + 1 ); i < N->n; i++ )
        N->p[i] = 0;
    do { if( ( ret = (mbedtls_mpi_mul_int( &M, &M, 19 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_abs( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_mod_p448( mbedtls_mpi *N )
{
    int ret = -0x006E;
    size_t i;
    mbedtls_mpi M, Q;
    mbedtls_mpi_uint Mp[( 448 / 8 / sizeof( mbedtls_mpi_uint ) ) + 1], Qp[( 448 / 8 / sizeof( mbedtls_mpi_uint ) )];
    if( N->n <= ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ) )
        return( 0 );
    M.s = 1;
    M.n = N->n - ( ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ) );
    if( M.n > ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ) )
        return( -0x4F80 );
    M.p = Mp;
    memset( Mp, 0, sizeof( Mp ) );
    memcpy( Mp, N->p + ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ), M.n * sizeof( mbedtls_mpi_uint ) );
    for( i = ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ); i < N->n; i++ )
        N->p[i] = 0;
    do { if( ( ret = (mbedtls_mpi_add_mpi( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
    Q = M;
    Q.p = Qp;
    memcpy( Qp, Mp, sizeof( Qp ) );
    do { if( ( ret = (mbedtls_mpi_shift_r( &Q, 224 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mpi( N, N, &Q )) ) != 0 ) goto cleanup; } while( 0 );
    if( sizeof( mbedtls_mpi_uint ) > 4 )
        Mp[( 28 / sizeof( mbedtls_mpi_uint ) )] &= ( (mbedtls_mpi_uint)-1 ) >> ( ( ( ( ( ( 28 ) + ( sizeof( mbedtls_mpi_uint ) ) - 1 ) / ( sizeof( mbedtls_mpi_uint ) ) ) * sizeof( mbedtls_mpi_uint ) * 8 ) - 224 ) );
    for( i = ( ( ( 28 ) + ( sizeof( mbedtls_mpi_uint ) ) - 1 ) / ( sizeof( mbedtls_mpi_uint ) ) ); i < M.n; ++i )
        Mp[i] = 0;
    do { if( ( ret = (mbedtls_mpi_add_mpi( &M, &M, &Q )) ) != 0 ) goto cleanup; } while( 0 );
    M.n = ( 448 / 8 / sizeof( mbedtls_mpi_uint ) ) + 1;
    do { if( ( ret = (mbedtls_mpi_shift_l( &M, 224 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mpi( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static inline int ecp_mod_koblitz( mbedtls_mpi *N, mbedtls_mpi_uint *Rp, size_t p_limbs,
                                   size_t adjust, size_t shift, mbedtls_mpi_uint mask )
{
    int ret = -0x006E;
    size_t i;
    mbedtls_mpi M, R;
    mbedtls_mpi_uint Mp[( 256 / 8 / sizeof( mbedtls_mpi_uint ) ) + ( 8 / sizeof( mbedtls_mpi_uint ) ) + 1];
    if( N->n < p_limbs )
        return( 0 );
    R.s = 1;
    R.p = Rp;
    R.n = ( 8 / sizeof( mbedtls_mpi_uint ) );
    M.s = 1;
    M.p = Mp;
    M.n = N->n - ( p_limbs - adjust );
    if( M.n > p_limbs + adjust )
        M.n = p_limbs + adjust;
    memset( Mp, 0, sizeof Mp );
    memcpy( Mp, N->p + p_limbs - adjust, M.n * sizeof( mbedtls_mpi_uint ) );
    if( shift != 0 )
        do { if( ( ret = (mbedtls_mpi_shift_r( &M, shift )) ) != 0 ) goto cleanup; } while( 0 );
    M.n += R.n;
    if( mask != 0 )
        N->p[p_limbs - 1] &= mask;
    for( i = p_limbs; i < N->n; i++ )
        N->p[i] = 0;
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &M, &M, &R )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_abs( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
    M.n = N->n - ( p_limbs - adjust );
    if( M.n > p_limbs + adjust )
        M.n = p_limbs + adjust;
    memset( Mp, 0, sizeof Mp );
    memcpy( Mp, N->p + p_limbs - adjust, M.n * sizeof( mbedtls_mpi_uint ) );
    if( shift != 0 )
        do { if( ( ret = (mbedtls_mpi_shift_r( &M, shift )) ) != 0 ) goto cleanup; } while( 0 );
    M.n += R.n;
    if( mask != 0 )
        N->p[p_limbs - 1] &= mask;
    for( i = p_limbs; i < N->n; i++ )
        N->p[i] = 0;
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &M, &M, &R )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_abs( N, N, &M )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
static int ecp_mod_p192k1( mbedtls_mpi *N )
{
    static mbedtls_mpi_uint Rp[] = {
        ( (mbedtls_mpi_uint) (0xC9) << 0 ) | ( (mbedtls_mpi_uint) (0x11) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x01) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ) };
    return( ecp_mod_koblitz( N, Rp, 192 / 8 / sizeof( mbedtls_mpi_uint ), 0, 0, 0 ) );
}
static int ecp_mod_p224k1( mbedtls_mpi *N )
{
    static mbedtls_mpi_uint Rp[] = {
        ( (mbedtls_mpi_uint) (0x93) << 0 ) | ( (mbedtls_mpi_uint) (0x1A) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x01) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ) };
    return( ecp_mod_koblitz( N, Rp, 4, 1, 32, 0xFFFFFFFF ) );
}
static int ecp_mod_p256k1( mbedtls_mpi *N )
{
    static mbedtls_mpi_uint Rp[] = {
        ( (mbedtls_mpi_uint) (0xD1) << 0 ) | ( (mbedtls_mpi_uint) (0x03) << 8 ) | ( (mbedtls_mpi_uint) (0x00) << 16 ) | ( (mbedtls_mpi_uint) (0x00) << 24 ) | ( (mbedtls_mpi_uint) (0x01) << 32 ) | ( (mbedtls_mpi_uint) (0x00) << 40 ) | ( (mbedtls_mpi_uint) (0x00) << 48 ) | ( (mbedtls_mpi_uint) (0x00) << 56 ) };
    return( ecp_mod_koblitz( N, Rp, 256 / 8 / sizeof( mbedtls_mpi_uint ), 0, 0, 0 ) );
}
