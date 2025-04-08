typedef long unsigned int size_t;
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
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
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
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
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
extern char *gets (char *__s) __attribute__ ((__deprecated__));
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
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
struct url_key_value;
typedef struct url_data {
  char* whole_url;
  const char* protocol;
  const char* userinfo;
  const char* host;
  const char* port;
  const char* path;
  const struct url_key_value* query;
  const char* fragment;
} url_data_t;
url_data_t *
url_parse (const char* url);
char *
url_get_scheme (const char* url);
inline
char *
url_get_protocol (const char* url) { return url_get_scheme(url); }
char *
url_get_userinfo (const char* url);
char *
url_get_hostname (const char* url);
char *
url_get_path (const char* url);
const char *
url_get_query_value (const url_data_t* url, const char* key);
char *
url_get_fragment (const char* url);
inline
char *
url_get_hash (const char* url) { return url_get_fragment(url); }
char *
url_get_port (const char* url);
void
url_free (url_data_t* data);
_Bool
url_is_protocol (const char* str);
_Bool
url_is_ssh (const char* str);
void
url_inspect (const char* url);
void
url_data_inspect (const url_data_t* data);

enum Category
{
  Scheme = 0x01,
  Unreserved = 0x02,
  GenDelim = 0x04,
  SubDelim = 0x08,
  PCharSlash = 0x10,
  HexDigit = 0x20,
  Query = 0x40,
  Fragment = 0x40,
  Userinfo = 0x80,
  IPv6Char = 0x100,
};
static const unsigned short char_cat[256] = {
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x0d8, 0x000, 0x004, 0x0d8, 0x0d0, 0x0d8, 0x0d8, 0x0d8, 0x0d8, 0x0d8, 0x0d9, 0x0d8, 0x0d3, 0x0d3, 0x054,
  0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1d4, 0x0d8, 0x000, 0x0d8, 0x000, 0x044,
  0x054, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df,
  0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x004, 0x000, 0x004, 0x000, 0x0d2,
  0x000, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x1ff, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df,
  0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x0df, 0x000, 0x000, 0x000, 0x0d2, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000,
  0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000
};
static const char *URL_SCHEMES[] = {
  "aaa", "aaas", "about", "acap", "acct", "adiumxtra", "afp", "afs", "aim", "apt", "attachment", "aw",
  "beshare", "bitcoin", "bolo", "callto", "cap", "chrome", "crome-extension", "com-evenbrite-attendee",
  "cid", "coap", "coaps","content", "crid", "cvs", "data", "dav", "dict", "lna-playsingle", "dln-playcontainer",
  "dns", "dtn", "dvb", "ed2k", "facetime", "fax", "feed", "file", "finger", "fish","ftp", "geo", "gg","git",
  "gizmoproject", "go", "gopher", "gtalk", "h323", "hcp", "http", "https", "iax", "icap", "icon","im",
  "imap", "info", "ipn", "ipp", "irc", "irc6", "ircs", "iris", "iris.beep", "iris.xpc", "iris.xpcs","iris.lws",
  "itms", "jabber", "jar", "jms", "keyparc", "lastfm", "ldap", "ldaps", "magnet", "mailserver","mailto",
  "maps", "market", "message", "mid", "mms", "modem", "ms-help", "mssettings-power", "msnim", "msrp",
  "msrps", "mtqp", "mumble", "mupdate", "mvn", "news", "nfs", "ni", "nih", "nntp", "notes","oid",
  "paquelocktoken", "pack", "palm", "paparazzi", "pkcs11", "platform", "pop", "pres", "prospero", "proxy",
  "psyc","query", "reload", "res", "resource", "rmi", "rsync", "rtmp","rtsp", "secondlife", "service","session",
  "sftp", "sgn", "shttp", "sieve", "sip", "sips", "skype", "smb", "sms", "snews", "snmp", "soap.beep","soap.beeps",
  "soldat", "spotify", "ssh", "steam", "svn", "tag", "teamspeak", "tel", "telnet", "tftp", "things","thismessage",
  "tn3270", "tip", "tv", "udp", "unreal", "urn", "ut2004", "vemmi","ventrilo", "videotex", "view-source", "wais","webcal",
  "ws", "wss", "wtai", "wyciwyg", "xcon", "xcon-userid", "xfire","xmlrpc.beep", "xmlrpc.beeps", "xmpp", "xri","ymsgr",
  "javascript", "jdbc", "doi"
};
char *
strdup (const char *str) {
  const int n = strlen(str) + 1;
  char *dup = (char *) malloc(n);
  if (dup) strcpy(dup, str);
  return dup;
}
struct url_key_value
{
  const char* key;
  const char* value;
};
static
int unhex(const char* s)
{
  if(*s>='0' && *s<='9')
    return *s - '0';
  if(*s>='A' && *s<='F')
    return *s - 'A' + 10;
  if(*s>='a' && *s<='f')
    return *s - 'a' + 10;
  return -1;
}
static
char* decode_percent(char* s)
{
  char* in = s;
  char* out = s;
  while(*in)
  {
    if(*in=='%')
    {
      const int high = unhex(++in); if(high<0 || *in=='\0') return ((void*)0);
      const int low = unhex(++in); if(low <0 || *in=='\0') return ((void*)0);
      *out = (char)(high*16u + low);
      ++out;
      ++in;
    }else{
      *out++ = *in++;
    }
  }
  *out = '\0';
  return s;
}
static
char*
scan_part(char* start, enum Category category, char delimiter1, char delimiter2) {
  char* p = start;
  for(;;)
  {
    if( *p=='\0' || *p==delimiter1 || *p==delimiter2)
       return p;
    if(char_cat[ (unsigned char) *p ] & category) {
      ++p;
    }else{
      return ((void*)0);
    }
  }
}
static
char*
scan_decimal_number(char* start)
{
  char* p = start;
  while(*p >='0' && *p<='9')
  {
    ++p;
  }
  return (p!=start) ? p : ((void*)0);
}
static
struct url_key_value* parse_query_string(char* begin, char* end)
{
  unsigned elements = 1;
  for(const char* p = begin; p!=end; ++p)
  {
    if(*p=='&' || *p==';')
      ++elements;
  }
  struct url_key_value* kv = calloc(elements+1, sizeof(struct url_key_value));
  if(!kv)
    return ((void*)0);
  char* p = begin;
  for(unsigned element=0; (element<=elements) && (p<end); ++element)
  {
    char* key = p;
    char* kv_end = scan_part(p, Query, '&', ';');
    if(!kv_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 153 , p); goto error; }while(0);
    *kv_end = '\0';
    char* key_end = scan_part(p, Query, '=', '\0');
    const _Bool has_value = (*key_end == '=');
    *key_end = '\0';
    kv[element].key = decode_percent(key);
    if(has_value)
    {
      char* value = key_end+1;
      kv[element].value = decode_percent(value);
    }else{
      kv[element].value = key_end;
    }
    p = kv_end+1;
  }
  return kv;
