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
void
png_save_uint_32(png_bytep buf, png_uint_32 i)
{
   buf[0] = (png_byte)(i >> 24);
   buf[1] = (png_byte)(i >> 16);
   buf[2] = (png_byte)(i >> 8);
   buf[3] = (png_byte)(i );
}
void
png_save_uint_16(png_bytep buf, unsigned int i)
{
   buf[0] = (png_byte)(i >> 8);
   buf[1] = (png_byte)(i );
}
void
png_write_sig(png_structrp png_ptr)
{
   png_byte png_signature[8] = {137, 80, 78, 71, 13, 10, 26, 10};
   png_ptr->io_state = 0x0002 | 0x0010;
   png_write_data(png_ptr, &png_signature[png_ptr->sig_bytes],
      (png_size_t)(8 - png_ptr->sig_bytes));
   if (png_ptr->sig_bytes < 3)
      png_ptr->mode |= 0x1000;
}
static void
png_write_chunk_header(png_structrp png_ptr, png_uint_32 chunk_name,
    png_uint_32 length)
{
   png_byte buf[8];
   if (png_ptr == ((void*)0))
      return;
   png_ptr->io_state = 0x0002 | 0x0020;
   png_save_uint_32(buf, length);
   png_save_uint_32(buf + 4, chunk_name);
   png_write_data(png_ptr, buf, 8);
   png_ptr->chunk_name = chunk_name;
   png_reset_crc(png_ptr);
   png_calculate_crc(png_ptr, buf + 4, 4);
   png_ptr->io_state = 0x0002 | 0x0040;
}
void
png_write_chunk_start(png_structrp png_ptr, png_const_bytep chunk_string,
    png_uint_32 length)
{
   png_write_chunk_header(png_ptr, (((png_uint_32)(0xff & (chunk_string)[0]) << (24)) | ((png_uint_32)(0xff & (chunk_string)[1]) << (16)) | ((png_uint_32)(0xff & (chunk_string)[2]) << (8)) | ((png_uint_32)(0xff & (chunk_string)[3]) << (0))), length);
}
void
png_write_chunk_data(png_structrp png_ptr, png_const_bytep data,
    png_size_t length)
{
   if (png_ptr == ((void*)0))
      return;
   if (data != ((void*)0) && length > 0)
   {
      png_write_data(png_ptr, data, length);
      png_calculate_crc(png_ptr, data, length);
   }
}
void
png_write_chunk_end(png_structrp png_ptr)
{
   png_byte buf[4];
   if (png_ptr == ((void*)0)) return;
   png_ptr->io_state = 0x0002 | 0x0080;
   png_save_uint_32(buf, png_ptr->crc);
   png_write_data(png_ptr, buf, (png_size_t)4);
}
static void
png_write_complete_chunk(png_structrp png_ptr, png_uint_32 chunk_name,
   png_const_bytep data, png_size_t length)
{
   if (png_ptr == ((void*)0))
      return;
   if (length > ((png_uint_32)0x7fffffffL))
      png_error(png_ptr, "length exceeds PNG maximum");
   png_write_chunk_header(png_ptr, chunk_name, (png_uint_32)length);
   png_write_chunk_data(png_ptr, data, length);
   png_write_chunk_end(png_ptr);
}
void
png_write_chunk(png_structrp png_ptr, png_const_bytep chunk_string,
   png_const_bytep data, png_size_t length)
{
   png_write_complete_chunk(png_ptr, (((png_uint_32)(0xff & (chunk_string)[0]) << (24)) | ((png_uint_32)(0xff & (chunk_string)[1]) << (16)) | ((png_uint_32)(0xff & (chunk_string)[2]) << (8)) | ((png_uint_32)(0xff & (chunk_string)[3]) << (0))), data,
      length);
}
static png_alloc_size_t
png_image_size(png_structrp png_ptr)
{
   png_uint_32 h = png_ptr->height;
   if (png_ptr->rowbytes < 32768 && h < 32768)
   {
      if (png_ptr->interlaced != 0)
      {
         png_uint_32 w = png_ptr->width;
         unsigned int pd = png_ptr->pixel_depth;
         png_alloc_size_t cb_base;
         int pass;
         for (cb_base=0, pass=0; pass<=6; ++pass)
         {
            png_uint_32 pw = (((w)+(((1<<((pass)>1?(7-(pass))>>1:3)) -1)-(((1& (pass))<<(3-(((pass)+1)>>1)))&7)))>>((pass)>1?(7-(pass))>>1:3));
            if (pw > 0)
               cb_base += (((pd) >= 8 ? ((png_size_t)(pw) * (((png_size_t)(pd)) >> 3)) : (( ((png_size_t)(pw) * ((png_size_t)(pd))) + 7) >> 3) )+1) * (((h)+(((1<<((pass)>2?(8-(pass))>>1:3)) -1)-(((1&~(pass))<<(3-((pass)>>1)))&7)))>>((pass)>2?(8-(pass))>>1:3));
         }
         return cb_base;
      }
      else
         return (png_ptr->rowbytes+1) * h;
   }
   else
      return 0xffffffffU;
}
static void
optimize_cmf(png_bytep data, png_alloc_size_t data_size)
{
   if (data_size <= 16384)
   {
      unsigned int z_cmf = data[0];
      if ((z_cmf & 0x0f) == 8 && (z_cmf & 0xf0) <= 0x70)
      {
         unsigned int z_cinfo;
         unsigned int half_z_window_size;
         z_cinfo = z_cmf >> 4;
         half_z_window_size = 1U << (z_cinfo + 7);
         if (data_size <= half_z_window_size)
         {
            unsigned int tmp;
            do
            {
               half_z_window_size >>= 1;
               --z_cinfo;
            }
            while (z_cinfo > 0 && data_size <= half_z_window_size);
            z_cmf = (z_cmf & 0x0f) | (z_cinfo << 4);
            data[0] = (png_byte)z_cmf;
            tmp = data[1] & 0xe0;
            tmp += 0x1f - ((z_cmf << 8) + tmp) % 0x1f;
            data[1] = (png_byte)tmp;
         }
      }
   }
}
static int
png_deflate_claim(png_structrp png_ptr, png_uint_32 owner,
   png_alloc_size_t data_size)
{
   if (png_ptr->zowner != 0)
   {
      char msg[64];
      (void)(((char*)(msg))[0]=(char)(((owner)>>24) & 0xff), ((char*)(msg))[1]=(char)(((owner)>>16) & 0xff), ((char*)(msg))[2]=(char)(((owner)>>8) & 0xff), ((char*)(msg))[3]=(char)((owner & 0xff)));
      msg[4] = ':';
      msg[5] = ' ';
      (void)(((char*)(msg+6))[0]=(char)(((png_ptr->zowner)>>24) & 0xff), ((char*)(msg+6))[1]=(char)(((png_ptr->zowner)>>16) & 0xff), ((char*)(msg+6))[2]=(char)(((png_ptr->zowner)>>8) & 0xff), ((char*)(msg+6))[3]=(char)((png_ptr->zowner & 0xff)));
      (void)png_safecat(msg, (sizeof msg), 10, " using zstream");
         png_warning(png_ptr, msg);
         if (png_ptr->zowner == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
         {
            png_ptr->zstream.msg = ("in use by IDAT");
            return (-2);
         }
         png_ptr->zowner = 0;
   }
   {
      int level = png_ptr->zlib_level;
      int method = png_ptr->zlib_method;
      int windowBits = png_ptr->zlib_window_bits;
      int memLevel = png_ptr->zlib_mem_level;
      int strategy;
      int ret;
      if (owner == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
      {
         if ((png_ptr->flags & 0x0001) != 0)
            strategy = png_ptr->zlib_strategy;
         else if (png_ptr->do_filter != 0x08)
            strategy = 1;
         else
            strategy = 0;
      }
      else
      {
            strategy = 0;
      }
      if (data_size <= 16384)
      {
         unsigned int half_window_size = 1U << (windowBits-1);
         while (data_size + 262 <= half_window_size)
         {
            half_window_size >>= 1;
            --windowBits;
         }
      }
      if ((png_ptr->flags & 0x0002) != 0 &&
         (png_ptr->zlib_set_level != level ||
         png_ptr->zlib_set_method != method ||
         png_ptr->zlib_set_window_bits != windowBits ||
         png_ptr->zlib_set_mem_level != memLevel ||
         png_ptr->zlib_set_strategy != strategy))
      {
         if (deflateEnd(&png_ptr->zstream) != 0)
            png_warning(png_ptr, "deflateEnd failed (ignored)");
         png_ptr->flags &= ~0x0002;
      }
      png_ptr->zstream.next_in = ((void*)0);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.next_out = ((void*)0);
      png_ptr->zstream.avail_out = 0;
      if ((png_ptr->flags & 0x0002) != 0)
         ret = deflateReset(&png_ptr->zstream);
      else
      {
         ret = deflateInit2_((&png_ptr->zstream),(level),(method),(windowBits),(memLevel), (strategy), "1.2.8-optipng", (int)sizeof(z_stream));
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
png_free_buffer_list(png_structrp png_ptr, png_compression_bufferp *listp)
{
   png_compression_bufferp list = *listp;
   if (list != ((void*)0))
   {
      *listp = ((void*)0);
      do
      {
         png_compression_bufferp next = list->next;
         png_free(png_ptr, list);
         list = next;
      }
      while (list != ((void*)0));
   }
}
void
png_write_IHDR(png_structrp png_ptr, png_uint_32 width, png_uint_32 height,
    int bit_depth, int color_type, int compression_type, int filter_type,
    int interlace_type)
{
   png_byte buf[13];
   ((void)0);
   switch (color_type)
   {
      case 0:
         switch (bit_depth)
         {
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
               png_ptr->channels = 1; break;
            default:
               png_error(png_ptr,
                   "Invalid bit depth for grayscale image");
         }
         break;
      case (2):
         if (bit_depth != 8 && bit_depth != 16)
            png_error(png_ptr, "Invalid bit depth for RGB image");
         png_ptr->channels = 3;
         break;
      case (2 | 1):
         switch (bit_depth)
         {
            case 1:
            case 2:
            case 4:
            case 8:
               png_ptr->channels = 1;
               break;
            default:
               png_error(png_ptr, "Invalid bit depth for paletted image");
         }
         break;
      case (4):
         if (bit_depth != 8 && bit_depth != 16)
            png_error(png_ptr, "Invalid bit depth for grayscale+alpha image");
         png_ptr->channels = 2;
         break;
      case (2 | 4):
         if (bit_depth != 8 && bit_depth != 16)
            png_error(png_ptr, "Invalid bit depth for RGBA image");
         png_ptr->channels = 4;
         break;
      default:
         png_error(png_ptr, "Invalid image color type specified");
   }
   if (compression_type != 0)
   {
      png_warning(png_ptr, "Invalid compression type specified");
      compression_type = 0;
   }
   if (
       filter_type != 0)
   {
      png_warning(png_ptr, "Invalid filter type specified");
      filter_type = 0;
   }
   if (interlace_type != 0 &&
       interlace_type != 1)
   {
      png_warning(png_ptr, "Invalid interlace type specified");
      interlace_type = 1;
   }
   png_ptr->bit_depth = (png_byte)bit_depth;
   png_ptr->color_type = (png_byte)color_type;
   png_ptr->interlaced = (png_byte)interlace_type;
   png_ptr->compression_type = (png_byte)compression_type;
   png_ptr->width = width;
   png_ptr->height = height;
   png_ptr->pixel_depth = (png_byte)(bit_depth * png_ptr->channels);
   png_ptr->rowbytes = ((png_ptr->pixel_depth) >= 8 ? ((png_size_t)(width) * (((png_size_t)(png_ptr->pixel_depth)) >> 3)) : (( ((png_size_t)(width) * ((png_size_t)(png_ptr->pixel_depth))) + 7) >> 3) );
   png_ptr->usr_width = png_ptr->width;
   png_ptr->usr_bit_depth = png_ptr->bit_depth;
   png_ptr->usr_channels = png_ptr->channels;
   png_save_uint_32(buf, width);
   png_save_uint_32(buf + 4, height);
   buf[8] = (png_byte)bit_depth;
   buf[9] = (png_byte)color_type;
   buf[10] = (png_byte)compression_type;
   buf[11] = (png_byte)filter_type;
   buf[12] = (png_byte)interlace_type;
   png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(68) << (8)) | ((png_uint_32)(82) << (0))), buf, (png_size_t)13);
   if ((png_ptr->do_filter) == 0x00)
   {
      if (png_ptr->color_type == (2 | 1) ||
          png_ptr->bit_depth < 8)
         png_ptr->do_filter = 0x08;
      else
         png_ptr->do_filter = (0x08 | 0x10 | 0x20 | 0x40 | 0x80);
   }
   png_ptr->mode = 0x01;
}
void
png_write_PLTE(png_structrp png_ptr, png_const_colorp palette,
    png_uint_32 num_pal)
{
   png_uint_32 max_palette_length, i;
   png_const_colorp pal_ptr;
   png_byte buf[3];
   ((void)0);
   max_palette_length = (png_ptr->color_type == (2 | 1)) ?
      (1 << png_ptr->bit_depth) : 256;
   if ((
       num_pal == 0) || num_pal > max_palette_length)
   {
      if (png_ptr->color_type == (2 | 1))
      {
         png_error(png_ptr, "Invalid number of colors in palette");
      }
      else
      {
         png_warning(png_ptr, "Invalid number of colors in palette");
         return;
      }
   }
   if ((png_ptr->color_type & 2) == 0)
   {
      png_warning(png_ptr,
          "Ignoring request to write a PLTE chunk in grayscale PNG");
      return;
   }
   png_ptr->num_palette = (png_uint_16)num_pal;
   ((void)0);
   png_write_chunk_header(png_ptr, (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))), (png_uint_32)(num_pal * 3));
   for (i = 0, pal_ptr = palette; i < num_pal; i++, pal_ptr++)
   {
      buf[0] = pal_ptr->red;
      buf[1] = pal_ptr->green;
      buf[2] = pal_ptr->blue;
      png_write_chunk_data(png_ptr, buf, (png_size_t)3);
   }
   png_write_chunk_end(png_ptr);
   png_ptr->mode |= 0x02;
}
void
png_compress_IDAT(png_structrp png_ptr, png_const_bytep input,
   png_alloc_size_t input_len, int flush)
{
   if (png_ptr->zowner != (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
   {
      if (png_ptr->zbuffer_list == ((void*)0))
      {
         png_ptr->zbuffer_list = (png_malloc(png_ptr, (__builtin_offsetof(png_compression_buffer, output) + (png_ptr)->zbuffer_size)));
         png_ptr->zbuffer_list->next = ((void*)0);
      }
      else
         png_free_buffer_list(png_ptr, &png_ptr->zbuffer_list->next);
      if (png_deflate_claim(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), png_image_size(png_ptr)) != 0)
         png_error(png_ptr, png_ptr->zstream.msg);
      png_ptr->zstream.next_out = png_ptr->zbuffer_list->output;
      png_ptr->zstream.avail_out = png_ptr->zbuffer_size;
   }
   png_ptr->zstream.next_in = (input);
   png_ptr->zstream.avail_in = 0;
   for (;;)
   {
      int ret;
      uInt avail = ((uInt)-1);
      if (avail > input_len)
         avail = (uInt)input_len;
      png_ptr->zstream.avail_in = avail;
      input_len -= avail;
      ret = deflate(&png_ptr->zstream, input_len > 0 ? 0 : flush);
      input_len += png_ptr->zstream.avail_in;
      png_ptr->zstream.avail_in = 0;
      if (png_ptr->zstream.avail_out == 0)
      {
         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size;
            if ((png_ptr->mode & 0x04) == 0 &&
                png_ptr->compression_type == 0)
               optimize_cmf(data, png_image_size(png_ptr));
         png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), data, size);
         png_ptr->mode |= 0x04;
         png_ptr->zstream.next_out = data;
         png_ptr->zstream.avail_out = size;
         if (ret == 0 && flush != 0)
            continue;
      }
      if (ret == 0)
      {
         if (input_len == 0)
         {
            if (flush == 4)
               png_error(png_ptr, "Z_OK on Z_FINISH with output space");
            return;
         }
      }
      else if (ret == 1 && flush == 4)
      {
         png_bytep data = png_ptr->zbuffer_list->output;
         uInt size = png_ptr->zbuffer_size - png_ptr->zstream.avail_out;
         if ((png_ptr->mode & 0x04) == 0 &&
             png_ptr->compression_type == 0)
            optimize_cmf(data, png_image_size(png_ptr));
         png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))), data, size);
         png_ptr->zstream.avail_out = 0;
         png_ptr->zstream.next_out = ((void*)0);
         png_ptr->mode |= 0x04 | 0x08;
         png_ptr->zowner = 0;
         return;
      }
      else
      {
         png_zstream_error(png_ptr, ret);
         png_error(png_ptr, png_ptr->zstream.msg);
      }
   }
}
void
png_write_IEND(png_structrp png_ptr)
{
   ((void)0);
   png_write_complete_chunk(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(69) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(68) << (0))), ((void*)0), (png_size_t)0);
   png_ptr->mode |= 0x10;
}
void
png_write_sBIT(png_structrp png_ptr, png_const_color_8p sbit, int color_type)
{
   png_byte buf[4];
   png_size_t size;
   ((void)0);
   if ((color_type & 2) != 0)
   {
      png_byte maxbits;
      maxbits = (png_byte)(color_type==(2 | 1) ? 8 :
          png_ptr->usr_bit_depth);
      if (sbit->red == 0 || sbit->red > maxbits ||
          sbit->green == 0 || sbit->green > maxbits ||
          sbit->blue == 0 || sbit->blue > maxbits)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[0] = sbit->red;
      buf[1] = sbit->green;
      buf[2] = sbit->blue;
      size = 3;
   }
   else
   {
      if (sbit->gray == 0 || sbit->gray > png_ptr->usr_bit_depth)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[0] = sbit->gray;
      size = 1;
   }
   if ((color_type & 4) != 0)
   {
      if (sbit->alpha == 0 || sbit->alpha > png_ptr->usr_bit_depth)
      {
         png_warning(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[size++] = sbit->alpha;
   }
   png_write_complete_chunk(png_ptr, (((png_uint_32)(115) << (24)) | ((png_uint_32)(66) << (16)) | ((png_uint_32)(73) << (8)) | ((png_uint_32)(84) << (0))), buf, size);
}
void
png_write_tRNS(png_structrp png_ptr, png_const_bytep trans_alpha,
    png_const_color_16p tran, int num_trans, int color_type)
{
   png_byte buf[6];
   ((void)0);
   if (color_type == (2 | 1))
   {
      if (num_trans <= 0 || num_trans > (int)png_ptr->num_palette)
      {
         png_app_warning(png_ptr,
             "Invalid number of transparent colors specified");
         return;
      }
      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), trans_alpha,
         (png_size_t)num_trans);
   }
   else if (color_type == 0)
   {
      if (tran->gray >= (1 << png_ptr->bit_depth))
      {
         png_app_warning(png_ptr,
             "Ignoring attempt to write tRNS chunk out-of-range for bit_depth");
         return;
      }
      png_save_uint_16(buf, tran->gray);
      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), buf, (png_size_t)2);
   }
   else if (color_type == (2))
   {
      png_save_uint_16(buf, tran->red);
      png_save_uint_16(buf + 2, tran->green);
      png_save_uint_16(buf + 4, tran->blue);
      if (png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]) != 0)
      {
         png_app_warning(png_ptr,
           "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8");
         return;
      }
      png_write_complete_chunk(png_ptr, (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))), buf, (png_size_t)6);
   }
   else
   {
      png_app_warning(png_ptr, "Can't write tRNS with an alpha channel");
   }
}
void
png_write_bKGD(png_structrp png_ptr, png_const_color_16p back, int color_type)
{
   png_byte buf[6];
   ((void)0);
   if (color_type == (2 | 1))
   {
      if (
         back->index >= png_ptr->num_palette)
      {
         png_warning(png_ptr, "Invalid background palette index");
         return;
      }
      buf[0] = back->index;
      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)1);
   }
   else if ((color_type & 2) != 0)
   {
      png_save_uint_16(buf, back->red);
      png_save_uint_16(buf + 2, back->green);
      png_save_uint_16(buf + 4, back->blue);
      if (png_ptr->bit_depth == 8 && (buf[0] | buf[2] | buf[4]) != 0)
      {
         png_warning(png_ptr,
             "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8");
         return;
      }
      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)6);
   }
   else
   {
      if (back->gray >= (1 << png_ptr->bit_depth))
      {
         png_warning(png_ptr,
             "Ignoring attempt to write bKGD chunk out-of-range for bit_depth");
         return;
      }
      png_save_uint_16(buf, back->gray);
      png_write_complete_chunk(png_ptr, (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))), buf, (png_size_t)2);
   }
}
void
png_write_hIST(png_structrp png_ptr, png_const_uint_16p hist, int num_hist)
{
   int i;
   png_byte buf[3];
   ((void)0);
   if (num_hist > (int)png_ptr->num_palette)
   {
      ((void)0);
      png_warning(png_ptr, "Invalid number of histogram entries specified");
      return;
   }
   png_write_chunk_header(png_ptr, (((png_uint_32)(104) << (24)) | ((png_uint_32)(73) << (16)) | ((png_uint_32)(83) << (8)) | ((png_uint_32)(84) << (0))), (png_uint_32)(num_hist * 2));
   for (i = 0; i < num_hist; i++)
   {
      png_save_uint_16(buf, hist[i]);
      png_write_chunk_data(png_ptr, buf, (png_size_t)2);
   }
   png_write_chunk_end(png_ptr);
}
void
png_write_start_row(png_structrp png_ptr)
{
   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};
   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};
   static const png_byte png_pass_ystart[7] = {0, 0, 4, 0, 2, 0, 1};
   static const png_byte png_pass_yinc[7] = {8, 8, 8, 4, 4, 2, 2};
   png_alloc_size_t buf_size;
   int usr_pixel_depth;
   png_byte filters;
   ((void)0);
   usr_pixel_depth = png_ptr->usr_channels * png_ptr->usr_bit_depth;
   buf_size = ((usr_pixel_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(usr_pixel_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(usr_pixel_depth))) + 7) >> 3) ) + 1;
   png_ptr->transformed_pixel_depth = png_ptr->pixel_depth;
   png_ptr->maximum_pixel_depth = (png_byte)usr_pixel_depth;
   png_ptr->row_buf = (png_malloc(png_ptr, buf_size));
   png_ptr->row_buf[0] = 0;
   filters = png_ptr->do_filter;
   if (png_ptr->height == 1)
      filters &= 0xff & ~(0x20|0x40|0x80);
   if (png_ptr->width == 1)
      filters &= 0xff & ~(0x10|0x40|0x80);
   if (filters == 0)
      filters = 0x08;
   png_ptr->do_filter = filters;
   if (((filters & (0x10 | 0x20 | 0x40 |
       0x80)) != 0) && png_ptr->try_row == ((void*)0))
   {
      int num_filters = 0;
      png_ptr->try_row = (png_malloc(png_ptr, buf_size));
      if (filters & 0x10)
         num_filters++;
      if (filters & 0x20)
         num_filters++;
      if (filters & 0x40)
         num_filters++;
      if (filters & 0x80)
         num_filters++;
      if (num_filters > 1)
         png_ptr->tst_row = (png_malloc(png_ptr, buf_size));
   }
   if ((filters & (0x40 | 0x20 | 0x80)) != 0)
      png_ptr->prev_row = (png_calloc(png_ptr, buf_size));
   if (png_ptr->interlaced != 0)
   {
      if ((png_ptr->transformations & 0x0002) == 0)
      {
         png_ptr->num_rows = (png_ptr->height + png_pass_yinc[0] - 1 -
             png_pass_ystart[0]) / png_pass_yinc[0];
         png_ptr->usr_width = (png_ptr->width + png_pass_inc[0] - 1 -
             png_pass_start[0]) / png_pass_inc[0];
      }
      else
      {
         png_ptr->num_rows = png_ptr->height;
         png_ptr->usr_width = png_ptr->width;
      }
   }
   else
   {
      png_ptr->num_rows = png_ptr->height;
      png_ptr->usr_width = png_ptr->width;
   }
}
void
png_write_finish_row(png_structrp png_ptr)
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
      if ((png_ptr->transformations & 0x0002) != 0)
      {
         png_ptr->pass++;
      }
      else
      {
         do
         {
            png_ptr->pass++;
            if (png_ptr->pass >= 7)
               break;
            png_ptr->usr_width = (png_ptr->width +
                png_pass_inc[png_ptr->pass] - 1 -
                png_pass_start[png_ptr->pass]) /
                png_pass_inc[png_ptr->pass];
            png_ptr->num_rows = (png_ptr->height +
                png_pass_yinc[png_ptr->pass] - 1 -
                png_pass_ystart[png_ptr->pass]) /
                png_pass_yinc[png_ptr->pass];
            if ((png_ptr->transformations & 0x0002) != 0)
               break;
         } while (png_ptr->usr_width == 0 || png_ptr->num_rows == 0);
      }
      if (png_ptr->pass < 7)
      {
         if (png_ptr->prev_row != ((void*)0))
            memset(png_ptr->prev_row, 0,
                (png_size_t)(((png_ptr->usr_channels* png_ptr->usr_bit_depth) >= 8 ? ((png_size_t)(png_ptr->width) * (((png_size_t)(png_ptr->usr_channels* png_ptr->usr_bit_depth)) >> 3)) : (( ((png_size_t)(png_ptr->width) * ((png_size_t)(png_ptr->usr_channels* png_ptr->usr_bit_depth))) + 7) >> 3) )) + 1);
         return;
      }
   }
   png_compress_IDAT(png_ptr, ((void*)0), 0, 4);
}
void
png_do_write_interlace(png_row_infop row_info, png_bytep row, int pass)
{
   static const png_byte png_pass_start[7] = {0, 4, 0, 2, 0, 1, 0};
   static const png_byte png_pass_inc[7] = {8, 8, 4, 4, 2, 2, 1};
   ((void)0);
   if (pass < 6)
   {
      switch (row_info->pixel_depth)
      {
         case 1:
         {
            png_bytep sp;
            png_bytep dp;
            unsigned int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;
            dp = row;
            d = 0;
            shift = 7;
            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 3);
               value = (int)(*sp >> (7 - (int)(i & 0x07))) & 0x01;
               d |= (value << shift);
               if (shift == 0)
               {
                  shift = 7;
                  *dp++ = (png_byte)d;
                  d = 0;
               }
               else
                  shift--;
            }
            if (shift != 7)
               *dp = (png_byte)d;
            break;
         }
         case 2:
         {
            png_bytep sp;
            png_bytep dp;
            unsigned int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;
            dp = row;
            shift = 6;
            d = 0;
            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 2);
               value = (*sp >> ((3 - (int)(i & 0x03)) << 1)) & 0x03;
               d |= (value << shift);
               if (shift == 0)
               {
                  shift = 6;
                  *dp++ = (png_byte)d;
                  d = 0;
               }
               else
                  shift -= 2;
            }
            if (shift != 6)
               *dp = (png_byte)d;
            break;
         }
         case 4:
         {
            png_bytep sp;
            png_bytep dp;
            unsigned int shift;
            int d;
            int value;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;
            dp = row;
            shift = 4;
            d = 0;
            for (i = png_pass_start[pass]; i < row_width;
                i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)(i >> 1);
               value = (*sp >> ((1 - (int)(i & 0x01)) << 2)) & 0x0f;
               d |= (value << shift);
               if (shift == 0)
               {
                  shift = 4;
                  *dp++ = (png_byte)d;
                  d = 0;
               }
               else
                  shift -= 4;
            }
            if (shift != 4)
               *dp = (png_byte)d;
            break;
         }
         default:
         {
            png_bytep sp;
            png_bytep dp;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;
            png_size_t pixel_bytes;
            dp = row;
            pixel_bytes = (row_info->pixel_depth >> 3);
            for (i = png_pass_start[pass]; i < row_width;
               i += png_pass_inc[pass])
            {
               sp = row + (png_size_t)i * pixel_bytes;
               if (dp != sp)
                  memcpy(dp, sp, pixel_bytes);
               dp += pixel_bytes;
            }
            break;
         }
      }
      row_info->width = (row_info->width +
          png_pass_inc[pass] - 1 -
          png_pass_start[pass]) /
          png_pass_inc[pass];
      row_info->rowbytes = ((row_info->pixel_depth) >= 8 ? ((png_size_t)(row_info->width) * (((png_size_t)(row_info->pixel_depth)) >> 3)) : (( ((png_size_t)(row_info->width) * ((png_size_t)(row_info->pixel_depth))) + 7) >> 3) );
   }
}
static void
png_write_filtered_row(png_structrp png_ptr, png_bytep filtered_row,
   png_size_t row_bytes);
