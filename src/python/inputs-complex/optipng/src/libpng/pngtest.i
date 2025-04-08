typedef long unsigned int size_t;
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
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
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
typedef int wchar_t;
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
typedef long int ptrdiff_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
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
extern __attribute__((__deprecated__)) int ( png_reset_zstream) (png_structrp png_ptr);
extern void ( png_write_sig) (png_structrp png_ptr);
extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, png_size_t length);
extern void ( png_write_chunk_start) (png_structrp png_ptr, png_const_bytep chunk_name, png_uint_32 length);
extern void ( png_write_chunk_data) (png_structrp png_ptr, png_const_bytep data, png_size_t length);
extern void ( png_write_chunk_end) (png_structrp png_ptr);
extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr);
extern __attribute__((__deprecated__)) void ( png_info_init_3) (png_infopp info_ptr, png_size_t png_info_struct_size);
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
int
main(void)
{
   fprintf(stdout,
      " test ignored because libpng was not built with read support\n");
   return 10621 < 10600 ? 0 : 77;
}
typedef png_libpng_version_1_6_21 Your_png_h_is_not_version_1_6_21;