error:
  free(kv);
  return ((void*)0);
}
url_data_t*
url_parse (const char* url) {
  url_data_t *data = (url_data_t *) calloc(1, sizeof(url_data_t));
  if (!data) return ((void*)0);
  char* p = strdup(url);
  if(!p)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 190 , p); goto error; }while(0);
  data->whole_url = p;
  const char* const p_end = p + strlen(p);
  char* protocol_end = scan_part(p, Scheme, ':', '\0');
  if (!protocol_end || *protocol_end=='\0')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 197 , p); goto error; }while(0);
  *protocol_end = '\0';
  data->protocol = p;
  const _Bool is_ssh = url_is_ssh(data->protocol);
  p = protocol_end + 1;
  if(p>=p_end || *p != '/')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 205 , p); goto error; }while(0);
  ++p;
  if(p>=p_end || *p != '/')
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 209 , p); goto error; }while(0);
  char* const second_slash = p;
  ++p;
  if(p>=p_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 215 , p); goto error; }while(0);
  char* userinfo_end = scan_part(p, Userinfo, '@', '\0');
  if(userinfo_end && *userinfo_end == '@') {
    *userinfo_end = '\0';
    data->userinfo = p;
    p = userinfo_end + 1;
  }
  if(p>=p_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 225 , p); goto error; }while(0);
  char* hostname_end = ((void*)0);
  if(*p == '[')
  {
    ++p;
    hostname_end = scan_part( p, IPv6Char, ']', '\0' );
    if(!hostname_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 234 , p); goto error; }while(0);
    *hostname_end = '\0';
    data->host = p;
    ++hostname_end;
    if(hostname_end < p_end && !is_ssh && *hostname_end==':')
    {
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 247 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }else{
    hostname_end = scan_part( p, Unreserved | SubDelim, ':', '/' );
    if (!hostname_end)
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 255 , p); goto error; }while(0);
    data->host = p;
    if(!is_ssh && *hostname_end==':')
    {
      *hostname_end = '\0';
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 267 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }
  memmove(second_slash, second_slash+1, p-second_slash);
  if(data->userinfo)
    --(data->userinfo);
  --(data->host);
  if(data->port)
    --(data->port);
  p[-1] = '\0';
  if(is_ssh && *p == ':')
  {
    ++p;
  }
  char* path_end = scan_part( p, PCharSlash, '?', '#' );
  if(!path_end)
    do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 295 , p); goto error; }while(0);
  const _Bool has_query = (*path_end == '?');
  const _Bool has_fragment = (*path_end == '#');
  *path_end = '\0';
  data->path = decode_percent(p);
  p = path_end + 1;
  if(has_query)
  {
    char* query_end = scan_part( p, Query, '#', '\0' );
    if(query_end)
    {
      const _Bool has_fragment = (*query_end == '#');
      *query_end = '\0';
      data->query = parse_query_string(p, query_end);
      if(has_fragment)
      {
        char* fragment_end = scan_part( query_end+1, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(query_end+1);
        }else{
          do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 319 , p); goto error; }while(0);
        }
      }
    }else{
      do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 323 , p); goto error; }while(0);
    }
  }else if(has_fragment)
  {
        char* fragment_end = scan_part( p, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(p);
        }else{
          do{ fprintf(stderr, "ERROR %s Line %u! p=«%s»\n", "url.c", 332 , p); goto error; }while(0);
        }
  }
  return data;
