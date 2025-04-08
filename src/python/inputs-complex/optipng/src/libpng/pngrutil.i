typedef long unsigned int size_t;
typedef int wchar_t;
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
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
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
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
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
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
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
 typedef struct png_incomplete png_double;
         typedef png_double* png_doublep;
         typedef const png_double* png_const_doublep;
         typedef png_double** png_doublepp;
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;

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
  struct _IO_FILE **_prevchain;
  int _mode;
  char _unused2[15 * sizeof (int) - 5 * sizeof (void *)];
};
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern int fflush (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ))
  __attribute__ ((__nonnull__ (1)));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nonnull__ (1)));
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar (void);
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar (int __c);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                          __attribute__ ((__nonnull__ (3)));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern long int ftell (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern void rewind (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __attribute__ ((__nonnull__ (1)));
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void perror (const char *__s) __attribute__ ((__cold__));
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ))
                                     ;
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
putchar (int __c)
{
  return putc (__c, stdout);
}
 typedef unsigned char png_byte;
   typedef short png_int_16;
   typedef unsigned short png_uint_16;
   typedef int png_int_32;
   typedef unsigned int png_uint_32;
typedef size_t png_size_t;
typedef ptrdiff_t png_ptrdiff_t;
   typedef png_size_t png_alloc_size_t;
