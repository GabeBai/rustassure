
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

typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
typedef __darwin_pid_t pid_t;
typedef __darwin_id_t id_t;
typedef int sig_atomic_t;
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
typedef u_int64_t syscall_arg_t;
struct __darwin_arm_exception_state
{
 __uint32_t __exception;
 __uint32_t __fsr;
 __uint32_t __far;
};
struct __darwin_arm_exception_state64
{
 __uint64_t __far;
 __uint32_t __esr;
 __uint32_t __exception;
};
struct __darwin_arm_thread_state
{
 __uint32_t __r[13];
 __uint32_t __sp;
 __uint32_t __lr;
 __uint32_t __pc;
 __uint32_t __cpsr;
};
struct __darwin_arm_thread_state64
{
 __uint64_t __x[29];
 __uint64_t __fp;
 __uint64_t __lr;
 __uint64_t __sp;
 __uint64_t __pc;
 __uint32_t __cpsr;
 __uint32_t __pad;
};
struct __darwin_arm_vfp_state
{
 __uint32_t __r[64];
 __uint32_t __fpscr;
};
struct __darwin_arm_neon_state64
{
 __uint128_t __v[32];
 __uint32_t __fpsr;
 __uint32_t __fpcr;
};
struct __darwin_arm_neon_state
{
 __uint128_t __v[16];
 __uint32_t __fpsr;
 __uint32_t __fpcr;
};
struct __arm_pagein_state
{
 int __pagein_error;
};
struct __arm_legacy_debug_state
{
 __uint32_t __bvr[16];
 __uint32_t __bcr[16];
 __uint32_t __wvr[16];
 __uint32_t __wcr[16];
};
struct __darwin_arm_debug_state32
{
 __uint32_t __bvr[16];
 __uint32_t __bcr[16];
 __uint32_t __wvr[16];
 __uint32_t __wcr[16];
 __uint64_t __mdscr_el1;
};
struct __darwin_arm_debug_state64
{
 __uint64_t __bvr[16];
 __uint64_t __bcr[16];
 __uint64_t __wvr[16];
 __uint64_t __wcr[16];
 __uint64_t __mdscr_el1;
};
struct __darwin_arm_cpmu_state64
{
 __uint64_t __ctrs[16];
};
struct __darwin_mcontext32
{
 struct __darwin_arm_exception_state __es;
 struct __darwin_arm_thread_state __ss;
 struct __darwin_arm_vfp_state __fs;
};
struct __darwin_mcontext64
{
 struct __darwin_arm_exception_state64 __es;
 struct __darwin_arm_thread_state64 __ss;
 struct __darwin_arm_neon_state64 __ns;
};
typedef struct __darwin_mcontext64 *mcontext_t;

typedef __darwin_pthread_attr_t pthread_attr_t;

struct __darwin_sigaltstack
{
 void *ss_sp;
 __darwin_size_t ss_size;
 int ss_flags;
};
typedef struct __darwin_sigaltstack stack_t;
struct __darwin_ucontext
{
 int uc_onstack;
 __darwin_sigset_t uc_sigmask;
 struct __darwin_sigaltstack uc_stack;
 struct __darwin_ucontext *uc_link;
 __darwin_size_t uc_mcsize;
 struct __darwin_mcontext64 *uc_mcontext;
};
typedef struct __darwin_ucontext ucontext_t;
typedef __darwin_sigset_t sigset_t;
typedef __darwin_size_t size_t;
typedef __darwin_uid_t uid_t;

union sigval {
 int sival_int;
 void *sival_ptr;
};
struct sigevent {
 int sigev_notify;
 int sigev_signo;
 union sigval sigev_value;
 void (*sigev_notify_function)(union sigval);
 pthread_attr_t *sigev_notify_attributes;
};
typedef struct __siginfo {
 int si_signo;
 int si_errno;
 int si_code;
 pid_t si_pid;
 uid_t si_uid;
 int si_status;
 void *si_addr;
 union sigval si_value;
 long si_band;
 unsigned long __pad[7];
} siginfo_t;
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
struct __sigaction {
 union __sigaction_u __sigaction_u;
 void (*sa_tramp)(void *, int, int, siginfo_t *, void *);
 sigset_t sa_mask;
 int sa_flags;
};
struct sigaction {
 union __sigaction_u __sigaction_u;
 sigset_t sa_mask;
 int sa_flags;
};
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
void(*signal(int, void (*)(int)))(int);
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
typedef __uint64_t rlim_t;
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_opaque[14];
};
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
int getpriority(int, id_t);
int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" );
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" );
pid_t wait(int *) __asm("_" "wait" );
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" );
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" );
typedef __darwin_wchar_t wchar_t;

typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
extern int __mb_cur_max;
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
void *calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2))) ;
void free(void * );
void *realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
void *reallocf(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
void *aligned_alloc(size_t __alignment, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_align(1))) __attribute__((alloc_size(2))) __attribute__((availability(macosx,introduced=10.15))) __attribute__((availability(ios,introduced=13.0))) __attribute__((availability(tvos,introduced=13.0))) __attribute__((availability(watchos,introduced=6.0)));
int posix_memalign(void * *__memptr, size_t __alignment, size_t __size) __attribute__((availability(macosx,introduced=10.6)));
void abort(void) __attribute__((__cold__)) __attribute__((__noreturn__));
int abs(int) __attribute__((__const__));
int atexit(void (* _Nonnull)(void));
double atof(const char *);
int atoi(const char *);
long atol(const char *);
long long
  atoll(const char *);
void *bsearch(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (* _Nonnull __compar)(const void *, const void *));
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
char *getenv(const char *);
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));
long long
  llabs(long long);
lldiv_t lldiv(long long, long long);
int mblen(const char *__s, size_t __n);
size_t mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int mbtowc(wchar_t * restrict, const char * restrict, size_t);
void qsort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));
int rand(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
void srand(unsigned) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
double strtod(const char *, char **) __asm("_" "strtod" );
float strtof(const char *, char **) __asm("_" "strtof" );
long strtol(const char *__str, char **__endptr, int __base);
long double
  strtold(const char *, char **);
long long
  strtoll(const char *__str, char **__endptr, int __base);
unsigned long
  strtoul(const char *__str, char **__endptr, int __base);
unsigned long long
  strtoull(const char *__str, char **__endptr, int __base);
__attribute__((__availability__(swift, unavailable, message="Use posix_spawn APIs or NSTask instead. (On iOS, process spawning is unavailable.)")))
__attribute__((availability(macos,introduced=10.0))) __attribute__((availability(ios,unavailable)))
__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
int system(const char *) __asm("_" "system" );
size_t wcstombs(char * restrict, const wchar_t * restrict, size_t);
int wctomb(char *, wchar_t);
void _Exit(int) __attribute__((__noreturn__));
long a64l(const char *);
double drand48(void);
char *ecvt(double, int, int *restrict, int *restrict);
double erand48(unsigned short[3]);
char *fcvt(double, int, int *restrict, int *restrict);
char *gcvt(double, int, char *);
int getsubopt(char **, char * const *, char **);
int grantpt(int);
char *initstate(unsigned, char *, size_t);
long jrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *l64a(long);
void lcong48(unsigned short[7]);
long lrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
long nrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int posix_openpt(int);
char *ptsname(int);
int putenv(char *) __asm("_" "putenv" );
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" );
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("_" "setenv" );
void setkey(const char *) __asm("_" "setkey" );
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("_" "unsetenv" );
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
 typedef struct png_incomplete png_double;
         typedef png_double* png_doublep;
         typedef const png_double* png_const_doublep;
         typedef png_double** png_doublepp;
typedef long int ptrdiff_t;
typedef long double max_align_t;
typedef __darwin_va_list va_list;

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
int sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE *tmpfile(void);
__attribute__((__availability__(swift, unavailable, message="Use mkstemp(3) instead.")))
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
__attribute__((__availability__(swift, unavailable, message="Use vsnprintf instead.")))
int vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
char *ctermid(char *);
FILE *fdopen(int, const char *) __asm("_" "fdopen" );
int fileno(FILE *);
extern int __sprintf_chk (char * restrict, int, size_t,
     const char * restrict, ...);
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
typedef png_struct * restrict png_structrp;
typedef const png_struct * restrict png_const_structrp;
typedef png_info * restrict png_inforp;
typedef const png_info * restrict png_const_inforp;
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
typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;
typedef char * caddr_t;

typedef int32_t daddr_t;
typedef __darwin_dev_t dev_t;

typedef u_int32_t fixpt_t;
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __darwin_gid_t gid_t;
typedef __uint32_t in_addr_t;
typedef __uint16_t in_port_t;
typedef __darwin_ino_t ino_t;
typedef __int32_t key_t;
typedef __darwin_mode_t mode_t;
typedef __uint16_t nlink_t;
typedef __darwin_off_t off_t;

typedef int32_t segsz_t;
typedef int32_t swblk_t;
typedef __darwin_clock_t clock_t;

typedef __darwin_ssize_t ssize_t;
typedef __darwin_time_t time_t;

typedef __darwin_useconds_t useconds_t;
typedef __darwin_suseconds_t suseconds_t;
typedef __darwin_pthread_cond_t pthread_cond_t;
typedef __darwin_pthread_condattr_t pthread_condattr_t;
typedef __darwin_pthread_mutex_t pthread_mutex_t;
typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;
typedef __darwin_pthread_once_t pthread_once_t;
typedef __darwin_pthread_rwlock_t pthread_rwlock_t;
typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;
typedef __darwin_pthread_t pthread_t;
typedef __darwin_pthread_key_t pthread_key_t;
typedef __darwin_fsblkcnt_t fsblkcnt_t;
typedef __darwin_fsfilcnt_t fsfilcnt_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
void _exit(int) __attribute__((__noreturn__));
int access(const char *, int);
unsigned int
  alarm(unsigned int);
int chdir(const char *);
int chown(const char *, uid_t, gid_t);
int close(int) __asm("_" "close" );
int dup(int);
int dup2(int, int);
int execl(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execle(const char * __path, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execlp(const char * __file, const char * __arg0, ...) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execv(const char * __path, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execve(const char * __file, char * const * __argv, char * const * __envp) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int execvp(const char * __file, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
pid_t fork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
long fpathconf(int, int);
char *getcwd(char *, size_t);
gid_t getegid(void);
uid_t geteuid(void);
gid_t getgid(void);
int getgroups(int, gid_t []);
char *getlogin(void);
pid_t getpgrp(void);
pid_t getpid(void);
pid_t getppid(void);
uid_t getuid(void);
int isatty(int);
int link(const char *, const char *);
off_t lseek(int, off_t, int);
long pathconf(const char *, int);
int pause(void) __asm("_" "pause" );
int pipe(int [2]);
ssize_t read(int, void *, size_t) __asm("_" "read" );
int rmdir(const char *);
int setgid(gid_t);
int setpgid(pid_t, pid_t);
pid_t setsid(void);
int setuid(uid_t);
unsigned int
  sleep(unsigned int) __asm("_" "sleep" );
long sysconf(int);
pid_t tcgetpgrp(int);
int tcsetpgrp(int, pid_t);
char *ttyname(int);
int ttyname_r(int, char *, size_t) __asm("_" "ttyname_r" );
int unlink(const char *);
ssize_t write(int __fd, const void * __buf, size_t __nbyte) __asm("_" "write" );
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
    off_t pos;
};
extern int gzgetc_ (gzFile file);
   extern gzFile gzopen (const char *, const char *);
   extern off_t gzseek (gzFile, off_t, int);
   extern off_t gztell (gzFile);
   extern off_t gzoffset (gzFile);
   extern uLong adler32_combine (uLong, uLong, off_t);
   extern uLong crc32_combine (uLong, uLong, off_t);
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
__attribute__((__malloc__)) png_structp png_create_read_struct (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn)
{
   png_structp png_ptr = png_create_png_struct(user_png_ver, error_ptr,
      error_fn, warn_fn, ((void*)0), ((void*)0), ((void*)0));
   if (png_ptr != ((void*)0))
   {
      png_ptr->mode = 0x8000;
         png_ptr->IDAT_read_size = 8192;
         png_ptr->flags |= 0x100000;
            png_ptr->flags |= 0x200000;
      png_set_read_fn(png_ptr, ((void*)0), ((void*)0));
   }
   return png_ptr;
}
void
png_read_info(png_structrp png_ptr, png_inforp info_ptr)
{
   int keep;
   ((void)0);
   if (png_ptr == ((void*)0) || info_ptr == ((void*)0))
      return;
   png_read_sig(png_ptr, info_ptr);
   for (;;)
   {
      png_uint_32 length = png_read_chunk_header(png_ptr);
      png_uint_32 chunk_name = png_ptr->chunk_name;
      if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
      {
         if ((png_ptr->mode & 0x01) == 0)
            png_chunk_error(png_ptr, "Missing IHDR before IDAT");
         else if (png_ptr->color_type == (2 | 1) &&
             (png_ptr->mode & 0x02) == 0)
            png_chunk_error(png_ptr, "Missing PLTE before IDAT");
         else if ((png_ptr->mode & 0x08) != 0)
            png_chunk_benign_error(png_ptr, "Too many IDATs found");
         png_ptr->mode |= 0x04;
      }
      else if ((png_ptr->mode & 0x04) != 0)
         png_ptr->mode |= 0x08;
      if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(68) << (8)) | ((png_uint_32)(82) << (0))))
         png_handle_IHDR(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(69) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(68) << (0))))
         png_handle_IEND(png_ptr, info_ptr, length);
      else if ((keep = png_chunk_unknown_handling(png_ptr, chunk_name)) != 0)
      {
         png_handle_unknown(png_ptr, info_ptr, length, keep);
         if (chunk_name == (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))))
            png_ptr->mode |= 0x02;
         else if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
         {
            png_ptr->idat_size = 0;
            break;
         }
      }
      else if (chunk_name == (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))))
         png_handle_PLTE(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
      {
         png_ptr->idat_size = length;
         break;
      }
      else if (chunk_name == (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))))
         png_handle_bKGD(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(104) << (24)) | ((png_uint_32)(73) << (16)) | ((png_uint_32)(83) << (8)) | ((png_uint_32)(84) << (0))))
         png_handle_hIST(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(115) << (24)) | ((png_uint_32)(66) << (16)) | ((png_uint_32)(73) << (8)) | ((png_uint_32)(84) << (0))))
         png_handle_sBIT(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))))
         png_handle_tRNS(png_ptr, info_ptr, length);
      else
         png_handle_unknown(png_ptr, info_ptr, length,
            0);
   }
}
void
png_read_update_info(png_structrp png_ptr, png_inforp info_ptr)
{
   ((void)0);
   if (png_ptr != ((void*)0))
   {
      if ((png_ptr->flags & 0x0040) == 0)
      {
         png_read_start_row(png_ptr);
            png_read_transform_info(png_ptr, info_ptr);
      }
      else
         png_app_error(png_ptr,
            "png_read_update_info/png_start_read_image: duplicate call");
   }
}
void
png_start_read_image(png_structrp png_ptr)
{
   ((void)0);
   if (png_ptr != ((void*)0))
   {
      if ((png_ptr->flags & 0x0040) == 0)
         png_read_start_row(png_ptr);
      else
         png_app_error(png_ptr,
            "png_start_read_image/png_read_update_info: duplicate call");
   }
}
void
png_read_row(png_structrp png_ptr, png_bytep row, png_bytep dsp_row)
{
   png_row_info row_info;
   if (png_ptr == ((void*)0))
      return;
   ((void)0);
   if ((png_ptr->flags & 0x0040) == 0)
      png_read_start_row(png_ptr);
   row_info.width = png_ptr->iwidth;
   row_info.color_type = png_ptr->color_type;
   row_info.bit_depth = png_ptr->bit_depth;
   row_info.channels = png_ptr->channels;
   row_info.pixel_depth = png_ptr->pixel_depth;
   row_info.rowbytes = ((row_info.pixel_depth) >= 8 ? ((png_size_t)(row_info.width) * (((png_size_t)(row_info.pixel_depth)) >> 3)) : (( ((png_size_t)(row_info.width) * ((png_size_t)(row_info.pixel_depth))) + 7) >> 3) );
   if (png_ptr->row_number == 0 && png_ptr->pass == 0)
   {
   }
   if (png_ptr->interlaced != 0 &&
       (png_ptr->transformations & 0x0002) != 0)
   {
      switch (png_ptr->pass)
      {
         case 0:
            if (png_ptr->row_number & 0x07)
            {
               if (dsp_row != ((void*)0))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 1:
            if ((png_ptr->row_number & 0x07) || png_ptr->width < 5)
            {
               if (dsp_row != ((void*)0))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 2:
            if ((png_ptr->row_number & 0x07) != 4)
            {
               if (dsp_row != ((void*)0) && (png_ptr->row_number & 4))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 3:
            if ((png_ptr->row_number & 3) || png_ptr->width < 3)
            {
               if (dsp_row != ((void*)0))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 4:
            if ((png_ptr->row_number & 3) != 2)
            {
               if (dsp_row != ((void*)0) && (png_ptr->row_number & 2))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         case 5:
            if ((png_ptr->row_number & 1) || png_ptr->width < 2)
            {
               if (dsp_row != ((void*)0))
                  png_combine_row(png_ptr, dsp_row, 1 );
               png_read_finish_row(png_ptr);
               return;
            }
            break;
         default:
         case 6:
            if ((png_ptr->row_number & 1) == 0)
            {
               png_read_finish_row(png_ptr);
               return;
            }
            break;
      }
   }
   if ((png_ptr->mode & 0x04) == 0)
      png_error(png_ptr, "Invalid attempt to read row data");
   png_read_IDAT_data(png_ptr, png_ptr->row_buf, row_info.rowbytes + 1);
   if (png_ptr->row_buf[0] > 0)
   {
      if (png_ptr->row_buf[0] < 5)
         png_read_filter_row(png_ptr, &row_info, png_ptr->row_buf + 1,
            png_ptr->prev_row + 1, png_ptr->row_buf[0]);
      else
         png_error(png_ptr, "bad adaptive filter value");
   }
   __builtin___memcpy_chk (png_ptr->prev_row, png_ptr->row_buf, row_info.rowbytes + 1, __builtin_object_size (png_ptr->prev_row, 0));
   if (png_ptr->transformations)
      png_do_read_transformations(png_ptr, &row_info);
   if (png_ptr->transformed_pixel_depth == 0)
   {
      png_ptr->transformed_pixel_depth = row_info.pixel_depth;
      if (row_info.pixel_depth > png_ptr->maximum_pixel_depth)
         png_error(png_ptr, "sequential row overflow");
   }
   else if (png_ptr->transformed_pixel_depth != row_info.pixel_depth)
      png_error(png_ptr, "internal sequential row size calculation error");
   if (png_ptr->interlaced != 0 &&
      (png_ptr->transformations & 0x0002) != 0)
   {
      if (png_ptr->pass < 6)
         png_do_read_interlace(&row_info, png_ptr->row_buf + 1, png_ptr->pass,
            png_ptr->transformations);
      if (dsp_row != ((void*)0))
         png_combine_row(png_ptr, dsp_row, 1 );
      if (row != ((void*)0))
         png_combine_row(png_ptr, row, 0 );
   }
   else
   {
      if (row != ((void*)0))
         png_combine_row(png_ptr, row, -1 );
      if (dsp_row != ((void*)0))
         png_combine_row(png_ptr, dsp_row, -1 );
   }
   png_read_finish_row(png_ptr);
   if (png_ptr->read_row_fn != ((void*)0))
      (*(png_ptr->read_row_fn))(png_ptr, png_ptr->row_number, png_ptr->pass);
}
void
png_read_rows(png_structrp png_ptr, png_bytepp row,
    png_bytepp display_row, png_uint_32 num_rows)
{
   png_uint_32 i;
   png_bytepp rp;
   png_bytepp dp;
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   rp = row;
   dp = display_row;
   if (rp != ((void*)0) && dp != ((void*)0))
      for (i = 0; i < num_rows; i++)
      {
         png_bytep rptr = *rp++;
         png_bytep dptr = *dp++;
         png_read_row(png_ptr, rptr, dptr);
      }
   else if (rp != ((void*)0))
      for (i = 0; i < num_rows; i++)
      {
         png_bytep rptr = *rp;
         png_read_row(png_ptr, rptr, ((void*)0));
         rp++;
      }
   else if (dp != ((void*)0))
      for (i = 0; i < num_rows; i++)
      {
         png_bytep dptr = *dp;
         png_read_row(png_ptr, ((void*)0), dptr);
         dp++;
      }
}
void
png_read_image(png_structrp png_ptr, png_bytepp image)
{
   png_uint_32 i, image_height;
   int pass, j;
   png_bytepp rp;
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if ((png_ptr->flags & 0x0040) == 0)
   {
      pass = png_set_interlace_handling(png_ptr);
      png_start_read_image(png_ptr);
   }
   else
   {
      if (png_ptr->interlaced != 0 &&
          (png_ptr->transformations & 0x0002) == 0)
      {
         png_warning(png_ptr, "Interlace handling should be turned on when "
            "using png_read_image");
         png_ptr->num_rows = png_ptr->height;
      }
      pass = png_set_interlace_handling(png_ptr);
   }
   image_height=png_ptr->height;
   for (j = 0; j < pass; j++)
   {
      rp = image;
      for (i = 0; i < image_height; i++)
      {
         png_read_row(png_ptr, *rp, ((void*)0));
         rp++;
      }
   }
}
void
png_read_end(png_structrp png_ptr, png_inforp info_ptr)
{
   int keep;
   ((void)0);
   if (png_ptr == ((void*)0))
      return;
   if (png_chunk_unknown_handling(png_ptr, (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0)))) == 0)
      png_read_finish_IDAT(png_ptr);
   if (png_ptr->color_type == (2 | 1) &&
      png_ptr->num_palette_max > png_ptr->num_palette)
     png_benign_error(png_ptr, "Read palette index exceeding num_palette");
   do
   {
      png_uint_32 length = png_read_chunk_header(png_ptr);
      png_uint_32 chunk_name = png_ptr->chunk_name;
      if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(69) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(68) << (0))))
         png_handle_IEND(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(72) << (16)) | ((png_uint_32)(68) << (8)) | ((png_uint_32)(82) << (0))))
         png_handle_IHDR(png_ptr, info_ptr, length);
      else if (info_ptr == ((void*)0))
         png_crc_finish(png_ptr, length);
      else if ((keep = png_chunk_unknown_handling(png_ptr, chunk_name)) != 0)
      {
         if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
         {
            if ((length > 0) ||
                (png_ptr->mode & 0x2000) != 0)
               png_benign_error(png_ptr, "Too many IDATs found");
         }
         png_handle_unknown(png_ptr, info_ptr, length, keep);
         if (chunk_name == (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))))
            png_ptr->mode |= 0x02;
      }
      else if (chunk_name == (((png_uint_32)(73) << (24)) | ((png_uint_32)(68) << (16)) | ((png_uint_32)(65) << (8)) | ((png_uint_32)(84) << (0))))
      {
         if ((length > 0) || (png_ptr->mode & 0x2000) != 0)
            png_benign_error(png_ptr, "Too many IDATs found");
         png_crc_finish(png_ptr, length);
      }
      else if (chunk_name == (((png_uint_32)(80) << (24)) | ((png_uint_32)(76) << (16)) | ((png_uint_32)(84) << (8)) | ((png_uint_32)(69) << (0))))
         png_handle_PLTE(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(98) << (24)) | ((png_uint_32)(75) << (16)) | ((png_uint_32)(71) << (8)) | ((png_uint_32)(68) << (0))))
         png_handle_bKGD(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(104) << (24)) | ((png_uint_32)(73) << (16)) | ((png_uint_32)(83) << (8)) | ((png_uint_32)(84) << (0))))
         png_handle_hIST(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(115) << (24)) | ((png_uint_32)(66) << (16)) | ((png_uint_32)(73) << (8)) | ((png_uint_32)(84) << (0))))
         png_handle_sBIT(png_ptr, info_ptr, length);
      else if (chunk_name == (((png_uint_32)(116) << (24)) | ((png_uint_32)(82) << (16)) | ((png_uint_32)(78) << (8)) | ((png_uint_32)(83) << (0))))
         png_handle_tRNS(png_ptr, info_ptr, length);
      else
         png_handle_unknown(png_ptr, info_ptr, length,
            0);
   } while ((png_ptr->mode & 0x10) == 0);
}
static void
png_read_destroy(png_structrp png_ptr)
{
   ((void)0);
   png_free(png_ptr, png_ptr->big_row_buf);
   png_ptr->big_row_buf = ((void*)0);
   png_free(png_ptr, png_ptr->big_prev_row);
   png_ptr->big_prev_row = ((void*)0);
   png_free(png_ptr, png_ptr->read_buffer);
   png_ptr->read_buffer = ((void*)0);
   if ((png_ptr->free_me & 0x1000) != 0)
   {
      png_zfree(png_ptr, png_ptr->palette);
      png_ptr->palette = ((void*)0);
   }
   png_ptr->free_me &= ~0x1000;
   if ((png_ptr->free_me & 0x2000) != 0)
   {
      png_free(png_ptr, png_ptr->trans_alpha);
      png_ptr->trans_alpha = ((void*)0);
   }
   png_ptr->free_me &= ~0x2000;
   inflateEnd(&png_ptr->zstream);
   png_free(png_ptr, png_ptr->unknown_chunk.data);
   png_ptr->unknown_chunk.data = ((void*)0);
   png_free(png_ptr, png_ptr->chunk_list);
   png_ptr->chunk_list = ((void*)0);
}
void
png_destroy_read_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr,
    png_infopp end_info_ptr_ptr)
{
   png_structrp png_ptr = ((void*)0);
   ((void)0);
   if (png_ptr_ptr != ((void*)0))
      png_ptr = *png_ptr_ptr;
   if (png_ptr == ((void*)0))
      return;
   png_destroy_info_struct(png_ptr, end_info_ptr_ptr);
   png_destroy_info_struct(png_ptr, info_ptr_ptr);
   *png_ptr_ptr = ((void*)0);
   png_read_destroy(png_ptr);
   png_destroy_png_struct(png_ptr);
}
void
png_set_read_status_fn(png_structrp png_ptr, png_read_status_ptr read_row_fn)
{
   if (png_ptr == ((void*)0))
      return;
   png_ptr->read_row_fn = read_row_fn;
}
void
png_read_png(png_structrp png_ptr, png_inforp info_ptr,
                           int transforms,
                           voidp params)
{
   if (png_ptr == ((void*)0) || info_ptr == ((void*)0))
      return;
   png_read_info(png_ptr, info_ptr);
   if (info_ptr->height > ((png_uint_32)(-1))/(sizeof (png_bytep)))
      png_error(png_ptr, "Image is too high to process with png_read_png()");
   if ((transforms & 0x8000) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SCALE_16 not supported");
   if ((transforms & 0x0001) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_STRIP_16 not supported");
   if ((transforms & 0x0002) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_STRIP_ALPHA not supported");
   if ((transforms & 0x0004) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_PACKING not supported");
   if ((transforms & 0x0008) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_PACKSWAP not supported");
   if ((transforms & 0x0010) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_EXPAND not supported");
   if ((transforms & 0x0020) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_INVERT_MONO not supported");
   if ((transforms & 0x0040) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SHIFT not supported");
   if ((transforms & 0x0080) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_BGR not supported");
   if ((transforms & 0x0100) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SWAP_ALPHA not supported");
   if ((transforms & 0x0200) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_SWAP_ENDIAN not supported");
   if ((transforms & 0x0400) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_INVERT_ALPHA not supported");
   if ((transforms & 0x2000) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_GRAY_TO_RGB not supported");
   if ((transforms & 0x4000) != 0)
      png_app_error(png_ptr, "PNG_TRANSFORM_EXPAND_16 not supported");
   (void)png_set_interlace_handling(png_ptr);
   png_read_update_info(png_ptr, info_ptr);
   png_free_data(png_ptr, info_ptr, 0x0040, 0);
   if (info_ptr->row_pointers == ((void*)0))
   {
      png_uint_32 iptr;
      info_ptr->row_pointers = (png_malloc(png_ptr, info_ptr->height * (sizeof (png_bytep))));
      for (iptr=0; iptr<info_ptr->height; iptr++)
         info_ptr->row_pointers[iptr] = ((void*)0);
      info_ptr->free_me |= 0x0040;
      for (iptr = 0; iptr < info_ptr->height; iptr++)
         info_ptr->row_pointers[iptr] = (png_malloc(png_ptr, info_ptr->rowbytes));
   }
   png_read_image(png_ptr, info_ptr->row_pointers);
   info_ptr->valid |= 0x8000;
   png_read_end(png_ptr, info_ptr);
   (void)params;
}