error:
  url_free(data);
  return ((void*)0);
}
_Bool
url_is_protocol (const char* str) {
  const unsigned count = sizeof(URL_SCHEMES) / sizeof(URL_SCHEMES[0]);
  for (unsigned i = 0; i < count; ++i) {
    if (0 == strcmp(URL_SCHEMES[i], str)) {
      return 1;
    }
  }
  return 0;
}
_Bool
url_is_ssh (const char* str) {
  if (0 == strcmp(str, "ssh") || 0 == strcmp(str, "git")) {
    return 1;
  }
  return 0;
}
char *
url_get_scheme (const char* url) {
  char *protocol = (char *) malloc(32);
  if (!protocol) return ((void*)0);
  sscanf(url, "%[^://]", protocol);
  if (url_is_protocol(protocol)) return protocol;
  free(protocol);
  return ((void*)0);
}
char *
url_get_userinfo (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->userinfo ? strdup(data->userinfo) : ((void*)0); url_free(data); return out; }while(0);
}
char *
url_get_hostname (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->host ? strdup(data->host) : ((void*)0); url_free(data); return out; }while(0);
}
char *
url_get_host (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->host ? strdup(data->host) : ((void*)0); url_free(data); return out; }while(0);
}
char *
url_get_pathname (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->path ? strdup(data->path) : ((void*)0); url_free(data); return out; }while(0);
}
char *
url_get_path (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->path ? strdup(data->path) : ((void*)0); url_free(data); return out; }while(0);
}
const char *
url_get_query_value (const url_data_t* url, const char* key)
{
  if(url->query == ((void*)0))
    return ((void*)0);
  for( const struct url_key_value* kv = url->query; kv->key; ++kv)
  {
     if(strcmp(kv->key, key) == 0)
       return kv->value;
  }
  return ((void*)0);
}
char *
url_get_fragment (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->fragment ? strdup(data->fragment) : ((void*)0); url_free(data); return out; }while(0);
}
char *
url_get_port (const char* url) {
  do{ url_data_t* data = url_parse(url); char* out = data && data->port ? strdup(data->port) : ((void*)0); url_free(data); return out; }while(0);
}
void
url_inspect (const char* url) {
  url_data_inspect(url_parse(url));
}
void
url_data_inspect (const url_data_t* data) {
  printf("#url =>\n");
  do{ if(data->protocol) printf("    ." "protocol" ": \"%s\"\n", data->protocol); else printf("    ." "protocol" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->userinfo) printf("    ." "userinfo" ": \"%s\"\n", data->userinfo); else printf("    ." "userinfo" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->port) printf("    ." "port" ": \"%s\"\n", data->port); else printf("    ." "port" ": (NULL)\n"); }while(0);
  do{ if(data->path) printf("    ." "path" ": \"%s\"\n", data->path); else printf("    ." "path" ": (NULL)\n"); }while(0);
  if(data->query)
  {
     for(unsigned nr=0; data->query[nr].key; ++nr)
     {
        printf("    .query[%u]: \"%s\" -> ", nr, data->query[nr].key);
        if(data->query[nr].value)
          printf("\"%s\"\n", data->query[nr].value);
        else
          printf("(NULL)\n");
     }
  }
  do{ if(data->fragment) printf("    ." "fragment" ": \"%s\"\n", data->fragment); else printf("    ." "fragment" ": (NULL)\n"); }while(0);
}
void
url_free (url_data_t *data) {
  if (!data) return;
  free(data->whole_url);
  free((void*)data->query);
  free(data);
}
extern inline
char* url_get_protocol (const char* url);
extern inline
char* url_get_hash (const char* url);