typedef png_int_32 png_fixed_point;
typedef void * png_voidp;
typedef const void * png_const_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef png_uint_32 * png_uint_32p;
typedef const png_uint_32 * png_const_uint_32p;
typedef png_int_32 * png_int_32p;
typedef const png_int_32 * png_const_int_32p;
typedef png_uint_16 * png_uint_16p;
typedef const png_uint_16 * png_const_uint_16p;
typedef png_int_16 * png_int_16p;
typedef const png_int_16 * png_const_int_16p;
typedef char * png_charp;
typedef const char * png_const_charp;
typedef png_fixed_point * png_fixed_point_p;
typedef const png_fixed_point * png_const_fixed_point_p;
typedef png_size_t * png_size_tp;
typedef const png_size_t * png_const_size_tp;
typedef FILE * png_FILE_p;
typedef png_byte * * png_bytepp;
typedef png_uint_32 * * png_uint_32pp;
typedef png_int_32 * * png_int_32pp;
typedef png_uint_16 * * png_uint_16pp;
typedef png_int_16 * * png_int_16pp;
typedef const char * * png_const_charpp;
typedef char * * png_charpp;
typedef png_fixed_point * * png_fixed_point_pp;
typedef char * * * png_charppp;
typedef char* png_libpng_version_1_6_21;
typedef struct png_struct_def png_struct;
typedef const png_struct * png_const_structp;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef const png_info * png_const_infop;
typedef png_info * * png_infopp;
typedef png_struct * __restrict png_structrp;
typedef const png_struct * __restrict png_const_structrp;
typedef png_info * __restrict png_inforp;
typedef const png_info * __restrict png_const_inforp;
typedef struct png_color_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
} png_color;
typedef png_color * png_colorp;
typedef const png_color * png_const_colorp;
typedef png_color * * png_colorpp;
typedef struct png_color_16_struct
{
   png_byte index;
   png_uint_16 red;
   png_uint_16 green;
   png_uint_16 blue;
   png_uint_16 gray;
} png_color_16;
typedef png_color_16 * png_color_16p;
typedef const png_color_16 * png_const_color_16p;
typedef png_color_16 * * png_color_16pp;
typedef struct png_color_8_struct
{
   png_byte red;
   png_byte green;
   png_byte blue;
   png_byte gray;
   png_byte alpha;
} png_color_8;
typedef png_color_8 * png_color_8p;
typedef const png_color_8 * png_const_color_8p;
typedef png_color_8 * * png_color_8pp;
typedef struct png_sPLT_entry_struct
{
   png_uint_16 red;
   png_uint_16 green;
   png_uint_16 blue;
   png_uint_16 alpha;
   png_uint_16 frequency;
} png_sPLT_entry;
typedef png_sPLT_entry * png_sPLT_entryp;
typedef const png_sPLT_entry * png_const_sPLT_entryp;
typedef png_sPLT_entry * * png_sPLT_entrypp;
typedef struct png_sPLT_struct
{
   png_charp name;
   png_byte depth;
   png_sPLT_entryp entries;
   png_int_32 nentries;
} png_sPLT_t;
typedef png_sPLT_t * png_sPLT_tp;
typedef const png_sPLT_t * png_const_sPLT_tp;
typedef png_sPLT_t * * png_sPLT_tpp;
typedef struct png_time_struct
{
   png_uint_16 year;
   png_byte month;
   png_byte day;
   png_byte hour;
   png_byte minute;
   png_byte second;
} png_time;
typedef png_time * png_timep;
typedef const png_time * png_const_timep;
typedef png_time * * png_timepp;
typedef struct png_unknown_chunk_t
{
    png_byte name[5];
    png_byte *data;
    png_size_t size;
    png_byte location;
}
png_unknown_chunk;
typedef png_unknown_chunk * png_unknown_chunkp;
typedef const png_unknown_chunk * png_const_unknown_chunkp;
typedef png_unknown_chunk * * png_unknown_chunkpp;
typedef struct png_row_info_struct
{
   png_uint_32 width;
   png_size_t rowbytes;
   png_byte color_type;
   png_byte bit_depth;
   png_byte channels;
   png_byte pixel_depth;
} png_row_info;
typedef png_row_info * png_row_infop;
typedef png_row_info * * png_row_infopp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
typedef void ( *png_flush_ptr) (png_structp);
typedef void ( *png_read_status_ptr) (png_structp, png_uint_32, int);
typedef void ( *png_write_status_ptr) (png_structp, png_uint_32, int);
typedef png_voidp ( *png_malloc_ptr) (png_structp, png_alloc_size_t);
typedef void ( *png_free_ptr) (png_structp, png_voidp);
extern png_uint_32 ( png_access_version_number) (void);
extern void ( png_set_sig_bytes) (png_structrp png_ptr, int num_bytes);
extern int ( png_sig_cmp) (png_const_bytep sig, png_size_t start, png_size_t num_to_check);
extern __attribute__((__malloc__)) png_structp ( png_create_read_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern png_size_t ( png_get_compression_buffer_size) (png_const_structrp png_ptr);
extern void ( png_set_compression_buffer_size) (png_structrp png_ptr, png_size_t size);
extern __attribute__((__noreturn__)) void ( png_longjmp) (png_const_structrp png_ptr, int val);
extern int ( png_reset_zstream) (png_structrp png_ptr);
extern void ( png_write_sig) (png_structrp png_ptr);
extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, png_size_t length);
extern void ( png_write_chunk_start) (png_structrp png_ptr, png_const_bytep chunk_name, png_uint_32 length);
extern void ( png_write_chunk_data) (png_structrp png_ptr, png_const_bytep data, png_size_t length);
extern void ( png_write_chunk_end) (png_structrp png_ptr);
extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr);
extern void ( png_info_init_3) (png_infopp info_ptr, png_size_t png_info_struct_size);
extern void ( png_write_info_before_PLTE) (png_structrp png_ptr, png_const_inforp info_ptr);
extern void ( png_write_info) (png_structrp png_ptr, png_const_inforp info_ptr);
extern void ( png_read_info) (png_structrp png_ptr, png_inforp info_ptr);
extern int ( png_set_interlace_handling) (png_structrp png_ptr);
extern void ( png_set_flush) (png_structrp png_ptr, int nrows);
extern void ( png_write_flush) (png_structrp png_ptr);
extern void ( png_start_read_image) (png_structrp png_ptr);
extern void ( png_read_update_info) (png_structrp png_ptr, png_inforp info_ptr);
extern void ( png_read_rows) (png_structrp png_ptr, png_bytepp row, png_bytepp display_row, png_uint_32 num_rows);
extern void ( png_read_row) (png_structrp png_ptr, png_bytep row, png_bytep display_row);
extern void ( png_read_image) (png_structrp png_ptr, png_bytepp image);
extern void ( png_write_row) (png_structrp png_ptr, png_const_bytep row);
extern void ( png_write_rows) (png_structrp png_ptr, png_bytepp row, png_uint_32 num_rows);
extern void ( png_write_image) (png_structrp png_ptr, png_bytepp image);
extern void ( png_write_end) (png_structrp png_ptr, png_inforp info_ptr);
extern void ( png_read_end) (png_structrp png_ptr, png_inforp info_ptr);
extern void ( png_destroy_info_struct) (png_const_structrp png_ptr, png_infopp info_ptr_ptr);
extern void ( png_destroy_read_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr);
extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);
extern void ( png_set_crc_action) (png_structrp png_ptr, int crit_action, int ancil_action);
extern void ( png_set_filter) (png_structrp png_ptr, int method, int filters);
extern void ( png_set_compression_level) (png_structrp png_ptr, int level);
extern void ( png_set_compression_mem_level) (png_structrp png_ptr, int mem_level);
extern void ( png_set_compression_strategy) (png_structrp png_ptr, int strategy);
extern void ( png_set_compression_window_bits) (png_structrp png_ptr, int window_bits);
extern void ( png_set_compression_method) (png_structrp png_ptr, int method);
extern void ( png_init_io) (png_structrp png_ptr, png_FILE_p fp);
extern void ( png_set_error_fn) (png_structrp png_ptr, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn);
extern png_voidp ( png_get_error_ptr) (png_const_structrp png_ptr);
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);
extern void ( png_set_read_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr read_data_fn);
extern png_voidp ( png_get_io_ptr) (png_const_structrp png_ptr);
extern void ( png_set_read_status_fn) (png_structrp png_ptr, png_read_status_ptr read_row_fn);
extern void ( png_set_write_status_fn) (png_structrp png_ptr, png_write_status_ptr write_row_fn);
extern __attribute__((__malloc__)) png_voidp ( png_malloc) (png_const_structrp png_ptr, png_alloc_size_t size);
extern __attribute__((__malloc__)) png_voidp ( png_calloc) (png_const_structrp png_ptr, png_alloc_size_t size);
extern __attribute__((__malloc__)) png_voidp ( png_malloc_warn) (png_const_structrp png_ptr, png_alloc_size_t size);
extern void ( png_free) (png_const_structrp png_ptr, png_voidp ptr);
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
extern void ( png_data_freer) (png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern __attribute__((__noreturn__)) void ( png_chunk_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_chunk_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_chunk_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message);
extern void ( png_set_benign_errors) (png_structrp png_ptr, int allowed);
extern png_uint_32 ( png_get_valid) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 flag);
extern png_size_t ( png_get_rowbytes) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_bytepp ( png_get_rows) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern void ( png_set_rows) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytepp row_pointers);
extern png_byte ( png_get_channels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_image_width) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_image_height) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_byte ( png_get_bit_depth) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_byte ( png_get_color_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_byte ( png_get_filter_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_byte ( png_get_interlace_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_byte ( png_get_compression_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_x_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_y_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern float png_get_pixel_aspect_ratio (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_fixed_point ( png_get_pixel_aspect_ratio_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_int_32 ( png_get_x_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_int_32 ( png_get_y_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_int_32 ( png_get_x_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_int_32 ( png_get_y_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_const_bytep ( png_get_signature) (png_const_structrp png_ptr, png_const_inforp info_ptr);
extern png_uint_32 ( png_get_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_16p *background);
extern void ( png_set_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_16p background);
extern png_uint_32 ( png_get_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_16p *hist);
extern void ( png_set_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_uint_16p hist);
extern png_uint_32 ( png_get_IHDR) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, int *compression_method, int *filter_method);
extern void ( png_set_IHDR) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, int filter_method);
extern png_uint_32 ( png_get_PLTE) (png_const_structrp png_ptr, png_inforp info_ptr, png_colorp *palette, int *num_palette);
extern void ( png_set_PLTE) (png_structrp png_ptr, png_inforp info_ptr, png_const_colorp palette, int num_palette);
extern png_uint_32 ( png_get_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_8p *sig_bit);
extern void ( png_set_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_8p sig_bit);
extern png_uint_32 ( png_get_tRNS) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, png_color_16p *trans_color);
extern void ( png_set_tRNS) (png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, png_const_color_16p trans_color);
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks);
extern int ( png_handle_as_unknown) (png_const_structrp png_ptr, png_const_bytep chunk_name);
extern void ( png_set_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, int num_unknowns);
extern void ( png_set_unknown_chunk_location) (png_const_structrp png_ptr, png_inforp info_ptr, int chunk, int location);
extern int ( png_get_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_unknown_chunkpp entries);
extern void ( png_set_invalid) (png_const_structrp png_ptr, png_inforp info_ptr, int mask);
extern void ( png_read_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);
extern void ( png_write_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);
extern png_const_charp ( png_get_copyright) (png_const_structrp png_ptr);
extern png_const_charp ( png_get_header_ver) (png_const_structrp png_ptr);
extern png_const_charp ( png_get_header_version) (png_const_structrp png_ptr);
extern png_const_charp ( png_get_libpng_ver) (png_const_structrp png_ptr);
extern void ( png_set_user_limits) (png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max);
extern png_uint_32 ( png_get_user_width_max) (png_const_structrp png_ptr);
extern png_uint_32 ( png_get_user_height_max) (png_const_structrp png_ptr);
extern void ( png_set_chunk_cache_max) (png_structrp png_ptr, png_uint_32 user_chunk_cache_max);
extern png_uint_32 ( png_get_chunk_cache_max) (png_const_structrp png_ptr);
extern void ( png_set_chunk_malloc_max) (png_structrp png_ptr, png_alloc_size_t user_chunk_cache_max);
extern png_alloc_size_t ( png_get_chunk_malloc_max) (png_const_structrp png_ptr);
extern png_uint_32 ( png_get_io_state) (png_const_structrp png_ptr);
extern png_uint_32 ( png_get_io_chunk_type) (png_const_structrp png_ptr);
extern png_uint_32 ( png_get_uint_32) (png_const_bytep buf);
extern png_uint_16 ( png_get_uint_16) (png_const_bytep buf);
extern png_int_32 ( png_get_int_32) (png_const_bytep buf);
extern png_uint_32 ( png_get_uint_31) (png_const_structrp png_ptr, png_const_bytep buf);
extern void ( png_save_uint_32) (png_bytep buf, png_uint_32 i);
extern void ( png_save_int_32) (png_bytep buf, png_int_32 i);
extern void ( png_save_uint_16) (png_bytep buf, unsigned int i);
extern void ( png_set_check_for_invalid_index) (png_structrp png_ptr, int allowed);
extern int ( png_get_palette_max) (png_const_structp png_ptr, png_const_infop info_ptr);
typedef unsigned char Byte;
typedef unsigned int uInt;
typedef unsigned long uLong;
   typedef Byte Bytef;
typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;
   typedef void const *voidpc;
   typedef void *voidpf;
   typedef void *voidp;
   typedef unsigned z_crc_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __ssize_t ssize_t;
typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);
struct internal_state;
typedef struct z_stream_s {
    const Bytef *next_in;
    uInt avail_in;
    uLong total_in;
    Bytef *next_out;
    uInt avail_out;
    uLong total_out;
    const char *msg;
    struct internal_state *state;
    alloc_func zalloc;
    free_func zfree;
    voidpf opaque;
    int data_type;
    uLong adler;
    uLong reserved;
} z_stream;
typedef z_stream *z_streamp;
typedef struct gz_header_s {
    int text;
    uLong time;
    int xflags;
    int os;
    Bytef *extra;
    uInt extra_len;
    uInt extra_max;
    Bytef *name;
    uInt name_max;
    Bytef *comment;
    uInt comm_max;
    int hcrc;
    int done;
} gz_header;
typedef gz_header *gz_headerp;
extern const char * zlibVersion (void);
extern int deflate (z_streamp strm, int flush);
extern int deflateEnd (z_streamp strm);
extern int inflate (z_streamp strm, int flush);
extern int inflateEnd (z_streamp strm);
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int deflateCopy (z_streamp dest, z_streamp source);
extern int deflateReset (z_streamp strm);
extern int deflateParams (z_streamp strm, int level, int strategy);
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);
extern uLong deflateBound (z_streamp strm, uLong sourceLen);
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits);
extern int deflatePrime (z_streamp strm, int bits, int value);
extern int deflateSetHeader (z_streamp strm, gz_headerp head);
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int inflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength);
extern int inflateSync (z_streamp strm);
extern int inflateCopy (z_streamp dest, z_streamp source);
extern int inflateReset (z_streamp strm);
extern int inflateReset2 (z_streamp strm, int windowBits);
extern int inflatePrime (z_streamp strm, int bits, int value);
extern long inflateMark (z_streamp strm);
extern int inflateGetHeader (z_streamp strm, gz_headerp head);
typedef unsigned (*in_func) (void *, const unsigned char * *);
typedef int (*out_func) (void *, unsigned char *, unsigned);
extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);
extern int inflateBackEnd (z_streamp strm);
extern uLong zlibCompileFlags (void);
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);
extern uLong compressBound (uLong sourceLen);
extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
typedef struct gzFile_s *gzFile;
extern gzFile gzdopen (int fd, const char *mode);
extern int gzbuffer (gzFile file, unsigned size);
extern int gzsetparams (gzFile file, int level, int strategy);
extern int gzread (gzFile file, voidp buf, unsigned len);
extern int gzwrite (gzFile file, voidpc buf, unsigned len);
extern int gzprintf (gzFile file, const char *format, ...);
extern int gzputs (gzFile file, const char *s);
extern char * gzgets (gzFile file, char *buf, int len);
extern int gzputc (gzFile file, int c);
extern int gzgetc (gzFile file);
extern int gzungetc (int c, gzFile file);
extern int gzflush (gzFile file, int flush);
extern int gzrewind (gzFile file);
extern int gzeof (gzFile file);
extern int gzdirect (gzFile file);
extern int gzclose (gzFile file);
extern int gzclose_r (gzFile file);
extern int gzclose_w (gzFile file);
extern const char * gzerror (gzFile file, int *errnum);
extern void gzclearerr (gzFile file);
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size);
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size);
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size);
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);
struct gzFile_s {
    unsigned have;
    unsigned char *next;
    long pos;
};
extern int gzgetc_ (gzFile file);
   extern gzFile gzopen (const char *, const char *);
   extern long gzseek (gzFile, long, int);
   extern long gztell (gzFile);
   extern long gzoffset (gzFile);
   extern uLong adler32_combine (uLong, uLong, long);
   extern uLong crc32_combine (uLong, uLong, long);
    struct internal_state {int dummy;};
extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);
extern int gzvprintf (gzFile file, const char *format, va_list va);
typedef struct png_compression_buffer
{
   struct png_compression_buffer *next;
   png_byte output[1];
} png_compression_buffer, *png_compression_bufferp;
struct png_struct_def
{
   png_error_ptr error_fn;
   png_error_ptr warning_fn;
   png_voidp error_ptr;
   png_rw_ptr write_data_fn;
   png_rw_ptr read_data_fn;
   png_voidp io_ptr;
   png_uint_32 mode;
   png_uint_32 flags;
   png_uint_32 transformations;
   png_uint_32 zowner;
   z_stream zstream;
   png_compression_bufferp zbuffer_list;
   uInt zbuffer_size;
   int zlib_level;
   int zlib_method;
   int zlib_window_bits;
   int zlib_mem_level;
   int zlib_strategy;
   int zlib_set_level;
   int zlib_set_method;
   int zlib_set_window_bits;
   int zlib_set_mem_level;
   int zlib_set_strategy;
   png_uint_32 width;
   png_uint_32 height;
   png_uint_32 num_rows;
   png_uint_32 usr_width;
   png_size_t rowbytes;
   png_uint_32 iwidth;
   png_uint_32 row_number;
   png_uint_32 chunk_name;
   png_bytep prev_row;
   png_bytep row_buf;
   png_bytep try_row;
   png_bytep tst_row;
   png_size_t info_rowbytes;
   png_uint_32 idat_size;
   png_uint_32 crc;
   png_colorp palette;
   png_uint_16 num_palette;
   int num_palette_max;
   png_uint_16 num_trans;
   png_byte compression;
   png_byte filter;
   png_byte interlaced;
   png_byte pass;
   png_byte do_filter;
   png_byte color_type;
   png_byte bit_depth;
   png_byte usr_bit_depth;
   png_byte pixel_depth;
   png_byte channels;
   png_byte usr_channels;
   png_byte sig_bytes;
   png_byte maximum_pixel_depth;
   png_byte transformed_pixel_depth;
   png_byte background_gamma_type;
   png_fixed_point background_gamma;
   png_color_16 background;
   png_flush_ptr output_flush_fn;
   png_uint_32 flush_dist;
   png_uint_32 flush_rows;
   png_color_8 sig_bit;
   png_bytep trans_alpha;
   png_color_16 trans_color;
   png_read_status_ptr read_row_fn;
   png_write_status_ptr write_row_fn;
   png_uint_32 free_me;
   int unknown_default;
   unsigned int num_chunk_list;
   png_bytep chunk_list;
   png_bytep big_row_buf;
   png_byte compression_type;
   png_uint_32 user_width_max;
   png_uint_32 user_height_max;
   png_uint_32 user_chunk_cache_max;
   png_alloc_size_t user_chunk_malloc_max;
   png_unknown_chunk unknown_chunk;
  png_size_t old_big_row_buf_size;
  png_bytep read_buffer;
  png_alloc_size_t read_buffer_size;
  uInt IDAT_read_size;
   png_uint_32 io_state;
   png_bytep big_prev_row;
   void (*read_filter[5 -1])(png_row_infop row_info,
      png_bytep row, png_const_bytep prev_row);
};
struct png_info_def
{
   png_uint_32 width;
   png_uint_32 height;
   png_uint_32 valid;
   png_size_t rowbytes;
   png_colorp palette;
   png_uint_16 num_palette;
   png_uint_16 num_trans;
   png_byte bit_depth;
   png_byte color_type;
   png_byte compression_type;
   png_byte filter_type;
   png_byte interlace_type;
   png_byte channels;
   png_byte pixel_depth;
   png_byte spare_byte;
   png_byte signature[8];
   png_color_8 sig_bit;
   png_bytep trans_alpha;
   png_color_16 trans_color;
   png_color_16 background;
   png_uint_16p hist;
   png_uint_32 free_me;
   png_unknown_chunkp unknown_chunks;
   int unknown_chunks_num;
   png_bytepp row_pointers;
};
typedef const png_uint_16p * png_const_uint_16pp;
extern void png_zstream_error (png_structrp png_ptr, int ret);
extern void png_free_buffer_list (png_structrp png_ptr, png_compression_bufferp *list);
extern int png_user_version_check (png_structrp png_ptr, png_const_charp user_png_ver);
extern __attribute__((__malloc__)) png_voidp png_malloc_base (png_const_structrp png_ptr, png_alloc_size_t size);
extern __attribute__((__malloc__)) png_voidp png_malloc_array (png_const_structrp png_ptr, int nelements, size_t element_size);
extern __attribute__((__malloc__)) png_voidp png_realloc_array (png_const_structrp png_ptr, png_const_voidp array, int old_elements, int add_elements, size_t element_size);
extern __attribute__((__malloc__)) png_structp png_create_png_struct (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);
extern void png_destroy_png_struct (png_structrp png_ptr);
extern void png_free_jmpbuf (png_structrp png_ptr);
extern __attribute__((__malloc__)) voidpf png_zalloc (voidpf png_ptr, uInt items, uInt size);
extern void png_zfree (voidpf png_ptr, voidpf ptr);
extern void png_default_read_data (png_structp png_ptr, png_bytep data, png_size_t length);
extern void png_default_write_data (png_structp png_ptr, png_bytep data, png_size_t length);
extern void png_default_flush (png_structp png_ptr);
extern void png_reset_crc (png_structrp png_ptr);
extern void png_write_data (png_structrp png_ptr, png_const_bytep data, png_size_t length);
extern void png_read_sig (png_structrp png_ptr, png_inforp info_ptr);
extern png_uint_32 png_read_chunk_header (png_structrp png_ptr);
extern void png_read_data (png_structrp png_ptr, png_bytep data, png_size_t length);
extern void png_crc_read (png_structrp png_ptr, png_bytep buf, png_uint_32 length);
extern int png_crc_finish (png_structrp png_ptr, png_uint_32 skip);
extern int png_crc_error (png_structrp png_ptr);
extern void png_calculate_crc (png_structrp png_ptr, png_const_bytep ptr, png_size_t length);
extern void png_flush (png_structrp png_ptr);
extern void png_write_IHDR (png_structrp png_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int compression_method, int filter_method, int interlace_method);
extern void png_write_PLTE (png_structrp png_ptr, png_const_colorp palette, png_uint_32 num_pal);
extern void png_compress_IDAT (png_structrp png_ptr, png_const_bytep row_data, png_alloc_size_t row_data_length, int flush);
extern void png_write_IEND (png_structrp png_ptr);
extern void png_write_sBIT (png_structrp png_ptr, png_const_color_8p sbit, int color_type);
extern void png_write_tRNS (png_structrp png_ptr, png_const_bytep trans, png_const_color_16p values, int number, int color_type);
extern void png_write_bKGD (png_structrp png_ptr, png_const_color_16p values, int color_type);
extern void png_write_hIST (png_structrp png_ptr, png_const_uint_16p hist, int num_hist);
extern void png_write_finish_row (png_structrp png_ptr);
extern void png_write_start_row (png_structrp png_ptr);
extern void png_combine_row (png_const_structrp png_ptr, png_bytep row, int display);
extern void png_do_read_interlace (png_row_infop row_info, png_bytep row, int pass, png_uint_32 transformations);
extern void png_do_write_interlace (png_row_infop row_info, png_bytep row, int pass);
extern void png_read_filter_row (png_structrp pp, png_row_infop row_info, png_bytep row, png_const_bytep prev_row, int filter);
extern void png_read_filter_row_up_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_sub3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_sub4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_avg3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_avg4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_paeth3_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_read_filter_row_paeth4_neon (png_row_infop row_info, png_bytep row, png_const_bytep prev_row);
extern void png_write_find_filter (png_structrp png_ptr, png_row_infop row_info);
extern void png_read_IDAT_data (png_structrp png_ptr, png_bytep output, png_alloc_size_t avail_out);
extern void png_read_finish_IDAT (png_structrp png_ptr);
extern void png_read_finish_row (png_structrp png_ptr);
extern void png_read_start_row (png_structrp png_ptr);
extern void png_read_transform_info (png_structrp png_ptr, png_inforp info_ptr);
extern void png_handle_IHDR (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_PLTE (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_IEND (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_bKGD (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_hIST (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_sBIT (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_handle_tRNS (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length);
extern void png_check_chunk_name (png_structrp png_ptr, png_uint_32 chunk_name);
extern void png_handle_unknown (png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length, int keep);
extern int png_chunk_unknown_handling (png_const_structrp png_ptr, png_uint_32 chunk_name);
extern void png_do_read_transformations (png_structrp png_ptr, png_row_infop row_info);
extern void png_init_read_transformations (png_structrp png_ptr);
extern void png_check_IHDR (png_const_structrp png_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_type, int compression_type, int filter_type);
extern void png_do_check_palette_indexes (png_structrp png_ptr, png_row_infop row_info);
extern size_t png_safecat (png_charp buffer, size_t bufsize, size_t pos, png_const_charp string);
extern png_charp png_format_number (png_const_charp start, png_charp end, int format, png_alloc_size_t number);
typedef char png_warning_parameters[8][
   32];
extern void png_warning_parameter (png_warning_parameters p, int number, png_const_charp string);
extern void png_warning_parameter_unsigned (png_warning_parameters p, int number, int format, png_alloc_size_t value);
extern void png_warning_parameter_signed (png_warning_parameters p, int number, int format, png_int_32 value);
extern void png_formatted_warning (png_const_structrp png_ptr, png_warning_parameters p, png_const_charp message);
extern void png_app_warning (png_const_structrp png_ptr, png_const_charp message);
extern void png_app_error (png_const_structrp png_ptr, png_const_charp message);
extern void png_chunk_report (png_const_structrp png_ptr, png_const_charp message, int error);
extern void png_init_filter_functions_neon (png_structp png_ptr, unsigned int bpp);
extern png_uint_32 png_check_keyword (png_structrp png_ptr, png_const_charp key, png_bytep new_key);
png_uint_32
png_get_uint_31(png_const_structrp png_ptr, png_const_bytep buf)
{
   png_uint_32 uval = (((png_uint_32)(*(buf)) << 24) + ((png_uint_32)(*((buf) + 1)) << 16) + ((png_uint_32)(*((buf) + 2)) << 8) + ((png_uint_32)(*((buf) + 3))));
   if (uval > ((png_uint_32)0x7fffffffL))
      png_error(png_ptr, "PNG unsigned integer out of range");
   return (uval);
}
png_uint_32 (
png_get_uint_32)(png_const_bytep buf)
{
   png_uint_32 uval =
       ((png_uint_32)(*(buf )) << 24) +
       ((png_uint_32)(*(buf + 1)) << 16) +
       ((png_uint_32)(*(buf + 2)) << 8) +
       ((png_uint_32)(*(buf + 3)) ) ;
   return uval;
}
png_int_32 (
png_get_int_32)(png_const_bytep buf)
{
   png_uint_32 uval = (((png_uint_32)(*(buf)) << 24) + ((png_uint_32)(*((buf) + 1)) << 16) + ((png_uint_32)(*((buf) + 2)) << 8) + ((png_uint_32)(*((buf) + 3))));
   if ((uval & 0x80000000) == 0)
      return uval;
   uval = (uval ^ 0xffffffff) + 1;
   if ((uval & 0x80000000) == 0)
       return -(png_int_32)uval;
   return 0;
}
png_uint_16 (
png_get_uint_16)(png_const_bytep buf)
{
   unsigned int val =
       ((unsigned int)(*buf) << 8) +
       ((unsigned int)(*(buf + 1)));
   return (png_uint_16)val;
}
void
png_read_sig(png_structrp png_ptr, png_inforp info_ptr)
{
   png_size_t num_checked, num_to_check;
   if (png_ptr->sig_bytes >= 8)
      return;
   num_checked = png_ptr->sig_bytes;
   num_to_check = 8 - num_checked;
   png_ptr->io_state = 0x0001 | 0x0010;
   png_read_data(png_ptr, &(info_ptr->signature[num_checked]), num_to_check);
   png_ptr->sig_bytes = 8;
   if (png_sig_cmp(info_ptr->signature, num_checked, num_to_check) != 0)
   {
      if (num_checked < 4 &&
          png_sig_cmp(info_ptr->signature, num_checked, num_to_check - 4))
         png_error(png_ptr, "Not a PNG file");
      else
         png_error(png_ptr, "PNG file corrupted by ASCII conversion");
   }
   if (num_checked < 3)
      png_ptr->mode |= 0x1000;
}
png_uint_32
png_read_chunk_header(png_structrp png_ptr)
{
   png_byte buf[8];
   png_uint_32 length;
   png_ptr->io_state = 0x0001 | 0x0020;
   png_read_data(png_ptr, buf, 8);
   length = png_get_uint_31(png_ptr, buf);
   png_ptr->chunk_name = (((png_uint_32)(0xff & (buf+4)[0]) << (24)) | ((png_uint_32)(0xff & (buf+4)[1]) << (16)) | ((png_uint_32)(0xff & (buf+4)[2]) << (8)) | ((png_uint_32)(0xff & (buf+4)[3]) << (0)));
   ((void)0);
   png_reset_crc(png_ptr);
   png_calculate_crc(png_ptr, buf + 4, 4);
   png_check_chunk_name(png_ptr, png_ptr->chunk_name);
   png_ptr->io_state = 0x0001 | 0x0040;
   return length;
}
void
png_crc_read(png_structrp png_ptr, png_bytep buf, png_uint_32 length)
{
   if (png_ptr == ((void*)0))
      return;
   png_read_data(png_ptr, buf, length);
   png_calculate_crc(png_ptr, buf, length);
}
int
png_crc_finish(png_structrp png_ptr, png_uint_32 skip)
{
   while (skip > 0)
   {
      png_uint_32 len;
      png_byte tmpbuf[1024];
      len = (sizeof tmpbuf);
      if (len > skip)
         len = skip;
      skip -= len;
      png_crc_read(png_ptr, tmpbuf, len);
   }
   if (png_crc_error(png_ptr) != 0)
   {
      if ((1 & ((png_ptr->chunk_name) >> 29)) != 0 ?
          (png_ptr->flags & 0x0200) == 0 :
          (png_ptr->flags & 0x0400) != 0)
      {
         png_chunk_warning(png_ptr, "CRC error");
      }
      else
         png_chunk_error(png_ptr, "CRC error");
      return (1);
   }
   return (0);
}
int
png_crc_error(png_structrp png_ptr)
{
   png_byte crc_bytes[4];
   png_uint_32 crc;
   int need_crc = 1;
   if ((1 & ((png_ptr->chunk_name) >> 29)) != 0)
   {
      if ((png_ptr->flags & (0x0100 | 0x0200)) ==
          (0x0100 | 0x0200))
         need_crc = 0;
   }
   else
   {
      if ((png_ptr->flags & 0x0800) != 0)
         need_crc = 0;
   }
   png_ptr->io_state = 0x0001 | 0x0080;
   png_read_data(png_ptr, crc_bytes, 4);
   if (need_crc != 0)
   {
      crc = (((png_uint_32)(*(crc_bytes)) << 24) + ((png_uint_32)(*((crc_bytes) + 1)) << 16) + ((png_uint_32)(*((crc_bytes) + 2)) << 8) + ((png_uint_32)(*((crc_bytes) + 3))));
      return ((int)(crc != png_ptr->crc));
   }
   else
      return (0);
}
static png_bytep
png_read_buffer(png_structrp png_ptr, png_alloc_size_t new_size, int warn)
{
   png_bytep buffer = png_ptr->read_buffer;
   if (buffer != ((void*)0) && new_size > png_ptr->read_buffer_size)
   {
      png_ptr->read_buffer = ((void*)0);
      png_ptr->read_buffer = ((void*)0);
      png_ptr->read_buffer_size = 0;
      png_free(png_ptr, buffer);
      buffer = ((void*)0);
   }
   if (buffer == ((void*)0))
   {
      buffer = (png_malloc_base(png_ptr, new_size));
      if (buffer != ((void*)0))
      {
         png_ptr->read_buffer = buffer;
         png_ptr->read_buffer_size = new_size;
      }
      else if (warn < 2)
      {
         if (warn != 0)
             png_chunk_warning(png_ptr, "insufficient memory to read chunk");
         else
             png_chunk_error(png_ptr, "insufficient memory to read chunk");
      }
   }
   return buffer;
}
static int
png_inflate_claim(png_structrp png_ptr, png_uint_32 owner)
{
   if (png_ptr->zowner != 0)
   {
      char msg[64];
      (void)(((char*)(msg))[0]=(char)(((png_ptr->zowner)>>24) & 0xff), ((char*)(msg))[1]=(char)(((png_ptr->zowner)>>16) & 0xff), ((char*)(msg))[2]=(char)(((png_ptr->zowner)>>8) & 0xff), ((char*)(msg))[3]=(char)((png_ptr->zowner & 0xff)));
      (void)png_safecat(msg, (sizeof msg), 4, " using zstream");
      png_chunk_warning(png_ptr, msg);
      png_ptr->zowner = 0;
   }
   {
      int ret;
      png_ptr->zstream.next_in = ((void*)0);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.next_out = ((void*)0);
      png_ptr->zstream.avail_out = 0;
      if ((png_ptr->flags & 0x0002) != 0)
      {
         ret = inflateReset(&png_ptr->zstream);
      }
      else
      {
         ret = inflateInit_((&png_ptr->zstream), "1.2.8-optipng", (int)sizeof(z_stream));
         if (ret == 0)
            png_ptr->flags |= 0x0002;
      }
      if (ret == 0)
         png_ptr->zowner = owner;
      else
         png_zstream_error(png_ptr, ret);
      return ret;
   }
}
void
png_handle_IHDR(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte buf[13];
   png_uint_32 width, height;
   int bit_depth, color_type, compression_type, filter_type;
   int interlace_type;
   ((void)0);
   if ((png_ptr->mode & 0x01) != 0)
      png_chunk_error(png_ptr, "out of place");
   if (length != 13)
      png_chunk_error(png_ptr, "invalid");
   png_ptr->mode |= 0x01;
   png_crc_read(png_ptr, buf, 13);
   png_crc_finish(png_ptr, 0);
   width = png_get_uint_31(png_ptr, buf);
   height = png_get_uint_31(png_ptr, buf + 4);
   bit_depth = buf[8];
   color_type = buf[9];
   compression_type = buf[10];
   filter_type = buf[11];
   interlace_type = buf[12];
   png_ptr->width = width;
   png_ptr->height = height;
   png_ptr->bit_depth = (png_byte)bit_depth;
   png_ptr->interlaced = (png_byte)interlace_type;
   png_ptr->color_type = (png_byte)color_type;
   png_ptr->compression_type = (png_byte)compression_type;
   switch (png_ptr->color_type)
   {
      default:
      case 0:
      case (2 | 1):
         png_ptr->channels = 1;
         break;
      case (2):
         png_ptr->channels = 3;
         break;
      case (4):
         png_ptr->channels = 2;
         break;
      case (2 | 4):
         png_ptr->channels = 4;
         break;
   }
   png_ptr->pixel_depth = (png_byte)(png_ptr->bit_depth * png_ptr->channels);
   png_ptr->rowbytes = ((png_ptr->pixel_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(png_ptr->pixel_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(png_ptr->pixel_depth))) + 7) >> 3) );
   ((void)0);
   ((void)0);
   ((void)0);
   png_set_IHDR(png_ptr, info_ptr, width, height, bit_depth,
       color_type, interlace_type, compression_type, filter_type);
}
void
png_handle_PLTE(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_color palette[256];
   int max_palette_length, num, i;
   png_colorp pal_ptr;
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0)
      png_chunk_error(png_ptr, "missing IHDR");
   else if ((png_ptr->mode & 0x02) != 0)
      png_chunk_error(png_ptr, "duplicate");
   else if ((png_ptr->mode & 0x04) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   png_ptr->mode |= 0x02;
   if ((png_ptr->color_type & 2) == 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "ignored in grayscale PNG");
      return;
   }
   if (length > 3*256 || length % 3)
   {
      png_crc_finish(png_ptr, length);
      if (png_ptr->color_type != (2 | 1))
         png_chunk_benign_error(png_ptr, "invalid");
      else
         png_chunk_error(png_ptr, "invalid");
      return;
   }
   num = (int)length / 3;
   if (png_ptr->color_type == (2 | 1))
      max_palette_length = (1 << png_ptr->bit_depth);
   else
      max_palette_length = 256;
   if (num > max_palette_length)
      num = max_palette_length;
   for (i = 0, pal_ptr = palette; i < num; i++, pal_ptr++)
   {
      png_byte buf[3];
      png_crc_read(png_ptr, buf, 3);
      pal_ptr->red = buf[0];
      pal_ptr->green = buf[1];
      pal_ptr->blue = buf[2];
   }
   {
      png_crc_finish(png_ptr, (int) length - num * 3);
   }
   png_set_PLTE(png_ptr, info_ptr, palette, num);
   if (png_ptr->num_trans > 0 ||
       (info_ptr != ((void*)0) && (info_ptr->valid & 0x0010) != 0))
   {
      png_ptr->num_trans = 0;
      if (info_ptr != ((void*)0))
         info_ptr->num_trans = 0;
      png_chunk_benign_error(png_ptr, "tRNS must be after");
   }
   if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0040) != 0)
      png_chunk_benign_error(png_ptr, "hIST must be after");
   if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0020) != 0)
      png_chunk_benign_error(png_ptr, "bKGD must be after");
}
void
png_handle_IEND(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0 ||
       (png_ptr->mode & 0x04) == 0)
      png_chunk_error(png_ptr, "out of place");
   png_ptr->mode |= (0x08 | 0x10);
   png_crc_finish(png_ptr, length);
   if (length != 0)
      png_chunk_benign_error(png_ptr, "invalid");
   (void)info_ptr;
}
void
png_handle_sBIT(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int truelen, i;
   png_byte sample_depth;
   png_byte buf[4];
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0)
      png_chunk_error(png_ptr, "missing IHDR");
   else if ((png_ptr->mode & (0x04|0x02)) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0002) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }
   if (png_ptr->color_type == (2 | 1))
   {
      truelen = 3;
      sample_depth = 8;
   }
   else
   {
      truelen = png_ptr->channels;
      sample_depth = png_ptr->bit_depth;
   }
   if (length != truelen || length > 4)
   {
      png_chunk_benign_error(png_ptr, "invalid");
      png_crc_finish(png_ptr, length);
      return;
   }
   buf[0] = buf[1] = buf[2] = buf[3] = sample_depth;
   png_crc_read(png_ptr, buf, truelen);
   if (png_crc_finish(png_ptr, 0) != 0)
      return;
   for (i=0; i<truelen; ++i)
   {
      if (buf[i] == 0 || buf[i] > sample_depth)
      {
         png_chunk_benign_error(png_ptr, "invalid");
         return;
      }
   }
   if ((png_ptr->color_type & 2) != 0)
   {
      png_ptr->sig_bit.red = buf[0];
      png_ptr->sig_bit.green = buf[1];
      png_ptr->sig_bit.blue = buf[2];
      png_ptr->sig_bit.alpha = buf[3];
   }
   else
   {
      png_ptr->sig_bit.gray = buf[0];
      png_ptr->sig_bit.red = buf[0];
      png_ptr->sig_bit.green = buf[0];
      png_ptr->sig_bit.blue = buf[0];
      png_ptr->sig_bit.alpha = buf[1];
   }
   png_set_sBIT(png_ptr, info_ptr, &(png_ptr->sig_bit));
}
void
png_handle_tRNS(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_byte readbuf[256];
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0)
      png_chunk_error(png_ptr, "missing IHDR");
   else if ((png_ptr->mode & 0x04) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   else if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0010) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }
   if (png_ptr->color_type == 0)
   {
      png_byte buf[2];
      if (length != 2)
      {
         png_crc_finish(png_ptr, length);
         png_chunk_benign_error(png_ptr, "invalid");
         return;
      }
      png_crc_read(png_ptr, buf, 2);
      png_ptr->num_trans = 1;
      png_ptr->trans_color.gray = ((png_uint_16) (((unsigned int)(*(buf)) << 8) + ((unsigned int)(*((buf) + 1)))));
   }
   else if (png_ptr->color_type == (2))
   {
      png_byte buf[6];
      if (length != 6)
      {
         png_crc_finish(png_ptr, length);
         png_chunk_benign_error(png_ptr, "invalid");
         return;
      }
      png_crc_read(png_ptr, buf, length);
      png_ptr->num_trans = 1;
      png_ptr->trans_color.red = ((png_uint_16) (((unsigned int)(*(buf)) << 8) + ((unsigned int)(*((buf) + 1)))));
      png_ptr->trans_color.green = ((png_uint_16) (((unsigned int)(*(buf + 2)) << 8) + ((unsigned int)(*((buf + 2) + 1)))));
      png_ptr->trans_color.blue = ((png_uint_16) (((unsigned int)(*(buf + 4)) << 8) + ((unsigned int)(*((buf + 4) + 1)))));
   }
   else if (png_ptr->color_type == (2 | 1))
   {
      if ((png_ptr->mode & 0x02) == 0)
      {
         png_crc_finish(png_ptr, length);
         png_chunk_benign_error(png_ptr, "out of place");
         return;
      }
      if (length > (unsigned int) png_ptr->num_palette ||
         length > (unsigned int) 256 ||
         length == 0)
      {
         png_crc_finish(png_ptr, length);
         png_chunk_benign_error(png_ptr, "invalid");
         return;
      }
      png_crc_read(png_ptr, readbuf, length);
      png_ptr->num_trans = (png_uint_16)length;
   }
   else
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid with alpha channel");
      return;
   }
   if (png_crc_finish(png_ptr, 0) != 0)
   {
      png_ptr->num_trans = 0;
      return;
   }
   png_set_tRNS(png_ptr, info_ptr, readbuf, png_ptr->num_trans,
       &(png_ptr->trans_color));
}
void
png_handle_bKGD(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int truelen;
   png_byte buf[6];
   png_color_16 background;
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0)
      png_chunk_error(png_ptr, "missing IHDR");
   else if ((png_ptr->mode & 0x04) != 0 ||
       (png_ptr->color_type == (2 | 1) &&
       (png_ptr->mode & 0x02) == 0))
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   else if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0020) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }
   if (png_ptr->color_type == (2 | 1))
      truelen = 1;
   else if ((png_ptr->color_type & 2) != 0)
      truelen = 6;
   else
      truelen = 2;
   if (length != truelen)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }
   png_crc_read(png_ptr, buf, truelen);
   if (png_crc_finish(png_ptr, 0) != 0)
      return;
   if (png_ptr->color_type == (2 | 1))
   {
      background.index = buf[0];
      if (info_ptr != ((void*)0) && info_ptr->num_palette != 0)
      {
         if (buf[0] >= info_ptr->num_palette)
         {
            png_chunk_benign_error(png_ptr, "invalid index");
            return;
         }
         background.red = (png_uint_16)png_ptr->palette[buf[0]].red;
         background.green = (png_uint_16)png_ptr->palette[buf[0]].green;
         background.blue = (png_uint_16)png_ptr->palette[buf[0]].blue;
      }
      else
         background.red = background.green = background.blue = 0;
      background.gray = 0;
   }
   else if ((png_ptr->color_type & 2) == 0)
   {
      background.index = 0;
      background.red =
      background.green =
      background.blue =
      background.gray = ((png_uint_16) (((unsigned int)(*(buf)) << 8) + ((unsigned int)(*((buf) + 1)))));
   }
   else
   {
      background.index = 0;
      background.red = ((png_uint_16) (((unsigned int)(*(buf)) << 8) + ((unsigned int)(*((buf) + 1)))));
      background.green = ((png_uint_16) (((unsigned int)(*(buf + 2)) << 8) + ((unsigned int)(*((buf + 2) + 1)))));
      background.blue = ((png_uint_16) (((unsigned int)(*(buf + 4)) << 8) + ((unsigned int)(*((buf + 4) + 1)))));
      background.gray = 0;
   }
   png_set_bKGD(png_ptr, info_ptr, &background);
}
void
png_handle_hIST(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int num, i;
   png_uint_16 readbuf[256];
   ((void)0);
   if ((png_ptr->mode & 0x01) == 0)
      png_chunk_error(png_ptr, "missing IHDR");
   else if ((png_ptr->mode & 0x04) != 0 ||
       (png_ptr->mode & 0x02) == 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of place");
      return;
   }
   else if (info_ptr != ((void*)0) && (info_ptr->valid & 0x0040) != 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "duplicate");
      return;
   }
   num = length / 2 ;
   if (num != (unsigned int) png_ptr->num_palette ||
       num > (unsigned int) 256)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "invalid");
      return;
   }
   for (i = 0; i < num; i++)
   {
      png_byte buf[2];
      png_crc_read(png_ptr, buf, 2);
      readbuf[i] = ((png_uint_16) (((unsigned int)(*(buf)) << 8) + ((unsigned int)(*((buf) + 1)))));
   }
   if (png_crc_finish(png_ptr, 0) != 0)
      return;
   png_set_hIST(png_ptr, info_ptr, readbuf);
}
static int
png_cache_unknown_chunk(png_structrp png_ptr, png_uint_32 length)
{
   png_alloc_size_t limit = ((png_size_t)(-1));
   if (png_ptr->unknown_chunk.data != ((void*)0))
   {
      png_free(png_ptr, png_ptr->unknown_chunk.data);
      png_ptr->unknown_chunk.data = ((void*)0);
   }
   if (png_ptr->user_chunk_malloc_max > 0 &&
       png_ptr->user_chunk_malloc_max < limit)
      limit = png_ptr->user_chunk_malloc_max;
   if (length <= limit)
   {
      (void)((void)(((char*)(png_ptr->unknown_chunk.name))[0]=(char)(((png_ptr->chunk_name)>>24) & 0xff), ((char*)(png_ptr->unknown_chunk.name))[1]=(char)(((png_ptr->chunk_name)>>16) & 0xff), ((char*)(png_ptr->unknown_chunk.name))[2]=(char)(((png_ptr->chunk_name)>>8) & 0xff), ((char*)(png_ptr->unknown_chunk.name))[3]=(char)((png_ptr->chunk_name & 0xff))), ((char*)(png_ptr->unknown_chunk.name))[4] = 0);
      png_ptr->unknown_chunk.size = (png_size_t)length ;
      png_ptr->unknown_chunk.location = (png_byte)png_ptr->mode ;
      if (length == 0)
         png_ptr->unknown_chunk.data = ((void*)0);
      else
      {
         png_ptr->unknown_chunk.data = (png_malloc_warn(png_ptr, length));
      }
   }
   if (png_ptr->unknown_chunk.data == ((void*)0) && length > 0)
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "unknown chunk exceeds memory limits");
      return 0;
   }
   else
   {
      if (length > 0)
         png_crc_read(png_ptr, png_ptr->unknown_chunk.data, length);
      png_crc_finish(png_ptr, 0);
      return 1;
   }
}
void
png_handle_unknown(png_structrp png_ptr, png_inforp info_ptr,
   png_uint_32 length, int keep)
{
   int handled = 0;
   ((void)0);
   {
      if (keep == 0)
         keep = png_ptr->unknown_default;
      if (keep == 3 ||
         (keep == 2 &&
          (1 & ((png_ptr->chunk_name) >> 29))))
      {
         if (png_cache_unknown_chunk(png_ptr, length) == 0)
            keep = 1;
      }
      else
         png_crc_finish(png_ptr, length);
   }
   if (keep == 3 ||
      (keep == 2 &&
       (1 & ((png_ptr->chunk_name) >> 29))))
   {
      switch (png_ptr->user_chunk_cache_max)
      {
         case 2:
            png_ptr->user_chunk_cache_max = 1;
            png_chunk_benign_error(png_ptr, "no space in chunk cache");
         case 1:
            break;
         default:
            --(png_ptr->user_chunk_cache_max);
         case 0:
            png_set_unknown_chunks(png_ptr, info_ptr,
               &png_ptr->unknown_chunk, 1);
            handled = 1;
            break;
      }
   }
   if (png_ptr->unknown_chunk.data != ((void*)0))
      png_free(png_ptr, png_ptr->unknown_chunk.data);
   png_ptr->unknown_chunk.data = ((void*)0);
   if (handled == 0 && (!(1 & ((png_ptr->chunk_name) >> 29))))
      png_chunk_error(png_ptr, "unhandled critical chunk");
}
void
png_check_chunk_name(png_structrp png_ptr, png_uint_32 chunk_name)
{
   int i;
   ((void)0);
   for (i=1; i<=4; ++i)
   {
      int c = chunk_name & 0xff;
      if (c < 65 || c > 122 || (c > 90 && c < 97))
         png_chunk_error(png_ptr, "invalid chunk type");
      chunk_name >>= 8;
   }
}
void
png_combine_row(png_const_structrp png_ptr, png_bytep dp, int display)
{
   unsigned int pixel_depth = png_ptr->transformed_pixel_depth;
   png_const_bytep sp = png_ptr->row_buf + 1;
   png_alloc_size_t row_width = png_ptr->width;
   unsigned int pass = png_ptr->pass;
   png_bytep end_ptr = 0;
   png_byte end_byte = 0;
   unsigned int end_mask;
   ((void)0);
   if (pixel_depth == 0)
      png_error(png_ptr, "internal row logic error");
   if (png_ptr->info_rowbytes != 0 && png_ptr->info_rowbytes !=
          ((pixel_depth) >= 8 ? ((png_size_t)(row_width) * (((png_size_t)(pixel_depth)) >> 3)) : (( ((png_size_t)(row_width) * ((png_size_t)(pixel_depth))) + 7) >> 3) ))
      png_error(png_ptr, "internal row size calculation error");
   if (row_width == 0)
      png_error(png_ptr, "internal row width error");
   end_mask = (pixel_depth * row_width) & 7;
   if (end_mask != 0)
   {
      end_ptr = dp + ((pixel_depth) >= 8 ? ((png_size_t)(row_width) * (((png_size_t)(pixel_depth)) >> 3)) : (( ((png_size_t)(row_width) * ((png_size_t)(pixel_depth))) + 7) >> 3) ) - 1;
      end_byte = *end_ptr;
      end_mask = 0xff >> end_mask;
   }
   if (png_ptr->interlaced != 0 &&
       (png_ptr->transformations & 0x0002) != 0 &&
       pass < 6 && (display == 0 ||
       (display == 1 && (pass & 1) != 0)))
   {
      if (row_width <= (((1& (pass))<<(3-(((pass)+1)>>1)))&7))
         return;
      if (pixel_depth < 8)
      {
         static const png_uint_32 row_mask[2 ][3 ][6] =
         {
            { { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))) }, { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))) }, { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))) } },
            { { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))) }, { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))) }, { ((((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((0)<4 ? ((0x80088822)>>(((3-(0))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(0))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0x80088822)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((2)<4 ? ((0x80088822)>>(((3-(2))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(2))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0x80088822)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((4)<4 ? ((0x80088822)>>(((3-(4))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(4))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0x80088822)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xaa55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))) } }
         };
         static const png_uint_32 display_mask[2][3][3] =
         {
            { { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((0)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((0)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))) }, { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((0)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((0)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))) }, { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((0)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((0)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))) } },
            { { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((0)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((1)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((2)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((3)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((4)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((5)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((6)*(1))^((1)?8-(1):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((1)) & 0x1f)))-1))<<(((((7)*(1))^((1)?8-(1):0))) & 0x1f))):0))*((1)==1?0x01010101:((1)==2?0x00010001:1))) }, { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((0)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((1)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((2)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((3)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((4)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((5)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((6)*(2))^((1)?8-(2):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((2)) & 0x1f)))-1))<<(((((7)*(2))^((1)?8-(2):0))) & 0x1f))):0))*((2)==1?0x01010101:((2)==2?0x00010001:1))) }, { ((((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((1)<4 ? ((0xff0fff33)>>(((3-(1))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(1))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((3)<4 ? ((0xff0fff33)>>(((3-(3))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(3))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))), ((((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(0))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(0))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((0)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(1))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(1))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((1)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(2))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(2))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((2)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(3))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(3))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((3)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(4))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(4))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((4)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(5))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(5))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((5)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(6))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(6))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((6)*(4))^((1)?8-(4):0))) & 0x1f))):0) + ((((5)<4 ? ((0xff0fff33)>>(((3-(5))*8+(7-(7))) & 0x1f)) : ((0xff55ff00)>>(((7-(5))*8+(7-(7))) & 0x1f))) & 1)?(((((((1U)<<(((4)) & 0x1f)))-1))<<(((((7)*(4))^((1)?8-(4):0))) & 0x1f))):0))*((4)==1?0x01010101:((4)==2?0x00010001:1))) } }
         };
         png_uint_32 pixels_per_byte = 8 / pixel_depth;
         png_uint_32 mask;
         mask = ((display)?display_mask[1][((pixel_depth)==1?0:((pixel_depth)==2?1:2))][pass>>1]: row_mask[1][((pixel_depth)==1?0:((pixel_depth)==2?1:2))][pass]);
         for (;;)
         {
            png_uint_32 m;
            m = mask;
            mask = (m >> 8) | (m << 24);
            m &= 0xff;
            if (m != 0)
            {
               if (m != 0xff)
                  *dp = (png_byte)((*dp & ~m) | (*sp & m));
               else
                  *dp = *sp;
            }
            if (row_width <= pixels_per_byte)
               break;
            row_width -= pixels_per_byte;
            ++dp;
            ++sp;
         }
      }
      else
      {
         unsigned int bytes_to_copy, bytes_to_jump;
         if (pixel_depth & 7)
            png_error(png_ptr, "invalid user transform pixel depth");
         pixel_depth >>= 3;
         row_width *= pixel_depth;
         {
            unsigned int offset = (((1& (pass))<<(3-(((pass)+1)>>1)))&7) * pixel_depth;
            row_width -= offset;
            dp += offset;
            sp += offset;
         }
         if (display != 0)
         {
            bytes_to_copy = (1<<((6-pass)>>1)) * pixel_depth;
            if (bytes_to_copy > row_width)
               bytes_to_copy = (unsigned int) row_width;
         }
         else
            bytes_to_copy = pixel_depth;
         bytes_to_jump = (1<<((7-(pass))>>1)) * pixel_depth;
         switch (bytes_to_copy)
         {
            case 1:
               for (;;)
               {
                  *dp = *sp;
                  if (row_width <= bytes_to_jump)
                     return;
                  dp += bytes_to_jump;
                  sp += bytes_to_jump;
                  row_width -= bytes_to_jump;
               }
            case 2:
               do
               {
                  dp[0] = sp[0], dp[1] = sp[1];
                  if (row_width <= bytes_to_jump)
                     return;
                  sp += bytes_to_jump;
                  dp += bytes_to_jump;
                  row_width -= bytes_to_jump;
               }
               while (row_width > 1);
               *dp = *sp;
               return;
            case 3:
               for (;;)
               {
                  dp[0] = sp[0], dp[1] = sp[1], dp[2] = sp[2];
                  if (row_width <= bytes_to_jump)
                     return;
                  sp += bytes_to_jump;
                  dp += bytes_to_jump;
                  row_width -= bytes_to_jump;
               }
            default:
               if (bytes_to_copy < 16 &&
                   ((((const char*)dp-(const char*)0) & ((sizeof (png_uint_16))-1)) == 0) &&
                   ((((const char*)sp-(const char*)0) & ((sizeof (png_uint_16))-1)) == 0) &&
                   bytes_to_copy % (sizeof (png_uint_16)) == 0 &&
                   bytes_to_jump % (sizeof (png_uint_16)) == 0)
               {
                  if (((((const char*)dp-(const char*)0) & ((sizeof (png_uint_32))-1)) == 0) != 0 &&
                      ((((const char*)sp-(const char*)0) & ((sizeof (png_uint_32))-1)) == 0) != 0 &&
                      bytes_to_copy % (sizeof (png_uint_32)) == 0 &&
                      bytes_to_jump % (sizeof (png_uint_32)) == 0)
                  {
                     png_uint_32p dp32 = ((void*)(dp));
                     png_const_uint_32p sp32 = ((const void*)(sp));
                     size_t skip = (bytes_to_jump-bytes_to_copy) /
                         (sizeof (png_uint_32));
                     do
                     {
                        size_t c = bytes_to_copy;
                        do
                        {
                           *dp32++ = *sp32++;
                           c -= (sizeof (png_uint_32));
                        }
                        while (c > 0);
                        if (row_width <= bytes_to_jump)
                           return;
                        dp32 += skip;
                        sp32 += skip;
                        row_width -= bytes_to_jump;
                     }
                     while (bytes_to_copy <= row_width);
                     dp = (png_bytep)dp32;
                     sp = (png_const_bytep)sp32;
                     do
                        *dp++ = *sp++;
                     while (--row_width > 0);
                     return;
                  }
                  else
                  {
                     png_uint_16p dp16 = ((void*)(dp));
                     png_const_uint_16p sp16 = ((const void*)(sp));
                     size_t skip = (bytes_to_jump-bytes_to_copy) /
                        (sizeof (png_uint_16));
                     do
                     {
                        size_t c = bytes_to_copy;
                        do
                        {
                           *dp16++ = *sp16++;
                           c -= (sizeof (png_uint_16));
                        }
                        while (c > 0);
                        if (row_width <= bytes_to_jump)
                           return;
                        dp16 += skip;
                        sp16 += skip;
                        row_width -= bytes_to_jump;
                     }
                     while (bytes_to_copy <= row_width);
                     dp = (png_bytep)dp16;
                     sp = (png_const_bytep)sp16;
                     do
                        *dp++ = *sp++;
                     while (--row_width > 0);
                     return;
                  }
               }
               for (;;)
               {
                  memcpy(dp, sp, bytes_to_copy);
                  if (row_width <= bytes_to_jump)
                     return;
                  sp += bytes_to_jump;
                  dp += bytes_to_jump;
                  row_width -= bytes_to_jump;
                  if (bytes_to_copy > row_width)
                     bytes_to_copy = (unsigned int) row_width;
               }
         }
      }
   }
   else
   memcpy(dp, sp, ((pixel_depth) >= 8 ? ((png_size_t)(row_width) * (((png_size_t)(pixel_depth)) >> 3)) : (( ((png_size_t)(row_width) * ((png_size_t)(pixel_depth))) + 7) >> 3) ));
   if (end_ptr != ((void*)0))
      *end_ptr = (png_byte)((end_byte & end_mask) | (*end_ptr & ~end_mask));
}
void
png_do_read_interlace(png_row_infop row_info, png_bytep row, int pass,
   png_uint_32 transformations )
{
   static const int png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};
   ((void)0);
   if (row != ((void*)0) && row_info != ((void*)0))
   {
      png_uint_32 final_width;
      final_width = row_info->width * png_pass_inc[pass];
      switch (row_info->pixel_depth)
      {
         case 1:
         {
            png_bytep sp = row + (png_size_t)((row_info->width - 1) >> 3);
            png_bytep dp = row + (png_size_t)((final_width - 1) >> 3);
            int sshift, dshift;
            int s_start, s_end, s_inc;
            int jstop = png_pass_inc[pass];
            png_byte v;
            png_uint_32 i;
            int j;
            {
                sshift = 7 - (int)((row_info->width + 7) & 0x07);
                dshift = 7 - (int)((final_width + 7) & 0x07);
                s_start = 0;
                s_end = 7;
                s_inc = 1;
            }
            for (i = 0; i < row_info->width; i++)
            {
               v = (png_byte)((*sp >> sshift) & 0x01);
               for (j = 0; j < jstop; j++)
               {
                  unsigned int tmp = *dp & (0x7f7f >> (7 - dshift));
                  tmp |= v << dshift;
                  *dp = (png_byte)(tmp & 0xff);
                  if (dshift == s_end)
                  {
                     dshift = s_start;
                     dp--;
                  }
                  else
                     dshift += s_inc;
               }
               if (sshift == s_end)
               {
                  sshift = s_start;
                  sp--;
               }
               else
                  sshift += s_inc;
            }
            break;
         }
         case 2:
         {
            png_bytep sp = row + (png_uint_32)((row_info->width - 1) >> 2);
            png_bytep dp = row + (png_uint_32)((final_width - 1) >> 2);
            int sshift, dshift;
            int s_start, s_end, s_inc;
            int jstop = png_pass_inc[pass];
            png_uint_32 i;
            {
               sshift = (int)((3 - ((row_info->width + 3) & 0x03)) << 1);
               dshift = (int)((3 - ((final_width + 3) & 0x03)) << 1);
               s_start = 0;
               s_end = 6;
               s_inc = 2;
            }
            for (i = 0; i < row_info->width; i++)
            {
               png_byte v;
               int j;
               v = (png_byte)((*sp >> sshift) & 0x03);
               for (j = 0; j < jstop; j++)
               {
                  unsigned int tmp = *dp & (0x3f3f >> (6 - dshift));
                  tmp |= v << dshift;
                  *dp = (png_byte)(tmp & 0xff);
                  if (dshift == s_end)
                  {
                     dshift = s_start;
                     dp--;
                  }
                  else
                     dshift += s_inc;
               }
               if (sshift == s_end)
               {
                  sshift = s_start;
                  sp--;
               }
               else
                  sshift += s_inc;
            }
            break;
         }
         case 4:
         {
            png_bytep sp = row + (png_size_t)((row_info->width - 1) >> 1);
            png_bytep dp = row + (png_size_t)((final_width - 1) >> 1);
            int sshift, dshift;
            int s_start, s_end, s_inc;
            png_uint_32 i;
            int jstop = png_pass_inc[pass];
            {
               sshift = (int)((1 - ((row_info->width + 1) & 0x01)) << 2);
               dshift = (int)((1 - ((final_width + 1) & 0x01)) << 2);
               s_start = 0;
               s_end = 4;
               s_inc = 4;
            }
            for (i = 0; i < row_info->width; i++)
            {
               png_byte v = (png_byte)((*sp >> sshift) & 0x0f);
               int j;
               for (j = 0; j < jstop; j++)
               {
                  unsigned int tmp = *dp & (0xf0f >> (4 - dshift));
                  tmp |= v << dshift;
                  *dp = (png_byte)(tmp & 0xff);
                  if (dshift == s_end)
                  {
                     dshift = s_start;
                     dp--;
                  }
                  else
                     dshift += s_inc;
               }
               if (sshift == s_end)
               {
                  sshift = s_start;
                  sp--;
               }
               else
                  sshift += s_inc;
            }
            break;
         }
         default:
         {
            png_size_t pixel_bytes = (row_info->pixel_depth >> 3);
            png_bytep sp = row + (png_size_t)(row_info->width - 1)
                * pixel_bytes;
            png_bytep dp = row + (png_size_t)(final_width - 1) * pixel_bytes;
            int jstop = png_pass_inc[pass];
            png_uint_32 i;
            for (i = 0; i < row_info->width; i++)
            {
               png_byte v[8];
               int j;
               memcpy(v, sp, pixel_bytes);
               for (j = 0; j < jstop; j++)
               {
                  memcpy(dp, v, pixel_bytes);
                  dp -= pixel_bytes;
               }
               sp -= pixel_bytes;
            }
            break;
         }
      }
      row_info->width = final_width;
      row_info->rowbytes = ((row_info->pixel_depth) >= 8 ? ((png_size_t)(final_width) * (((png_size_t)(row_info->pixel_depth)) >> 3)) : (( ((png_size_t)(final_width) * ((png_size_t)(row_info->pixel_depth))) + 7) >> 3) );
   }
   (void)transformations;
}
static void
png_read_filter_row_sub(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_size_t i;
   png_size_t istop = row_info->rowbytes;
   unsigned int bpp = (row_info->pixel_depth + 7) >> 3;
   png_bytep rp = row + bpp;
   (void)prev_row;
   for (i = bpp; i < istop; i++)
   {
      *rp = (png_byte)(((int)(*rp) + (int)(*(rp-bpp))) & 0xff);
      rp++;
   }
}
static void
png_read_filter_row_up(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_size_t i;
   png_size_t istop = row_info->rowbytes;
   png_bytep rp = row;
   png_const_bytep pp = prev_row;
   for (i = 0; i < istop; i++)
   {
      *rp = (png_byte)(((int)(*rp) + (int)(*pp++)) & 0xff);
      rp++;
   }
}
static void
png_read_filter_row_avg(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_size_t i;
   png_bytep rp = row;
   png_const_bytep pp = prev_row;
   unsigned int bpp = (row_info->pixel_depth + 7) >> 3;
   png_size_t istop = row_info->rowbytes - bpp;
   for (i = 0; i < bpp; i++)
   {
      *rp = (png_byte)(((int)(*rp) +
         ((int)(*pp++) / 2 )) & 0xff);
      rp++;
   }
   for (i = 0; i < istop; i++)
   {
      *rp = (png_byte)(((int)(*rp) +
         (int)(*pp++ + *(rp-bpp)) / 2 ) & 0xff);
      rp++;
   }
}
static void
png_read_filter_row_paeth_1byte_pixel(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   png_bytep rp_end = row + row_info->rowbytes;
   int a, c;
   c = *prev_row++;
   a = *row + c;
   *row++ = (png_byte)a;
   while (row < rp_end)
   {
      int b, pa, pb, pc, p;
      a &= 0xff;
      b = *prev_row++;
      p = b - c;
      pc = a - c;
      pa = p < 0 ? -p : p;
      pb = pc < 0 ? -pc : pc;
      pc = (p + pc) < 0 ? -(p + pc) : p + pc;
      if (pb < pa) pa = pb, a = b;
      if (pc < pa) a = c;
      c = b;
      a += *row;
      *row++ = (png_byte)a;
   }
}
static void
png_read_filter_row_paeth_multibyte_pixel(png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row)
{
   int bpp = (row_info->pixel_depth + 7) >> 3;
   png_bytep rp_end = row + bpp;
   while (row < rp_end)
   {
      int a = *row + *prev_row++;
      *row++ = (png_byte)a;
   }
   rp_end += row_info->rowbytes - bpp;
   while (row < rp_end)
   {
      int a, b, c, pa, pb, pc, p;
      c = *(prev_row - bpp);
      a = *(row - bpp);
      b = *prev_row++;
      p = b - c;
      pc = a - c;
      pa = p < 0 ? -p : p;
      pb = pc < 0 ? -pc : pc;
      pc = (p + pc) < 0 ? -(p + pc) : p + pc;
      if (pb < pa) pa = pb, a = b;
      if (pc < pa) a = c;
      a += *row;
      *row++ = (png_byte)a;
   }
}
static void
png_init_filter_functions(png_structrp pp)
{
   unsigned int bpp = (pp->pixel_depth + 7) >> 3;
   pp->read_filter[1 -1] = png_read_filter_row_sub;
   pp->read_filter[2 -1] = png_read_filter_row_up;
   pp->read_filter[3 -1] = png_read_filter_row_avg;
   if (bpp == 1)
      pp->read_filter[4 -1] =
         png_read_filter_row_paeth_1byte_pixel;
   else
      pp->read_filter[4 -1] =
         png_read_filter_row_paeth_multibyte_pixel;
}
void
png_read_filter_row(png_structrp pp, png_row_infop row_info, png_bytep row,
   png_const_bytep prev_row, int filter)
{
   if (filter > 0 && filter < 5)
   {
      if (pp->read_filter[0] == ((void*)0))
         png_init_filter_functions(pp);
      pp->read_filter[filter-1](row_info, row, prev_row);
   }
}
void
png_read_IDAT_data(png_structrp png_ptr, png_bytep output,
   png_alloc_size_t avail_out)
{
   png_ptr->zstream.next_out = output;
   png_ptr->zstream.avail_out = 0;
   if (output == ((void*)0))
      avail_out = 0;
   do
   {
      int ret;
      png_byte tmpbuf[1024];
      if (png_ptr->zstream.avail_in == 0)
      {
         uInt avail_in;
         png_bytep buffer;
         while (png_ptr->idat_size == 0)
         {
            png_crc_finish(png_ptr, 0);
            png_ptr->idat_size = png_read_chunk_header(png_ptr);
            if (png_ptr->chunk_name != (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
               png_error(png_ptr, "Not enough image data");
         }
         avail_in = png_ptr->IDAT_read_size;
         if (avail_in > png_ptr->idat_size)
            avail_in = (uInt)png_ptr->idat_size;
         buffer = png_read_buffer(png_ptr, avail_in, 0 );
         png_crc_read(png_ptr, buffer, avail_in);
         png_ptr->idat_size -= avail_in;
         png_ptr->zstream.next_in = buffer;
         png_ptr->zstream.avail_in = avail_in;
      }
      if (output != ((void*)0))
      {
         uInt out = ((uInt)-1);
         if (out > avail_out)
            out = (uInt)avail_out;
         avail_out -= out;
         png_ptr->zstream.avail_out = out;
      }
      else
      {
         png_ptr->zstream.next_out = tmpbuf;
         png_ptr->zstream.avail_out = (sizeof tmpbuf);
      }
      ret = inflate(&(png_ptr)->zstream, 0);
      if (output != ((void*)0))
         avail_out += png_ptr->zstream.avail_out;
      else
         avail_out += (sizeof tmpbuf) - png_ptr->zstream.avail_out;
      png_ptr->zstream.avail_out = 0;
      if (ret == 1)
      {
         png_ptr->zstream.next_out = ((void*)0);
         png_ptr->mode |= 0x08;
         png_ptr->flags |= 0x0008;
         if (png_ptr->zstream.avail_in > 0 || png_ptr->idat_size > 0)
            png_chunk_benign_error(png_ptr, "Extra compressed data");
         break;
      }
      if (ret != 0)
      {
         png_zstream_error(png_ptr, ret);
         if (output != ((void*)0))
            png_chunk_error(png_ptr, png_ptr->zstream.msg);
         else
         {
            png_chunk_benign_error(png_ptr, png_ptr->zstream.msg);
            return;
         }
      }
   } while (avail_out > 0);
   if (avail_out > 0)
   {
      if (output != ((void*)0))
         png_error(png_ptr, "Not enough image data");
      else
         png_chunk_benign_error(png_ptr, "Too much image data");
   }
}
void
png_read_finish_IDAT(png_structrp png_ptr)
{
   if ((png_ptr->flags & 0x0008) == 0)
   {
      png_read_IDAT_data(png_ptr, ((void*)0), 0);
      png_ptr->zstream.next_out = ((void*)0);
      if ((png_ptr->flags & 0x0008) == 0)
      {
         png_ptr->mode |= 0x08;
         png_ptr->flags |= 0x0008;
      }
   }
   if (png_ptr->zowner == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
   {
      png_ptr->zstream.next_in = ((void*)0);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zowner = 0;
      (void)png_crc_finish(png_ptr, png_ptr->idat_size);
   }
}
void
png_read_finish_row(png_structrp png_ptr)
{
   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};
   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};
   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};
   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};
   ((void)0);
   png_ptr->row_number++;
   if (png_ptr->row_number < png_ptr->num_rows)
      return;
   if (png_ptr->interlaced != 0)
   {
      png_ptr->row_number = 0;
      memset(png_ptr->prev_row, 0, png_ptr->rowbytes + 1);
      do
      {
         png_ptr->pass++;
         if (png_ptr->pass >= 7)
            break;
         png_ptr->iwidth = (png_ptr->width +
            png_pass_inc[png_ptr->pass] - 1 -
            png_pass_start[png_ptr->pass]) /
            png_pass_inc[png_ptr->pass];
         if ((png_ptr->transformations & 0x0002) == 0)
         {
            png_ptr->num_rows = (png_ptr->height +
                png_pass_yinc[png_ptr->pass] - 1 -
                png_pass_ystart[png_ptr->pass]) /
                png_pass_yinc[png_ptr->pass];
         }
         else
            break;
      } while (png_ptr->num_rows == 0 || png_ptr->iwidth == 0);
      if (png_ptr->pass < 7)
         return;
   }
   png_read_finish_IDAT(png_ptr);
}
void
png_read_start_row(png_structrp png_ptr)
{
   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};
   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};
   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};
   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};
   int max_pixel_depth;
   png_size_t row_bytes;
   ((void)0);
   png_init_read_transformations(png_ptr);
   if (png_ptr->interlaced != 0)
   {
      if ((png_ptr->transformations & 0x0002) == 0)
         png_ptr->num_rows = (png_ptr->height + png_pass_yinc[0] - 1 -
             png_pass_ystart[0]) / png_pass_yinc[0];
      else
         png_ptr->num_rows = png_ptr->height;
      png_ptr->iwidth = (png_ptr->width +
          png_pass_inc[png_ptr->pass] - 1 -
          png_pass_start[png_ptr->pass]) /
          png_pass_inc[png_ptr->pass];
   }
   else
   {
      png_ptr->num_rows = png_ptr->height;
      png_ptr->iwidth = png_ptr->width;
   }
   max_pixel_depth = png_ptr->pixel_depth;
   png_ptr->maximum_pixel_depth = (png_byte)max_pixel_depth;
   png_ptr->transformed_pixel_depth = 0;
   row_bytes = ((png_ptr->width + 7) & ~((png_uint_32)7));
   row_bytes = ((max_pixel_depth) >= 8 ? ((png_size_t)(row_bytes) * (((png_size_t)(max_pixel_depth)) >> 3)) : (( ((png_size_t)(row_bytes) * ((png_size_t)(max_pixel_depth))) + 7) >> 3) ) +
       1 + ((max_pixel_depth + 7) >> 3);
   if (row_bytes + 48 > png_ptr->old_big_row_buf_size)
   {
     png_free(png_ptr, png_ptr->big_row_buf);
     png_free(png_ptr, png_ptr->big_prev_row);
     if (png_ptr->interlaced != 0)
        png_ptr->big_row_buf = (png_bytep)png_calloc(png_ptr,
            row_bytes + 48);
     else
        png_ptr->big_row_buf = (png_bytep)png_malloc(png_ptr, row_bytes + 48);
     png_ptr->big_prev_row = (png_bytep)png_malloc(png_ptr, row_bytes + 48);
     {
        png_bytep temp = png_ptr->big_row_buf + 32;
        int extra = (int)((temp - (png_bytep)0) & 0x0f);
        png_ptr->row_buf = temp - extra - 1 ;
        temp = png_ptr->big_prev_row + 32;
        extra = (int)((temp - (png_bytep)0) & 0x0f);
        png_ptr->prev_row = temp - extra - 1 ;
     }
     png_ptr->old_big_row_buf_size = row_bytes + 48;
   }
   if (png_ptr->rowbytes > (((png_size_t)(-1)) - 1))
      png_error(png_ptr, "Row has too many bytes to allocate in memory");
   memset(png_ptr->prev_row, 0, png_ptr->rowbytes + 1);
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   if (png_ptr->read_buffer != 0)
   {
      png_bytep buffer = png_ptr->read_buffer;
      png_ptr->read_buffer_size = 0;
      png_ptr->read_buffer = ((void*)0);
      png_free(png_ptr, buffer);
   }
   if (png_inflate_claim(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0)))) != 0)
      png_error(png_ptr, png_ptr->zstream.msg);
   png_ptr->flags |= 0x0040;
}
