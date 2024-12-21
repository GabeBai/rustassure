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
void mbedtls_strerror( int errnum, char *buffer, size_t buflen );
const char * mbedtls_high_level_strerr( int error_code );
const char * mbedtls_low_level_strerr( int error_code );

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
typedef struct mbedtls_pem_context
{
    unsigned char *buf;
    size_t buflen;
    unsigned char *info;
}
mbedtls_pem_context;
void mbedtls_pem_init( mbedtls_pem_context *ctx );
int mbedtls_pem_read_buffer( mbedtls_pem_context *ctx, const char *header, const char *footer,
                     const unsigned char *data,
                     const unsigned char *pwd,
                     size_t pwdlen, size_t *use_len );
void mbedtls_pem_free( mbedtls_pem_context *ctx );
int mbedtls_pem_write_buffer( const char *header, const char *footer,
                      const unsigned char *der_data, size_t der_len,
                      unsigned char *buf, size_t buf_len, size_t *olen );
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
struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int stat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "stat64") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __asm__ ("" "fstat64") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file, struct stat *__restrict __buf, int __flag) __asm__ ("" "fstatat64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern int lstat (const char *__restrict __file, struct stat *__restrict __buf) __asm__ ("" "lstat64") __attribute__ ((__nothrow__ ))
     __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ ));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ ));
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ ));
struct dirent
  {
    __ino64_t d_ino;
    __off64_t d_off;
    unsigned short int d_reclen;
    unsigned char d_type;
    char d_name[256];
  };
enum
  {
    DT_UNKNOWN = 0,
    DT_FIFO = 1,
    DT_CHR = 2,
    DT_DIR = 4,
    DT_BLK = 6,
    DT_REG = 8,
    DT_LNK = 10,
    DT_SOCK = 12,
    DT_WHT = 14
  };
typedef struct __dirstream DIR;
extern DIR *opendir (const char *__name) __attribute__ ((__nonnull__ (1)));
extern DIR *fdopendir (int __fd);
extern int closedir (DIR *__dirp) __attribute__ ((__nonnull__ (1)));
extern struct dirent *readdir (DIR *__dirp) __asm__ ("" "readdir64")
     __attribute__ ((__nonnull__ (1)));
extern int readdir_r (DIR *__restrict __dirp, struct dirent *__restrict __entry, struct dirent **__restrict __result) __asm__ ("" "readdir64_r")
  __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__deprecated__));
