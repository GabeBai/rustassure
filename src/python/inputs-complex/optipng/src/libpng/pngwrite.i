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
static void
write_unknown_chunks(png_structrp png_ptr, png_const_inforp info_ptr,
   unsigned int where)
{
   if (info_ptr->unknown_chunks_num != 0)
   {
      png_const_unknown_chunkp up;
      ((void)0);
      for (up = info_ptr->unknown_chunks;
           up < info_ptr->unknown_chunks + info_ptr->unknown_chunks_num;
           ++up)
         if ((up->location & where) != 0)
      {
         int keep = png_handle_as_unknown(png_ptr, up->name);
         if (keep != 1 &&
             ((up->name[3] & 0x20) ||
              keep == 3 ||
              (keep == 0 &&
               png_ptr->unknown_default == 3)))
         {
            if (up->size == 0)
               png_warning(png_ptr, "Writing zero-length unknown chunk");
            png_write_chunk(png_ptr, up->name, up->data, up->size);
         }
      }
   }
}
void
png_write_info_before_PLTE(png_structrp png_ptr, png_const_inforp info_ptr)
{
   ((void)0);
   if (png_ptr == ((void*)0) || info_ptr == ((void*)0))
      return;
   if ((png_ptr->mode & 0x400) == 0)
   {
      png_write_sig(png_ptr);
      png_write_IHDR(png_ptr, info_ptr->width, info_ptr->height,
          info_ptr->bit_depth, info_ptr->color_type, info_ptr->compression_type,
          info_ptr->filter_type,
          info_ptr->interlace_type
         );
         if ((info_ptr->valid & 0x0002) != 0)
            png_write_sBIT(png_ptr, &(info_ptr->sig_bit), info_ptr->color_type);
         write_unknown_chunks(png_ptr, info_ptr, 0x01);
      png_ptr->mode |= 0x400;
   }
}
void
png_write_info(png_structrp png_ptr, png_const_inforp info_ptr)
{
   ((void)0);
   if (png_ptr == ((void*)0) || info_ptr == ((void*)0))
      return;
   png_write_info_before_PLTE(png_ptr, info_ptr);
   if ((info_ptr->valid & 0x0008) != 0)
      png_write_PLTE(png_ptr, info_ptr->palette,
          (png_uint_32)info_ptr->num_palette);
   else if (info_ptr->color_type == (2 | 1))
      png_error(png_ptr, "Valid palette required for paletted images");
   if ((info_ptr->valid & 0x0010) !=0)
   {
      png_write_tRNS(png_ptr, info_ptr->trans_alpha, &(info_ptr->trans_color),
          info_ptr->num_trans, info_ptr->color_type);
   }
   if ((info_ptr->valid & 0x0020) != 0)
      png_write_bKGD(png_ptr, &(info_ptr->background), info_ptr->color_type);
   if ((info_ptr->valid & 0x0040) != 0)
      png_write_hIST(png_ptr, info_ptr->hist, info_ptr->num_palette);
   write_unknown_chunks(png_ptr, info_ptr, 0x02);
}
void
png_write_end(png_structrp png_ptr, png_inforp info_ptr)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if ((png_ptr->mode & 0x04) == 0)
      png_error(png_ptr, "No IDATs written into file");
   if (png_ptr->num_palette_max > png_ptr->num_palette)
      png_benign_error(png_ptr, "Wrote palette index exceeding num_palette");
   if (info_ptr != ((void*)0))
   {
      write_unknown_chunks(png_ptr, info_ptr, 0x08);
   }
   png_ptr->mode |= 0x08;
   png_write_IEND(png_ptr);
}
__attribute__((__malloc__)) png_structp png_create_write_struct (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn)
{
   png_structrp png_ptr = png_create_png_struct(user_png_ver, error_ptr,
       error_fn, warn_fn, ((void*)0), ((void*)0), ((void*)0));
   if (png_ptr != ((void*)0))
   {
      png_ptr->zbuffer_size = 8192;
      png_ptr->zlib_strategy = 1;
      png_ptr->zlib_level = (-1);
      png_ptr->zlib_mem_level = 8;
      png_ptr->zlib_window_bits = 15;
      png_ptr->zlib_method = 8;
      png_ptr->flags |= 0x200000;
      png_set_write_fn(png_ptr, ((void*)0), ((void*)0), ((void*)0));
   }
   return png_ptr;
}
void
png_write_rows(png_structrp png_ptr, png_bytepp row,
    png_uint_32 num_rows)
{
   png_uint_32 i;
   png_bytepp rp;
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   for (i = 0, rp = row; i < num_rows; i++, rp++)
   {
      png_write_row(png_ptr, *rp);
   }
}
void
png_write_image(png_structrp png_ptr, png_bytepp image)
{
   png_uint_32 i;
   int pass, num_pass;
   png_bytepp rp;
   if (png_ptr == ((void*)0))
      return;
   ((void)0);
   num_pass = png_set_interlace_handling(png_ptr);
   for (pass = 0; pass < num_pass; pass++)
   {
      for (i = 0, rp = image; i < png_ptr->height; i++, rp++)
      {
         png_write_row(png_ptr, *rp);
      }
   }
}
void
png_write_row(png_structrp png_ptr, png_const_bytep row)
{
   png_row_info row_info;
   if (png_ptr == ((void*)0))
      return;
   ((void)0);
   if (png_ptr->row_number == 0 && png_ptr->pass == 0)
   {
      if ((png_ptr->mode & 0x400) == 0)
         png_error(png_ptr,
             "png_write_info was never called before png_write_row");
      png_write_start_row(png_ptr);
   }
   if (png_ptr->interlaced != 0 &&
       (png_ptr->transformations & 0x0002) != 0)
   {
      switch (png_ptr->pass)
      {
         case 0:
            if ((png_ptr->row_number & 0x07) != 0)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 1:
            if ((png_ptr->row_number & 0x07) != 0 || png_ptr->width < 5)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 2:
            if ((png_ptr->row_number & 0x07) != 4)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 3:
            if ((png_ptr->row_number & 0x03) != 0 || png_ptr->width < 3)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 4:
            if ((png_ptr->row_number & 0x03) != 2)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 5:
            if ((png_ptr->row_number & 0x01) != 0 || png_ptr->width < 2)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         case 6:
            if ((png_ptr->row_number & 0x01) == 0)
            {
               png_write_finish_row(png_ptr);
               return;
            }
            break;
         default:
            break;
      }
   }
   row_info.color_type = png_ptr->color_type;
   row_info.width = png_ptr->usr_width;
   row_info.channels = png_ptr->usr_channels;
   row_info.bit_depth = png_ptr->usr_bit_depth;
   row_info.pixel_depth = (png_byte)(row_info.bit_depth * row_info.channels);
   row_info.rowbytes = ((row_info.pixel_depth) >= 8 ? ((png_size_t)(row_info.width) * (((png_size_t)(row_info.pixel_depth)) >> 3)) : (( ((png_size_t)(row_info.width) * ((png_size_t)(row_info.pixel_depth))) + 7) >> 3) );
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   ((void)0);
   memcpy(png_ptr->row_buf + 1, row, row_info.rowbytes);
   if (png_ptr->interlaced && png_ptr->pass < 6 &&
       (png_ptr->transformations & 0x0002) != 0)
   {
      png_do_write_interlace(&row_info, png_ptr->row_buf + 1, png_ptr->pass);
      if (row_info.width == 0)
      {
         png_write_finish_row(png_ptr);
         return;
      }
   }
   if (row_info.pixel_depth != png_ptr->pixel_depth ||
       row_info.pixel_depth != png_ptr->transformed_pixel_depth)
      png_error(png_ptr, "internal write transform logic error");
   if (row_info.color_type == (2 | 1) &&
       png_ptr->num_palette_max >= 0)
      png_do_check_palette_indexes(png_ptr, &row_info);
   png_write_find_filter(png_ptr, &row_info);
   if (png_ptr->write_row_fn != ((void*)0))
      (*(png_ptr->write_row_fn))(png_ptr, png_ptr->row_number, png_ptr->pass);
}
void
png_set_flush(png_structrp png_ptr, int nrows)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   png_ptr->flush_dist = (nrows < 0 ? 0 : nrows);
}
void
png_write_flush(png_structrp png_ptr)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if (png_ptr->row_number >= png_ptr->num_rows)
      return;
   png_compress_IDAT(png_ptr, ((void*)0), 0, 2);
   png_ptr->flush_rows = 0;
   png_flush(png_ptr);
}
static void
png_write_destroy(png_structrp png_ptr)
{
   ((void)0);
   if ((png_ptr->flags & 0x0002) != 0)
      deflateEnd(&png_ptr->zstream);
   png_free_buffer_list(png_ptr, &png_ptr->zbuffer_list);
   png_free(png_ptr, png_ptr->row_buf);
   png_ptr->row_buf = ((void*)0);
   png_free(png_ptr, png_ptr->prev_row);
   png_free(png_ptr, png_ptr->try_row);
   png_free(png_ptr, png_ptr->tst_row);
   png_ptr->prev_row = ((void*)0);
   png_ptr->try_row = ((void*)0);
   png_ptr->tst_row = ((void*)0);
   png_free(png_ptr, png_ptr->chunk_list);
   png_ptr->chunk_list = ((void*)0);
}
void
png_destroy_write_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr)
{
   ((void)0);
   if (png_ptr_ptr != ((void*)0))
   {
      png_structrp png_ptr = *png_ptr_ptr;
      if (png_ptr != ((void*)0))
      {
         png_destroy_info_struct(png_ptr, info_ptr_ptr);
         *png_ptr_ptr = ((void*)0);
         png_write_destroy(png_ptr);
         png_destroy_png_struct(png_ptr);
      }
   }
}
void
png_set_filter(png_structrp png_ptr, int method, int filters)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if (method == 0)
   {
      switch (filters & ((0x08 | 0x10 | 0x20 | 0x40 | 0x80) | 0x07))
      {
         case 5:
         case 6:
         case 7: png_app_error(png_ptr, "Unknown row filter for method 0");
         case 0:
            png_ptr->do_filter = 0x08; break;
         case 1:
            png_ptr->do_filter = 0x10; break;
         case 2:
            png_ptr->do_filter = 0x20; break;
         case 3:
            png_ptr->do_filter = 0x40; break;
         case 4:
            png_ptr->do_filter = 0x80; break;
         default:
            png_ptr->do_filter = (png_byte)filters; break;
      }
      if (png_ptr->row_buf != ((void*)0))
      {
         int num_filters;
         png_alloc_size_t buf_size;
         if (png_ptr->height == 1)
            filters &= ~(0x20|0x40|0x80);
         if (png_ptr->width == 1)
            filters &= ~(0x10|0x40|0x80);
         if ((filters & (0x20|0x40|0x80)) != 0
            && png_ptr->prev_row == ((void*)0))
         {
            png_app_warning(png_ptr,
               "png_set_filter: UP/AVG/PAETH cannot be added after start");
            filters &= ~(0x20|0x40|0x80);
         }
         num_filters = 0;
         if (filters & 0x10)
            num_filters++;
         if (filters & 0x20)
            num_filters++;
         if (filters & 0x40)
            num_filters++;
         if (filters & 0x80)
            num_filters++;
         buf_size = ((png_ptr->usr_channels * png_ptr->usr_bit_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(png_ptr->usr_channels * png_ptr->usr_bit_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(png_ptr->usr_channels * png_ptr->usr_bit_depth))) + 7) >> 3) ) + 1;
         if (png_ptr->try_row == ((void*)0))
            png_ptr->try_row = (png_malloc(png_ptr, buf_size));
         if (num_filters > 1)
         {
            if (png_ptr->tst_row == ((void*)0))
               png_ptr->tst_row = (png_malloc(png_ptr, buf_size));
         }
      }
      png_ptr->do_filter = (png_byte)filters;
   }
   else
      png_error(png_ptr, "Unknown custom filter method");
}
void
png_set_compression_level(png_structrp png_ptr, int level)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   png_ptr->zlib_level = level;
}
void
png_set_compression_mem_level(png_structrp png_ptr, int mem_level)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   png_ptr->zlib_mem_level = mem_level;
}
void
png_set_compression_strategy(png_structrp png_ptr, int strategy)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   png_ptr->flags |= 0x0001;
   png_ptr->zlib_strategy = strategy;
}
void
png_set_compression_window_bits(png_structrp png_ptr, int window_bits)
{
   if (png_ptr == ((void*)0))
      return;
   if (window_bits > 15)
   {
      png_warning(png_ptr, "Only compression windows <= 32k supported by PNG");
      window_bits = 15;
   }
   else if (window_bits < 8)
   {
      png_warning(png_ptr, "Only compression windows >= 256 supported by PNG");
      window_bits = 8;
   }
   png_ptr->zlib_window_bits = window_bits;
}
void
png_set_compression_method(png_structrp png_ptr, int method)
{
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if (method != 8)
      png_warning(png_ptr, "Only compression method 8 is supported by PNG");
   png_ptr->zlib_method = method;
}
void
png_set_write_status_fn(png_structrp png_ptr, png_write_status_ptr write_row_fn)
{
   if (png_ptr == ((void*)0))
      return;
   png_ptr->write_row_fn = write_row_fn;
}
void
png_write_png(png_structrp png_ptr, png_inforp info_ptr,
    int transforms, voidp params)
{
   if (png_ptr == ((void*)0) || info_ptr == ((void*)0))
      return;
   if ((info_ptr->valid & 0x8000) == 0)
   {
      png_app_error(png_ptr, "no rows for png_write_image to write");
      return;
   }
   png_write_info(png_ptr, info_ptr);
   if ((transforms & 0x0020) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_INVERT_MONO not supported");
   if ((transforms & 0x0040) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SHIFT not supported");
   if ((transforms & 0x0004) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_PACKING not supported");
   if ((transforms & 0x0100) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SWAP_ALPHA not supported");
   if ((transforms & (0x1000|
       0x0800)) != 0)
   {
      png_app_error(png_ptr, "PNG_TRANSFORM_STRIP_FILLER not supported");
   }
   if ((transforms & 0x0080) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_BGR not supported");
   if ((transforms & 0x0200) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SWAP_ENDIAN not supported");
   if ((transforms & 0x0008) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_PACKSWAP not supported");
   if ((transforms & 0x0400) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_INVERT_ALPHA not supported");
   png_write_image(png_ptr, info_ptr->row_pointers);
   png_write_end(png_ptr, info_ptr);
   (void)params;
}
