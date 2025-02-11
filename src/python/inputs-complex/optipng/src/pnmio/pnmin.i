typedef int errno_t;
extern int * __error(void);
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef long unsigned int rsize_t;
typedef int wchar_t;
typedef long double max_align_t;

typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short __int16_t;
typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_intptr_t;
typedef unsigned int __darwin_natural_t;
typedef int __darwin_ct_rune_t;
typedef union {
 char __mbstate8[128];
 long long _mbstateL;
} __mbstate_t;
typedef __mbstate_t __darwin_mbstate_t;
typedef long int __darwin_ptrdiff_t;
typedef long unsigned int __darwin_size_t;
typedef __builtin_va_list __darwin_va_list;
typedef int __darwin_wchar_t;
typedef __darwin_wchar_t __darwin_rune_t;
typedef int __darwin_wint_t;
typedef unsigned long __darwin_clock_t;
typedef __uint32_t __darwin_socklen_t;
typedef long __darwin_ssize_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef unsigned int __darwin_fsblkcnt_t;
typedef unsigned int __darwin_fsfilcnt_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint32_t __darwin_id_t;
typedef __uint64_t __darwin_ino64_t;
typedef __darwin_ino64_t __darwin_ino_t;
typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __int32_t __darwin_pid_t;
typedef __uint32_t __darwin_sigset_t;
typedef __int32_t __darwin_suseconds_t;
typedef __uint32_t __darwin_uid_t;
typedef __uint32_t __darwin_useconds_t;
typedef unsigned char __darwin_uuid_t[16];
typedef char __darwin_uuid_string_t[37];
struct __darwin_pthread_handler_rec {
 void (*__routine)(void *);
 void *__arg;
 struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_cond_t {
 long __sig;
 char __opaque[40];
};
struct _opaque_pthread_condattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_mutex_t {
 long __sig;
 char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_once_t {
 long __sig;
 char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
 long __sig;
 char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
 long __sig;
 char __opaque[16];
};
struct _opaque_pthread_t {
 long __sig;
 struct __darwin_pthread_handler_rec *__cleanup_stack;
 char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
typedef int __darwin_nl_item;
typedef int __darwin_wctrans_t;
typedef __uint32_t __darwin_wctype_t;
typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;

typedef unsigned char u_int8_t;
typedef unsigned short u_int16_t;
typedef unsigned int u_int32_t;
typedef unsigned long long u_int64_t;
typedef int64_t register_t;

typedef __darwin_intptr_t intptr_t;
typedef unsigned long uintptr_t;
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
typedef u_int64_t syscall_arg_t;
typedef __darwin_va_list va_list;

int renameat(int, const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));
int renamex_np(const char *, const char *, unsigned int) __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int renameatx_np(int, const char *, int, const char *, unsigned int) __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0))) __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));

typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (* _Nullable _close)(void *);
 int (* _Nullable _read) (void *, char *, int);
 fpos_t (* _Nullable _seek) (void *, fpos_t, int);
 int (* _Nullable _write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;

extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE * restrict, fpos_t *);
char *fgets(char * restrict, int, FILE *);
FILE *fopen(const char * restrict __filename, const char * restrict __mode) __asm("_" "fopen" );
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int fputc(int, FILE *);
int fputs(const char * restrict, FILE * restrict) __asm("_" "fputs" );
size_t fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
FILE *freopen(const char * restrict, const char * restrict,
                 FILE * restrict) __asm("_" "freopen" );