extern void rewinddir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void seekdir (DIR *__dirp, long int __pos) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int telldir (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int dirfd (DIR *__dirp) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int scandir (const char *__restrict __dir, struct dirent ***__restrict __namelist, int (*__selector) (const struct dirent *), int (*__cmp) (const struct dirent **, const struct dirent **)) __asm__ ("" "scandir64") __attribute__ ((__nonnull__ (1, 2)));
extern int alphasort (const struct dirent **__e1, const struct dirent **__e2) __asm__ ("" "alphasort64") __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern __ssize_t getdirentries (int __fd, char *__restrict __buf, size_t __nbytes, __off64_t *__restrict __basep) __asm__ ("" "getdirentries64") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
typedef struct {
    mbedtls_x509_crt *crt;
    uint32_t flags;
} x509_crt_verify_chain_item;
const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_default =
{
    ( 1 << ( (MBEDTLS_MD_SHA224) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA256) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA384) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA512) - 1 ) ),
    0xFFFFFFF,
    0xFFFFFFF,
    2048,
};
const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_next =
{
    ( 1 << ( (MBEDTLS_MD_SHA256) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA384) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA512) - 1 ) ),
    0xFFFFFFF,
    ( 1 << ( (MBEDTLS_ECP_DP_SECP256R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_SECP384R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_SECP521R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_BP256R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_BP384R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_BP512R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_SECP256K1) - 1 ) ),
    2048,
};
const mbedtls_x509_crt_profile mbedtls_x509_crt_profile_suiteb =
{
    ( 1 << ( (MBEDTLS_MD_SHA256) - 1 ) ) |
    ( 1 << ( (MBEDTLS_MD_SHA384) - 1 ) ),
    ( 1 << ( (MBEDTLS_PK_ECDSA) - 1 ) ) |
    ( 1 << ( (MBEDTLS_PK_ECKEY) - 1 ) ),
    ( 1 << ( (MBEDTLS_ECP_DP_SECP256R1) - 1 ) ) |
    ( 1 << ( (MBEDTLS_ECP_DP_SECP384R1) - 1 ) ),
    0,
};
static int x509_profile_check_md_alg( const mbedtls_x509_crt_profile *profile,
                                      mbedtls_md_type_t md_alg )
{
    if( md_alg == MBEDTLS_MD_NONE )
        return( -1 );
    if( ( profile->allowed_mds & ( 1 << ( (md_alg) - 1 ) ) ) != 0 )
        return( 0 );
    return( -1 );
}
static int x509_profile_check_pk_alg( const mbedtls_x509_crt_profile *profile,
                                      mbedtls_pk_type_t pk_alg )
{
    if( pk_alg == MBEDTLS_PK_NONE )
        return( -1 );
    if( ( profile->allowed_pks & ( 1 << ( (pk_alg) - 1 ) ) ) != 0 )
        return( 0 );
    return( -1 );
}
static int x509_profile_check_key( const mbedtls_x509_crt_profile *profile,
                                   const mbedtls_pk_context *pk )
{
    const mbedtls_pk_type_t pk_alg = mbedtls_pk_get_type( pk );
    if( pk_alg == MBEDTLS_PK_RSA || pk_alg == MBEDTLS_PK_RSASSA_PSS )
    {
        if( mbedtls_pk_get_bitlen( pk ) >= profile->rsa_min_bitlen )
            return( 0 );
        return( -1 );
    }
    if( pk_alg == MBEDTLS_PK_ECDSA ||
        pk_alg == MBEDTLS_PK_ECKEY ||
        pk_alg == MBEDTLS_PK_ECKEY_DH )
    {
        const mbedtls_ecp_group_id gid = mbedtls_pk_ec( *pk )->grp.id;
        if( gid == MBEDTLS_ECP_DP_NONE )
            return( -1 );
        if( ( profile->allowed_curves & ( 1 << ( (gid) - 1 ) ) ) != 0 )
            return( 0 );
        return( -1 );
    }
    return( -1 );
}
static int x509_memcasecmp( const void *s1, const void *s2, size_t len )
{
    size_t i;
    unsigned char diff;
    const unsigned char *n1 = s1, *n2 = s2;
    for( i = 0; i < len; i++ )
    {
        diff = n1[i] ^ n2[i];
        if( diff == 0 )
            continue;
        if( diff == 32 &&
            ( ( n1[i] >= 'a' && n1[i] <= 'z' ) ||
              ( n1[i] >= 'A' && n1[i] <= 'Z' ) ) )
        {
            continue;
        }
        return( -1 );
    }
    return( 0 );
}
static int x509_check_wildcard( const char *cn, const mbedtls_x509_buf *name )
{
    size_t i;
    size_t cn_idx = 0, cn_len = strlen( cn );
    if( name->len < 3 || name->p[0] != '*' || name->p[1] != '.' )
        return( -1 );
    for( i = 0; i < cn_len; ++i )
    {
        if( cn[i] == '.' )
        {
            cn_idx = i;
            break;
        }
    }
    if( cn_idx == 0 )
        return( -1 );
    if( cn_len - cn_idx == name->len - 1 &&
        x509_memcasecmp( name->p + 1, cn + cn_idx, name->len - 1 ) == 0 )
    {
        return( 0 );
    }
    return( -1 );
}
static int x509_string_cmp( const mbedtls_x509_buf *a, const mbedtls_x509_buf *b )
{
    if( a->tag == b->tag &&
        a->len == b->len &&
        memcmp( a->p, b->p, b->len ) == 0 )
    {
        return( 0 );
    }
    if( ( a->tag == 0x0C || a->tag == 0x13 ) &&
        ( b->tag == 0x0C || b->tag == 0x13 ) &&
        a->len == b->len &&
        x509_memcasecmp( a->p, b->p, b->len ) == 0 )
    {
        return( 0 );
    }
    return( -1 );
}
static int x509_name_cmp( const mbedtls_x509_name *a, const mbedtls_x509_name *b )
{
    while( a != ((void*)0) || b != ((void*)0) )
    {
        if( a == ((void*)0) || b == ((void*)0) )
            return( -1 );
        if( a->oid.tag != b->oid.tag ||
            a->oid.len != b->oid.len ||
            memcmp( a->oid.p, b->oid.p, b->oid.len ) != 0 )
        {
            return( -1 );
        }
        if( x509_string_cmp( &a->val, &b->val ) != 0 )
            return( -1 );
        if( a->next_merged != b->next_merged )
            return( -1 );
        a = a->next;
        b = b->next;
    }
    return( 0 );
}
static void x509_crt_verify_chain_reset(
    mbedtls_x509_crt_verify_chain *ver_chain )
{
    size_t i;
    for( i = 0; i < ( 8 + 2 ); i++ )
    {
        ver_chain->items[i].crt = ((void*)0);
        ver_chain->items[i].flags = (uint32_t) -1;
    }
    ver_chain->len = 0;
}
static int x509_get_version( unsigned char **p,
                             const unsigned char *end,
                             int *ver )
{
    int ret = -0x006E;
    size_t len;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            0x80 | 0x20 | 0 ) ) != 0 )
    {
        if( ret == -0x0062 )
        {
            *ver = 0;
            return( 0 );
        }
        return( -0x2180 + ret );
    }
    end = *p + len;
    if( ( ret = mbedtls_asn1_get_int( p, end, ver ) ) != 0 )
        return( -0x2200 + ret );
    if( *p != end )
        return( -0x2200 +
                -0x0066 );
    return( 0 );
}
static int x509_get_dates( unsigned char **p,
                           const unsigned char *end,
                           mbedtls_x509_time *from,
                           mbedtls_x509_time *to )
{
    int ret = -0x006E;
    size_t len;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            0x20 | 0x10 ) ) != 0 )
        return( -0x2400 + ret );
    end = *p + len;
    if( ( ret = mbedtls_x509_get_time( p, end, from ) ) != 0 )
        return( ret );
    if( ( ret = mbedtls_x509_get_time( p, end, to ) ) != 0 )
        return( ret );
    if( *p != end )
        return( -0x2400 +
                -0x0066 );
    return( 0 );
}
static int x509_get_uid( unsigned char **p,
                         const unsigned char *end,
                         mbedtls_x509_buf *uid, int n )
{
    int ret = -0x006E;
    if( *p == end )
        return( 0 );
    uid->tag = **p;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &uid->len,
            0x80 | 0x20 | n ) ) != 0 )
    {
        if( ret == -0x0062 )
            return( 0 );
        return( -0x2180 + ret );
    }
    uid->p = *p;
    *p += uid->len;
    return( 0 );
}
static int x509_get_basic_constraints( unsigned char **p,
                                       const unsigned char *end,
                                       int *ca_istrue,
                                       int *max_pathlen )
{
    int ret = -0x006E;
    size_t len;
    *ca_istrue = 0;
    *max_pathlen = 0;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            0x20 | 0x10 ) ) != 0 )
        return( -0x2500 + ret );
    if( *p == end )
        return( 0 );
    if( ( ret = mbedtls_asn1_get_bool( p, end, ca_istrue ) ) != 0 )
    {
        if( ret == -0x0062 )
            ret = mbedtls_asn1_get_int( p, end, ca_istrue );
        if( ret != 0 )
            return( -0x2500 + ret );
        if( *ca_istrue != 0 )
            *ca_istrue = 1;
    }
    if( *p == end )
        return( 0 );
    if( ( ret = mbedtls_asn1_get_int( p, end, max_pathlen ) ) != 0 )
        return( -0x2500 + ret );
    if( *p != end )
        return( -0x2500 +
                -0x0066 );
    if( *max_pathlen == 2147483647 )
        return( -0x2500 +
                -0x0064 );
    (*max_pathlen)++;
    return( 0 );
}
static int x509_get_ns_cert_type( unsigned char **p,
                                       const unsigned char *end,
                                       unsigned char *ns_cert_type)
{
    int ret = -0x006E;
    mbedtls_x509_bitstring bs = { 0, 0, ((void*)0) };
    if( ( ret = mbedtls_asn1_get_bitstring( p, end, &bs ) ) != 0 )
        return( -0x2500 + ret );
    if( bs.len != 1 )
        return( -0x2500 +
                -0x0064 );
    *ns_cert_type = *bs.p;
    return( 0 );
}
static int x509_get_key_usage( unsigned char **p,
                               const unsigned char *end,
                               unsigned int *key_usage)
{
    int ret = -0x006E;
    size_t i;
    mbedtls_x509_bitstring bs = { 0, 0, ((void*)0) };
    if( ( ret = mbedtls_asn1_get_bitstring( p, end, &bs ) ) != 0 )
        return( -0x2500 + ret );
    if( bs.len < 1 )
        return( -0x2500 +
                -0x0064 );
    *key_usage = 0;
    for( i = 0; i < bs.len && i < sizeof( unsigned int ); i++ )
    {
        *key_usage |= (unsigned int) bs.p[i] << (8*i);
    }
    return( 0 );
}
static int x509_get_ext_key_usage( unsigned char **p,
                               const unsigned char *end,
                               mbedtls_x509_sequence *ext_key_usage)
{
    int ret = -0x006E;
    if( ( ret = mbedtls_asn1_get_sequence_of( p, end, ext_key_usage, 0x06 ) ) != 0 )
        return( -0x2500 + ret );
    if( ext_key_usage->buf.p == ((void*)0) )
        return( -0x2500 +
                -0x0064 );
    return( 0 );
}
static int x509_get_subject_alt_name( unsigned char **p,
                                      const unsigned char *end,
                                      mbedtls_x509_sequence *subject_alt_name )
{
    int ret = -0x006E;
    size_t len, tag_len;
    mbedtls_asn1_buf *buf;
    unsigned char tag;
    mbedtls_asn1_sequence *cur = subject_alt_name;
    if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
            0x20 | 0x10 ) ) != 0 )
        return( -0x2500 + ret );
    if( *p + len != end )
        return( -0x2500 +
                -0x0066 );
    while( *p < end )
    {
        mbedtls_x509_subject_alternative_name dummy_san_buf;
        memset( &dummy_san_buf, 0, sizeof( dummy_san_buf ) );
        tag = **p;
        (*p)++;
        if( ( ret = mbedtls_asn1_get_len( p, end, &tag_len ) ) != 0 )
            return( -0x2500 + ret );
        if( ( tag & 0xC0 ) !=
                0x80 )
        {
            return( -0x2500 +
                    -0x0062 );
        }
        ret = mbedtls_x509_parse_subject_alt_name( &(cur->buf), &dummy_san_buf );
        if( ret != 0 && ret != -0x2080 )
        {
            mbedtls_x509_sequence *seq_cur = subject_alt_name->next;
            mbedtls_x509_sequence *seq_prv;
            while( seq_cur != ((void*)0) )
            {
                seq_prv = seq_cur;
                seq_cur = seq_cur->next;
                mbedtls_platform_zeroize( seq_prv,
                                          sizeof( mbedtls_x509_sequence ) );
                free( seq_prv );
            }
            subject_alt_name->next = ((void*)0);
            return( ret );
        }
        if( cur->buf.p != ((void*)0) )
        {
            if( cur->next != ((void*)0) )
                return( -0x2500 );
            cur->next = calloc( 1, sizeof( mbedtls_asn1_sequence ) );
            if( cur->next == ((void*)0) )
                return( -0x2500 +
                        -0x006A );
            cur = cur->next;
        }
        buf = &(cur->buf);
        buf->tag = tag;
        buf->p = *p;
        buf->len = tag_len;
        *p += buf->len;
    }
    cur->next = ((void*)0);
    if( *p != end )
        return( -0x2500 +
                -0x0066 );
    return( 0 );
}
static int x509_get_certificate_policies( unsigned char **p,
                                          const unsigned char *end,
                                          mbedtls_x509_sequence *certificate_policies )
{
    int ret, parse_ret = 0;
    size_t len;
    mbedtls_asn1_buf *buf;
    mbedtls_asn1_sequence *cur = certificate_policies;
    ret = mbedtls_asn1_get_tag( p, end, &len,
                             0x20 | 0x10 );
    if( ret != 0 )
        return( -0x2500 + ret );
    if( *p + len != end )
        return( -0x2500 +
                -0x0066 );
    if( len == 0 )
        return( -0x2500 +
                -0x0066 );
    while( *p < end )
    {
        mbedtls_x509_buf policy_oid;
        const unsigned char *policy_end;
        if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
                0x20 | 0x10 ) ) != 0 )
            return( -0x2500 + ret );
        policy_end = *p + len;
        if( ( ret = mbedtls_asn1_get_tag( p, policy_end, &len,
                                          0x06 ) ) != 0 )
            return( -0x2500 + ret );
        policy_oid.tag = 0x06;
        policy_oid.len = len;
        policy_oid.p = *p;
        if( ( ( (sizeof("\x55" "\x1D" "\x20" "\x00") - 1) != (&policy_oid)->len ) || memcmp( ("\x55" "\x1D" "\x20" "\x00"), (&policy_oid)->p, (&policy_oid)->len) != 0 ) != 0 )
        {
            parse_ret = -0x2080;
        }
        if( cur->buf.p != ((void*)0) )
        {
            if( cur->next != ((void*)0) )
                return( -0x2500 );
            cur->next = calloc( 1, sizeof( mbedtls_asn1_sequence ) );
            if( cur->next == ((void*)0) )
                return( -0x2500 +
                        -0x006A );
            cur = cur->next;
        }
        buf = &( cur->buf );
        buf->tag = policy_oid.tag;
        buf->p = policy_oid.p;
        buf->len = policy_oid.len;
        *p += len;
        if( *p < policy_end )
        {
            if( ( ret = mbedtls_asn1_get_tag( p, policy_end, &len,
                     0x20 | 0x10 ) ) != 0 )
                return( -0x2500 + ret );
            *p += len;
        }
        if( *p != policy_end )
            return( -0x2500 +
                    -0x0066 );
    }
    cur->next = ((void*)0);
    if( *p != end )
        return( -0x2500 +
                -0x0066 );
    return( parse_ret );
}
static int x509_get_crt_ext( unsigned char **p,
                             const unsigned char *end,
                             mbedtls_x509_crt *crt,
                             mbedtls_x509_crt_ext_cb_t cb,
                             void *p_ctx )
{
    int ret = -0x006E;
    size_t len;
    unsigned char *end_ext_data, *start_ext_octet, *end_ext_octet;
    if( *p == end )
        return( 0 );
    if( ( ret = mbedtls_x509_get_ext( p, end, &crt->v3_ext, 3 ) ) != 0 )
        return( ret );
    end = crt->v3_ext.p + crt->v3_ext.len;
    while( *p < end )
    {
        mbedtls_x509_buf extn_oid = {0, 0, ((void*)0)};
        int is_critical = 0;
        int ext_type = 0;
        if( ( ret = mbedtls_asn1_get_tag( p, end, &len,
                0x20 | 0x10 ) ) != 0 )
            return( -0x2500 + ret );
        end_ext_data = *p + len;
        if( ( ret = mbedtls_asn1_get_tag( p, end_ext_data, &extn_oid.len,
                                          0x06 ) ) != 0 )
            return( -0x2500 + ret );
        extn_oid.tag = 0x06;
        extn_oid.p = *p;
        *p += extn_oid.len;
        if( ( ret = mbedtls_asn1_get_bool( p, end_ext_data, &is_critical ) ) != 0 &&
            ( ret != -0x0062 ) )
            return( -0x2500 + ret );
        if( ( ret = mbedtls_asn1_get_tag( p, end_ext_data, &len,
                0x04 ) ) != 0 )
            return( -0x2500 + ret );
        start_ext_octet = *p;
        end_ext_octet = *p + len;
        if( end_ext_octet != end_ext_data )
            return( -0x2500 +
                    -0x0066 );
        ret = mbedtls_oid_get_x509_ext_type( &extn_oid, &ext_type );
        if( ret != 0 )
        {
            if( cb != ((void*)0) )
            {
                ret = cb( p_ctx, crt, &extn_oid, is_critical, *p, end_ext_octet );
                if( ret != 0 && is_critical )
                    return( ret );
                *p = end_ext_octet;
                continue;
            }
            *p = end_ext_octet;
            if( is_critical )
            {
                return( -0x2500 +
                        -0x0062 );
            }
            continue;
        }
        if( ( crt->ext_types & ext_type ) != 0 )
            return( -0x2500 );
        crt->ext_types |= ext_type;
        switch( ext_type )
        {
        case (1 << 8):
            if( ( ret = x509_get_basic_constraints( p, end_ext_octet,
                    &crt->ca_istrue, &crt->max_pathlen ) ) != 0 )
                return( ret );
            break;
        case (1 << 2):
            if( ( ret = x509_get_key_usage( p, end_ext_octet,
                    &crt->key_usage ) ) != 0 )
                return( ret );
            break;
        case (1 << 11):
            if( ( ret = x509_get_ext_key_usage( p, end_ext_octet,
                    &crt->ext_key_usage ) ) != 0 )
                return( ret );
            break;
        case (1 << 5):
            if( ( ret = x509_get_subject_alt_name( p, end_ext_octet,
                    &crt->subject_alt_names ) ) != 0 )
                return( ret );
            break;
        case (1 << 16):
            if( ( ret = x509_get_ns_cert_type( p, end_ext_octet,
                    &crt->ns_cert_type ) ) != 0 )
                return( ret );
            break;
        case (1 << 3):
            if( ( ret = x509_get_certificate_policies( p, end_ext_octet,
                    &crt->certificate_policies ) ) != 0 )
            {
                if( ret == -0x2080 && cb != ((void*)0) &&
                    cb( p_ctx, crt, &extn_oid, is_critical,
                        start_ext_octet, end_ext_octet ) == 0 )
                    break;
                if( is_critical )
                    return( ret );
                else
                if( ret != -0x2080 )
                    return( ret );
            }
            break;
        default:
            if( is_critical )
                return( -0x2080 );
            else
                *p = end_ext_octet;
        }
    }
    if( *p != end )
        return( -0x2500 +
                -0x0066 );
    return( 0 );
}
static int x509_crt_parse_der_core( mbedtls_x509_crt *crt,
                                    const unsigned char *buf,
                                    size_t buflen,
                                    int make_copy,
                                    mbedtls_x509_crt_ext_cb_t cb,
                                    void *p_ctx )
{
    int ret = -0x006E;
    size_t len;
    unsigned char *p, *end, *crt_end;
    mbedtls_x509_buf sig_params1, sig_params2, sig_oid2;
    memset( &sig_params1, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_params2, 0, sizeof( mbedtls_x509_buf ) );
    memset( &sig_oid2, 0, sizeof( mbedtls_x509_buf ) );
    if( crt == ((void*)0) || buf == ((void*)0) )
        return( -0x2800 );
    p = (unsigned char*) buf;
    len = buflen;
    end = p + len;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            0x20 | 0x10 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 );
    }
    end = crt_end = p + len;
    crt->raw.len = crt_end - buf;
    if( make_copy != 0 )
    {
        crt->raw.p = p = calloc( 1, crt->raw.len );
        if( crt->raw.p == ((void*)0) )
            return( -0x2880 );
        memcpy( crt->raw.p, buf, crt->raw.len );
        crt->own_buffer = 1;
        p += crt->raw.len - len;
        end = crt_end = p + len;
    }
    else
    {
        crt->raw.p = (unsigned char*) buf;
        crt->own_buffer = 0;
    }
    crt->tbs.p = p;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            0x20 | 0x10 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 + ret );
    }
    end = p + len;
    crt->tbs.len = end - crt->tbs.p;
    if( ( ret = x509_get_version( &p, end, &crt->version ) ) != 0 ||
        ( ret = mbedtls_x509_get_serial( &p, end, &crt->serial ) ) != 0 ||
        ( ret = mbedtls_x509_get_alg( &p, end, &crt->sig_oid,
                                            &sig_params1 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    if( crt->version < 0 || crt->version > 2 )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2580 );
    }
    crt->version++;
    if( ( ret = mbedtls_x509_get_sig_alg( &crt->sig_oid, &sig_params1,
                                  &crt->sig_md, &crt->sig_pk,
                                  &crt->sig_opts ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    crt->issuer_raw.p = p;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            0x20 | 0x10 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 + ret );
    }
    if( ( ret = mbedtls_x509_get_name( &p, p + len, &crt->issuer ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    crt->issuer_raw.len = p - crt->issuer_raw.p;
    if( ( ret = x509_get_dates( &p, end, &crt->valid_from,
                                         &crt->valid_to ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    crt->subject_raw.p = p;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            0x20 | 0x10 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 + ret );
    }
    if( len && ( ret = mbedtls_x509_get_name( &p, p + len, &crt->subject ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    crt->subject_raw.len = p - crt->subject_raw.p;
    crt->pk_raw.p = p;
    if( ( ret = mbedtls_pk_parse_subpubkey( &p, end, &crt->pk ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    crt->pk_raw.len = p - crt->pk_raw.p;
    if( crt->version == 2 || crt->version == 3 )
    {
        ret = x509_get_uid( &p, end, &crt->issuer_id, 1 );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }
    if( crt->version == 2 || crt->version == 3 )
    {
        ret = x509_get_uid( &p, end, &crt->subject_id, 2 );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }
    if( crt->version == 3 )
    {
        ret = x509_get_crt_ext( &p, end, crt, cb, p_ctx );
        if( ret != 0 )
        {
            mbedtls_x509_crt_free( crt );
            return( ret );
        }
    }
    if( p != end )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 +
                -0x0066 );
    }
    end = crt_end;
    if( ( ret = mbedtls_x509_get_alg( &p, end, &sig_oid2, &sig_params2 ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    if( crt->sig_oid.len != sig_oid2.len ||
        memcmp( crt->sig_oid.p, sig_oid2.p, crt->sig_oid.len ) != 0 ||
        sig_params1.len != sig_params2.len ||
        ( sig_params1.len != 0 &&
          memcmp( sig_params1.p, sig_params2.p, sig_params1.len ) != 0 ) )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2680 );
    }
    if( ( ret = mbedtls_x509_get_sig( &p, end, &crt->sig ) ) != 0 )
    {
        mbedtls_x509_crt_free( crt );
        return( ret );
    }
    if( p != end )
    {
        mbedtls_x509_crt_free( crt );
        return( -0x2180 +
                -0x0066 );
    }
    return( 0 );
}
static int mbedtls_x509_crt_parse_der_internal( mbedtls_x509_crt *chain,
                                                const unsigned char *buf,
                                                size_t buflen,
                                                int make_copy,
                                                mbedtls_x509_crt_ext_cb_t cb,
                                                void *p_ctx )
{
    int ret = -0x006E;
    mbedtls_x509_crt *crt = chain, *prev = ((void*)0);
    if( crt == ((void*)0) || buf == ((void*)0) )
        return( -0x2800 );
    while( crt->version != 0 && crt->next != ((void*)0) )
    {
        prev = crt;
        crt = crt->next;
    }
    if( crt->version != 0 && crt->next == ((void*)0) )
    {
        crt->next = calloc( 1, sizeof( mbedtls_x509_crt ) );
        if( crt->next == ((void*)0) )
            return( -0x2880 );
        prev = crt;
        mbedtls_x509_crt_init( crt->next );
        crt = crt->next;
    }
    ret = x509_crt_parse_der_core( crt, buf, buflen, make_copy, cb, p_ctx );
    if( ret != 0 )
    {
        if( prev )
            prev->next = ((void*)0);
        if( crt != chain )
            free( crt );
        return( ret );
    }
    return( 0 );
}
int mbedtls_x509_crt_parse_der_nocopy( mbedtls_x509_crt *chain,
                                       const unsigned char *buf,
                                       size_t buflen )
{
    return( mbedtls_x509_crt_parse_der_internal( chain, buf, buflen, 0, ((void*)0), ((void*)0) ) );
}
int mbedtls_x509_crt_parse_der_with_ext_cb( mbedtls_x509_crt *chain,
                                            const unsigned char *buf,
                                            size_t buflen,
                                            int make_copy,
                                            mbedtls_x509_crt_ext_cb_t cb,
                                            void *p_ctx )
{
    return( mbedtls_x509_crt_parse_der_internal( chain, buf, buflen, make_copy, cb, p_ctx ) );
}
int mbedtls_x509_crt_parse_der( mbedtls_x509_crt *chain,
                                const unsigned char *buf,
                                size_t buflen )
{
    return( mbedtls_x509_crt_parse_der_internal( chain, buf, buflen, 1, ((void*)0), ((void*)0) ) );
}
int mbedtls_x509_crt_parse( mbedtls_x509_crt *chain,
                            const unsigned char *buf,
                            size_t buflen )
{
    int success = 0, first_error = 0, total_failed = 0;
    int buf_format = 1;
    if( chain == ((void*)0) || buf == ((void*)0) )
        return( -0x2800 );
    if( buflen != 0 && buf[buflen - 1] == '\0' &&
        strstr( (const char *) buf, "-----BEGIN CERTIFICATE-----" ) != ((void*)0) )
    {
        buf_format = 2;
    }
    if( buf_format == 1 )
        return mbedtls_x509_crt_parse_der( chain, buf, buflen );
    if( buf_format == 2 )
    {
        int ret = -0x006E;
        mbedtls_pem_context pem;
        while( buflen > 1 )
        {
            size_t use_len;
            mbedtls_pem_init( &pem );
            ret = mbedtls_pem_read_buffer( &pem,
                           "-----BEGIN CERTIFICATE-----",
                           "-----END CERTIFICATE-----",
                           buf, ((void*)0), 0, &use_len );
            if( ret == 0 )
            {
                buflen -= use_len;
                buf += use_len;
            }
            else if( ret == -0x1480 )
            {
                return( ret );
            }
            else if( ret != -0x1080 )
            {
                mbedtls_pem_free( &pem );
                buflen -= use_len;
                buf += use_len;
                if( first_error == 0 )
                    first_error = ret;
                total_failed++;
                continue;
            }
            else
                break;
            ret = mbedtls_x509_crt_parse_der( chain, pem.buf, pem.buflen );
            mbedtls_pem_free( &pem );
            if( ret != 0 )
            {
                if( ret == -0x2880 )
                    return( ret );
                if( first_error == 0 )
                    first_error = ret;
                total_failed++;
                continue;
            }
            success = 1;
        }
    }
    if( success )
        return( total_failed );
    else if( first_error )
        return( first_error );
    else
        return( -0x2780 );
}
int mbedtls_x509_crt_parse_file( mbedtls_x509_crt *chain, const char *path )
{
    int ret = -0x006E;
    size_t n;
    unsigned char *buf;
    if( ( ret = mbedtls_pk_load_file( path, &buf, &n ) ) != 0 )
        return( ret );
    ret = mbedtls_x509_crt_parse( chain, buf, n );
    mbedtls_platform_zeroize( buf, n );
    free( buf );
    return( ret );
}
int mbedtls_x509_crt_parse_path( mbedtls_x509_crt *chain, const char *path )
{
    int ret = 0;
    int t_ret;
    int snp_ret;
    struct stat sb;
    struct dirent *entry;
    char entry_name[512];
    DIR *dir = opendir( path );
    if( dir == ((void*)0) )
        return( -0x2900 );
    while( ( entry = readdir( dir ) ) != ((void*)0) )
    {
        snp_ret = snprintf( entry_name, sizeof entry_name,
                                    "%s/%s", path, entry->d_name );
        if( snp_ret < 0 || (size_t)snp_ret >= sizeof entry_name )
        {
            ret = -0x2980;
            goto cleanup;
        }
        else if( stat( entry_name, &sb ) == -1 )
        {
            ret = -0x2900;
            goto cleanup;
        }
        if( !((((sb.st_mode)) & 0170000) == (0100000)) )
            continue;
        t_ret = mbedtls_x509_crt_parse_file( chain, entry_name );
        if( t_ret < 0 )
            ret++;
        else
            ret += t_ret;
    }
cleanup:
    closedir( dir );
    return( ret );
}
static int x509_get_other_name( const mbedtls_x509_buf *subject_alt_name,
                                mbedtls_x509_san_other_name *other_name )
{
    int ret = 0;
    size_t len;
    unsigned char *p = subject_alt_name->p;
    const unsigned char *end = p + subject_alt_name->len;
    mbedtls_x509_buf cur_oid;
    if( ( subject_alt_name->tag &
        ( 0xC0 | 0x1F ) ) !=
        ( 0x80 | 0 ) )
    {
        return( -0x2800 );
    }
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                                      0x06 ) ) != 0 )
        return( -0x2500 + ret );
    cur_oid.tag = 0x06;
    cur_oid.p = p;
    cur_oid.len = len;
    if( ( ( (sizeof("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x08" "\x04") - 1) != (&cur_oid)->len ) || memcmp( ("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x08" "\x04"), (&cur_oid)->p, (&cur_oid)->len) != 0 ) != 0 )
    {
        return( -0x2080 );
    }
    if( p + len >= end )
    {
        mbedtls_platform_zeroize( other_name, sizeof( *other_name ) );
        return( -0x2500 +
                -0x0066 );
    }
    p += len;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            0x20 | 0x80 ) ) != 0 )
        return( -0x2500 + ret );
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                     0x20 | 0x10 ) ) != 0 )
       return( -0x2500 + ret );
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len, 0x06 ) ) != 0 )
        return( -0x2500 + ret );
    other_name->value.hardware_module_name.oid.tag = 0x06;
    other_name->value.hardware_module_name.oid.p = p;
    other_name->value.hardware_module_name.oid.len = len;
    if( p + len >= end )
    {
        mbedtls_platform_zeroize( other_name, sizeof( *other_name ) );
        return( -0x2500 +
                -0x0066 );
    }
    p += len;
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
                                      0x04 ) ) != 0 )
        return( -0x2500 + ret );
    other_name->value.hardware_module_name.val.tag = 0x04;
    other_name->value.hardware_module_name.val.p = p;
    other_name->value.hardware_module_name.val.len = len;
    p += len;
    if( p != end )
    {
        mbedtls_platform_zeroize( other_name,
                                  sizeof( *other_name ) );
        return( -0x2500 +
                -0x0066 );
    }
    return( 0 );
}
static int x509_info_subject_alt_name( char **buf, size_t *size,
                                       const mbedtls_x509_sequence
                                                    *subject_alt_name,
                                       const char *prefix )
{
    int ret = -0x006E;
    size_t n = *size;
    char *p = *buf;
    const mbedtls_x509_sequence *cur = subject_alt_name;
    mbedtls_x509_subject_alternative_name san;
    int parse_ret;
    while( cur != ((void*)0) )
    {
        memset( &san, 0, sizeof( san ) );
        parse_ret = mbedtls_x509_parse_subject_alt_name( &cur->buf, &san );
        if( parse_ret != 0 )
        {
            if( parse_ret == -0x2080 )
            {
                ret = snprintf( p, n, "\n%s    <unsupported>", prefix );
                do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
            }
            else
            {
                ret = snprintf( p, n, "\n%s    <malformed>", prefix );
                do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
            }
            cur = cur->next;
            continue;
        }
        switch( san.type )
        {
            case 0:
            {
                mbedtls_x509_san_other_name *other_name = &san.san.other_name;
                ret = snprintf( p, n, "\n%s    otherName :", prefix );
                do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                if( ( ( (sizeof("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x08" "\x04") - 1) != (&other_name->value.hardware_module_name.oid)->len ) || memcmp( ("\x2b" "\x06" "\x01" "\x05\x05\x07" "\x08" "\x04"), (&other_name->value.hardware_module_name.oid)->p, (&other_name->value.hardware_module_name.oid)->len) != 0 ) != 0 )
                {
                    ret = snprintf( p, n, "\n%s        hardware module name :", prefix );
                    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                    ret = snprintf( p, n, "\n%s            hardware type          : ", prefix );
                    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                    ret = mbedtls_oid_get_numeric_string( p, n, &other_name->value.hardware_module_name.oid );
                    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                    ret = snprintf( p, n, "\n%s            hardware serial number : ", prefix );
                    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                    if( other_name->value.hardware_module_name.val.len >= n )
                    {
                        *p = '\0';
                        return( -0x2980 );
                    }
                    memcpy( p, other_name->value.hardware_module_name.val.p,
                            other_name->value.hardware_module_name.val.len );
                    p += other_name->value.hardware_module_name.val.len;
                    n -= other_name->value.hardware_module_name.val.len;
                }
            }
            break;
            case 2:
            {
                ret = snprintf( p, n, "\n%s    dNSName : ", prefix );
                do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                if( san.san.unstructured_name.len >= n )
                {
                    *p = '\0';
                    return( -0x2980 );
                }
                memcpy( p, san.san.unstructured_name.p, san.san.unstructured_name.len );
                p += san.san.unstructured_name.len;
                n -= san.san.unstructured_name.len;
            }
            break;
            default:
                ret = snprintf( p, n, "\n%s    <unsupported>", prefix );
                do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
                break;
        }
        cur = cur->next;
    }
    *p = '\0';
    *size = n;
    *buf = p;
    return( 0 );
}
int mbedtls_x509_parse_subject_alt_name( const mbedtls_x509_buf *san_buf,
                                         mbedtls_x509_subject_alternative_name *san )
{
    int ret = -0x006E;
    switch( san_buf->tag &
            ( 0xC0 |
              0x1F ) )
    {
        case( 0x80 | 0 ):
        {
            mbedtls_x509_san_other_name other_name;
            ret = x509_get_other_name( san_buf, &other_name );
            if( ret != 0 )
                return( ret );
            memset( san, 0, sizeof( mbedtls_x509_subject_alternative_name ) );
            san->type = 0;
            memcpy( &san->san.other_name,
                    &other_name, sizeof( other_name ) );
        }
        break;
        case( 0x80 | 2 ):
        {
            memset( san, 0, sizeof( mbedtls_x509_subject_alternative_name ) );
            san->type = 2;
            memcpy( &san->san.unstructured_name,
                    san_buf, sizeof( *san_buf ) );
        }
        break;
        default:
            return( -0x2080 );
    }
    return( 0 );
}
static int x509_info_cert_type( char **buf, size_t *size,
                                unsigned char ns_cert_type )
{
    int ret = -0x006E;
    size_t n = *size;
    char *p = *buf;
    const char *sep = "";
    if( ns_cert_type & ((0x80)) ) { ret = snprintf( p, n, "%s" "SSL Client", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x40)) ) { ret = snprintf( p, n, "%s" "SSL Server", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x20)) ) { ret = snprintf( p, n, "%s" "Email", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x10)) ) { ret = snprintf( p, n, "%s" "Object Signing", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x08)) ) { ret = snprintf( p, n, "%s" "Reserved", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x04)) ) { ret = snprintf( p, n, "%s" "SSL CA", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x02)) ) { ret = snprintf( p, n, "%s" "Email CA", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( ns_cert_type & ((0x01)) ) { ret = snprintf( p, n, "%s" "Object Signing CA", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    *size = n;
    *buf = p;
    return( 0 );
}
static int x509_info_key_usage( char **buf, size_t *size,
                                unsigned int key_usage )
{
    int ret = -0x006E;
    size_t n = *size;
    char *p = *buf;
    const char *sep = "";
    if( key_usage & ((0x80)) ) { ret = snprintf( p, n, "%s" "Digital Signature", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x40)) ) { ret = snprintf( p, n, "%s" "Non Repudiation", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x20)) ) { ret = snprintf( p, n, "%s" "Key Encipherment", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x10)) ) { ret = snprintf( p, n, "%s" "Data Encipherment", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x08)) ) { ret = snprintf( p, n, "%s" "Key Agreement", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x04)) ) { ret = snprintf( p, n, "%s" "Key Cert Sign", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x02)) ) { ret = snprintf( p, n, "%s" "CRL Sign", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x01)) ) { ret = snprintf( p, n, "%s" "Encipher Only", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    if( key_usage & ((0x8000)) ) { ret = snprintf( p, n, "%s" "Decipher Only", sep ); do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 ); sep = ", "; };;
    *size = n;
    *buf = p;
    return( 0 );
}
static int x509_info_ext_key_usage( char **buf, size_t *size,
                                    const mbedtls_x509_sequence *extended_key_usage )
{
    int ret = -0x006E;
    const char *desc;
    size_t n = *size;
    char *p = *buf;
    const mbedtls_x509_sequence *cur = extended_key_usage;
    const char *sep = "";
    while( cur != ((void*)0) )
    {
        if( mbedtls_oid_get_extended_key_usage( &cur->buf, &desc ) != 0 )
            desc = "???";
        ret = snprintf( p, n, "%s%s", sep, desc );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        sep = ", ";
        cur = cur->next;
    }
    *size = n;
    *buf = p;
    return( 0 );
}
static int x509_info_cert_policies( char **buf, size_t *size,
                                    const mbedtls_x509_sequence *certificate_policies )
{
    int ret = -0x006E;
    const char *desc;
    size_t n = *size;
    char *p = *buf;
    const mbedtls_x509_sequence *cur = certificate_policies;
    const char *sep = "";
    while( cur != ((void*)0) )
    {
        if( mbedtls_oid_get_certificate_policies( &cur->buf, &desc ) != 0 )
            desc = "???";
        ret = snprintf( p, n, "%s%s", sep, desc );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        sep = ", ";
        cur = cur->next;
    }
    *size = n;
    *buf = p;
    return( 0 );
}
int mbedtls_x509_crt_info( char *buf, size_t size, const char *prefix,
                   const mbedtls_x509_crt *crt )
{
    int ret = -0x006E;
    size_t n;
    char *p;
    char key_size_str[18];
    p = buf;
    n = size;
    if( ((void*)0) == crt )
    {
        ret = snprintf( p, n, "\nCertificate is uninitialised!\n" );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        return( (int) ( size - n ) );
    }
    ret = snprintf( p, n, "%scert. version     : %d\n",
                               prefix, crt->version );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "%sserial number     : ",
                               prefix );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = mbedtls_x509_serial_gets( p, n, &crt->serial );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "\n%sissuer name       : ", prefix );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = mbedtls_x509_dn_gets( p, n, &crt->issuer );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "\n%ssubject name      : ", prefix );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = mbedtls_x509_dn_gets( p, n, &crt->subject );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "\n%sissued  on        : " "%04d-%02d-%02d %02d:%02d:%02d", prefix,
                   crt->valid_from.year, crt->valid_from.mon,
                   crt->valid_from.day, crt->valid_from.hour,
                   crt->valid_from.min, crt->valid_from.sec );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "\n%sexpires on        : " "%04d-%02d-%02d %02d:%02d:%02d", prefix,
                   crt->valid_to.year, crt->valid_to.mon,
                   crt->valid_to.day, crt->valid_to.hour,
                   crt->valid_to.min, crt->valid_to.sec );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = snprintf( p, n, "\n%ssigned using      : ", prefix );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    ret = mbedtls_x509_sig_alg_gets( p, n, &crt->sig_oid, crt->sig_pk,
                             crt->sig_md, crt->sig_opts );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    if( ( ret = mbedtls_x509_key_size_helper( key_size_str, 18,
                                      mbedtls_pk_get_name( &crt->pk ) ) ) != 0 )
    {
        return( ret );
    }
    ret = snprintf( p, n, "\n%s%-" "18" "s: %d bits", prefix, key_size_str,
                          (int) mbedtls_pk_get_bitlen( &crt->pk ) );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    if( crt->ext_types & (1 << 8) )
    {
        ret = snprintf( p, n, "\n%sbasic constraints : CA=%s", prefix,
                        crt->ca_istrue ? "true" : "false" );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( crt->max_pathlen > 0 )
        {
            ret = snprintf( p, n, ", max_pathlen=%d", crt->max_pathlen - 1 );
            do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        }
    }
    if( crt->ext_types & (1 << 5) )
    {
        ret = snprintf( p, n, "\n%ssubject alt name  :", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( ( ret = x509_info_subject_alt_name( &p, &n,
                                                &crt->subject_alt_names,
                                                prefix ) ) != 0 )
            return( ret );
    }
    if( crt->ext_types & (1 << 16) )
    {
        ret = snprintf( p, n, "\n%scert. type        : ", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( ( ret = x509_info_cert_type( &p, &n, crt->ns_cert_type ) ) != 0 )
            return( ret );
    }
    if( crt->ext_types & (1 << 2) )
    {
        ret = snprintf( p, n, "\n%skey usage         : ", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( ( ret = x509_info_key_usage( &p, &n, crt->key_usage ) ) != 0 )
            return( ret );
    }
    if( crt->ext_types & (1 << 11) )
    {
        ret = snprintf( p, n, "\n%sext key usage     : ", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( ( ret = x509_info_ext_key_usage( &p, &n,
                                             &crt->ext_key_usage ) ) != 0 )
            return( ret );
    }
    if( crt->ext_types & (1 << 3) )
    {
        ret = snprintf( p, n, "\n%scertificate policies : ", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        if( ( ret = x509_info_cert_policies( &p, &n,
                                             &crt->certificate_policies ) ) != 0 )
            return( ret );
    }
    ret = snprintf( p, n, "\n" );
    do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    return( (int) ( size - n ) );
}
struct x509_crt_verify_string {
    int code;
    const char *string;
};
static const struct x509_crt_verify_string x509_crt_verify_strings[] = {
    { 0x01, "The certificate validity has expired" },
    { 0x02, "The certificate has been revoked (is on a CRL)" },
    { 0x04, "The certificate Common Name (CN) does not match with the expected CN" },
    { 0x08, "The certificate is not correctly signed by the trusted CA" },
    { 0x10, "The CRL is not correctly signed by the trusted CA" },
    { 0x20, "The CRL is expired" },
    { 0x40, "Certificate was missing" },
    { 0x80, "Certificate verification was skipped" },
    { 0x0100, "Other reason (can be used by verify callback)" },
    { 0x0200, "The certificate validity starts in the future" },
    { 0x0400, "The CRL is from the future" },
    { 0x0800, "Usage does not match the keyUsage extension" },
    { 0x1000, "Usage does not match the extendedKeyUsage extension" },
    { 0x2000, "Usage does not match the nsCertType extension" },
    { 0x4000, "The certificate is signed with an unacceptable hash." },
    { 0x8000, "The certificate is signed with an unacceptable PK alg (eg RSA vs ECDSA)." },
    { 0x010000, "The certificate is signed with an unacceptable key (eg bad curve, RSA too short)." },
    { 0x020000, "The CRL is signed with an unacceptable hash." },
    { 0x040000, "The CRL is signed with an unacceptable PK alg (eg RSA vs ECDSA)." },
    { 0x080000, "The CRL is signed with an unacceptable key (eg bad curve, RSA too short)." },
    { 0, ((void*)0) }
};
int mbedtls_x509_crt_verify_info( char *buf, size_t size, const char *prefix,
                          uint32_t flags )
{
    int ret = -0x006E;
    const struct x509_crt_verify_string *cur;
    char *p = buf;
    size_t n = size;
    for( cur = x509_crt_verify_strings; cur->string != ((void*)0) ; cur++ )
    {
        if( ( flags & cur->code ) == 0 )
            continue;
        ret = snprintf( p, n, "%s%s\n", prefix, cur->string );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
        flags ^= cur->code;
    }
    if( flags != 0 )
    {
        ret = snprintf( p, n, "%sUnknown reason "
                                       "(this should not happen)\n", prefix );
        do { if( ret < 0 || (size_t) ret >= n ) return( -0x2980 ); n -= (size_t) ret; p += (size_t) ret; } while( 0 );
    }
    return( (int) ( size - n ) );
}
int mbedtls_x509_crt_check_key_usage( const mbedtls_x509_crt *crt,
                                      unsigned int usage )
{
    unsigned int usage_must, usage_may;
    unsigned int may_mask = (0x01)
                          | (0x8000);
    if( ( crt->ext_types & (1 << 2) ) == 0 )
        return( 0 );
    usage_must = usage & ~may_mask;
    if( ( ( crt->key_usage & ~may_mask ) & usage_must ) != usage_must )
        return( -0x2800 );
    usage_may = usage & may_mask;
    if( ( ( crt->key_usage & may_mask ) | usage_may ) != usage_may )
        return( -0x2800 );
    return( 0 );
}
int mbedtls_x509_crt_check_extended_key_usage( const mbedtls_x509_crt *crt,
                                       const char *usage_oid,
                                       size_t usage_len )
{
    const mbedtls_x509_sequence *cur;
    if( ( crt->ext_types & (1 << 11) ) == 0 )
        return( 0 );
    for( cur = &crt->ext_key_usage; cur != ((void*)0); cur = cur->next )
    {
        const mbedtls_x509_buf *cur_oid = &cur->buf;
        if( cur_oid->len == usage_len &&
            memcmp( cur_oid->p, usage_oid, usage_len ) == 0 )
        {
            return( 0 );
        }
        if( ( ( (sizeof("\x55" "\x1D" "\x25" "\x00") - 1) != (cur_oid)->len ) || memcmp( ("\x55" "\x1D" "\x25" "\x00"), (cur_oid)->p, (cur_oid)->len) != 0 ) == 0 )
            return( 0 );
    }
    return( -0x2800 );
}
int mbedtls_x509_crt_is_revoked( const mbedtls_x509_crt *crt, const mbedtls_x509_crl *crl )
{
    const mbedtls_x509_crl_entry *cur = &crl->entry;
    while( cur != ((void*)0) && cur->serial.len != 0 )
    {
        if( crt->serial.len == cur->serial.len &&
            memcmp( crt->serial.p, cur->serial.p, crt->serial.len ) == 0 )
        {
            return( 1 );
        }
        cur = cur->next;
    }
    return( 0 );
}
static int x509_crt_verifycrl( mbedtls_x509_crt *crt, mbedtls_x509_crt *ca,
                               mbedtls_x509_crl *crl_list,
                               const mbedtls_x509_crt_profile *profile )
{
    int flags = 0;
    unsigned char hash[64];
    const mbedtls_md_info_t *md_info;
    if( ca == ((void*)0) )
        return( flags );
    while( crl_list != ((void*)0) )
    {
        if( crl_list->version == 0 ||
            x509_name_cmp( &crl_list->issuer, &ca->subject ) != 0 )
        {
            crl_list = crl_list->next;
            continue;
        }
        if( mbedtls_x509_crt_check_key_usage( ca,
                                              (0x02) ) != 0 )
        {
            flags |= 0x10;
            break;
        }
        if( x509_profile_check_md_alg( profile, crl_list->sig_md ) != 0 )
            flags |= 0x020000;
        if( x509_profile_check_pk_alg( profile, crl_list->sig_pk ) != 0 )
            flags |= 0x040000;
        md_info = mbedtls_md_info_from_type( crl_list->sig_md );
        if( mbedtls_md( md_info, crl_list->tbs.p, crl_list->tbs.len, hash ) != 0 )
        {
            flags |= 0x10;
            break;
        }
        if( x509_profile_check_key( profile, &ca->pk ) != 0 )
            flags |= 0x010000;
        if( mbedtls_pk_verify_ext( crl_list->sig_pk, crl_list->sig_opts, &ca->pk,
                           crl_list->sig_md, hash, mbedtls_md_get_size( md_info ),
                           crl_list->sig.p, crl_list->sig.len ) != 0 )
        {
            flags |= 0x10;
            break;
        }
        if( mbedtls_x509_time_is_past( &crl_list->next_update ) )
            flags |= 0x20;
        if( mbedtls_x509_time_is_future( &crl_list->this_update ) )
            flags |= 0x0400;
        if( mbedtls_x509_crt_is_revoked( crt, crl_list ) )
        {
            flags |= 0x02;
            break;
        }
        crl_list = crl_list->next;
    }
    return( flags );
}
static int x509_crt_check_signature( const mbedtls_x509_crt *child,
                                     mbedtls_x509_crt *parent,
                                     mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    unsigned char hash[64];
    size_t hash_len;
    const mbedtls_md_info_t *md_info;
    md_info = mbedtls_md_info_from_type( child->sig_md );
    hash_len = mbedtls_md_get_size( md_info );
    if( mbedtls_md( md_info, child->tbs.p, child->tbs.len, hash ) != 0 )
        return( -1 );
    if( ! mbedtls_pk_can_do( &parent->pk, child->sig_pk ) )
        return( -1 );
    (void) rs_ctx;
    return( mbedtls_pk_verify_ext( child->sig_pk, child->sig_opts, &parent->pk,
                child->sig_md, hash, hash_len,
                child->sig.p, child->sig.len ) );
}
static int x509_crt_check_parent( const mbedtls_x509_crt *child,
                                  const mbedtls_x509_crt *parent,
                                  int top )
{
    int need_ca_bit;
    if( x509_name_cmp( &child->issuer, &parent->subject ) != 0 )
        return( -1 );
    need_ca_bit = 1;
    if( top && parent->version < 3 )
        need_ca_bit = 0;
    if( need_ca_bit && ! parent->ca_istrue )
        return( -1 );
    if( need_ca_bit &&
        mbedtls_x509_crt_check_key_usage( parent, (0x04) ) != 0 )
    {
        return( -1 );
    }
    return( 0 );
}
static int x509_crt_find_parent_in(
                        mbedtls_x509_crt *child,
                        mbedtls_x509_crt *candidates,
                        mbedtls_x509_crt **r_parent,
                        int *r_signature_is_good,
                        int top,
                        unsigned path_cnt,
                        unsigned self_cnt,
                        mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    mbedtls_x509_crt *parent, *fallback_parent;
    int signature_is_good = 0, fallback_signature_is_good;
    fallback_parent = ((void*)0);
    fallback_signature_is_good = 0;
    for( parent = candidates; parent != ((void*)0); parent = parent->next )
    {
        if( x509_crt_check_parent( child, parent, top ) != 0 )
            continue;
        if( parent->max_pathlen > 0 &&
            (size_t) parent->max_pathlen < 1 + path_cnt - self_cnt )
        {
            continue;
        }
        ret = x509_crt_check_signature( child, parent, rs_ctx );
        (void) ret;
        signature_is_good = ret == 0;
        if( top && ! signature_is_good )
            continue;
        if( mbedtls_x509_time_is_past( &parent->valid_to ) ||
            mbedtls_x509_time_is_future( &parent->valid_from ) )
        {
            if( fallback_parent == ((void*)0) )
            {
                fallback_parent = parent;
                fallback_signature_is_good = signature_is_good;
            }
            continue;
        }
        *r_parent = parent;
        *r_signature_is_good = signature_is_good;
        break;
    }
    if( parent == ((void*)0) )
    {
        *r_parent = fallback_parent;
        *r_signature_is_good = fallback_signature_is_good;
    }
    return( 0 );
}
static int x509_crt_find_parent(
                        mbedtls_x509_crt *child,
                        mbedtls_x509_crt *trust_ca,
                        mbedtls_x509_crt **parent,
                        int *parent_is_trusted,
                        int *signature_is_good,
                        unsigned path_cnt,
                        unsigned self_cnt,
                        mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    mbedtls_x509_crt *search_list;
    *parent_is_trusted = 1;
    while( 1 ) {
        search_list = *parent_is_trusted ? trust_ca : child->next;
        ret = x509_crt_find_parent_in( child, search_list,
                                       parent, signature_is_good,
                                       *parent_is_trusted,
                                       path_cnt, self_cnt, rs_ctx );
        (void) ret;
        if( *parent != ((void*)0) || *parent_is_trusted == 0 )
            break;
        *parent_is_trusted = 0;
    }
    if( *parent == ((void*)0) )
    {
        *parent_is_trusted = 0;
        *signature_is_good = 0;
    }
    return( 0 );
}
static int x509_crt_check_ee_locally_trusted(
                    mbedtls_x509_crt *crt,
                    mbedtls_x509_crt *trust_ca )
{
    mbedtls_x509_crt *cur;
    if( x509_name_cmp( &crt->issuer, &crt->subject ) != 0 )
        return( -1 );
    for( cur = trust_ca; cur != ((void*)0); cur = cur->next )
    {
        if( crt->raw.len == cur->raw.len &&
            memcmp( crt->raw.p, cur->raw.p, crt->raw.len ) == 0 )
        {
            return( 0 );
        }
    }
    return( -1 );
}
static int x509_crt_verify_chain(
                mbedtls_x509_crt *crt,
                mbedtls_x509_crt *trust_ca,
                mbedtls_x509_crl *ca_crl,
                mbedtls_x509_crt_ca_cb_t f_ca_cb,
                void *p_ca_cb,
                const mbedtls_x509_crt_profile *profile,
                mbedtls_x509_crt_verify_chain *ver_chain,
                mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    uint32_t *flags;
    mbedtls_x509_crt_verify_chain_item *cur;
    mbedtls_x509_crt *child;
    mbedtls_x509_crt *parent;
    int parent_is_trusted;
    int child_is_trusted;
    int signature_is_good;
    unsigned self_cnt;
    mbedtls_x509_crt *cur_trust_ca = ((void*)0);
    child = crt;
    self_cnt = 0;
    parent_is_trusted = 0;
    child_is_trusted = 0;
    while( 1 ) {
        cur = &ver_chain->items[ver_chain->len];
        cur->crt = child;
        cur->flags = 0;
        ver_chain->len++;
        flags = &cur->flags;
        if( mbedtls_x509_time_is_past( &child->valid_to ) )
            *flags |= 0x01;
        if( mbedtls_x509_time_is_future( &child->valid_from ) )
            *flags |= 0x0200;
        if( child_is_trusted )
            return( 0 );
        if( x509_profile_check_md_alg( profile, child->sig_md ) != 0 )
            *flags |= 0x4000;
        if( x509_profile_check_pk_alg( profile, child->sig_pk ) != 0 )
            *flags |= 0x8000;
        if( ver_chain->len == 1 &&
            x509_crt_check_ee_locally_trusted( child, trust_ca ) == 0 )
        {
            return( 0 );
        }
        {
            ((void) f_ca_cb);
            ((void) p_ca_cb);
            cur_trust_ca = trust_ca;
        }
        ret = x509_crt_find_parent( child, cur_trust_ca, &parent,
                                       &parent_is_trusted, &signature_is_good,
                                       ver_chain->len - 1, self_cnt, rs_ctx );
        (void) ret;
        if( parent == ((void*)0) )
        {
            *flags |= 0x08;
            return( 0 );
        }
        if( ver_chain->len != 1 &&
            x509_name_cmp( &child->issuer, &child->subject ) == 0 )
        {
            self_cnt++;
        }
        if( ! parent_is_trusted &&
            ver_chain->len > 8 )
        {
            return( -0x3000 );
        }
        if( ! signature_is_good )
            *flags |= 0x08;
        if( x509_profile_check_key( profile, &parent->pk ) != 0 )
            *flags |= 0x010000;
        *flags |= x509_crt_verifycrl( child, parent, ca_crl, profile );
        child = parent;
        parent = ((void*)0);
        child_is_trusted = parent_is_trusted;
        signature_is_good = 0;
    }
}
static int x509_crt_check_cn( const mbedtls_x509_buf *name,
                              const char *cn, size_t cn_len )
{
    if( name->len == cn_len &&
        x509_memcasecmp( cn, name->p, cn_len ) == 0 )
    {
        return( 0 );
    }
    if( x509_check_wildcard( cn, name ) == 0 )
    {
        return( 0 );
    }
    return( -1 );
}
static int x509_crt_check_san( const mbedtls_x509_buf *name,
                               const char *cn, size_t cn_len )
{
    const unsigned char san_type = (unsigned char) name->tag &
                                   0x1F;
    if( san_type == 2 )
        return( x509_crt_check_cn( name, cn, cn_len ) );
    return( -1 );
}
static void x509_crt_verify_name( const mbedtls_x509_crt *crt,
                                  const char *cn,
                                  uint32_t *flags )
{
    const mbedtls_x509_name *name;
    const mbedtls_x509_sequence *cur;
    size_t cn_len = strlen( cn );
    if( crt->ext_types & (1 << 5) )
    {
        for( cur = &crt->subject_alt_names; cur != ((void*)0); cur = cur->next )
        {
            if( x509_crt_check_san( &cur->buf, cn, cn_len ) == 0 )
                break;
        }
        if( cur == ((void*)0) )
            *flags |= 0x04;
    }
    else
    {
        for( name = &crt->subject; name != ((void*)0); name = name->next )
        {
            if( ( ( (sizeof("\x55" "\x04" "\x03") - 1) != (&name->oid)->len ) || memcmp( ("\x55" "\x04" "\x03"), (&name->oid)->p, (&name->oid)->len) != 0 ) == 0 &&
                x509_crt_check_cn( &name->val, cn, cn_len ) == 0 )
            {
                break;
            }
        }
        if( name == ((void*)0) )
            *flags |= 0x04;
    }
}
static int x509_crt_merge_flags_with_cb(
           uint32_t *flags,
           const mbedtls_x509_crt_verify_chain *ver_chain,
           int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
           void *p_vrfy )
{
    int ret = -0x006E;
    unsigned i;
    uint32_t cur_flags;
    const mbedtls_x509_crt_verify_chain_item *cur;
    for( i = ver_chain->len; i != 0; --i )
    {
        cur = &ver_chain->items[i-1];
        cur_flags = cur->flags;
        if( ((void*)0) != f_vrfy )
            if( ( ret = f_vrfy( p_vrfy, cur->crt, (int) i-1, &cur_flags ) ) != 0 )
                return( ret );
        *flags |= cur_flags;
    }
    return( 0 );
}
static int x509_crt_verify_restartable_ca_cb( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     mbedtls_x509_crt_ca_cb_t f_ca_cb,
                     void *p_ca_cb,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy,
                     mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    int ret = -0x006E;
    mbedtls_pk_type_t pk_type;
    mbedtls_x509_crt_verify_chain ver_chain;
    uint32_t ee_flags;
    *flags = 0;
    ee_flags = 0;
    x509_crt_verify_chain_reset( &ver_chain );
    if( profile == ((void*)0) )
    {
        ret = -0x2800;
        goto exit;
    }
    if( cn != ((void*)0) )
        x509_crt_verify_name( crt, cn, &ee_flags );
    pk_type = mbedtls_pk_get_type( &crt->pk );
    if( x509_profile_check_pk_alg( profile, pk_type ) != 0 )
        ee_flags |= 0x8000;
    if( x509_profile_check_key( profile, &crt->pk ) != 0 )
        ee_flags |= 0x010000;
    ret = x509_crt_verify_chain( crt, trust_ca, ca_crl,
                                 f_ca_cb, p_ca_cb, profile,
                                 &ver_chain, rs_ctx );
    if( ret != 0 )
        goto exit;
    ver_chain.items[0].flags |= ee_flags;
    ret = x509_crt_merge_flags_with_cb( flags, &ver_chain, f_vrfy, p_vrfy );
exit:
    if( ret == -0x2700 )
        ret = -0x3000;
    if( ret != 0 )
    {
        *flags = (uint32_t) -1;
        return( ret );
    }
    if( *flags != 0 )
        return( -0x2700 );
    return( 0 );
}
int mbedtls_x509_crt_verify( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    return( x509_crt_verify_restartable_ca_cb( crt, trust_ca, ca_crl,
                                         ((void*)0), ((void*)0),
                                         &mbedtls_x509_crt_profile_default,
                                         cn, flags,
                                         f_vrfy, p_vrfy, ((void*)0) ) );
}
int mbedtls_x509_crt_verify_with_profile( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy )
{
    return( x509_crt_verify_restartable_ca_cb( crt, trust_ca, ca_crl,
                                                 ((void*)0), ((void*)0),
                                                 profile, cn, flags,
                                                 f_vrfy, p_vrfy, ((void*)0) ) );
}
int mbedtls_x509_crt_verify_restartable( mbedtls_x509_crt *crt,
                     mbedtls_x509_crt *trust_ca,
                     mbedtls_x509_crl *ca_crl,
                     const mbedtls_x509_crt_profile *profile,
                     const char *cn, uint32_t *flags,
                     int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *),
                     void *p_vrfy,
                     mbedtls_x509_crt_restart_ctx *rs_ctx )
{
    return( x509_crt_verify_restartable_ca_cb( crt, trust_ca, ca_crl,
                                                 ((void*)0), ((void*)0),
                                                 profile, cn, flags,
                                                 f_vrfy, p_vrfy, rs_ctx ) );
}
void mbedtls_x509_crt_init( mbedtls_x509_crt *crt )
{
    memset( crt, 0, sizeof(mbedtls_x509_crt) );
}
void mbedtls_x509_crt_free( mbedtls_x509_crt *crt )
{
    mbedtls_x509_crt *cert_cur = crt;
    mbedtls_x509_crt *cert_prv;
    mbedtls_x509_name *name_cur;
    mbedtls_x509_name *name_prv;
    mbedtls_x509_sequence *seq_cur;
    mbedtls_x509_sequence *seq_prv;
    if( crt == ((void*)0) )
        return;
    do
    {
        mbedtls_pk_free( &cert_cur->pk );
        free( cert_cur->sig_opts );
        name_cur = cert_cur->issuer.next;
        while( name_cur != ((void*)0) )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            mbedtls_platform_zeroize( name_prv, sizeof( mbedtls_x509_name ) );
            free( name_prv );
        }
        name_cur = cert_cur->subject.next;
        while( name_cur != ((void*)0) )
        {
            name_prv = name_cur;
            name_cur = name_cur->next;
            mbedtls_platform_zeroize( name_prv, sizeof( mbedtls_x509_name ) );
            free( name_prv );
        }
        seq_cur = cert_cur->ext_key_usage.next;
        while( seq_cur != ((void*)0) )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            mbedtls_platform_zeroize( seq_prv,
                                      sizeof( mbedtls_x509_sequence ) );
            free( seq_prv );
        }
        seq_cur = cert_cur->subject_alt_names.next;
        while( seq_cur != ((void*)0) )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            mbedtls_platform_zeroize( seq_prv,
                                      sizeof( mbedtls_x509_sequence ) );
            free( seq_prv );
        }
        seq_cur = cert_cur->certificate_policies.next;
        while( seq_cur != ((void*)0) )
        {
            seq_prv = seq_cur;
            seq_cur = seq_cur->next;
            mbedtls_platform_zeroize( seq_prv,
                                      sizeof( mbedtls_x509_sequence ) );
            free( seq_prv );
        }
        if( cert_cur->raw.p != ((void*)0) && cert_cur->own_buffer )
        {
            mbedtls_platform_zeroize( cert_cur->raw.p, cert_cur->raw.len );
            free( cert_cur->raw.p );
        }
        cert_cur = cert_cur->next;
    }
    while( cert_cur != ((void*)0) );
    cert_cur = crt;
    do
    {
        cert_prv = cert_cur;
        cert_cur = cert_cur->next;
        mbedtls_platform_zeroize( cert_prv, sizeof( mbedtls_x509_crt ) );
        if( cert_prv != crt )
            free( cert_prv );
    }
    while( cert_cur != ((void*)0) );
}