static png_size_t
png_setup_sub_row(png_structrp png_ptr, const png_uint_32 bpp,
    const png_size_t row_bytes, const png_size_t lmins)
{
   png_bytep rp, dp, lp;
   png_size_t i;
   png_size_t sum = 0;
   int v;
   png_ptr->try_row[0] = 1;
   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1; i < bpp;
        i++, rp++, dp++)
   {
      v = *dp = *rp;
      sum += (v < 128) ? v : 256 - v;
   }
   for (lp = png_ptr->row_buf + 1; i < row_bytes;
      i++, rp++, lp++, dp++)
   {
      v = *dp = (png_byte)(((int)*rp - (int)*lp) & 0xff);
      sum += (v < 128) ? v : 256 - v;
      if (sum > lmins)
        break;
   }
   return (sum);
}
static png_size_t
png_setup_up_row(png_structrp png_ptr, const png_size_t row_bytes,
    const png_size_t lmins)
{
   png_bytep rp, dp, pp;
   png_size_t i;
   png_size_t sum = 0;
   int v;
   png_ptr->try_row[0] = 2;
   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1,
       pp = png_ptr->prev_row + 1; i < row_bytes;
       i++, rp++, pp++, dp++)
   {
      v = *dp = (png_byte)(((int)*rp - (int)*pp) & 0xff);
      sum += (v < 128) ? v : 256 - v;
      if (sum > lmins)
        break;
   }
   return (sum);
}
static png_size_t
png_setup_avg_row(png_structrp png_ptr, const png_uint_32 bpp,
      const png_size_t row_bytes, const png_size_t lmins)
{
   png_bytep rp, dp, pp, lp;
   png_uint_32 i;
   png_size_t sum = 0;
   int v;
   png_ptr->try_row[0] = 3;
   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1,
        pp = png_ptr->prev_row + 1; i < bpp; i++)
   {
      v = *dp++ = (png_byte)(((int)*rp++ - ((int)*pp++ / 2)) & 0xff);
      sum += (v < 128) ? v : 256 - v;
   }
   for (lp = png_ptr->row_buf + 1; i < row_bytes; i++)
   {
      v = *dp++ = (png_byte)(((int)*rp++ - (((int)*pp++ + (int)*lp++) / 2))
          & 0xff);
      sum += (v < 128) ? v : 256 - v;
      if (sum > lmins)
        break;
   }
   return (sum);
}
static png_size_t
png_setup_paeth_row(png_structrp png_ptr, const png_uint_32 bpp,
    const png_size_t row_bytes, const png_size_t lmins)
{
   png_bytep rp, dp, pp, cp, lp;
   png_size_t i;
   png_size_t sum = 0;
   int v;
   png_ptr->try_row[0] = 4;
   for (i = 0, rp = png_ptr->row_buf + 1, dp = png_ptr->try_row + 1,
       pp = png_ptr->prev_row + 1; i < bpp; i++)
   {
      v = *dp++ = (png_byte)(((int)*rp++ - (int)*pp++) & 0xff);
      sum += (v < 128) ? v : 256 - v;
   }
   for (lp = png_ptr->row_buf + 1, cp = png_ptr->prev_row + 1; i < row_bytes;
        i++)
   {
      int a, b, c, pa, pb, pc, p;
      b = *pp++;
      c = *cp++;
      a = *lp++;
      p = b - c;
      pc = a - c;
      pa = p < 0 ? -p : p;
      pb = pc < 0 ? -pc : pc;
      pc = (p + pc) < 0 ? -(p + pc) : p + pc;
      p = (pa <= pb && pa <=pc) ? a : (pb <= pc) ? b : c;
      v = *dp++ = (png_byte)(((int)*rp++ - p) & 0xff);
      sum += (v < 128) ? v : 256 - v;
      if (sum > lmins)
        break;
   }
   return (sum);
}
void
png_write_find_filter(png_structrp png_ptr, png_row_infop row_info)
{
   png_byte filter_to_do = png_ptr->do_filter;
   png_bytep row_buf;
   png_bytep best_row;
   png_uint_32 bpp;
   png_size_t mins;
   png_size_t row_bytes = row_info->rowbytes;
   ((void)0);
   bpp = (row_info->pixel_depth + 7) >> 3;
   row_buf = png_ptr->row_buf;
   mins = ((png_size_t)(-1)) - 256 ;
   best_row = png_ptr->row_buf;
   if ((filter_to_do & 0x08) != 0 && filter_to_do != 0x08)
   {
      png_bytep rp;
      png_size_t sum = 0;
      png_size_t i;
      int v;
      if (((png_size_t)(-1))/128 <= row_bytes)
      {
         for (i = 0, rp = row_buf + 1; i < row_bytes; i++, rp++)
         {
            if (sum > ((png_size_t)(-1))/128 - 256)
               break;
            v = *rp;
            sum += (v < 128) ? v : 256 - v;
         }
      }
      else
      {
         for (i = 0, rp = row_buf + 1; i < row_bytes; i++, rp++)
         {
            v = *rp;
            sum += (v < 128) ? v : 256 - v;
         }
      }
      mins = sum;
   }
   if (filter_to_do == 0x10)
   {
      (void) png_setup_sub_row(png_ptr, bpp, row_bytes, mins);
      best_row = png_ptr->try_row;
   }
   else if ((filter_to_do & 0x10) != 0)
   {
      png_size_t sum;
      png_size_t lmins = mins;
      sum = png_setup_sub_row(png_ptr, bpp, row_bytes, lmins);
      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->try_row;
         if (png_ptr->tst_row != ((void*)0))
         {
            png_ptr->try_row = png_ptr->tst_row;
            png_ptr->tst_row = best_row;
         }
      }
   }
   if (filter_to_do == 0x20)
   {
      (void) png_setup_up_row(png_ptr, row_bytes, mins);
      best_row = png_ptr->try_row;
   }
   else if ((filter_to_do & 0x20) != 0)
   {
      png_size_t sum;
      png_size_t lmins = mins;
      sum = png_setup_up_row(png_ptr, row_bytes, lmins);
      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->try_row;
         if (png_ptr->tst_row != ((void*)0))
         {
            png_ptr->try_row = png_ptr->tst_row;
            png_ptr->tst_row = best_row;
         }
      }
   }
   if (filter_to_do == 0x40)
   {
      (void) png_setup_avg_row(png_ptr, bpp, row_bytes, mins);
      best_row = png_ptr->try_row;
   }
   else if ((filter_to_do & 0x40) != 0)
   {
      png_size_t sum;
      png_size_t lmins = mins;
      sum= png_setup_avg_row(png_ptr, bpp, row_bytes, lmins);
      if (sum < mins)
      {
         mins = sum;
         best_row = png_ptr->try_row;
         if (png_ptr->tst_row != ((void*)0))
         {
            png_ptr->try_row = png_ptr->tst_row;
            png_ptr->tst_row = best_row;
         }
      }
   }
   if ((filter_to_do == 0x80) != 0)
   {
      (void) png_setup_paeth_row(png_ptr, bpp, row_bytes, mins);
      best_row = png_ptr->try_row;
   }
   else if ((filter_to_do & 0x80) != 0)
   {
      png_size_t sum;
      png_size_t lmins = mins;
      sum = png_setup_paeth_row(png_ptr, bpp, row_bytes, lmins);
      if (sum < mins)
      {
         best_row = png_ptr->try_row;
         if (png_ptr->tst_row != ((void*)0))
         {
            png_ptr->try_row = png_ptr->tst_row;
            png_ptr->tst_row = best_row;
         }
      }
   }
   png_write_filtered_row(png_ptr, best_row, row_info->rowbytes+1);
}
static void
png_write_filtered_row(png_structrp png_ptr, png_bytep filtered_row,
   png_size_t full_row_length )
{
   ((void)0);
   ((void)0);
   png_compress_IDAT(png_ptr, filtered_row, full_row_length, 0);
   if (png_ptr->prev_row != ((void*)0))
   {
      png_bytep tptr;
      tptr = png_ptr->prev_row;
      png_ptr->prev_row = png_ptr->row_buf;
      png_ptr->row_buf = tptr;
   }
   png_write_finish_row(png_ptr);
   png_ptr->flush_rows++;
   if (png_ptr->flush_dist > 0 &&
       png_ptr->flush_rows >= png_ptr->flush_dist)
   {
      png_write_flush(png_ptr);
   }
}