int fscanf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream) __asm("_" "fwrite" );
int getc(FILE *);
int getchar(void);
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of gets(3), it is highly recommended that you use fgets(3) instead.")))
char *gets(char *);
void perror(const char *) __attribute__((__cold__));
int printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
int putc(int, FILE *);
int putchar(int);
int puts(const char *);
int remove(const char *);
int rename (const char *__old, const char *__new);
void rewind(FILE *);
int scanf(const char * restrict, ...) __attribute__((__format__ (__scanf__, 1, 2)));
void setbuf(FILE * restrict, char * restrict);
int setvbuf(FILE * restrict, char * restrict, int, size_t);
__attribute__((__availability__(swift, unavailable, message="Use snprintf instead.")))
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use snprintf(3) instead.")))
int sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE *tmpfile(void);
__attribute__((__availability__(swift, unavailable, message="Use mkstemp(3) instead.")))
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tmpnam(3), it is highly recommended that you use mkstemp(3) instead.")))
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
__attribute__((__availability__(swift, unavailable, message="Use vsnprintf instead.")))
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of sprintf(3), it is highly recommended that you use vsnprintf(3) instead.")))
int vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
char *ctermid(char *);
FILE *fdopen(int, const char *) __asm("_" "fdopen" );
int fileno(FILE *);
int pclose(FILE *) __attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)")));
FILE *popen(const char *, const char *) __asm("_" "popen" ) __attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)")));
int __srget(FILE *);
int __svfscanf(FILE *, const char *, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int __swbuf(int, FILE *);
inline __attribute__ ((__always_inline__)) int __sputc(int _c, FILE *_p) {
 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf(_c, _p));
}
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
int getw(FILE *);
int putw(int, FILE *);
__attribute__((__availability__(swift, unavailable, message="Use mkstemp(3) instead.")))
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of tempnam(3), it is highly recommended that you use mkstemp(3) instead.")))
char *tempnam(const char *__dir, const char *__prefix) __asm("_" "tempnam" );
typedef __darwin_off_t off_t;
int fseeko(FILE * __stream, off_t __offset, int __whence);
off_t ftello(FILE * __stream);
int snprintf(char * restrict __str, size_t __size, const char * restrict __format, ...) __attribute__((__format__ (__printf__, 3, 4)));
int vfscanf(FILE * restrict __stream, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int vscanf(const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 1, 0)));
int vsnprintf(char * restrict __str, size_t __size, const char * restrict __format, va_list) __attribute__((__format__ (__printf__, 3, 0)));
int vsscanf(const char * restrict __str, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
typedef __darwin_ssize_t ssize_t;
int dprintf(int, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) __attribute__((availability(macosx,introduced=10.7)));
int vdprintf(int, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) __attribute__((availability(macosx,introduced=10.7)));
ssize_t getdelim(char ** restrict __linep, size_t * restrict __linecapp, int __delimiter, FILE * restrict __stream) __attribute__((availability(macosx,introduced=10.7)));
ssize_t getline(char ** restrict __linep, size_t * restrict __linecapp, FILE * restrict __stream) __attribute__((availability(macosx,introduced=10.7)));
FILE *fmemopen(void * restrict __buf, size_t __size, const char * restrict __mode) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
FILE *open_memstream(char **__bufp, size_t *__sizep) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
extern const int sys_nerr;
extern const char *const sys_errlist[];
int asprintf(char ** restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
char *ctermid_r(char *);
char *fgetln(FILE *, size_t *);
const char *fmtcheck(const char *, const char *) __attribute__((format_arg(2)));
int fpurge(FILE *);
void setbuffer(FILE *, char *, int);
int setlinebuf(FILE *);
int vasprintf(char ** restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
FILE *funopen(const void *,
                 int (* _Nullable)(void *, char *, int),
                 int (* _Nullable)(void *, const char *, int),
                 fpos_t (* _Nullable)(void *, fpos_t, int),
                 int (* _Nullable)(void *));
extern int __sprintf_chk (char * restrict, int, size_t,
     const char * restrict, ...);
extern int __snprintf_chk (char * restrict, size_t, int, size_t,
      const char * restrict, ...);
extern int __vsprintf_chk (char * restrict, int, size_t,
      const char * restrict, va_list);
extern int __vsnprintf_chk (char * restrict, size_t, int, size_t,
       const char * restrict, va_list);
void *memchr(const void *__s, int __c, size_t __n);
int memcmp(const void *__s1, const void *__s2, size_t __n);
void *memcpy(void *__dst, const void *__src, size_t __n);
void *memmove(void *__dst, const void *__src, size_t __len);
void *memset(void *__b, int __c, size_t __len);
char *strcat(char *__s1, const char *__s2);
char *strchr(const char *__s, int __c);
int strcmp(const char *__s1, const char *__s2);
int strcoll(const char *__s1, const char *__s2);
char *strcpy(char *__dst, const char *__src);
size_t strcspn(const char *__s, const char *__charset);
char *strerror(int __errnum) __asm("_" "strerror" );
size_t strlen(const char *__s);
char *strncat(char *__s1, const char *__s2, size_t __n);
int strncmp(const char *__s1, const char *__s2, size_t __n);
char *strncpy(char *__dst, const char *__src, size_t __n);
char *strpbrk(const char *__s, const char *__charset);
char *strrchr(const char *__s, int __c);
size_t strspn(const char *__s, const char *__charset);
char *strstr(const char *__big, const char *__little);
char *strtok(char *__str, const char *__sep);
size_t strxfrm(char *__s1, const char *__s2, size_t __n);
char *strtok_r(char *__str, const char *__sep, char **__lasts);
int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen);
char *strdup(const char *__s1);
void *memccpy(void *__dst, const void *__src, int __c, size_t __n);
char *stpcpy(char *__dst, const char *__src);
char *stpncpy(char *__dst, const char *__src, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strndup(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
size_t strnlen(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strsignal(int __sig);
errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n) __attribute__((availability(macosx,introduced=10.9)));
void *memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len) __attribute__((availability(macosx,introduced=10.7)));
void memset_pattern4(void *__b, const void *__pattern4, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern8(void *__b, const void *__pattern8, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern16(void *__b, const void *__pattern16, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
char *strcasestr(const char *__big, const char *__little);
char *strnstr(const char *__big, const char *__little, size_t __len);
size_t strlcat(char *__dst, const char *__source, size_t __size);
size_t strlcpy(char *__dst, const char *__source, size_t __size);
void strmode(int __mode, char *__bp);
char *strsep(char **__stringp, const char *__delim);
void swab(const void * restrict, void * restrict, ssize_t);
__attribute__((availability(macosx,introduced=10.12.1))) __attribute__((availability(ios,introduced=10.1)))
__attribute__((availability(tvos,introduced=10.0.1))) __attribute__((availability(watchos,introduced=3.1)))
int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len);
__attribute__((availability(macosx,introduced=11.0))) __attribute__((availability(ios,introduced=14.0)))
__attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)))
int strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen);
int bcmp(const void *, const void *, size_t) ;
void bcopy(const void *, void *, size_t) ;
void bzero(void *, size_t) ;
char *index(const char *, int) ;
char *rindex(const char *, int) ;
int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);
int ffsl(long) __attribute__((availability(macosx,introduced=10.5)));
int ffsll(long long) __attribute__((availability(macosx,introduced=10.9)));
int fls(int) __attribute__((availability(macosx,introduced=10.5)));
int flsl(long) __attribute__((availability(macosx,introduced=10.5)));
int flsll(long long) __attribute__((availability(macosx,introduced=10.9)));
enum
{
    PNM_P1 = 1,
    PNM_P2 = 2,
    PNM_P3 = 3,
    PNM_P4 = 4,
    PNM_P5 = 5,
    PNM_P6 = 6,
    PNM_P7 = 7
};
typedef struct pnm_struct
{
    unsigned int format;
    unsigned int depth;
    unsigned int width;
    unsigned int height;
    unsigned int maxval;
} pnm_struct;
int pnm_fget_header(pnm_struct *pnm_ptr,
                    FILE *stream);
