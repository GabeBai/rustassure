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
int mbedtls_rsa_deduce_primes( mbedtls_mpi const *N, mbedtls_mpi const *E,
                               mbedtls_mpi const *D,
                               mbedtls_mpi *P, mbedtls_mpi *Q );
int mbedtls_rsa_deduce_private_exponent( mbedtls_mpi const *P,
                                         mbedtls_mpi const *Q,
                                         mbedtls_mpi const *E,
                                         mbedtls_mpi *D );
int mbedtls_rsa_deduce_crt( const mbedtls_mpi *P, const mbedtls_mpi *Q,
                            const mbedtls_mpi *D, mbedtls_mpi *DP,
                            mbedtls_mpi *DQ, mbedtls_mpi *QP );
int mbedtls_rsa_validate_params( const mbedtls_mpi *N, const mbedtls_mpi *P,
                                 const mbedtls_mpi *Q, const mbedtls_mpi *D,
                                 const mbedtls_mpi *E,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng );
int mbedtls_rsa_validate_crt( const mbedtls_mpi *P, const mbedtls_mpi *Q,
                              const mbedtls_mpi *D, const mbedtls_mpi *DP,
                              const mbedtls_mpi *DQ, const mbedtls_mpi *QP );
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
static inline int mbedtls_safer_memcmp( const void *a, const void *b, size_t n )
{
    size_t i;
    const unsigned char *A = (const unsigned char *) a;
    const unsigned char *B = (const unsigned char *) b;
    unsigned char diff = 0;
    for( i = 0; i < n; i++ )
        diff |= A[i] ^ B[i];
    return( diff );
}
int mbedtls_rsa_import( mbedtls_rsa_context *ctx,
                        const mbedtls_mpi *N,
                        const mbedtls_mpi *P, const mbedtls_mpi *Q,
                        const mbedtls_mpi *D, const mbedtls_mpi *E )
{
    int ret = -0x006E;
    do { } while( 0 );
    if( ( N != ((void*)0) && ( ret = mbedtls_mpi_copy( &ctx->N, N ) ) != 0 ) ||
        ( P != ((void*)0) && ( ret = mbedtls_mpi_copy( &ctx->P, P ) ) != 0 ) ||
        ( Q != ((void*)0) && ( ret = mbedtls_mpi_copy( &ctx->Q, Q ) ) != 0 ) ||
        ( D != ((void*)0) && ( ret = mbedtls_mpi_copy( &ctx->D, D ) ) != 0 ) ||
        ( E != ((void*)0) && ( ret = mbedtls_mpi_copy( &ctx->E, E ) ) != 0 ) )
    {
        return( -0x4080 + ret );
    }
    if( N != ((void*)0) )
        ctx->len = mbedtls_mpi_size( &ctx->N );
    return( 0 );
}
int mbedtls_rsa_import_raw( mbedtls_rsa_context *ctx,
                            unsigned char const *N, size_t N_len,
                            unsigned char const *P, size_t P_len,
                            unsigned char const *Q, size_t Q_len,
                            unsigned char const *D, size_t D_len,
                            unsigned char const *E, size_t E_len )
{
    int ret = 0;
    do { } while( 0 );
    if( N != ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_read_binary( &ctx->N, N, N_len )) ) != 0 ) goto cleanup; } while( 0 );
        ctx->len = mbedtls_mpi_size( &ctx->N );
    }
    if( P != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_read_binary( &ctx->P, P, P_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( Q != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_read_binary( &ctx->Q, Q, Q_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( D != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_read_binary( &ctx->D, D, D_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( E != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_read_binary( &ctx->E, E, E_len )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    if( ret != 0 )
        return( -0x4080 + ret );
    return( 0 );
}
static int rsa_check_context( mbedtls_rsa_context const *ctx, int is_priv,
                              int blinding_needed )
{
    ((void) blinding_needed);
    if( ctx->len != mbedtls_mpi_size( &ctx->N ) ||
        ctx->len > 1024 )
    {
        return( -0x4080 );
    }
    if( mbedtls_mpi_cmp_int( &ctx->N, 0 ) <= 0 ||
        mbedtls_mpi_get_bit( &ctx->N, 0 ) == 0 )
    {
        return( -0x4080 );
    }
    if( is_priv &&
        ( mbedtls_mpi_cmp_int( &ctx->P, 0 ) <= 0 ||
          mbedtls_mpi_get_bit( &ctx->P, 0 ) == 0 ||
          mbedtls_mpi_cmp_int( &ctx->Q, 0 ) <= 0 ||
          mbedtls_mpi_get_bit( &ctx->Q, 0 ) == 0 ) )
    {
        return( -0x4080 );
    }
    if( mbedtls_mpi_cmp_int( &ctx->E, 0 ) <= 0 )
        return( -0x4080 );
    if( is_priv &&
        ( mbedtls_mpi_cmp_int( &ctx->DP, 0 ) <= 0 ||
          mbedtls_mpi_cmp_int( &ctx->DQ, 0 ) <= 0 ) )
    {
        return( -0x4080 );
    }
    if( is_priv &&
        mbedtls_mpi_cmp_int( &ctx->QP, 0 ) <= 0 )
    {
        return( -0x4080 );
    }
    return( 0 );
}
int mbedtls_rsa_complete( mbedtls_rsa_context *ctx )
{
    int ret = 0;
    int have_N, have_P, have_Q, have_D, have_E;
    int have_DP, have_DQ, have_QP;
    int n_missing, pq_missing, d_missing, is_pub, is_priv;
    do { } while( 0 );
    have_N = ( mbedtls_mpi_cmp_int( &ctx->N, 0 ) != 0 );
    have_P = ( mbedtls_mpi_cmp_int( &ctx->P, 0 ) != 0 );
    have_Q = ( mbedtls_mpi_cmp_int( &ctx->Q, 0 ) != 0 );
    have_D = ( mbedtls_mpi_cmp_int( &ctx->D, 0 ) != 0 );
    have_E = ( mbedtls_mpi_cmp_int( &ctx->E, 0 ) != 0 );
    have_DP = ( mbedtls_mpi_cmp_int( &ctx->DP, 0 ) != 0 );
    have_DQ = ( mbedtls_mpi_cmp_int( &ctx->DQ, 0 ) != 0 );
    have_QP = ( mbedtls_mpi_cmp_int( &ctx->QP, 0 ) != 0 );
    n_missing = have_P && have_Q && have_D && have_E;
    pq_missing = have_N && !have_P && !have_Q && have_D && have_E;
    d_missing = have_P && have_Q && !have_D && have_E;
    is_pub = have_N && !have_P && !have_Q && !have_D && have_E;
    is_priv = n_missing || pq_missing || d_missing;
    if( !is_priv && !is_pub )
        return( -0x4080 );
    if( !have_N && have_P && have_Q )
    {
        if( ( ret = mbedtls_mpi_mul_mpi( &ctx->N, &ctx->P,
                                         &ctx->Q ) ) != 0 )
        {
            return( -0x4080 + ret );
        }
        ctx->len = mbedtls_mpi_size( &ctx->N );
    }
    if( pq_missing )
    {
        ret = mbedtls_rsa_deduce_primes( &ctx->N, &ctx->E, &ctx->D,
                                         &ctx->P, &ctx->Q );
        if( ret != 0 )
            return( -0x4080 + ret );
    }
    else if( d_missing )
    {
        if( ( ret = mbedtls_rsa_deduce_private_exponent( &ctx->P,
                                                         &ctx->Q,
                                                         &ctx->E,
                                                         &ctx->D ) ) != 0 )
        {
            return( -0x4080 + ret );
        }
    }
    if( is_priv && ! ( have_DP && have_DQ && have_QP ) )
    {
        ret = mbedtls_rsa_deduce_crt( &ctx->P, &ctx->Q, &ctx->D,
                                      &ctx->DP, &ctx->DQ, &ctx->QP );
        if( ret != 0 )
            return( -0x4080 + ret );
    }
    return( rsa_check_context( ctx, is_priv, 1 ) );
}
int mbedtls_rsa_export_raw( const mbedtls_rsa_context *ctx,
                            unsigned char *N, size_t N_len,
                            unsigned char *P, size_t P_len,
                            unsigned char *Q, size_t Q_len,
                            unsigned char *D, size_t D_len,
                            unsigned char *E, size_t E_len )
{
    int ret = 0;
    int is_priv;
    do { } while( 0 );
    is_priv =
        mbedtls_mpi_cmp_int( &ctx->N, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->P, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->Q, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->D, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->E, 0 ) != 0;
    if( !is_priv )
    {
        if( P != ((void*)0) || Q != ((void*)0) || D != ((void*)0) )
            return( -0x4080 );
    }
    if( N != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_write_binary( &ctx->N, N, N_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( P != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_write_binary( &ctx->P, P, P_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( Q != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_write_binary( &ctx->Q, Q, Q_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( D != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_write_binary( &ctx->D, D, D_len )) ) != 0 ) goto cleanup; } while( 0 );
    if( E != ((void*)0) )
        do { if( ( ret = (mbedtls_mpi_write_binary( &ctx->E, E, E_len )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    return( ret );
}
int mbedtls_rsa_export( const mbedtls_rsa_context *ctx,
                        mbedtls_mpi *N, mbedtls_mpi *P, mbedtls_mpi *Q,
                        mbedtls_mpi *D, mbedtls_mpi *E )
{
    int ret = -0x006E;
    int is_priv;
    do { } while( 0 );
    is_priv =
        mbedtls_mpi_cmp_int( &ctx->N, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->P, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->Q, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->D, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->E, 0 ) != 0;
    if( !is_priv )
    {
        if( P != ((void*)0) || Q != ((void*)0) || D != ((void*)0) )
            return( -0x4080 );
    }
    if( ( N != ((void*)0) && ( ret = mbedtls_mpi_copy( N, &ctx->N ) ) != 0 ) ||
        ( P != ((void*)0) && ( ret = mbedtls_mpi_copy( P, &ctx->P ) ) != 0 ) ||
        ( Q != ((void*)0) && ( ret = mbedtls_mpi_copy( Q, &ctx->Q ) ) != 0 ) ||
        ( D != ((void*)0) && ( ret = mbedtls_mpi_copy( D, &ctx->D ) ) != 0 ) ||
        ( E != ((void*)0) && ( ret = mbedtls_mpi_copy( E, &ctx->E ) ) != 0 ) )
    {
        return( ret );
    }
    return( 0 );
}
int mbedtls_rsa_export_crt( const mbedtls_rsa_context *ctx,
                            mbedtls_mpi *DP, mbedtls_mpi *DQ, mbedtls_mpi *QP )
{
    int ret = -0x006E;
    int is_priv;
    do { } while( 0 );
    is_priv =
        mbedtls_mpi_cmp_int( &ctx->N, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->P, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->Q, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->D, 0 ) != 0 &&
        mbedtls_mpi_cmp_int( &ctx->E, 0 ) != 0;
    if( !is_priv )
        return( -0x4080 );
    if( ( DP != ((void*)0) && ( ret = mbedtls_mpi_copy( DP, &ctx->DP ) ) != 0 ) ||
        ( DQ != ((void*)0) && ( ret = mbedtls_mpi_copy( DQ, &ctx->DQ ) ) != 0 ) ||
        ( QP != ((void*)0) && ( ret = mbedtls_mpi_copy( QP, &ctx->QP ) ) != 0 ) )
    {
        return( -0x4080 + ret );
    }
    return( 0 );
}
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
               int padding,
               int hash_id )
{
    do { } while( 0 );
    do { } while( 0 );
    memset( ctx, 0, sizeof( mbedtls_rsa_context ) );
    mbedtls_rsa_set_padding( ctx, padding, hash_id );
}
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding,
                              int hash_id )
{
    do { } while( 0 );
    do { } while( 0 );
    ctx->padding = padding;
    ctx->hash_id = hash_id;
}
size_t mbedtls_rsa_get_len( const mbedtls_rsa_context *ctx )
{
    return( ctx->len );
}
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 unsigned int nbits, int exponent )
{
    int ret = -0x006E;
    mbedtls_mpi H, G, L;
    int prime_quality = 0;
    do { } while( 0 );
    do { } while( 0 );
    if( nbits < 128 || exponent < 3 || nbits % 2 != 0 )
        return( -0x4080 );
    if( nbits > 1024 )
        prime_quality = MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR;
    mbedtls_mpi_init( &H );
    mbedtls_mpi_init( &G );
    mbedtls_mpi_init( &L );
    do { if( ( ret = (mbedtls_mpi_lset( &ctx->E, exponent )) ) != 0 ) goto cleanup; } while( 0 );
    do
    {
        do { if( ( ret = (mbedtls_mpi_gen_prime( &ctx->P, nbits >> 1, prime_quality, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_gen_prime( &ctx->Q, nbits >> 1, prime_quality, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_mpi( &H, &ctx->P, &ctx->Q )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_bitlen( &H ) <= ( ( nbits >= 200 ) ? ( ( nbits >> 1 ) - 99 ) : 0 ) )
            continue;
        if( H.s < 0 )
            mbedtls_mpi_swap( &ctx->P, &ctx->Q );
        do { if( ( ret = (mbedtls_mpi_sub_int( &ctx->P, &ctx->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_int( &ctx->Q, &ctx->Q, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &H, &ctx->P, &ctx->Q )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_gcd( &G, &ctx->E, &H )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_cmp_int( &G, 1 ) != 0 )
            continue;
        do { if( ( ret = (mbedtls_mpi_gcd( &G, &ctx->P, &ctx->Q )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_div_mpi( &L, ((void*)0), &H, &G )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_inv_mod( &ctx->D, &ctx->E, &L )) ) != 0 ) goto cleanup; } while( 0 );
        if( mbedtls_mpi_bitlen( &ctx->D ) <= ( ( nbits + 1 ) / 2 ) )
            continue;
        break;
    }
    while( 1 );
    do { if( ( ret = (mbedtls_mpi_add_int( &ctx->P, &ctx->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_int( &ctx->Q, &ctx->Q, 1 )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &ctx->N, &ctx->P, &ctx->Q )) ) != 0 ) goto cleanup; } while( 0 );
    ctx->len = mbedtls_mpi_size( &ctx->N );
    do { if( ( ret = (mbedtls_rsa_deduce_crt( &ctx->P, &ctx->Q, &ctx->D, &ctx->DP, &ctx->DQ, &ctx->QP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_check_privkey( ctx )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &H );
    mbedtls_mpi_free( &G );
    mbedtls_mpi_free( &L );
    if( ret != 0 )
    {
        mbedtls_rsa_free( ctx );
        return( -0x4180 + ret );
    }
    return( 0 );
}
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx )
{
    do { } while( 0 );
    if( rsa_check_context( ctx, 0 , 0 ) != 0 )
        return( -0x4200 );
    if( mbedtls_mpi_bitlen( &ctx->N ) < 128 )
    {
        return( -0x4200 );
    }
    if( mbedtls_mpi_get_bit( &ctx->E, 0 ) == 0 ||
        mbedtls_mpi_bitlen( &ctx->E ) < 2 ||
        mbedtls_mpi_cmp_mpi( &ctx->E, &ctx->N ) >= 0 )
    {
        return( -0x4200 );
    }
    return( 0 );
}
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx )
{
    do { } while( 0 );
    if( mbedtls_rsa_check_pubkey( ctx ) != 0 ||
        rsa_check_context( ctx, 1 , 1 ) != 0 )
    {
        return( -0x4200 );
    }
    if( mbedtls_rsa_validate_params( &ctx->N, &ctx->P, &ctx->Q,
                                     &ctx->D, &ctx->E, ((void*)0), ((void*)0) ) != 0 )
    {
        return( -0x4200 );
    }
    else if( mbedtls_rsa_validate_crt( &ctx->P, &ctx->Q, &ctx->D,
                                       &ctx->DP, &ctx->DQ, &ctx->QP ) != 0 )
    {
        return( -0x4200 );
    }
    return( 0 );
}
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub,
                                const mbedtls_rsa_context *prv )
{
    do { } while( 0 );
    do { } while( 0 );
    if( mbedtls_rsa_check_pubkey( pub ) != 0 ||
        mbedtls_rsa_check_privkey( prv ) != 0 )
    {
        return( -0x4200 );
    }
    if( mbedtls_mpi_cmp_mpi( &pub->N, &prv->N ) != 0 ||
        mbedtls_mpi_cmp_mpi( &pub->E, &prv->E ) != 0 )
    {
        return( -0x4200 );
    }
    return( 0 );
}
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output )
{
    int ret = -0x006E;
    size_t olen;
    mbedtls_mpi T;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( rsa_check_context( ctx, 0 , 0 ) )
        return( -0x4080 );
    mbedtls_mpi_init( &T );
    do { if( ( ret = (mbedtls_mpi_read_binary( &T, input, ctx->len )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &T, &ctx->N ) >= 0 )
    {
        ret = -0x0004;
        goto cleanup;
    }
    olen = ctx->len;
    do { if( ( ret = (mbedtls_mpi_exp_mod( &T, &T, &ctx->E, &ctx->N, &ctx->RN )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_write_binary( &T, output, olen )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &T );
    if( ret != 0 )
        return( -0x4280 + ret );
    return( 0 );
}
static int rsa_prepare_blinding( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret, count = 0;
    mbedtls_mpi R;
    mbedtls_mpi_init( &R );
    if( ctx->Vf.p != ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &ctx->Vi, &ctx->Vi, &ctx->Vi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &ctx->Vi, &ctx->Vi, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &ctx->Vf, &ctx->Vf, &ctx->Vf )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &ctx->Vf, &ctx->Vf, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
        goto cleanup;
    }
    do {
        if( count++ > 10 )
        {
            ret = -0x4480;
            goto cleanup;
        }
        do { if( ( ret = (mbedtls_mpi_fill_random( &ctx->Vf, ctx->len - 1, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_fill_random( &R, ctx->len - 1, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &ctx->Vi, &ctx->Vf, &R )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &ctx->Vi, &ctx->Vi, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
        ret = mbedtls_mpi_inv_mod( &ctx->Vi, &ctx->Vi, &ctx->N );
        if( ret == -0x000E )
            continue;
        if( ret != 0 )
            goto cleanup;
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &ctx->Vi, &ctx->Vi, &R )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &ctx->Vi, &ctx->Vi, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
    } while( 0 );
    do { if( ( ret = (mbedtls_mpi_exp_mod( &ctx->Vi, &ctx->Vi, &ctx->E, &ctx->N, &ctx->RN )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &R );
    return( ret );
}
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output )
{
    int ret = -0x006E;
    size_t olen;
    mbedtls_mpi T;
    mbedtls_mpi P1, Q1, R;
    mbedtls_mpi TP, TQ;
    mbedtls_mpi DP_blind, DQ_blind;
    mbedtls_mpi *DP = &ctx->DP;
    mbedtls_mpi *DQ = &ctx->DQ;
    mbedtls_mpi I, C;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( rsa_check_context( ctx, 1 ,
                                f_rng != ((void*)0) ) != 0 )
    {
        return( -0x4080 );
    }
    mbedtls_mpi_init( &T );
    mbedtls_mpi_init( &P1 );
    mbedtls_mpi_init( &Q1 );
    mbedtls_mpi_init( &R );
    if( f_rng != ((void*)0) )
    {
        mbedtls_mpi_init( &DP_blind );
        mbedtls_mpi_init( &DQ_blind );
    }
    mbedtls_mpi_init( &TP ); mbedtls_mpi_init( &TQ );
    mbedtls_mpi_init( &I );
    mbedtls_mpi_init( &C );
    do { if( ( ret = (mbedtls_mpi_read_binary( &T, input, ctx->len )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &T, &ctx->N ) >= 0 )
    {
        ret = -0x0004;
        goto cleanup;
    }
    do { if( ( ret = (mbedtls_mpi_copy( &I, &T )) ) != 0 ) goto cleanup; } while( 0 );
    if( f_rng != ((void*)0) )
    {
        do { if( ( ret = (rsa_prepare_blinding( ctx, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &T, &T, &ctx->Vi )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &T, &T, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_int( &P1, &ctx->P, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_sub_int( &Q1, &ctx->Q, 1 )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_fill_random( &R, 28, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &DP_blind, &P1, &R )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_add_mpi( &DP_blind, &DP_blind, &ctx->DP )) ) != 0 ) goto cleanup; } while( 0 );
        DP = &DP_blind;
        do { if( ( ret = (mbedtls_mpi_fill_random( &R, 28, f_rng, p_rng )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &DQ_blind, &Q1, &R )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_add_mpi( &DQ_blind, &DQ_blind, &ctx->DQ )) ) != 0 ) goto cleanup; } while( 0 );
        DQ = &DQ_blind;
    }
    do { if( ( ret = (mbedtls_mpi_exp_mod( &TP, &T, DP, &ctx->P, &ctx->RP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_exp_mod( &TQ, &T, DQ, &ctx->Q, &ctx->RQ )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_sub_mpi( &T, &TP, &TQ )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &TP, &T, &ctx->QP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mod_mpi( &T, &TP, &ctx->P )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_mul_mpi( &TP, &T, &ctx->Q )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_add_mpi( &T, &TQ, &TP )) ) != 0 ) goto cleanup; } while( 0 );
    if( f_rng != ((void*)0) )
    {
        do { if( ( ret = (mbedtls_mpi_mul_mpi( &T, &T, &ctx->Vf )) ) != 0 ) goto cleanup; } while( 0 );
        do { if( ( ret = (mbedtls_mpi_mod_mpi( &T, &T, &ctx->N )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_exp_mod( &C, &T, &ctx->E, &ctx->N, &ctx->RN )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_mpi_cmp_mpi( &C, &I ) != 0 )
    {
        ret = -0x4380;
        goto cleanup;
    }
    olen = ctx->len;
    do { if( ( ret = (mbedtls_mpi_write_binary( &T, output, olen )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &P1 );
    mbedtls_mpi_free( &Q1 );
    mbedtls_mpi_free( &R );
    if( f_rng != ((void*)0) )
    {
        mbedtls_mpi_free( &DP_blind );
        mbedtls_mpi_free( &DQ_blind );
    }
    mbedtls_mpi_free( &T );
    mbedtls_mpi_free( &TP ); mbedtls_mpi_free( &TQ );
    mbedtls_mpi_free( &C );
    mbedtls_mpi_free( &I );
    if( ret != 0 )
        return( -0x4300 + ret );
    return( 0 );
}
static int mgf_mask( unsigned char *dst, size_t dlen, unsigned char *src,
                      size_t slen, mbedtls_md_context_t *md_ctx )
{
    unsigned char mask[64];
    unsigned char counter[4];
    unsigned char *p;
    unsigned int hlen;
    size_t i, use_len;
    int ret = 0;
    memset( mask, 0, 64 );
    memset( counter, 0, 4 );
    hlen = mbedtls_md_get_size( md_ctx->md_info );
    p = dst;
    while( dlen > 0 )
    {
        use_len = hlen;
        if( dlen < hlen )
            use_len = dlen;
        if( ( ret = mbedtls_md_starts( md_ctx ) ) != 0 )
            goto exit;
        if( ( ret = mbedtls_md_update( md_ctx, src, slen ) ) != 0 )
            goto exit;
        if( ( ret = mbedtls_md_update( md_ctx, counter, 4 ) ) != 0 )
            goto exit;
        if( ( ret = mbedtls_md_finish( md_ctx, mask ) ) != 0 )
            goto exit;
        for( i = 0; i < use_len; ++i )
            *p++ ^= mask[i];
        counter[3]++;
        dlen -= use_len;
    }
exit:
    mbedtls_platform_zeroize( mask, sizeof( mask ) );
    return( ret );
}
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output )
{
    size_t olen;
    int ret = -0x006E;
    unsigned char *p = output;
    unsigned int hlen;
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 1 )
        return( -0x4080 );
    if( f_rng == ((void*)0) )
        return( -0x4080 );
    md_info = mbedtls_md_info_from_type( (mbedtls_md_type_t) ctx->hash_id );
    if( md_info == ((void*)0) )
        return( -0x4080 );
    olen = ctx->len;
    hlen = mbedtls_md_get_size( md_info );
    if( ilen + 2 * hlen + 2 < ilen || olen < ilen + 2 * hlen + 2 )
        return( -0x4080 );
    memset( output, 0, olen );
    *p++ = 0;
    if( ( ret = f_rng( p_rng, p, hlen ) ) != 0 )
        return( -0x4480 + ret );
    p += hlen;
    if( ( ret = mbedtls_md( md_info, label, label_len, p ) ) != 0 )
        return( ret );
    p += hlen;
    p += olen - 2 * hlen - 2 - ilen;
    *p++ = 1;
    if( ilen != 0 )
        memcpy( p, input, ilen );
    mbedtls_md_init( &md_ctx );
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 0 ) ) != 0 )
        goto exit;
    if( ( ret = mgf_mask( output + hlen + 1, olen - hlen - 1, output + 1, hlen,
                          &md_ctx ) ) != 0 )
        goto exit;
    if( ( ret = mgf_mask( output + 1, hlen, output + hlen + 1, olen - hlen - 1,
                          &md_ctx ) ) != 0 )
        goto exit;
exit:
    mbedtls_md_free( &md_ctx );
    if( ret != 0 )
        return( ret );
    return( ( mode == 0 )
            ? mbedtls_rsa_public( ctx, output, output )
            : mbedtls_rsa_private( ctx, f_rng, p_rng, output, output ) );
}
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output )
{
    size_t nb_pad, olen;
    int ret = -0x006E;
    unsigned char *p = output;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 0 )
        return( -0x4080 );
    olen = ctx->len;
    if( ilen + 11 < ilen || olen < ilen + 11 )
        return( -0x4080 );
    nb_pad = olen - 3 - ilen;
    *p++ = 0;
    if( mode == 0 )
    {
        if( f_rng == ((void*)0) )
            return( -0x4080 );
        *p++ = 2;
        while( nb_pad-- > 0 )
        {
            int rng_dl = 100;
            do {
                ret = f_rng( p_rng, p, 1 );
            } while( *p == 0 && --rng_dl && ret == 0 );
            if( rng_dl == 0 || ret != 0 )
                return( -0x4480 + ret );
            p++;
        }
    }
    else
    {
        *p++ = 1;
        while( nb_pad-- > 0 )
            *p++ = 0xFF;
    }
    *p++ = 0;
    if( ilen != 0 )
        memcpy( p, input, ilen );
    return( ( mode == 0 )
            ? mbedtls_rsa_public( ctx, output, output )
            : mbedtls_rsa_private( ctx, f_rng, p_rng, output, output ) );
}
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    switch( ctx->padding )
    {
        case 0:
            return mbedtls_rsa_rsaes_pkcs1_v15_encrypt( ctx, f_rng, p_rng, mode, ilen,
                                                input, output );
        case 1:
            return mbedtls_rsa_rsaes_oaep_encrypt( ctx, f_rng, p_rng, mode, ((void*)0), 0,
                                           ilen, input, output );
        default:
            return( -0x4100 );
    }
}
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len )
{
    int ret = -0x006E;
    size_t ilen, i, pad_len;
    unsigned char *p, bad, pad_done;
    unsigned char buf[1024];
    unsigned char lhash[64];
    unsigned int hlen;
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 1 )
        return( -0x4080 );
    ilen = ctx->len;
    if( ilen < 16 || ilen > sizeof( buf ) )
        return( -0x4080 );
    md_info = mbedtls_md_info_from_type( (mbedtls_md_type_t) ctx->hash_id );
    if( md_info == ((void*)0) )
        return( -0x4080 );
    hlen = mbedtls_md_get_size( md_info );
    if( 2 * hlen + 2 > ilen )
        return( -0x4080 );
    ret = ( mode == 0 )
          ? mbedtls_rsa_public( ctx, input, buf )
          : mbedtls_rsa_private( ctx, f_rng, p_rng, input, buf );
    if( ret != 0 )
        goto cleanup;
    mbedtls_md_init( &md_ctx );
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 0 ) ) != 0 )
    {
        mbedtls_md_free( &md_ctx );
        goto cleanup;
    }
    if( ( ret = mgf_mask( buf + 1, hlen, buf + hlen + 1, ilen - hlen - 1,
                          &md_ctx ) ) != 0 ||
        ( ret = mgf_mask( buf + hlen + 1, ilen - hlen - 1, buf + 1, hlen,
                          &md_ctx ) ) != 0 )
    {
        mbedtls_md_free( &md_ctx );
        goto cleanup;
    }
    mbedtls_md_free( &md_ctx );
    if( ( ret = mbedtls_md( md_info, label, label_len, lhash ) ) != 0 )
        goto cleanup;
    p = buf;
    bad = 0;
    bad |= *p++;
    p += hlen;
    for( i = 0; i < hlen; i++ )
        bad |= lhash[i] ^ *p++;
    pad_len = 0;
    pad_done = 0;
    for( i = 0; i < ilen - 2 * hlen - 2; i++ )
    {
        pad_done |= p[i];
        pad_len += ((pad_done | (unsigned char)-pad_done) >> 7) ^ 1;
    }
    p += pad_len;
    bad |= *p++ ^ 0x01;
    if( bad != 0 )
    {
        ret = -0x4100;
        goto cleanup;
    }
    if( ilen - ( p - buf ) > output_max_len )
    {
        ret = -0x4400;
        goto cleanup;
    }
    *olen = ilen - (p - buf);
    if( *olen != 0 )
        memcpy( output, p, *olen );
    ret = 0;
cleanup:
    mbedtls_platform_zeroize( buf, sizeof( buf ) );
    mbedtls_platform_zeroize( lhash, sizeof( lhash ) );
    return( ret );
}
static unsigned all_or_nothing_int( unsigned value )
{
    return( - ( ( value | - value ) >> ( sizeof( value ) * 8 - 1 ) ) );
}
static unsigned size_greater_than( size_t size, size_t max )
{
    return( ( max - size ) >> ( sizeof( size_t ) * 8 - 1 ) );
}
static unsigned if_int( unsigned cond, unsigned if1, unsigned if0 )
{
    unsigned mask = all_or_nothing_int( cond );
    return( ( mask & if1 ) | (~mask & if0 ) );
}
static void mem_move_to_left( void *start,
                              size_t total,
                              size_t offset )
{
    volatile unsigned char *buf = start;
    size_t i, n;
    if( total == 0 )
        return;
    for( i = 0; i < total; i++ )
    {
        unsigned no_op = size_greater_than( total - offset, i );
        for( n = 0; n < total - 1; n++ )
        {
            unsigned char current = buf[n];
            unsigned char next = buf[n+1];
            buf[n] = if_int( no_op, current, next );
        }
        buf[total-1] = if_int( no_op, buf[total-1], 0 );
    }
}
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len )
{
    int ret = -0x006E;
    size_t ilen, i, plaintext_max_size;
    unsigned char buf[1024];
    size_t pad_count = 0;
    unsigned bad = 0;
    unsigned char pad_done = 0;
    size_t plaintext_size = 0;
    unsigned output_too_large;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    ilen = ctx->len;
    plaintext_max_size = ( output_max_len > ilen - 11 ?
                           ilen - 11 :
                           output_max_len );
    if( mode == 1 && ctx->padding != 0 )
        return( -0x4080 );
    if( ilen < 16 || ilen > sizeof( buf ) )
        return( -0x4080 );
    ret = ( mode == 0 )
          ? mbedtls_rsa_public( ctx, input, buf )
          : mbedtls_rsa_private( ctx, f_rng, p_rng, input, buf );
    if( ret != 0 )
        goto cleanup;
    bad |= buf[0];
    if( mode == 1 )
    {
        bad |= buf[1] ^ 2;
        for( i = 2; i < ilen; i++ )
        {
            pad_done |= ((buf[i] | (unsigned char)-buf[i]) >> 7) ^ 1;
            pad_count += ((pad_done | (unsigned char)-pad_done) >> 7) ^ 1;
        }
    }
    else
    {
        bad |= buf[1] ^ 1;
        for( i = 2; i < ilen; i++ )
        {
            pad_done |= if_int( buf[i], 0, 1 );
            pad_count += if_int( pad_done, 0, 1 );
            bad |= if_int( pad_done, 0, buf[i] ^ 0xFF );
        }
    }
    bad |= if_int( pad_done, 0, 1 );
    bad |= size_greater_than( 8, pad_count );
    plaintext_size = if_int( bad,
                             (unsigned) plaintext_max_size,
                             (unsigned) ( ilen - pad_count - 3 ) );
    output_too_large = size_greater_than( plaintext_size,
                                          plaintext_max_size );
    ret = - (int) if_int( bad, - -0x4100,
                  if_int( output_too_large, - -0x4400,
                          0 ) );
    bad = all_or_nothing_int( bad | output_too_large );
    for( i = 11; i < ilen; i++ )
        buf[i] &= ~bad;
    plaintext_size = if_int( output_too_large,
                             (unsigned) plaintext_max_size,
                             (unsigned) plaintext_size );
    mem_move_to_left( buf + ilen - plaintext_max_size,
                      plaintext_max_size,
                      plaintext_max_size - plaintext_size );
    if( output_max_len != 0 )
        memcpy( output, buf + ilen - plaintext_max_size, plaintext_max_size );
    *olen = plaintext_size;
cleanup:
    mbedtls_platform_zeroize( buf, sizeof( buf ) );
    return( ret );
}
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len)
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    switch( ctx->padding )
    {
        case 0:
            return mbedtls_rsa_rsaes_pkcs1_v15_decrypt( ctx, f_rng, p_rng, mode, olen,
                                                input, output, output_max_len );
        case 1:
            return mbedtls_rsa_rsaes_oaep_decrypt( ctx, f_rng, p_rng, mode, ((void*)0), 0,
                                           olen, input, output,
                                           output_max_len );
        default:
            return( -0x4100 );
    }
}
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig )
{
    size_t olen;
    unsigned char *p = sig;
    unsigned char salt[64];
    size_t slen, min_slen, hlen, offset = 0;
    int ret = -0x006E;
    size_t msb;
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 1 )
        return( -0x4080 );
    if( f_rng == ((void*)0) )
        return( -0x4080 );
    olen = ctx->len;
    if( md_alg != MBEDTLS_MD_NONE )
    {
        md_info = mbedtls_md_info_from_type( md_alg );
        if( md_info == ((void*)0) )
            return( -0x4080 );
        hashlen = mbedtls_md_get_size( md_info );
    }
    md_info = mbedtls_md_info_from_type( (mbedtls_md_type_t) ctx->hash_id );
    if( md_info == ((void*)0) )
        return( -0x4080 );
    hlen = mbedtls_md_get_size( md_info );
    min_slen = hlen - 2;
    if( olen < hlen + min_slen + 2 )
        return( -0x4080 );
    else if( olen >= hlen + hlen + 2 )
        slen = hlen;
    else
        slen = olen - hlen - 2;
    memset( sig, 0, olen );
    if( ( ret = f_rng( p_rng, salt, slen ) ) != 0 )
        return( -0x4480 + ret );
    msb = mbedtls_mpi_bitlen( &ctx->N ) - 1;
    p += olen - hlen - slen - 2;
    *p++ = 0x01;
    memcpy( p, salt, slen );
    p += slen;
    mbedtls_md_init( &md_ctx );
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 0 ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_md_starts( &md_ctx ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_md_update( &md_ctx, p, 8 ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_md_update( &md_ctx, hash, hashlen ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_md_update( &md_ctx, salt, slen ) ) != 0 )
        goto exit;
    if( ( ret = mbedtls_md_finish( &md_ctx, p ) ) != 0 )
        goto exit;
    if( msb % 8 == 0 )
        offset = 1;
    if( ( ret = mgf_mask( sig + offset, olen - hlen - 1 - offset, p, hlen,
                          &md_ctx ) ) != 0 )
        goto exit;
    msb = mbedtls_mpi_bitlen( &ctx->N ) - 1;
    sig[0] &= 0xFF >> ( olen * 8 - msb );
    p += hlen;
    *p++ = 0xBC;
    mbedtls_platform_zeroize( salt, sizeof( salt ) );
exit:
    mbedtls_md_free( &md_ctx );
    if( ret != 0 )
        return( ret );
    return( ( mode == 0 )
            ? mbedtls_rsa_public( ctx, sig, sig )
            : mbedtls_rsa_private( ctx, f_rng, p_rng, sig, sig ) );
}
static int rsa_rsassa_pkcs1_v15_encode( mbedtls_md_type_t md_alg,
                                        unsigned int hashlen,
                                        const unsigned char *hash,
                                        size_t dst_len,
                                        unsigned char *dst )
{
    size_t oid_size = 0;
    size_t nb_pad = dst_len;
    unsigned char *p = dst;
    const char *oid = ((void*)0);
    if( md_alg != MBEDTLS_MD_NONE )
    {
        const mbedtls_md_info_t *md_info = mbedtls_md_info_from_type( md_alg );
        if( md_info == ((void*)0) )
            return( -0x4080 );
        if( mbedtls_oid_get_oid_by_md( md_alg, &oid, &oid_size ) != 0 )
            return( -0x4080 );
        hashlen = mbedtls_md_get_size( md_info );
        if( 8 + hashlen + oid_size >= 0x80 ||
            10 + hashlen < hashlen ||
            10 + hashlen + oid_size < 10 + hashlen )
            return( -0x4080 );
        if( nb_pad < 10 + hashlen + oid_size )
            return( -0x4080 );
        nb_pad -= 10 + hashlen + oid_size;
    }
    else
    {
        if( nb_pad < hashlen )
            return( -0x4080 );
        nb_pad -= hashlen;
    }
    if( nb_pad < 3 + 8 )
        return( -0x4080 );
    nb_pad -= 3;
    *p++ = 0;
    *p++ = 1;
    memset( p, 0xFF, nb_pad );
    p += nb_pad;
    *p++ = 0;
    if( md_alg == MBEDTLS_MD_NONE )
    {
        memcpy( p, hash, hashlen );
        return( 0 );
    }
    *p++ = 0x10 | 0x20;
    *p++ = (unsigned char)( 0x08 + oid_size + hashlen );
    *p++ = 0x10 | 0x20;
    *p++ = (unsigned char)( 0x04 + oid_size );
    *p++ = 0x06;
    *p++ = (unsigned char) oid_size;
    memcpy( p, oid, oid_size );
    p += oid_size;
    *p++ = 0x05;
    *p++ = 0x00;
    *p++ = 0x04;
    *p++ = (unsigned char) hashlen;
    memcpy( p, hash, hashlen );
    p += hashlen;
    if( p != dst + dst_len )
    {
        mbedtls_platform_zeroize( dst, dst_len );
        return( -0x4080 );
    }
    return( 0 );
}
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig )
{
    int ret = -0x006E;
    unsigned char *sig_try = ((void*)0), *verif = ((void*)0);
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 0 )
        return( -0x4080 );
    if( ( ret = rsa_rsassa_pkcs1_v15_encode( md_alg, hashlen, hash,
                                             ctx->len, sig ) ) != 0 )
        return( ret );
    if( mode == 0 )
    {
        return( mbedtls_rsa_public( ctx, sig, sig ) );
    }
    sig_try = calloc( 1, ctx->len );
    if( sig_try == ((void*)0) )
        return( -0x0010 );
    verif = calloc( 1, ctx->len );
    if( verif == ((void*)0) )
    {
        free( sig_try );
        return( -0x0010 );
    }
    do { if( ( ret = (mbedtls_rsa_private( ctx, f_rng, p_rng, sig, sig_try )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_public( ctx, sig_try, verif )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_safer_memcmp( verif, sig, ctx->len ) != 0 )
    {
        ret = -0x4300;
        goto cleanup;
    }
    memcpy( sig, sig_try, ctx->len );
cleanup:
    free( sig_try );
    free( verif );
    return( ret );
}
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    switch( ctx->padding )
    {
        case 0:
            return mbedtls_rsa_rsassa_pkcs1_v15_sign( ctx, f_rng, p_rng, mode, md_alg,
                                              hashlen, hash, sig );
        case 1:
            return mbedtls_rsa_rsassa_pss_sign( ctx, f_rng, p_rng, mode, md_alg,
                                        hashlen, hash, sig );
        default:
            return( -0x4100 );
    }
}
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig )
{
    int ret = -0x006E;
    size_t siglen;
    unsigned char *p;
    unsigned char *hash_start;
    unsigned char result[64];
    unsigned char zeros[8];
    unsigned int hlen;
    size_t observed_salt_len, msb;
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    unsigned char buf[1024];
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    if( mode == 1 && ctx->padding != 1 )
        return( -0x4080 );
    siglen = ctx->len;
    if( siglen < 16 || siglen > sizeof( buf ) )
        return( -0x4080 );
    ret = ( mode == 0 )
          ? mbedtls_rsa_public( ctx, sig, buf )
          : mbedtls_rsa_private( ctx, f_rng, p_rng, sig, buf );
    if( ret != 0 )
        return( ret );
    p = buf;
    if( buf[siglen - 1] != 0xBC )
        return( -0x4100 );
    if( md_alg != MBEDTLS_MD_NONE )
    {
        md_info = mbedtls_md_info_from_type( md_alg );
        if( md_info == ((void*)0) )
            return( -0x4080 );
        hashlen = mbedtls_md_get_size( md_info );
    }
    md_info = mbedtls_md_info_from_type( mgf1_hash_id );
    if( md_info == ((void*)0) )
        return( -0x4080 );
    hlen = mbedtls_md_get_size( md_info );
    memset( zeros, 0, 8 );
    msb = mbedtls_mpi_bitlen( &ctx->N ) - 1;
    if( buf[0] >> ( 8 - siglen * 8 + msb ) )
        return( -0x4080 );
    if( msb % 8 == 0 )
    {
        p++;
        siglen -= 1;
    }
    if( siglen < hlen + 2 )
        return( -0x4080 );
    hash_start = p + siglen - hlen - 1;
    mbedtls_md_init( &md_ctx );
    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 0 ) ) != 0 )
        goto exit;
    ret = mgf_mask( p, siglen - hlen - 1, hash_start, hlen, &md_ctx );
    if( ret != 0 )
        goto exit;
    buf[0] &= 0xFF >> ( siglen * 8 - msb );
    while( p < hash_start - 1 && *p == 0 )
        p++;
    if( *p++ != 0x01 )
    {
        ret = -0x4100;
        goto exit;
    }
    observed_salt_len = hash_start - p;
    if( expected_salt_len != -1 &&
        observed_salt_len != (size_t) expected_salt_len )
    {
        ret = -0x4100;
        goto exit;
    }
    ret = mbedtls_md_starts( &md_ctx );
    if ( ret != 0 )
        goto exit;
    ret = mbedtls_md_update( &md_ctx, zeros, 8 );
    if ( ret != 0 )
        goto exit;
    ret = mbedtls_md_update( &md_ctx, hash, hashlen );
    if ( ret != 0 )
        goto exit;
    ret = mbedtls_md_update( &md_ctx, p, observed_salt_len );
    if ( ret != 0 )
        goto exit;
    ret = mbedtls_md_finish( &md_ctx, result );
    if ( ret != 0 )
        goto exit;
    if( memcmp( hash_start, result, hlen ) != 0 )
    {
        ret = -0x4380;
        goto exit;
    }
exit:
    mbedtls_md_free( &md_ctx );
    return( ret );
}
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig )
{
    mbedtls_md_type_t mgf1_hash_id;
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    mgf1_hash_id = ( ctx->hash_id != MBEDTLS_MD_NONE )
                             ? (mbedtls_md_type_t) ctx->hash_id
                             : md_alg;
    return( mbedtls_rsa_rsassa_pss_verify_ext( ctx, f_rng, p_rng, mode,
                                       md_alg, hashlen, hash,
                                       mgf1_hash_id, -1,
                                       sig ) );
}
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig )
{
    int ret = 0;
    size_t sig_len;
    unsigned char *encoded = ((void*)0), *encoded_expected = ((void*)0);
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    sig_len = ctx->len;
    if( mode == 1 && ctx->padding != 0 )
        return( -0x4080 );
    if( ( encoded = calloc( 1, sig_len ) ) == ((void*)0) ||
        ( encoded_expected = calloc( 1, sig_len ) ) == ((void*)0) )
    {
        ret = -0x0010;
        goto cleanup;
    }
    if( ( ret = rsa_rsassa_pkcs1_v15_encode( md_alg, hashlen, hash, sig_len,
                                             encoded_expected ) ) != 0 )
        goto cleanup;
    ret = ( mode == 0 )
          ? mbedtls_rsa_public( ctx, sig, encoded )
          : mbedtls_rsa_private( ctx, f_rng, p_rng, sig, encoded );
    if( ret != 0 )
        goto cleanup;
    if( ( ret = mbedtls_safer_memcmp( encoded, encoded_expected,
                                      sig_len ) ) != 0 )
    {
        ret = -0x4380;
        goto cleanup;
    }
cleanup:
    if( encoded != ((void*)0) )
    {
        mbedtls_platform_zeroize( encoded, sig_len );
        free( encoded );
    }
    if( encoded_expected != ((void*)0) )
    {
        mbedtls_platform_zeroize( encoded_expected, sig_len );
        free( encoded_expected );
    }
    return( ret );
}
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig )
{
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    do { } while( 0 );
    switch( ctx->padding )
    {
        case 0:
            return mbedtls_rsa_rsassa_pkcs1_v15_verify( ctx, f_rng, p_rng, mode, md_alg,
                                                hashlen, hash, sig );
        case 1:
            return mbedtls_rsa_rsassa_pss_verify( ctx, f_rng, p_rng, mode, md_alg,
                                          hashlen, hash, sig );
        default:
            return( -0x4100 );
    }
}
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src )
{
    int ret = -0x006E;
    do { } while( 0 );
    do { } while( 0 );
    dst->ver = src->ver;
    dst->len = src->len;
    do { if( ( ret = (mbedtls_mpi_copy( &dst->N, &src->N )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->E, &src->E )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->D, &src->D )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->P, &src->P )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->Q, &src->Q )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->DP, &src->DP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->DQ, &src->DQ )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->QP, &src->QP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->RP, &src->RP )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->RQ, &src->RQ )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->RN, &src->RN )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->Vi, &src->Vi )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_copy( &dst->Vf, &src->Vf )) ) != 0 ) goto cleanup; } while( 0 );
    dst->padding = src->padding;
    dst->hash_id = src->hash_id;
cleanup:
    if( ret != 0 )
        mbedtls_rsa_free( dst );
    return( ret );
}
void mbedtls_rsa_free( mbedtls_rsa_context *ctx )
{
    if( ctx == ((void*)0) )
        return;
    mbedtls_mpi_free( &ctx->Vi );
    mbedtls_mpi_free( &ctx->Vf );
    mbedtls_mpi_free( &ctx->RN );
    mbedtls_mpi_free( &ctx->D );
    mbedtls_mpi_free( &ctx->Q );
    mbedtls_mpi_free( &ctx->P );
    mbedtls_mpi_free( &ctx->E );
    mbedtls_mpi_free( &ctx->N );
    mbedtls_mpi_free( &ctx->RQ );
    mbedtls_mpi_free( &ctx->RP );
    mbedtls_mpi_free( &ctx->QP );
    mbedtls_mpi_free( &ctx->DQ );
    mbedtls_mpi_free( &ctx->DP );
}
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
static int myrand( void *rng_state, unsigned char *output, size_t len )
{
    size_t i;
    if( rng_state != ((void*)0) )
        rng_state = ((void*)0);
    for( i = 0; i < len; ++i )
        output[i] = rand();
    return( 0 );
}
int mbedtls_rsa_self_test( int verbose )
{
    int ret = 0;
    size_t len;
    mbedtls_rsa_context rsa;
    unsigned char rsa_plaintext[24];
    unsigned char rsa_decrypted[24];
    unsigned char rsa_ciphertext[128];
    unsigned char sha1sum[20];
    mbedtls_mpi K;
    mbedtls_mpi_init( &K );
    mbedtls_rsa_init( &rsa, 0, 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &K, 16, "9292758453063D803DD603D5E777D788" "8ED1D5BF35786190FA2F23EBC0848AEA" "DDA92CA6C3D80B32C4D109BE0F36D6AE" "7130B9CED7ACDF54CFC7555AC14EEBAB" "93A89813FBF3C4F8066D2D800F7C38A8" "1AE31942917403FF4946B0A83D3D3E05" "EE57C6F5F5606FB5D4BC6CD34EE0801A" "5E94BB77B07507233A0BC7BAC8F90F79" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_import( &rsa, &K, ((void*)0), ((void*)0), ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &K, 16, "C36D0EB7FCD285223CFB5AABA5BDA3D8" "2C01CAD19EA484A87EA4377637E75500" "FCB2005C5C7DD6EC4AC023CDA285D796" "C3D9E75E1EFC42488BB4F1D13AC30A57" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_import( &rsa, ((void*)0), &K, ((void*)0), ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &K, 16, "C000DF51A7C77AE8D7C7370C1FF55B69" "E211C2B9E5DB1ED0BF61D0D9899620F4" "910E4168387E3C30AA1E00C339A79508" "8452DD96A9A5EA5D9DCA68DA636032AF" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_import( &rsa, ((void*)0), ((void*)0), &K, ((void*)0), ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &K, 16, "24BF6185468786FDD303083D25E64EFC" "66CA472BC44D253102F8B4A9D3BFA750" "91386C0077937FE33FA3252D28855837" "AE1B484A8A9A45F7EE8C0C634F99E8CD" "DF79C5CE07EE72C7F123142198164234" "CABB724CF78B8173B9F880FC86322407" "AF1FEDFDDE2BEB674CA15F3E81A1521E" "071513A1E85B5DFA031F21ECAE91A34D" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_import( &rsa, ((void*)0), ((void*)0), ((void*)0), &K, ((void*)0) )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_string( &K, 16, "10001" )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_import( &rsa, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &K )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_rsa_complete( &rsa )) ) != 0 ) goto cleanup; } while( 0 );
    if( verbose != 0 )
        printf( "  RSA key validation: " );
    if( mbedtls_rsa_check_pubkey( &rsa ) != 0 ||
        mbedtls_rsa_check_privkey( &rsa ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n  PKCS#1 encryption : " );
    memcpy( rsa_plaintext, "\xAA\xBB\xCC\x03\x02\x01\x00\xFF\xFF\xFF\xFF\xFF" "\x11\x22\x33\x0A\x0B\x0C\xCC\xDD\xDD\xDD\xDD\xDD", 24 );
    if( mbedtls_rsa_pkcs1_encrypt( &rsa, myrand, ((void*)0), 0,
                                   24, rsa_plaintext,
                                   rsa_ciphertext ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n  PKCS#1 decryption : " );
    if( mbedtls_rsa_pkcs1_decrypt( &rsa, myrand, ((void*)0), 1,
                                   &len, rsa_ciphertext, rsa_decrypted,
                                   sizeof(rsa_decrypted) ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( memcmp( rsa_decrypted, rsa_plaintext, len ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    if( verbose != 0 )
        printf( "  PKCS#1 data sign  : " );
    if( mbedtls_sha1_ret( rsa_plaintext, 24, sha1sum ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        return( 1 );
    }
    if( mbedtls_rsa_pkcs1_sign( &rsa, myrand, ((void*)0),
                                1, MBEDTLS_MD_SHA1, 0,
                                sha1sum, rsa_ciphertext ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n  PKCS#1 sig. verify: " );
    if( mbedtls_rsa_pkcs1_verify( &rsa, ((void*)0), ((void*)0),
                                  0, MBEDTLS_MD_SHA1, 0,
                                  sha1sum, rsa_ciphertext ) != 0 )
    {
        if( verbose != 0 )
            printf( "failed\n" );
        ret = 1;
        goto cleanup;
    }
    if( verbose != 0 )
        printf( "passed\n" );
    if( verbose != 0 )
        printf( "\n" );
cleanup:
    mbedtls_mpi_free( &K );
    mbedtls_rsa_free( &rsa );
    return( ret );
}