int pnm_fget_values(const pnm_struct *pnm_ptr,
                    unsigned int *sample_values,
                    unsigned int num_rows,
                    FILE *stream);
int pnm_fget_bytes(const pnm_struct *pnm_ptr,
                    unsigned char *sample_bytes,
                    size_t sample_size,
                    unsigned int num_rows,
                    FILE *stream);
int pnm_fput_header(const pnm_struct *pnm_ptr,
                    FILE *stream);
int pnm_fput_values(const pnm_struct *pnm_ptr,
                    const unsigned int *sample_values,
                    unsigned int num_rows,
                    FILE *stream);
int pnm_fput_bytes(const pnm_struct *pnm_ptr,
                    const unsigned char *sample_bytes,
                    size_t sample_size,
                    unsigned int num_rows,
                    FILE *stream);
int pnm_is_valid(const pnm_struct *pnm_ptr);
size_t pnm_raw_sample_size(const pnm_struct *pnm_ptr);
size_t pnm_mem_size(const pnm_struct *pnm_ptr,
                    size_t sample_size,
                    unsigned int num_rows);
static int pnm_fget_char(FILE *stream)
{
    int ch = getc(stream);
    if (ch == '#')
    {
        do
        {
            ch = getc(stream);
        } while (ch != (-1) && ch != '\n' && ch != '\r');
    }
    if (ch == '\r')
    {
        ch = getc(stream);
        if (ch != '\n')
        {
            ungetc(ch, stream);
            ch = '\n';
        }
    }
    return ch;
}
static int pnm_fscan_uint(FILE *stream, unsigned int *value)
{
    int ch;
    unsigned int tmp;
    do
    {
        ch = pnm_fget_char(stream);
    } while (((ch) == ' ' || (ch) == '\t' || (ch) == '\n' || (ch) == '\r'));
    if (ch == (-1))
        return (-1);
    if (!((ch) >= '0' && (ch) <= '9'))
    {
        ungetc(ch, stream);
        return 0;
    }
    *value = 0;
    do
    {
        tmp = *value * 10 + (ch - '0');
        if (tmp >= *value)
            *value = tmp;
        else
        {
            *value = (2147483647 *2U +1U);
            (*__error()) = 34;
        }
        ch = getc(stream);
    } while (((ch) >= '0' && (ch) <= '9'));
    if (!((ch) == ' ' || (ch) == '\t' || (ch) == '\n' || (ch) == '\r'))
        ungetc(ch, stream);
    return 1;
}
int pnm_fget_header(pnm_struct *pnm_ptr, FILE *stream)
{
    unsigned int format;
    int ch;
    __builtin___memset_chk (pnm_ptr, 0, sizeof(pnm_struct), __builtin_object_size (pnm_ptr, 0));
    ch = getc(stream);
    if (ch == (-1))
        return -1;
    if (ch != 'P')
        return -1;
    ch = getc(stream);
    if (ch < '1' || ch > '9')
        return -1;
    format = (unsigned int)(ch - '0');
    ch = pnm_fget_char(stream);
    if (!((ch) == ' ' || (ch) == '\t' || (ch) == '\n' || (ch) == '\r'))
        return -1;
    pnm_ptr->format = format;
    if (format >= PNM_P1 && format <= PNM_P6)
    {
        pnm_ptr->depth = (format == PNM_P3 || format == PNM_P6) ? 3 : 1;
        if (pnm_fscan_uint(stream, &pnm_ptr->width) != 1 ||
                pnm_fscan_uint(stream, &pnm_ptr->height) != 1)
            return -1;
        if (format == PNM_P1 || format == PNM_P4)
            pnm_ptr->maxval = 1;
        else
        {
            if (pnm_fscan_uint(stream, &pnm_ptr->maxval) != 1)
                return -1;
        }
        return pnm_is_valid(pnm_ptr) ? 1 : 0;
    }
    else
        return -1;
}
int pnm_fget_values(const pnm_struct *pnm_ptr,
                    unsigned int *sample_values,
                    unsigned int num_rows,
                    FILE *stream)
{
    unsigned int format = pnm_ptr->format;
    unsigned int depth = pnm_ptr->depth;
    unsigned int width = pnm_ptr->width;
    unsigned int maxval = pnm_ptr->maxval;
    size_t row_length = (size_t)depth * (size_t)width;
    size_t num_samples = num_rows * row_length;
    int ch, ch8;
    int ch16, ch24;
    int mask;
    size_t i, j;
    switch (format)
    {
    case PNM_P1:
        for (i = 0; i < num_samples; ++i)
        {
            do
            {
                ch = pnm_fget_char(stream);
            } while (((ch) == ' ' || (ch) == '\t' || (ch) == '\n' || (ch) == '\r'));
            if (ch != '0' && ch != '1')
            {
                ungetc(ch, stream);
                break;
            }
            sample_values[i] = (ch == '0') ? 1 : 0;
        }
        break;
    case PNM_P2:
    case PNM_P3:
        for (i = 0; i < num_samples; ++i)
        {
            if (pnm_fscan_uint(stream, &sample_values[i]) != 1)
                break;
        }
        break;
    case PNM_P4:
        for (i = j = 0; i < num_samples; )
        {
            ch = getc(stream);
            if (ch == (-1))
                break;
            for (mask = 0x80; mask != 0; mask >>= 1)
            {
                sample_values[i++] = (ch & mask) ? 0 : 1;
                if (++j == row_length)
                {
                    j = 0;
                    break;
                }
            }
        }
        break;
    case PNM_P5:
    case PNM_P6:
    case PNM_P7:
        if (maxval <= 0xffU)
        {
            for (i = 0; i < num_samples; ++i)
            {
                ch = getc(stream);
                if (ch == (-1))
                    break;
                sample_values[i] = (unsigned int)ch;
            }
        }
        else if (maxval <= 0xffffU)
        {
            for (i = 0; i < num_samples; ++i)
            {
                ch8 = getc(stream);
                ch = getc(stream);
                if (ch == (-1))
                    break;
                sample_values[i] = ((unsigned int)ch8 << 8) + (unsigned int)ch;
            }
        }
        else if (maxval <= 0xffffffffU)
        {
            ch24 = 0;
            for (i = 0; i < num_samples; ++i)
            {
                if (maxval > 0xffffffU)
                    ch24 = getc(stream);
                ch16 = getc(stream);
                ch8 = getc(stream);
                ch = getc(stream);
                if (ch == (-1))
                    break;
                sample_values[i] =
                    ((unsigned int)ch24 << 24) + ((unsigned int)ch16 << 16) +
                    ((unsigned int)ch8 << 8) + ((unsigned int)ch);
            }
        }
        else
        {
            (*__error()) = 22;
            return 0;
        }
        break;
    default:
        (*__error()) = 22;
        return 0;
    }
    if (i < num_samples)
    {
        __builtin___memset_chk (sample_values + i, 0, (num_samples - i) * sizeof(unsigned int), __builtin_object_size (sample_values + i, 0));
        return -1;
    }
    return 1;
}
int pnm_fget_bytes(const pnm_struct *pnm_ptr,
                   unsigned char *sample_bytes,
                   size_t sample_size,
                   unsigned int num_rows,
                   FILE *stream)
{
    unsigned int format = pnm_ptr->format;
    unsigned int depth = pnm_ptr->depth;
    unsigned int width = pnm_ptr->width;
    unsigned int maxval = pnm_ptr->maxval;
    size_t row_length = (size_t)depth * (size_t)width;
    size_t num_samples = num_rows * row_length;
    size_t raw_sample_size;
    int ch, mask;
    size_t i, j;
    if (maxval <= 0xffU)
        raw_sample_size = 1;
    else if (maxval <= 0xffffU)
        raw_sample_size = 2;
    else if (maxval <= 0xffffffU)
        raw_sample_size = 3;
    else if (maxval <= 0xffffffffU)
        raw_sample_size = 4;
    else
        raw_sample_size = !sample_size;
    if (raw_sample_size != sample_size)
    {
        (*__error()) = 22;
        return 0;
    }
    switch (format)
    {
    case PNM_P4:
        for (i = j = 0; i < num_samples; )
        {
            ch = getc(stream);
            if (ch == (-1))
                break;
            for (mask = 0x80; mask != 0; mask >>= 1)
            {
                sample_bytes[i++] = (unsigned char)((ch & mask) ? 0 : 1);
                if (++j == row_length)
                {
                    j = 0;
                    break;
                }
            }
        }
        break;
    case PNM_P5:
    case PNM_P6:
    case PNM_P7:
        i = fread(sample_bytes, sample_size, num_samples, stream);
        break;
    default:
        (*__error()) = 22;
        return 0;
    }
    if (i < num_samples)
    {
        __builtin___memset_chk (sample_bytes + i, 0, sample_size * num_samples - i, __builtin_object_size (sample_bytes + i, 0));
        return -1;
    }
    return 1;
}
