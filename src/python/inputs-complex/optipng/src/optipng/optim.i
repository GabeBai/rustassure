typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;

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
typedef __darwin_size_t size_t;

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
typedef enum {
 P_ALL,
 P_PID,
 P_PGID
} idtype_t;
typedef __darwin_pid_t pid_t;
typedef __darwin_id_t id_t;
typedef int sig_atomic_t;
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
typedef void (*sig_t)(int);
struct sigvec {
 void (*sv_handler)(int);
 int sv_mask;
 int sv_flags;
};
struct sigstack {
 char *ss_sp;
 int ss_onstack;
};
void(*signal(int, void (*)(int)))(int);
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;
typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;
typedef int8_t int_fast8_t;
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;
typedef uint8_t uint_fast8_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;
typedef long int intmax_t;
typedef long unsigned int uintmax_t;
struct timeval
{
 __darwin_time_t tv_sec;
 __darwin_suseconds_t tv_usec;
};
typedef __uint64_t rlim_t;
struct rusage {
 struct timeval ru_utime;
 struct timeval ru_stime;
 long ru_maxrss;
 long ru_ixrss;
 long ru_idrss;
 long ru_isrss;
 long ru_minflt;
 long ru_majflt;
 long ru_nswap;
 long ru_inblock;
 long ru_oublock;
 long ru_msgsnd;
 long ru_msgrcv;
 long ru_nsignals;
 long ru_nvcsw;
 long ru_nivcsw;
};
typedef void *rusage_info_t;
struct rusage_info_v0 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
};
struct rusage_info_v1 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
};
struct rusage_info_v2 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
};
struct rusage_info_v3 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
};
struct rusage_info_v4 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
 uint64_t ri_logical_writes;
 uint64_t ri_lifetime_max_phys_footprint;
 uint64_t ri_instructions;
 uint64_t ri_cycles;
 uint64_t ri_billed_energy;
 uint64_t ri_serviced_energy;
 uint64_t ri_interval_max_phys_footprint;
 uint64_t ri_runnable_time;
};
struct rusage_info_v5 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
 uint64_t ri_logical_writes;
 uint64_t ri_lifetime_max_phys_footprint;
 uint64_t ri_instructions;
 uint64_t ri_cycles;
 uint64_t ri_billed_energy;
 uint64_t ri_serviced_energy;
 uint64_t ri_interval_max_phys_footprint;
 uint64_t ri_runnable_time;
 uint64_t ri_flags;
};
struct rusage_info_v6 {
 uint8_t ri_uuid[16];
 uint64_t ri_user_time;
 uint64_t ri_system_time;
 uint64_t ri_pkg_idle_wkups;
 uint64_t ri_interrupt_wkups;
 uint64_t ri_pageins;
 uint64_t ri_wired_size;
 uint64_t ri_resident_size;
 uint64_t ri_phys_footprint;
 uint64_t ri_proc_start_abstime;
 uint64_t ri_proc_exit_abstime;
 uint64_t ri_child_user_time;
 uint64_t ri_child_system_time;
 uint64_t ri_child_pkg_idle_wkups;
 uint64_t ri_child_interrupt_wkups;
 uint64_t ri_child_pageins;
 uint64_t ri_child_elapsed_abstime;
 uint64_t ri_diskio_bytesread;
 uint64_t ri_diskio_byteswritten;
 uint64_t ri_cpu_time_qos_default;
 uint64_t ri_cpu_time_qos_maintenance;
 uint64_t ri_cpu_time_qos_background;
 uint64_t ri_cpu_time_qos_utility;
 uint64_t ri_cpu_time_qos_legacy;
 uint64_t ri_cpu_time_qos_user_initiated;
 uint64_t ri_cpu_time_qos_user_interactive;
 uint64_t ri_billed_system_time;
 uint64_t ri_serviced_system_time;
 uint64_t ri_logical_writes;
 uint64_t ri_lifetime_max_phys_footprint;
 uint64_t ri_instructions;
 uint64_t ri_cycles;
 uint64_t ri_billed_energy;
 uint64_t ri_serviced_energy;
 uint64_t ri_interval_max_phys_footprint;
 uint64_t ri_runnable_time;
 uint64_t ri_flags;
 uint64_t ri_user_ptime;
 uint64_t ri_system_ptime;
 uint64_t ri_pinstructions;
 uint64_t ri_pcycles;
 uint64_t ri_energy_nj;
 uint64_t ri_penergy_nj;
 uint64_t ri_secure_time_in_system;
 uint64_t ri_secure_ptime_in_system;
 uint64_t ri_reserved[12];
};
typedef struct rusage_info_v6 rusage_info_current;
struct rlimit {
 rlim_t rlim_cur;
 rlim_t rlim_max;
};
struct proc_rlimit_control_wakeupmon {
 uint32_t wm_flags;
 int32_t wm_rate;
};
int getpriority(int, id_t);
int getiopolicy_np(int, int) __attribute__((availability(macosx,introduced=10.5)));
int getrlimit(int, struct rlimit *) __asm("_" "getrlimit" );
int getrusage(int, struct rusage *);
int setpriority(int, id_t, int);
int setiopolicy_np(int, int, int) __attribute__((availability(macosx,introduced=10.5)));
int setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" );
static inline
uint16_t
_OSSwapInt16(
 uint16_t _data
 )
{
 return (uint16_t)(_data << 8 | _data >> 8);
}
static inline
uint32_t
_OSSwapInt32(
 uint32_t _data
 )
{
 _data = __builtin_bswap32(_data);
 return _data;
}
static inline
uint64_t
_OSSwapInt64(
 uint64_t _data
 )
{
 return __builtin_bswap64(_data);
}
struct _OSUnalignedU16 {
 volatile uint16_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU32 {
 volatile uint32_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU64 {
 volatile uint64_t __val;
} __attribute__((__packed__));
static inline
uint16_t
OSReadSwapInt16(
 const volatile void * _base,
 uintptr_t _offset
 )
{
 return _OSSwapInt16(((struct _OSUnalignedU16 *)((uintptr_t)_base + _offset))->__val);
}
static inline
uint32_t
OSReadSwapInt32(
 const volatile void * _base,
 uintptr_t _offset
 )
{
 return _OSSwapInt32(((struct _OSUnalignedU32 *)((uintptr_t)_base + _offset))->__val);
}
static inline
uint64_t
OSReadSwapInt64(
 const volatile void * _base,
 uintptr_t _offset
 )
{
 return _OSSwapInt64(((struct _OSUnalignedU64 *)((uintptr_t)_base + _offset))->__val);
}
static inline
void
OSWriteSwapInt16(
 volatile void * _base,
 uintptr_t _offset,
 uint16_t _data
 )
{
 ((struct _OSUnalignedU16 *)((uintptr_t)_base + _offset))->__val = _OSSwapInt16(_data);
}
static inline
void
OSWriteSwapInt32(
 volatile void * _base,
 uintptr_t _offset,
 uint32_t _data
 )
{
 ((struct _OSUnalignedU32 *)((uintptr_t)_base + _offset))->__val = _OSSwapInt32(_data);
}
static inline
void
OSWriteSwapInt64(
 volatile void * _base,
 uintptr_t _offset,
 uint64_t _data
 )
{
 ((struct _OSUnalignedU64 *)((uintptr_t)_base + _offset))->__val = _OSSwapInt64(_data);
}
union wait {
 int w_status;
 struct {
  unsigned int w_Termsig:7,
      w_Coredump:1,
      w_Retcode:8,
      w_Filler:16;
 } w_T;
 struct {
  unsigned int w_Stopval:8,
      w_Stopsig:8,
      w_Filler:16;
 } w_S;
};
pid_t wait(int *) __asm("_" "wait" );
pid_t waitpid(pid_t, int *, int) __asm("_" "waitpid" );
int waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" );
pid_t wait3(int *, int, struct rusage *);
pid_t wait4(pid_t, int *, int, struct rusage *);

void *alloca(size_t);
typedef __darwin_ct_rune_t ct_rune_t;
typedef __darwin_rune_t rune_t;
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
typedef unsigned long long malloc_type_id_t;
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_malloc(size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_calloc(size_t count, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void malloc_type_free(void * ptr, malloc_type_id_t type_id);
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_realloc(void * ptr, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_valloc(size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_aligned_alloc(size_t alignment, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) int malloc_type_posix_memalign(void * *memptr, size_t alignment, size_t size, malloc_type_id_t type_id) ;
typedef struct _malloc_zone_t malloc_zone_t;
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_zone_malloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_zone_calloc(malloc_zone_t *zone, size_t count, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2,3)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void malloc_type_zone_free(malloc_zone_t *zone, void * ptr, malloc_type_id_t type_id);
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_zone_realloc(malloc_zone_t *zone, void * ptr, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(3)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_zone_valloc(malloc_zone_t *zone, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
__attribute__((availability(macos,unavailable))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(visionos,unavailable))) void *malloc_type_zone_memalign(malloc_zone_t *zone, size_t alignment, size_t size, malloc_type_id_t type_id) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(3)));
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
void *calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2))) ;
void free(void * );
void *realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
void *reallocf(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2)));
void *valloc(size_t) __attribute__((alloc_size(1))) ;
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
__attribute__((__deprecated__("This function is provided for compatibility reasons only.  Due to security concerns inherent in the design of mktemp(3), it is highly recommended that you use mkstemp(3) instead.")))
char *mktemp(char *);
int mkstemp(char *);
long mrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
long nrand48(unsigned short[3]) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int posix_openpt(int);
char *ptsname(int);
int ptsname_r(int fildes, char *buffer, size_t buflen) __attribute__((availability(macos,introduced=10.13.4))) __attribute__((availability(ios,introduced=11.3))) __attribute__((availability(tvos,introduced=11.3))) __attribute__((availability(watchos,introduced=4.3)));
int putenv(char *) __asm("_" "putenv" );
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
char *realpath(const char * restrict, char * restrict) __asm("_" "realpath" "$DARWIN_EXTSN");
unsigned short
 *seed48(unsigned short[3]);
int setenv(const char * __name, const char * __value, int __overwrite) __asm("_" "setenv" );
void setkey(const char *) __asm("_" "setkey" );
char *setstate(const char *);
void srand48(long);
void srandom(unsigned);
int unlockpt(int);
int unsetenv(const char *) __asm("_" "unsetenv" );
typedef __darwin_dev_t dev_t;
typedef __darwin_mode_t mode_t;
uint32_t arc4random(void);
void arc4random_addrandom(unsigned char * , int )
    __attribute__((availability(macosx,introduced=10.0))) __attribute__((availability(macosx,deprecated=10.12,message="use arc4random_stir")))
    __attribute__((availability(ios,introduced=2.0))) __attribute__((availability(ios,deprecated=10.0,message="use arc4random_stir")))
    __attribute__((availability(tvos,introduced=2.0))) __attribute__((availability(tvos,deprecated=10.0,message="use arc4random_stir")))
    __attribute__((availability(watchos,introduced=1.0))) __attribute__((availability(watchos,deprecated=3.0,message="use arc4random_stir")));
void arc4random_buf(void * __buf, size_t __nbytes) __attribute__((availability(macosx,introduced=10.7)));
void arc4random_stir(void);
uint32_t
  arc4random_uniform(uint32_t __upper_bound) __attribute__((availability(macosx,introduced=10.7)));
int atexit_b(void (^ _Nonnull)(void)) __attribute__((availability(macosx,introduced=10.6)));
void *bsearch_b(const void *__key, const void *__base, size_t __nel,
     size_t __width, int (^ _Nonnull __compar)(const void *, const void *) __attribute__((__noescape__)))
     __attribute__((availability(macosx,introduced=10.6)));
char *cgetcap(char *, const char *, int);
int cgetclose(void);
int cgetent(char **, char **, const char *);
int cgetfirst(char **, char **);
int cgetmatch(const char *, const char *);
int cgetnext(char **, char **);
int cgetnum(char *, const char *, long *);
int cgetset(const char *);
int cgetstr(char *, const char *, char **);
int cgetustr(char *, const char *, char **);
int daemon(int, int) __asm("_" "daemon" ) __attribute__((availability(macosx,introduced=10.0,deprecated=10.5,message="Use posix_spawn APIs instead."))) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
char *devname(dev_t, mode_t);
char *devname_r(dev_t, mode_t, char *buf, int len);
char *getbsize(int *, long *);
int getloadavg(double [], int);
const char
 *getprogname(void);
void setprogname(const char *);
int heapsort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));
int heapsort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *) __attribute__((__noescape__)))
     __attribute__((availability(macosx,introduced=10.6)));
int mergesort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *));
int mergesort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *) __attribute__((__noescape__)))
     __attribute__((availability(macosx,introduced=10.6)));
void psort(void *__base, size_t __nel, size_t __width,
     int (* _Nonnull __compar)(const void *, const void *))
     __attribute__((availability(macosx,introduced=10.6)));
void psort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *) __attribute__((__noescape__)))
     __attribute__((availability(macosx,introduced=10.6)));
void psort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* _Nonnull __compar)(void *, const void *, const void *))
     __attribute__((availability(macosx,introduced=10.6)));
void qsort_b(void *__base, size_t __nel, size_t __width,
     int (^ _Nonnull __compar)(const void *, const void *) __attribute__((__noescape__)))
     __attribute__((availability(macosx,introduced=10.6)));
void qsort_r(void *__base, size_t __nel, size_t __width, void *,
     int (* _Nonnull __compar)(void *, const void *, const void *));
int radixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
int rpmatch(const char *)
 __attribute__((availability(macos,introduced=10.15))) __attribute__((availability(ios,introduced=13.0))) __attribute__((availability(tvos,introduced=13.0))) __attribute__((availability(watchos,introduced=6.0)));
int sradixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
     unsigned __endbyte);
void sranddev(void);
void srandomdev(void);
long long
 strtonum(const char *__numstr, long long __minval, long long __maxval, const char **__errstrp)
 __attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,introduced=14.0))) __attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)));
long long
  strtoq(const char *__str, char **__endptr, int __base);
unsigned long long
  strtouq(const char *__str, char **__endptr, int __base);
extern char *suboptarg;
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
typedef __darwin_size_t rsize_t;
typedef int errno_t;
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

typedef long int ptrdiff_t;
typedef long double max_align_t;
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
unsigned int
opng_bitset_count(opng_bitset_t set);
int
opng_bitset_find_first(opng_bitset_t set);
int
opng_bitset_find_next(opng_bitset_t set, int elt);
int
opng_bitset_find_last(opng_bitset_t set);
int
opng_bitset_find_prev(opng_bitset_t set, int elt);
opng_bitset_t
opng_rangeset_string_to_bitset(const char *str, size_t *end_idx);
size_t
opng_bitset_to_rangeset_string(char *sbuf, size_t sbuf_size, opng_bitset_t set);
struct opng_options
{
    int backup;
    int clobber;
    int debug;
    int fix;
    int force;
    int full;
    int preserve;
    int quiet;
    int simulate;
    int verbose;
    const char *out_name;
    const char *dir_name;
    const char *log_name;
    int interlace;
    int nb, nc, np, nz;
    int optim_level;
    opng_bitset_t compr_level_set;
    opng_bitset_t mem_level_set;
    opng_bitset_t strategy_set;
    opng_bitset_t filter_set;
    int window_bits;
    int snip;
    int strip_all;
};
struct opng_ui
{
    void (*printf_fn)(const char *fmt, ...);
    void (*print_cntrl_fn)(int cntrl_code);
    void (*progress_fn)(unsigned long current_step, unsigned long total_steps);
    void (*panic_fn)(const char *msg);
};
int opng_initialize(const struct opng_options *options,
                    const struct opng_ui *ui);
int opng_optimize(const char *infile_name);
int opng_finalize(void);
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
int opng_validate_image(png_structp png_ptr, png_infop info_ptr);
png_uint_32 opng_reduce_image(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions);
typedef long osys_foffset_t;
typedef unsigned long osys_fsize_t;
char *
osys_path_chdir(char *buffer, size_t bufsize,
                const char *old_path, const char *new_dirname);
char *
osys_path_chext(char *buffer, size_t bufsize,
                const char *old_path, const char *new_extname);
char *
osys_path_mkbak(char *buffer, size_t bufsize, const char *path);
osys_foffset_t
osys_ftello(FILE *stream);
int
osys_fseeko(FILE *stream, osys_foffset_t offset, int whence);
int
osys_fgetsize(FILE *stream, osys_fsize_t *size);
size_t
osys_fread_at(FILE *stream, osys_foffset_t offset, int whence,
              void *block, size_t blocksize);
size_t
osys_fwrite_at(FILE *stream, osys_foffset_t offset, int whence,
               const void *block, size_t blocksize);
int
osys_rename(const char *src_path, const char *dest_path, int clobber);
int
osys_copy_attr(const char *src_path, const char *dest_path);
int
osys_create_dir(const char *dirname);
int
osys_test(const char *path, const char *mode);
int
osys_test_eq(const char *path1, const char *path2);
int
osys_unlink(const char *path);
void
osys_terminate(void);

int pngx_read_image(png_structp png_ptr, png_infop info_ptr,
                           png_const_charpp fmt_name_ptr,
                           png_const_charpp fmt_long_name_ptr);
void pngx_set_compression_type
   (png_structp png_ptr, png_infop info_ptr, int compression_type);
void pngx_set_filter_type
   (png_structp png_ptr, png_infop info_ptr, int filter_type);
void pngx_set_interlace_type
   (png_structp png_ptr, png_infop info_ptr, int interlace_type);
typedef png_alloc_size_t pngx_alloc_size_t;
png_bytepp pngx_malloc_rows
   (png_structp png_ptr, png_infop info_ptr, int filler);
png_bytepp pngx_malloc_rows_extended
   (png_structp png_ptr, png_infop info_ptr,
    pngx_alloc_size_t min_row_size, int filler);
typedef long long opng_llong_t;
typedef unsigned long long opng_ullong_t;
struct opng_lratio
{
    long num;
    long denom;
};
struct opng_ulratio
{
    unsigned long num;
    unsigned long denom;
};
struct opng_llratio
{
    opng_llong_t num;
    opng_llong_t denom;
};
struct opng_ullratio
{
    opng_ullong_t num;
    opng_ullong_t denom;
};
int
opng_ulratio_to_factor_string(char *buffer, size_t buffer_size,
                              const struct opng_ulratio *ratio);
int
opng_ulratio_to_percent_string(char *buffer, size_t buffer_size,
                               const struct opng_ulratio *ratio);
int
opng_ullratio_to_factor_string(char *buffer, size_t buffer_size,
                               const struct opng_ullratio *ratio);
int
opng_ullratio_to_percent_string(char *buffer, size_t buffer_size,
                                const struct opng_ullratio *ratio);
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
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;

typedef unsigned long u_long;
typedef unsigned short ushort;
typedef unsigned int uint;
typedef u_int64_t u_quad_t;
typedef int64_t quad_t;
typedef quad_t * qaddr_t;
typedef char * caddr_t;

typedef int32_t daddr_t;
typedef u_int32_t fixpt_t;
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __darwin_gid_t gid_t;
typedef __uint32_t in_addr_t;
typedef __uint16_t in_port_t;
typedef __darwin_ino_t ino_t;
typedef __darwin_ino64_t ino64_t;
typedef __int32_t key_t;

typedef __uint16_t nlink_t;
typedef int32_t segsz_t;
typedef int32_t swblk_t;
typedef __darwin_clock_t clock_t;
typedef __darwin_time_t time_t;

typedef __darwin_useconds_t useconds_t;
typedef __darwin_suseconds_t suseconds_t;
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;
int __darwin_check_fd_set_overflow(int, const void *, int) __attribute__((availability(macos,introduced=11.0))) __attribute__((availability(ios,introduced=14.0))) __attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)));
inline __attribute__ ((__always_inline__)) int
__darwin_check_fd_set(int _a, const void *_b)
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunguarded-availability-new"
 if ((uintptr_t)&__darwin_check_fd_set_overflow != (uintptr_t) 0) {
  return __darwin_check_fd_set_overflow(_a, _b, 0);
 } else {
  return 1;
 }
#pragma clang diagnostic pop
}
inline __attribute__ ((__always_inline__)) int
__darwin_fd_isset(int _fd, const struct fd_set *_p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  return _p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8))));
 }
 return 0;
}
inline __attribute__ ((__always_inline__)) void
__darwin_fd_set(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] |= ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}
inline __attribute__ ((__always_inline__)) void
__darwin_fd_clr(int _fd, struct fd_set *const _p)
{
 if (__darwin_check_fd_set(_fd, (const void *) _p)) {
  (_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] &= ~((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
 }
}
typedef __int32_t fd_mask;
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
struct accessx_descriptor {
 unsigned int ad_name_offset;
 int ad_flags;
 int ad_pad[2];
};
int getattrlistbulk(int, void *, void *, size_t, uint64_t) __attribute__((availability(macosx,introduced=10.10)));
int getattrlistat(int, const char *, void *, void *, size_t, unsigned long) __attribute__((availability(macosx,introduced=10.10)));
int setattrlistat(int, const char *, void *, void *, size_t, uint32_t) __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
ssize_t freadlink(int, char * restrict, size_t) __attribute__((availability(macos,introduced=13.0))) __attribute__((availability(ios,introduced=16.0))) __attribute__((availability(tvos,introduced=16.0))) __attribute__((availability(watchos,introduced=9.0)));
int faccessat(int, const char *, int, int) __attribute__((availability(macosx,introduced=10.10)));
int fchownat(int, const char *, uid_t, gid_t, int) __attribute__((availability(macosx,introduced=10.10)));
int linkat(int, const char *, int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
ssize_t readlinkat(int, const char *, char *, size_t) __attribute__((availability(macosx,introduced=10.10)));
int symlinkat(const char *, int, const char *) __attribute__((availability(macosx,introduced=10.10)));
int unlinkat(int, const char *, int) __attribute__((availability(macosx,introduced=10.10)));
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
size_t confstr(int, char *, size_t) __asm("_" "confstr" );
int getopt(int, char * const [], const char *) __asm("_" "getopt" );
extern char *optarg;
extern int optind, opterr, optopt;
__attribute__((__deprecated__)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
void *brk(const void *);
int chroot(const char *) ;
char *crypt(const char *, const char *);
void encrypt(char *, int) __asm("_" "encrypt" );
int fchdir(int);
long gethostid(void);
pid_t getpgid(pid_t);
pid_t getsid(pid_t);
int getdtablesize(void) ;
int getpagesize(void) __attribute__((__const__)) ;
char *getpass(const char *) ;
char *getwd(char *) ;
int lchown(const char *, uid_t, gid_t) __asm("_" "lchown" );
int lockf(int, int, off_t) __asm("_" "lockf" );
int nice(int) __asm("_" "nice" );
ssize_t pread(int __fd, void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pread" );
ssize_t pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pwrite" );
__attribute__((__deprecated__)) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
void *sbrk(int);
pid_t setpgrp(void) __asm("_" "setpgrp" );
int setregid(gid_t, gid_t) __asm("_" "setregid" );
int setreuid(uid_t, uid_t) __asm("_" "setreuid" );
void swab(const void * restrict, void * restrict, ssize_t);
void sync(void);
int truncate(const char *, off_t);
useconds_t ualarm(useconds_t, useconds_t);
int usleep(useconds_t) __asm("_" "usleep" );
__attribute__((__deprecated__("Use posix_spawn or fork")))
pid_t vfork(void) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsync(int) __asm("_" "fsync" );
int ftruncate(int, off_t);
int getlogin_r(char *, size_t);
int fchown(int, uid_t, gid_t);
int gethostname(char *, size_t);
ssize_t readlink(const char * restrict, char * restrict, size_t);
int setegid(gid_t);
int seteuid(uid_t);
int symlink(const char *, const char *);
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
int pselect(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, const struct timespec * restrict,
    const sigset_t * restrict)
__asm("_" "pselect" )
;
int select(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, struct timeval * restrict)
__asm("_" "select" )
;
typedef __darwin_uuid_t uuid_t;
void _Exit(int) __attribute__((__noreturn__));
int accessx_np(const struct accessx_descriptor *, size_t, int *, uid_t);
int acct(const char *);
int add_profil(char *, size_t, unsigned long, unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
void endusershell(void);
int execvP(const char * __file, const char * __searchpath, char * const * __argv) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
char *fflagstostr(unsigned long);
int getdomainname(char *, int);
int getgrouplist(const char *, int, int *, int *);
int gethostuuid(uuid_t, const struct timespec *) __attribute__((availability(macos,introduced=10.5))) __attribute__((availability(ios,unavailable))) __attribute__((availability(tvos,unavailable))) __attribute__((availability(watchos,unavailable)));
mode_t getmode(const void *, mode_t);
int getpeereid(int, uid_t *, gid_t *);
int getsgroups_np(int *, uuid_t);
char *getusershell(void);
int getwgroups_np(int *, uuid_t);
int initgroups(const char *, int);
int issetugid(void);
char *mkdtemp(char *);
int mknod(const char *, mode_t, dev_t);
int mkpath_np(const char *path, mode_t omode) __attribute__((availability(macosx,introduced=10.8)));
int mkpathat_np(int dfd, const char *path, mode_t omode)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkstemp(char *);
int mkstemps(char *, int);
char *mktemp(char *);
int mkostemp(char *path, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkostemps(char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.12))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
int mkstemp_dprotected_np(char *path, int dpclass, int dpflags)
  __attribute__((availability(macosx,unavailable))) __attribute__((availability(ios,introduced=10.0)))
  __attribute__((availability(tvos,introduced=10.0))) __attribute__((availability(watchos,introduced=3.0)));
char *mkdtempat_np(int dfd, char *path)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkstempsat_np(int dfd, char *path, int slen)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int mkostempsat_np(int dfd, char *path, int slen, int oflags)
  __attribute__((availability(macosx,introduced=10.13))) __attribute__((availability(ios,introduced=11.0)))
  __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int nfssvc(int, void *);
int profil(char *, size_t, unsigned long, unsigned int);
__attribute__((__deprecated__("Use of per-thread security contexts is error-prone and discouraged.")))
int pthread_setugid_np(uid_t, gid_t);
int pthread_getugid_np( uid_t *, gid_t *);
int reboot(int);
int revoke(const char *);
__attribute__((__deprecated__)) int rcmd(char **, int, const char *, const char *, const char *, int *);
__attribute__((__deprecated__)) int rcmd_af(char **, int, const char *, const char *, const char *, int *,
  int);
__attribute__((__deprecated__)) int rresvport(int *);
__attribute__((__deprecated__)) int rresvport_af(int *, int);
__attribute__((__deprecated__)) int iruserok(unsigned long, int, const char *, const char *);
__attribute__((__deprecated__)) int iruserok_sa(const void *, int, int, const char *, const char *);
__attribute__((__deprecated__)) int ruserok(const char *, int, const char *, const char *);
int setdomainname(const char *, int);
int setgroups(int, const gid_t *);
void sethostid(long);
int sethostname(const char *, int);
void setkey(const char *) __asm("_" "setkey" );
int setlogin(const char *);
void *setmode(const char *) __asm("_" "setmode" );
int setrgid(gid_t);
int setruid(uid_t);
int setsgroups_np(int, const uuid_t);
void setusershell(void);
int setwgroups_np(int, const uuid_t);
int strtofflags(char **, unsigned long *, unsigned long *);
int swapon(const char *);
int ttyslot(void);
int undelete(const char *);
int unwhiteout(const char *);
void *valloc(size_t);
__attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)))
__attribute__((availability(ios,deprecated=10.0,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))
__attribute__((availability(macosx,deprecated=10.12,message="syscall(2) is unsupported; " "please switch to a supported interface. For SYS_kdebug_trace use kdebug_signpost().")))
int syscall(int, ...);
extern char *suboptarg;
int getsubopt(char **, char * const *, char **);
int fgetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int fsetattrlist(int,void*,void*,size_t,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int getattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "getattrlist" );
int setattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "setattrlist" );
int exchangedata(const char*,const char*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int getdirentriesattr(int,void*,void*,size_t,unsigned int*,unsigned int*,unsigned int*,unsigned int) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
struct fssearchblock;
struct searchstate;
int searchfs(const char *, struct fssearchblock *, unsigned long *, unsigned int, unsigned int, struct searchstate *) __attribute__((availability(watchos,unavailable))) __attribute__((availability(tvos,unavailable)));
int fsctl(const char *,unsigned long,void*,unsigned int);
int ffsctl(int,unsigned long,void*,unsigned int) __attribute__((availability(macosx,introduced=10.6)));
int fsync_volume_np(int, int) __attribute__((availability(macosx,introduced=10.8)));
int sync_volume_np(const char *, int) __attribute__((availability(macosx,introduced=10.8)));
extern int optreset;
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);
struct internal_state;
typedef struct z_stream_s {
            Bytef *next_in;
    uInt avail_in;
    uLong total_in;
    Bytef *next_out;
    uInt avail_out;
    uLong total_out;
            char *msg;
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
typedef unsigned (*in_func) (void *, unsigned char * *);
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
typedef int jmp_buf[((14 + 8 + 2) * 2)];
typedef int sigjmp_buf[((14 + 8 + 2) * 2) + 1];
extern int setjmp(jmp_buf);
extern void longjmp(jmp_buf, int) __attribute__((__noreturn__));
int _setjmp(jmp_buf);
void _longjmp(jmp_buf, int) __attribute__((__noreturn__));
int sigsetjmp(sigjmp_buf, int);
void siglongjmp(sigjmp_buf, int) __attribute__((__noreturn__));
void longjmperror(void);
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
struct exception_context the_exception_context[1];
static const struct opng_preset
{
    const char *compr_level;
    const char *mem_level;
    const char *strategy;
    const char *filter;
} presets[7 + 1] =
{
    { "", "", "", "" },
    { "", "", "", "" },
    { "9", "8", "0-", "0,5" },
    { "9", "8-9", "0-", "0,5" },
    { "9", "8", "0-", "0-" },
    { "9", "8-9", "0-", "0-" },
    { "1-9", "8", "0-", "0-" },
    { "1-9", "8-9", "0-", "0-" }
};
static const int filter_table[5 + 1] =
{
    0x08,
    0x10,
    0x20,
    0x40,
    0x80,
    (0x08 | 0x10 | 0x20 | 0x40 | 0x80)
};
enum
{
    INPUT_IS_PNG_FILE = 0x0001,
    INPUT_HAS_PNG_DATASTREAM = 0x0002,
    INPUT_HAS_PNG_SIGNATURE = 0x0004,
    INPUT_HAS_DIGITAL_SIGNATURE = 0x0008,
    INPUT_HAS_MULTIPLE_IMAGES = 0x0010,
    INPUT_HAS_APNG = 0x0020,
    INPUT_HAS_STRIPPED_DATA = 0x0040,
    INPUT_HAS_JUNK = 0x0080,
    INPUT_HAS_ERRORS = 0x0100,
    OUTPUT_NEEDS_NEW_FILE = 0x1000,
    OUTPUT_NEEDS_NEW_IDAT = 0x2000,
    OUTPUT_HAS_ERRORS = 0x4000
};
static const png_byte sig_PLTE[4] = { 0x50, 0x4c, 0x54, 0x45 };
static const png_byte sig_tRNS[4] = { 0x74, 0x52, 0x4e, 0x53 };
static const png_byte sig_IDAT[4] = { 0x49, 0x44, 0x41, 0x54 };
static const png_byte sig_IEND[4] = { 0x49, 0x45, 0x4e, 0x44 };
static const png_byte sig_bKGD[4] = { 0x62, 0x4b, 0x47, 0x44 };
static const png_byte sig_hIST[4] = { 0x68, 0x49, 0x53, 0x54 };
static const png_byte sig_sBIT[4] = { 0x73, 0x42, 0x49, 0x54 };
static const png_byte sig_dSIG[4] = { 0x64, 0x53, 0x49, 0x47 };
static const png_byte sig_acTL[4] = { 0x61, 0x63, 0x54, 0x4c };
static const png_byte sig_fcTL[4] = { 0x66, 0x63, 0x54, 0x4c };
static const png_byte sig_fdAT[4] = { 0x66, 0x64, 0x41, 0x54 };
static struct opng_engine_struct
{
    int started;
} engine;
static struct opng_process_struct
{
    unsigned int status;
    int num_iterations;
    osys_foffset_t in_datastream_offset;
    osys_fsize_t in_file_size, out_file_size;
    osys_fsize_t in_idat_size, out_idat_size;
    osys_fsize_t best_idat_size, max_idat_size;
    png_uint_32 in_plte_trns_size, out_plte_trns_size;
    png_uint_32 reductions;
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    int best_compr_level, best_mem_level, best_strategy, best_filter;
} process;
static const osys_fsize_t idat_size_max = ((png_uint_32)0x7fffffffL);
static const char *idat_size_max_string = "2GB";
static struct opng_summary_struct
{
    unsigned int file_count;
    unsigned int err_count;
    unsigned int fix_count;
    unsigned int snip_count;
} summary;
static struct opng_image_struct
{
    png_uint_32 width;
    png_uint_32 height;
    int bit_depth;
    int color_type;
    int compression_type;
    int filter_type;
    int interlace_type;
    png_bytepp row_pointers;
    png_colorp palette;
    int num_palette;
    png_color_16p background_ptr;
    png_color_16 background;
    png_uint_16p hist;
    png_color_8p sig_bit_ptr;
    png_color_8 sig_bit;
    png_bytep trans_alpha;
    int num_trans;
    png_color_16p trans_color_ptr;
    png_color_16 trans_color;
    png_unknown_chunkp unknowns;
    int num_unknowns;
} image;
static struct opng_options options;
static void (*usr_printf)(const char *fmt, ...);
static void (*usr_print_cntrl)(int cntrl_code);
static void (*usr_progress)(unsigned long num, unsigned long denom);
static void (*usr_panic)(const char *msg);
static png_structp read_ptr;
static png_infop read_info_ptr;
static png_structp write_ptr;
static png_infop write_info_ptr;
static void
opng_print_fsize_ratio(osys_fsize_t num, osys_fsize_t denom)
{
    char buffer[32];
    struct opng_ulratio ratio;
    int result;
    ratio.num = num;
    ratio.denom = denom;
    result = opng_ulratio_to_factor_string(buffer, sizeof(buffer), &ratio);
    usr_printf("%s%s", buffer, (result > 0) ? "" : "...");
}
static void
opng_print_fsize_difference(osys_fsize_t init_size, osys_fsize_t final_size,
                            int show_ratio)
{
    osys_fsize_t difference;
    int sign;
    if (init_size <= final_size)
    {
        sign = 0;
        difference = final_size - init_size;
    }
    else
    {
        sign = 1;
        difference = init_size - final_size;
    }
    if (difference == 0)
    {
        usr_printf("no change");
        return;
    }
    if (difference == 1)
        usr_printf("1 byte");
    else
        usr_printf("%" "lu" " bytes", difference);
    if (show_ratio && init_size > 0)
    {
        usr_printf(" = ");
        opng_print_fsize_ratio(difference, init_size);
    }
    usr_printf(sign == 0 ? " increase" : " decrease");
}
static void
opng_print_image_info(int show_dim, int show_depth, int show_type,
                      int show_interlaced)
{
    static const int type_channels[8] = {1, 0, 3, 1, 2, 0, 4, 0};
    int channels, printed;
    printed = 0;
    if (show_dim)
    {
        printed = 1;
        usr_printf("%lux%lu pixels",
                   (unsigned long)image.width, (unsigned long)image.height);
    }
    if (show_depth)
    {
        if (printed)
            usr_printf(", ");
        printed = 1;
        channels = type_channels[image.color_type & 7];
        if (channels != 1)
            usr_printf("%dx%d bits/pixel", channels, image.bit_depth);
        else if (image.bit_depth != 1)
            usr_printf("%d bits/pixel", image.bit_depth);
        else
            usr_printf("1 bit/pixel");
    }
    if (show_type)
    {
        if (printed)
            usr_printf(", ");
        printed = 1;
        if (image.color_type & 1)
        {
            if (image.num_palette == 1)
                usr_printf("1 color");
            else
                usr_printf("%d colors", image.num_palette);
            if (image.num_trans > 0)
                usr_printf(" (%d transparent)", image.num_trans);
            usr_printf(" in palette");
        }
        else
        {
            usr_printf((image.color_type & 2) ?
                       "RGB" : "grayscale");
            if (image.color_type & 4)
                usr_printf("+alpha");
            else if (image.trans_color_ptr != ((void*)0))
                usr_printf("+transparency");
        }
    }
    if (show_interlaced)
    {
        if (image.interlace_type != 0)
        {
            if (printed)
                usr_printf(", ");
            usr_printf("interlaced");
        }
    }
}
static void
opng_print_warning(const char *msg)
{
    usr_print_cntrl('\v');
    usr_printf("Warning: %s\n", msg);
}
static void
opng_print_error(const char *msg)
{
    usr_print_cntrl('\v');
    usr_printf("Error: %s\n", msg);
}
static void
opng_warning(png_structp png_ptr, png_const_charp msg)
{
    if (png_ptr == read_ptr)
        process.status |= (INPUT_HAS_ERRORS | OUTPUT_NEEDS_NEW_IDAT);
    opng_print_warning(msg);
}
static void
opng_error(png_structp png_ptr, png_const_charp msg)
{
    if (png_ptr == read_ptr)
        process.status |= (INPUT_HAS_ERRORS | OUTPUT_NEEDS_NEW_IDAT);
    for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = msg;
}
static void
opng_free(void *ptr)
{
    free(ptr);
}
static void
opng_check_idat_size(osys_fsize_t size)
{
    if (size > idat_size_max)
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "IDAT sizes larger than the maximum chunk size "
              "are currently unsupported";
}
static void
opng_set_keep_unknown_chunk(png_structp png_ptr,
                            int keep, png_bytep chunk_type)
{
    png_byte chunk_name[5];
    __builtin___memcpy_chk (chunk_name, chunk_type, 4, __builtin_object_size (chunk_name, 0));
    chunk_name[4] = 0;
    if (!png_handle_as_unknown(png_ptr, chunk_name))
        png_set_keep_unknown_chunks(png_ptr, keep, chunk_name, 1);
}
static int
opng_is_image_chunk(png_bytep chunk_type)
{
    if ((chunk_type[0] & 0x20) == 0)
        return 1;
    if (memcmp(chunk_type, sig_tRNS, 4) == 0)
        return 1;
    return 0;
}
static int
opng_is_apng_chunk(png_bytep chunk_type)
{
    if (memcmp(chunk_type, sig_acTL, 4) == 0 ||
        memcmp(chunk_type, sig_fcTL, 4) == 0 ||
        memcmp(chunk_type, sig_fdAT, 4) == 0)
        return 1;
    return 0;
}
static int
opng_allow_chunk(png_bytep chunk_type)
{
    if (opng_is_image_chunk(chunk_type))
        return 1;
    if (options.strip_all)
        return 0;
    if (memcmp(chunk_type, sig_dSIG, 4) == 0)
        return 0;
    if (options.snip && opng_is_apng_chunk(chunk_type))
        return 0;
    return 1;
}
static void
opng_handle_chunk(png_structp png_ptr, png_bytep chunk_type)
{
    int keep;
    if (opng_is_image_chunk(chunk_type))
        return;
    if (options.strip_all)
    {
        process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        opng_set_keep_unknown_chunk(png_ptr,
                                    1, chunk_type);
        return;
    }
    if (memcmp(chunk_type, sig_bKGD, 4) == 0 ||
        memcmp(chunk_type, sig_hIST, 4) == 0 ||
        memcmp(chunk_type, sig_sBIT, 4) == 0)
        return;
    keep = 3;
    if (memcmp(chunk_type, sig_dSIG, 4) == 0)
        process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
    else if (opng_is_apng_chunk(chunk_type))
    {
        process.status |= INPUT_HAS_APNG;
        if (memcmp(chunk_type, sig_fdAT, 4) == 0)
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        if (options.snip)
        {
            process.status |= INPUT_HAS_JUNK;
            keep = 1;
        }
    }
    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}
static void
opng_init_read_data(void)
{
}
static void
opng_init_write_data(void)
{
    process.out_file_size = 0;
    process.out_plte_trns_size = 0;
    process.out_idat_size = 0;
}
static void
opng_read_data(png_structp png_ptr, png_bytep data, size_t length)
{
    FILE *stream = (FILE *)png_get_io_ptr(png_ptr);
    int io_state = png_get_io_state(png_ptr);
    int io_state_loc = io_state & 0x00f0;
    png_bytep chunk_sig;
    if (fread(data, 1, length, stream) != length)
        png_error(png_ptr,
            "Can't read the input file or unexpected end of file");
    if (process.in_file_size == 0)
    {
        { if (!(length == 8)) usr_panic("PNG I/O must start with the first 8 bytes"); };
        process.in_datastream_offset = osys_ftello(stream) - 8;
        process.status |= INPUT_HAS_PNG_DATASTREAM;
        if (io_state_loc == 0x0010)
            process.status |= INPUT_HAS_PNG_SIGNATURE;
        if (process.in_datastream_offset == 0)
            process.status |= INPUT_IS_PNG_FILE;
        else if (process.in_datastream_offset < 0)
            png_error(png_ptr,
                "Can't get the file-position indicator in input file");
        process.in_file_size = (osys_fsize_t)process.in_datastream_offset;
    }
    process.in_file_size += length;
    { if (!((io_state & 0x0001) && (io_state_loc != 0))) usr_panic("Incorrect info in png_ptr->io_state"); };
    if (io_state_loc == 0x0020)
    {
        { if (!(length == 8)) usr_panic("Reading chunk header, expecting 8 bytes"); };
        chunk_sig = data + 4;
        if (memcmp(chunk_sig, sig_IDAT, 4) == 0)
        {
            { if (!(png_ptr == read_ptr)) usr_panic("Incorrect I/O handler setup"); };
            if (png_get_rows(read_ptr, read_info_ptr) == ((void*)0))
            {
                { if (!(process.in_idat_size == 0)) usr_panic("Found IDAT with no rows"); };
                if (png_get_image_height(read_ptr, read_info_ptr) == 0)
                    return;
                { if (!(pngx_malloc_rows(read_ptr, read_info_ptr, 0) != ((void*)0))) usr_panic("Failed allocation of image rows; " "unsafe libpng allocator"); };
                png_data_freer(read_ptr, read_info_ptr,
                               2, 0x0040);
            }
            else
            {
                process.status |= INPUT_HAS_JUNK;
            }
            process.in_idat_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3))));
        }
        else if (memcmp(chunk_sig, sig_PLTE, 4) == 0 ||
                 memcmp(chunk_sig, sig_tRNS, 4) == 0)
        {
            process.in_plte_trns_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3)))) + 12;
        }
        else
            opng_handle_chunk(png_ptr, chunk_sig);
    }
    else if (io_state_loc == 0x0080)
    {
        { if (!(length == 4)) usr_panic("Reading chunk CRC, expecting 4 bytes"); };
    }
}
static void
opng_write_data(png_structp png_ptr, png_bytep data, size_t length)
{
    static int allow_crt_chunk;
    static int crt_chunk_is_idat;
    static osys_foffset_t crt_idat_offset;
    static osys_fsize_t crt_idat_size;
    static png_uint_32 crt_idat_crc;
    FILE *stream = (FILE *)png_get_io_ptr(png_ptr);
    int io_state = png_get_io_state(png_ptr);
    int io_state_loc = io_state & 0x00f0;
    png_bytep chunk_sig;
    png_byte buf[4];
    { if (!((io_state & 0x0002) && (io_state_loc != 0))) usr_panic("Incorrect info in png_ptr->io_state"); };
    if (io_state_loc == 0x0020)
    {
        { if (!(length == 8)) usr_panic("Writing chunk header, expecting 8 bytes"); };
        chunk_sig = data + 4;
        allow_crt_chunk = opng_allow_chunk(chunk_sig);
        if (memcmp(chunk_sig, sig_IDAT, 4) == 0)
        {
            crt_chunk_is_idat = 1;
            process.out_idat_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3))));
            if (stream == ((void*)0))
            {
                if (process.out_idat_size > process.max_idat_size)
                    for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = ((void*)0);
            }
        }
        else
        {
            crt_chunk_is_idat = 0;
            if (memcmp(chunk_sig, sig_PLTE, 4) == 0 ||
                memcmp(chunk_sig, sig_tRNS, 4) == 0)
            {
                process.out_plte_trns_size += (((png_uint_32)(*(data)) << 24) + ((png_uint_32)(*((data) + 1)) << 16) + ((png_uint_32)(*((data) + 2)) << 8) + ((png_uint_32)(*((data) + 3)))) + 12;
            }
        }
    }
    else if (io_state_loc == 0x0080)
    {
        { if (!(length == 4)) usr_panic("Writing chunk CRC, expecting 4 bytes"); };
    }
    if (stream == ((void*)0))
        return;
    if (io_state_loc != 0x0010 && !allow_crt_chunk)
        return;
    switch (io_state_loc)
    {
        case 0x0020:
        {
            if (crt_chunk_is_idat)
            {
                if (crt_idat_offset == 0)
                {
                    crt_idat_offset = osys_ftello(stream);
                    if (process.best_idat_size > 0)
                    {
                        crt_idat_size = process.best_idat_size;
                    }
                    else
                    {
                        crt_idat_size = length;
                    }
                    png_save_uint_32(data, (png_uint_32)crt_idat_size);
                    crt_idat_crc = crc32(0, sig_IDAT, 4);
                }
                else
                {
                    return;
                }
            }
            else
            {
                if (crt_idat_offset != 0)
                {
                    png_save_uint_32(buf, crt_idat_crc);
                    if (fwrite(buf, 1, 4, stream) != 4)
                        io_state = 0;
                    process.out_file_size += 4;
                    if (process.out_idat_size != crt_idat_size)
                    {
                        { if (!(process.best_idat_size == 0)) usr_panic("Wrong guess of the output IDAT size"); };
                        opng_check_idat_size(process.out_idat_size);
                        png_save_uint_32(buf,
                                         (png_uint_32)process.out_idat_size);
                        if (osys_fwrite_at(stream, crt_idat_offset, 0,
                                           buf, 4) != 4)
                            io_state = 0;
                    }
                    if (io_state == 0)
                        png_error(png_ptr, "Can't finalize IDAT");
                    crt_idat_offset = 0;
                }
            }
            break;
        }
        case 0x0040:
        {
            if (crt_chunk_is_idat)
                crt_idat_crc = crc32(crt_idat_crc, data, length);
            break;
        }
        case 0x0080:
        {
            if (crt_chunk_is_idat)
                return;
            break;
        }
    }
    if (fwrite(data, 1, length, stream) != length)
        png_error(png_ptr, "Can't write the output file");
    process.out_file_size += length;
}
static void
opng_clear_image_info(void)
{
    __builtin___memset_chk (&image, 0, sizeof(image), __builtin_object_size (&image, 0));
}
static void
opng_load_image_info(png_structp png_ptr, png_infop info_ptr, int load_meta)
{
    __builtin___memset_chk (&image, 0, sizeof(image), __builtin_object_size (&image, 0));
    png_get_IHDR(png_ptr, info_ptr,
        &image.width, &image.height, &image.bit_depth, &image.color_type,
        &image.interlace_type, &image.compression_type, &image.filter_type);
    image.row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &image.palette, &image.num_palette);
    if (png_get_tRNS(png_ptr, info_ptr,
        &image.trans_alpha, &image.num_trans, &image.trans_color_ptr))
    {
        if (image.trans_color_ptr != ((void*)0))
        {
            image.trans_color = *image.trans_color_ptr;
            image.trans_color_ptr = &image.trans_color;
        }
    }
    if (!load_meta)
        return;
    if (png_get_bKGD(png_ptr, info_ptr, &image.background_ptr))
    {
        image.background = *image.background_ptr;
        image.background_ptr = &image.background;
    }
    png_get_hIST(png_ptr, info_ptr, &image.hist);
    if (png_get_sBIT(png_ptr, info_ptr, &image.sig_bit_ptr))
    {
        image.sig_bit = *image.sig_bit_ptr;
        image.sig_bit_ptr = &image.sig_bit;
    }
    image.num_unknowns =
        png_get_unknown_chunks(png_ptr, info_ptr, &image.unknowns);
}
static void
opng_store_image_info(png_structp png_ptr, png_infop info_ptr, int store_meta)
{
    { if (!(image.row_pointers != ((void*)0))) usr_panic("No info in image"); };
    png_set_IHDR(png_ptr, info_ptr,
        image.width, image.height, image.bit_depth, image.color_type,
        image.interlace_type, image.compression_type, image.filter_type);
    png_set_rows(write_ptr, write_info_ptr, image.row_pointers);
    if (image.palette != ((void*)0))
        png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
    if (image.trans_alpha != ((void*)0) || image.trans_color_ptr != ((void*)0))
        png_set_tRNS(png_ptr, info_ptr,
            image.trans_alpha, image.num_trans, image.trans_color_ptr);
    if (!store_meta)
        return;
    if (image.background_ptr != ((void*)0))
        png_set_bKGD(png_ptr, info_ptr, image.background_ptr);
    if (image.hist != ((void*)0))
        png_set_hIST(png_ptr, info_ptr, image.hist);
    if (image.sig_bit_ptr != ((void*)0))
        png_set_sBIT(png_ptr, info_ptr, image.sig_bit_ptr);
    if (image.num_unknowns != 0)
    {
        int i;
        png_set_unknown_chunks(png_ptr, info_ptr,
            image.unknowns, image.num_unknowns);
        for (i = 0; i < image.num_unknowns; ++i)
            png_set_unknown_chunk_location(png_ptr, info_ptr,
                i, image.unknowns[i].location);
    }
}
static void
opng_destroy_image_info(void)
{
    png_uint_32 i;
    int j;
    if (image.row_pointers == ((void*)0))
        return;
    for (i = 0; i < image.height; ++i)
        opng_free(image.row_pointers[i]);
    opng_free(image.row_pointers);
    opng_free(image.palette);
    opng_free(image.trans_alpha);
    opng_free(image.hist);
    for (j = 0; j < image.num_unknowns; ++j)
        opng_free(image.unknowns[j].data);
    opng_free(image.unknowns);
    __builtin___memset_chk (&image, 0, sizeof(image), __builtin_object_size (&image, 0));
}
static void
opng_read_file(FILE *infile)
{
    const char *fmt_name;
    int num_img;
    png_uint_32 reductions;
    const char * volatile err_msg;
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        read_ptr = png_create_read_struct("1.6.21", ((void*)0),
            opng_error, opng_warning);
        read_info_ptr = png_create_info_struct(read_ptr);
        if (read_info_ptr == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
        png_set_keep_unknown_chunks(read_ptr,
                                    3, ((void*)0), 0);
        png_set_user_limits(read_ptr, ((png_uint_32)0x7fffffffL), ((png_uint_32)0x7fffffffL));
        opng_init_read_data();
        png_set_read_fn(read_ptr, infile, opng_read_data);
        fmt_name = ((void*)0);
        num_img = pngx_read_image(read_ptr, read_info_ptr, &fmt_name, ((void*)0));
        if (num_img <= 0)
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Unrecognized image file format";
        if (num_img > 1)
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        if ((process.status & INPUT_IS_PNG_FILE) &&
            (process.status & INPUT_HAS_MULTIPLE_IMAGES))
        {
            fmt_name = (process.status & INPUT_HAS_PNG_SIGNATURE) ?
                       "APNG" : "APNG datastream";
        }
        { if (!(fmt_name != ((void*)0))) usr_panic("No format name from pngxtern"); };
        if (process.in_file_size == 0)
        {
            if (osys_fgetsize(infile, &process.in_file_size) < 0)
            {
                opng_print_warning("Can't get the correct file size");
                process.in_file_size = 0;
            }
        }
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        if (opng_validate_image(read_ptr, read_info_ptr))
        {
           png_warning(read_ptr, err_msg);
           err_msg = ((void*)0);
        }
    }
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        if (err_msg != ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
        if (strcmp(fmt_name, "PNG") != 0)
        {
            usr_printf("Importing %s", fmt_name);
            if (process.status & INPUT_HAS_MULTIPLE_IMAGES)
            {
                if (!(process.status & INPUT_IS_PNG_FILE))
                    usr_printf(" (multi-image or animation)");
                if (options.snip)
                    usr_printf("; snipping...");
            }
            usr_printf("\n");
        }
        opng_load_image_info(read_ptr, read_info_ptr, 1);
        opng_print_image_info(1, 1, 1, 1);
        usr_printf("\n");
        reductions = ((0x0001 | 0x0002) | (0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080) | (0x0100 | 0x0200) | 0x1000) & ~0x1000;
        if (options.nb)
            reductions &= ~(0x0001 | 0x0002);
        if (options.nc)
            reductions &= ~(0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040 | 0x0080);
        if (options.np)
            reductions &= ~(0x0100 | 0x0200);
        if (options.nz && (process.status & INPUT_HAS_PNG_DATASTREAM))
        {
            reductions = 0x0000;
        }
        if (process.status & INPUT_HAS_DIGITAL_SIGNATURE)
        {
            reductions = 0x0000;
        }
        if ((process.status & INPUT_IS_PNG_FILE) &&
            (process.status & INPUT_HAS_MULTIPLE_IMAGES) &&
            (reductions != 0x0000) && !options.snip)
        {
            usr_printf(
                "Can't reliably reduce APNG file; disabling reductions.\n"
                "(Did you want to -snip and optimize the first frame?)\n");
            reductions = 0x0000;
        }
        process.reductions =
            opng_reduce_image(read_ptr, read_info_ptr, reductions);
        if (process.reductions != 0x0000)
        {
            opng_load_image_info(read_ptr, read_info_ptr, 1);
            usr_printf("Reducing image to ");
            opng_print_image_info(0, 1, 1, 0);
            usr_printf("\n");
        }
        if (options.interlace >= 0 &&
            image.interlace_type != options.interlace)
        {
            image.interlace_type = options.interlace;
            process.status |= OUTPUT_NEEDS_NEW_IDAT;
        }
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        png_data_freer(read_ptr, read_info_ptr,
                       1, 0x7fff);
        png_destroy_read_struct(&read_ptr, &read_info_ptr, ((void*)0));
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    }
    png_data_freer(read_ptr, read_info_ptr,
                   2, 0x7fff);
    png_destroy_read_struct(&read_ptr, &read_info_ptr, ((void*)0));
}
static void
opng_write_file(FILE *outfile,
                int compression_level, int memory_level,
                int compression_strategy, int filter)
{
    const char * volatile err_msg;
    { if (!(compression_level >= 1 && compression_level <= 9 && memory_level >= 1 && memory_level <= 9 && compression_strategy >= 0 && compression_strategy <= 3 && filter >= 0 && filter <= 5)) usr_panic("Invalid encoding parameters"); };
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        write_ptr = png_create_write_struct("1.6.21",
            ((void*)0), opng_error, opng_warning);
        write_info_ptr = png_create_info_struct(write_ptr);
        if (write_info_ptr == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
        png_set_compression_level(write_ptr, compression_level);
        png_set_compression_mem_level(write_ptr, memory_level);
        png_set_compression_strategy(write_ptr, compression_strategy);
        png_set_filter(write_ptr, 0, filter_table[filter]);
        if (compression_strategy != 2 &&
            compression_strategy != 3)
        {
            if (options.window_bits > 0)
                png_set_compression_window_bits(write_ptr,
                                                options.window_bits);
        }
        else
        {
            png_set_compression_window_bits(write_ptr, 9);
        }
        png_set_keep_unknown_chunks(write_ptr,
                                    3, ((void*)0), 0);
        png_set_user_limits(write_ptr, ((png_uint_32)0x7fffffffL), ((png_uint_32)0x7fffffffL));
        opng_store_image_info(write_ptr, write_info_ptr, (outfile != ((void*)0)));
        opng_init_write_data();
        png_set_write_fn(write_ptr, outfile, opng_write_data, ((void*)0));
        png_write_png(write_ptr, write_info_ptr, 0, ((void*)0));
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        process.out_idat_size = idat_size_max + 1;
    }
    png_destroy_write_struct(&write_ptr, &write_info_ptr);
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
}
static void
opng_copy_file(FILE *infile, FILE *outfile)
{
    volatile png_bytep buf;
    const png_uint_32 buf_size_incr = 0x1000;
    png_uint_32 buf_size, length;
    png_byte chunk_hdr[8];
    const char * volatile err_msg;
    write_ptr = png_create_write_struct("1.6.21",
        ((void*)0), opng_error, opng_warning);
    if (write_ptr == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Out of memory";
    opng_init_write_data();
    png_set_write_fn(write_ptr, outfile, opng_write_data, ((void*)0));
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        buf = ((void*)0);
        buf_size = 0;
        png_write_sig(write_ptr);
        do
        {
            if (fread(chunk_hdr, 8, 1, infile) != 1)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Read error";
            length = (((png_uint_32)(*(chunk_hdr)) << 24) + ((png_uint_32)(*((chunk_hdr) + 1)) << 16) + ((png_uint_32)(*((chunk_hdr) + 2)) << 8) + ((png_uint_32)(*((chunk_hdr) + 3))));
            if (length > ((png_uint_32)0x7fffffffL))
            {
                if (buf == ((void*)0) && length == 0x89504e47UL)
                    continue;
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Data error";
            }
            if (length + 4 > buf_size)
            {
                png_free(write_ptr, buf);
                buf_size = (((length + 4) + (buf_size_incr - 1))
                            / buf_size_incr) * buf_size_incr;
                buf = (png_bytep)png_malloc(write_ptr, buf_size);
            }
            if (fread(buf, length + 4, 1, infile) != 1)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Read error";
            png_write_chunk(write_ptr, chunk_hdr + 4, buf, length);
        } while (memcmp(chunk_hdr + 4, sig_IEND, 4) != 0);
        err_msg = ((void*)0);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
    }
    png_free(write_ptr, buf);
    png_destroy_write_struct(&write_ptr, ((void*)0));
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
}
static void
opng_init_iteration(opng_bitset_t cmdline_set, opng_bitset_t mask_set,
                    const char *preset, opng_bitset_t *output_set)
{
    opng_bitset_t preset_set;
    *output_set = cmdline_set & mask_set;
    if (*output_set == 0 && cmdline_set != 0)
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Iteration parameter(s) out of range";
    if (*output_set == 0 || options.optim_level >= 0)
    {
        preset_set = opng_rangeset_string_to_bitset(preset, ((void*)0));
        *output_set |= preset_set & mask_set;
    }
}
static void
opng_init_iterations(void)
{
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    opng_bitset_t strategy_singles_set;
    int preset_index;
    int t1, t2;
    if ((process.status & OUTPUT_NEEDS_NEW_IDAT) || options.full)
        process.max_idat_size = idat_size_max;
    else
    {
        { if (!(process.in_idat_size > 0)) usr_panic("No IDAT in input"); };
        process.max_idat_size =
            process.in_idat_size + process.in_plte_trns_size;
    }
    preset_index = options.optim_level;
    if (preset_index < 0)
        preset_index = 2;
    else if (preset_index > 7)
        preset_index = 7;
    opng_init_iteration(options.compr_level_set, ((1 << (9+1)) - (1 << 1)),
        presets[preset_index].compr_level, &compr_level_set);
    opng_init_iteration(options.mem_level_set, ((1 << (9+1)) - (1 << 1)),
        presets[preset_index].mem_level, &mem_level_set);
    opng_init_iteration(options.strategy_set, ((1 << (3+1)) - (1 << 0)),
        presets[preset_index].strategy, &strategy_set);
    opng_init_iteration(options.filter_set, ((1 << (5+1)) - (1 << 0)),
        presets[preset_index].filter, &filter_set);
    if (compr_level_set == 0)
        (*(&compr_level_set) |= (1U << (9)));
    if (mem_level_set == 0)
        (*(&mem_level_set) |= (1U << (8)));
    if (image.bit_depth < 8 || image.palette != ((void*)0))
    {
        if (strategy_set == 0)
            (*(&strategy_set) |= (1U << (0)));
        if (filter_set == 0)
            (*(&filter_set) |= (1U << (0)));
    }
    else
    {
        if (strategy_set == 0)
            (*(&strategy_set) |= (1U << (1)));
        if (filter_set == 0)
            (*(&filter_set) |= (1U << (5)));
    }
    process.compr_level_set = compr_level_set;
    process.mem_level_set = mem_level_set;
    process.strategy_set = strategy_set;
    process.filter_set = filter_set;
    strategy_singles_set = (1 << 2) | (1 << 3);
    t1 = opng_bitset_count(compr_level_set) *
         opng_bitset_count(strategy_set & ~strategy_singles_set);
    t2 = opng_bitset_count(strategy_set & strategy_singles_set);
    process.num_iterations =
        (t1 + t2) *
        opng_bitset_count(mem_level_set) * opng_bitset_count(filter_set);
    { if (!(process.num_iterations > 0)) usr_panic("Invalid iteration parameters"); };
}
static void
opng_iterate(void)
{
    opng_bitset_t compr_level_set, mem_level_set, strategy_set, filter_set;
    opng_bitset_t saved_compr_level_set;
    int compr_level, mem_level, strategy, filter;
    int counter;
    int line_reused;
    { if (!(process.num_iterations > 0)) usr_panic("Iterations not initialized"); };
    if ((process.num_iterations == 1) &&
        (process.status & OUTPUT_NEEDS_NEW_IDAT))
    {
       process.best_idat_size = 0;
       process.best_compr_level = opng_bitset_find_first(process.compr_level_set);
       process.best_mem_level = opng_bitset_find_first(process.mem_level_set);
       process.best_strategy = opng_bitset_find_first(process.strategy_set);
       process.best_filter = opng_bitset_find_first(process.filter_set);
       return;
    }
    compr_level_set = process.compr_level_set;
    mem_level_set = process.mem_level_set;
    strategy_set = process.strategy_set;
    filter_set = process.filter_set;
    process.best_idat_size = idat_size_max + 1;
    process.best_compr_level = -1;
    process.best_mem_level = -1;
    process.best_strategy = -1;
    process.best_filter = -1;
    usr_printf("\nTrying:\n");
    line_reused = 0;
    counter = 0;
    for (filter = 0;
         filter <= 5; ++filter)
    {
       if ((((filter_set) & (1U << (filter))) != 0))
       {
          for (strategy = 0;
               strategy <= 3; ++strategy)
          {
             if ((((strategy_set) & (1U << (strategy))) != 0))
             {
                saved_compr_level_set = compr_level_set;
                if (strategy == 2)
                {
                   compr_level_set = 0;
                   (*(&compr_level_set) |= (1U << (1)));
                }
                else if (strategy == 3)
                {
                   compr_level_set = 0;
                   (*(&compr_level_set) |= (1U << (9)));
                }
                for (compr_level = 9;
                     compr_level >= 1; --compr_level)
                {
                   if ((((compr_level_set) & (1U << (compr_level))) != 0))
                   {
                      for (mem_level = 9;
                           mem_level >= 1; --mem_level)
                      {
                         if ((((mem_level_set) & (1U << (mem_level))) != 0))
                         {
                            usr_printf(
                               "  zc = %d  zm = %d  zs = %d  f = %d",
                               compr_level, mem_level, strategy, filter);
                            usr_progress(counter, process.num_iterations);
                            ++counter;
                            opng_write_file(((void*)0),
                               compr_level, mem_level, strategy, filter);
                            if (process.out_idat_size > idat_size_max)
                            {
                               if (options.verbose)
                               {
                                  usr_printf("\t\tIDAT too big\n");
                                  line_reused = 0;
                               }
                               else
                               {
                                  usr_print_cntrl('\r');
                                  line_reused = 1;
                               }
                               continue;
                            }
                            usr_printf("\t\tIDAT size = %" "lu"
                                       "\n",
                                       process.out_idat_size);
                            line_reused = 0;
                            if (process.best_idat_size < process.out_idat_size)
                               continue;
                            if (process.best_idat_size == process.out_idat_size
                                && process.best_strategy >= 2)
                               continue;
                            process.best_compr_level = compr_level;
                            process.best_mem_level = mem_level;
                            process.best_strategy = strategy;
                            process.best_filter = filter;
                            process.best_idat_size = process.out_idat_size;
                            if (!options.full)
                               process.max_idat_size = process.out_idat_size;
                         }
                      }
                   }
                }
                compr_level_set = saved_compr_level_set;
             }
          }
       }
    }
    if (line_reused)
        usr_print_cntrl(-31);
    { if (!(counter == process.num_iterations)) usr_panic("Inconsistent iteration counter"); };
    usr_progress(counter, process.num_iterations);
}
static void
opng_finish_iterations(void)
{
    if (process.best_idat_size + process.out_plte_trns_size <
        process.in_idat_size + process.in_plte_trns_size)
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    if (process.status & OUTPUT_NEEDS_NEW_IDAT)
    {
        if (process.best_idat_size <= idat_size_max)
        {
            usr_printf("\nSelecting parameters:\n");
            usr_printf("  zc = %d  zm = %d  zs = %d  f = %d",
                       process.best_compr_level, process.best_mem_level,
                       process.best_strategy, process.best_filter);
            if (process.best_idat_size > 0)
            {
                usr_printf("\t\tIDAT size = %" "lu",
                           process.best_idat_size);
            }
            usr_printf("\n");
        }
        else
        {
            usr_printf("  zc = *  zm = *  zs = *  f = *\t\tIDAT size > %s\n",
                       idat_size_max_string);
        }
    }
}
static void
opng_optimize_impl(const char *infile_name)
{
    static FILE *infile, *outfile;
    static const char *infile_name_local;
    static const char *outfile_name, *bakfile_name;
    static int new_outfile, has_backup;
    char name_buf[1024], tmp_buf[1024];
    const char * volatile err_msg;
    __builtin___memset_chk (&process, 0, sizeof(process), __builtin_object_size (&process, 0));
    if (options.force)
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    err_msg = ((void*)0);
    infile_name_local = infile_name;
    if ((infile = fopen(infile_name_local, "rb")) == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't open the input file";
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        opng_read_file(infile);
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        { if (!(err_msg != ((void*)0))) usr_panic("Mysterious error in opng_read_file"); };
    }
    fclose(infile);
    if (err_msg != ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    if (process.status & INPUT_HAS_ERRORS)
    {
        usr_printf("Recoverable errors found in input.");
        if (options.fix)
        {
            usr_printf(" Fixing...\n");
            process.status |= OUTPUT_NEEDS_NEW_FILE;
        }
        else
        {
            usr_printf(" Rerun " "OptiPNG" " with -fix enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Previous error(s) not fixed";
        }
    }
    if (process.status & INPUT_HAS_JUNK)
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (!(process.status & INPUT_HAS_PNG_SIGNATURE))
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
    {
        if (options.nz && (process.status & OUTPUT_NEEDS_NEW_IDAT))
        {
            usr_printf(
                "IDAT recoding is necessary, but is disabled by the user.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't continue";
        }
    }
    else
        process.status |= OUTPUT_NEEDS_NEW_IDAT;
    if (process.status & INPUT_HAS_DIGITAL_SIGNATURE)
    {
        usr_printf("Digital signature found in input.");
        if (options.force)
        {
            usr_printf(" Erasing...\n");
            process.status |= OUTPUT_NEEDS_NEW_FILE;
        }
        else
        {
            usr_printf(" Rerun " "OptiPNG" " with -force enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't optimize digitally-signed files";
        }
    }
    if (process.status & INPUT_HAS_MULTIPLE_IMAGES)
    {
        if (!options.snip && !(process.status & INPUT_IS_PNG_FILE))
        {
            usr_printf("Conversion to PNG requires snipping. "
                       "Rerun " "OptiPNG" " with -snip enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Incompatible input format";
        }
    }
    if ((process.status & INPUT_HAS_APNG) && options.snip)
        process.status |= OUTPUT_NEEDS_NEW_FILE;
    if (process.status & INPUT_HAS_STRIPPED_DATA)
        usr_printf("Stripping metadata...\n");
    outfile_name = ((void*)0);
    if (!(process.status & INPUT_IS_PNG_FILE))
    {
        if (osys_path_chext(name_buf, sizeof(name_buf),
                            infile_name_local, ".png") == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create the output file (name too long)";
        outfile_name = name_buf;
    }
    if (options.out_name != ((void*)0))
        outfile_name = options.out_name;
    if (options.dir_name != ((void*)0))
    {
        const char *tmp_name;
        if (outfile_name != ((void*)0))
        {
            __builtin___strcpy_chk (tmp_buf, outfile_name, __builtin_object_size (tmp_buf, 2 > 1 ? 1 : 0));
            tmp_name = tmp_buf;
        }
        else
            tmp_name = infile_name_local;
        if (osys_path_chdir(name_buf, sizeof(name_buf), tmp_name,
                            options.dir_name) == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create the output file (name too long)";
        outfile_name = name_buf;
    }
    if (outfile_name == ((void*)0))
    {
        outfile_name = infile_name_local;
        new_outfile = 0;
    }
    else
    {
        int test_eq = osys_test_eq(infile_name_local, outfile_name);
        if (test_eq >= 0)
            new_outfile = (test_eq == 0);
        else
        {
            new_outfile = (strcmp(infile_name_local, outfile_name) != 0);
        }
    }
    bakfile_name = tmp_buf;
    if (new_outfile)
    {
        if (osys_path_mkbak(tmp_buf, sizeof(tmp_buf),
            outfile_name) == ((void*)0))
            bakfile_name = ((void*)0);
    }
    else
    {
        if (osys_path_mkbak(tmp_buf, sizeof(tmp_buf),
            infile_name_local) == ((void*)0))
            bakfile_name = ((void*)0);
    }
    if (bakfile_name == ((void*)0))
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't create backup file (name too long)";
    if (!options.simulate && osys_test(outfile_name, "e") == 0)
    {
        if (new_outfile && !options.backup && !options.clobber)
        {
            usr_printf("The output file exists. "
                       "Rerun " "OptiPNG" " with -backup enabled.\n");
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't overwrite the output file";
        }
        if (osys_test(outfile_name, "fw") != 0 ||
            (!options.clobber && osys_test(bakfile_name, "e") == 0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the existing output file";
    }
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
        usr_printf("Input IDAT size = %" "lu" " bytes\n",
                   process.in_idat_size);
    usr_printf("Input file size = %" "lu" " bytes\n",
               process.in_file_size);
    if (!options.nz || (process.status & OUTPUT_NEEDS_NEW_IDAT))
    {
        opng_init_iterations();
        opng_iterate();
        opng_finish_iterations();
    }
    if (process.status & OUTPUT_NEEDS_NEW_IDAT)
    {
        process.status |= OUTPUT_NEEDS_NEW_FILE;
        opng_check_idat_size(process.best_idat_size);
    }
    if (!(process.status & OUTPUT_NEEDS_NEW_FILE))
    {
        usr_printf("\n%s is already optimized.\n", infile_name_local);
        if (!new_outfile)
            return;
    }
    if (options.simulate)
    {
        usr_printf("\nNo output: simulation mode.\n");
        return;
    }
    if (new_outfile)
    {
        usr_printf("\nOutput file: %s\n", outfile_name);
        if (options.dir_name != ((void*)0))
            osys_create_dir(options.dir_name);
        has_backup = 0;
        if (osys_test(outfile_name, "e") == 0)
        {
            if (osys_rename(outfile_name, bakfile_name, options.clobber) != 0)
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the output file";
            has_backup = 1;
        }
    }
    else
    {
        if (osys_rename(infile_name_local, bakfile_name, options.clobber) != 0)
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't back up the input file";
        has_backup = 1;
    }
    outfile = fopen(outfile_name, "wb");
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        if (outfile == ((void*)0))
            for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't open the output file";
        if (process.status & OUTPUT_NEEDS_NEW_IDAT)
        {
            opng_write_file(outfile,
                process.best_compr_level, process.best_mem_level,
                process.best_strategy, process.best_filter);
        }
        else
        {
            infile =
                fopen((new_outfile ? infile_name_local : bakfile_name), "rb");
            if (infile == ((void*)0))
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't reopen the input file";
            { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
            {
                if (process.in_datastream_offset > 0 &&
                    osys_fseeko(infile, process.in_datastream_offset,
                                 0) != 0)
                    for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = "Can't reposition the input file";
                process.best_idat_size = process.in_idat_size;
                opng_copy_file(infile, outfile);
            }
            while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
            {
                { if (!(err_msg != ((void*)0))) usr_panic("Mysterious error in opng_copy_file"); };
            }
            fclose(infile);
            if (err_msg != ((void*)0))
                for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
        }
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        if (outfile != ((void*)0))
            fclose(outfile);
        if (has_backup)
        {
            if (osys_rename(bakfile_name,
                            (new_outfile ? outfile_name : infile_name_local),
                            1) != 0)
                opng_print_warning(
                    "Can't recover the original file from backup");
        }
        else
        {
            { if (!(new_outfile)) usr_panic("Overwrote input with no temporary backup"); };
            if (osys_unlink(outfile_name) != 0)
                opng_print_warning("Can't remove the broken output file");
        }
        for (;; longjmp(*the_exception_context->penv, 1)) the_exception_context->v.etmp = err_msg;
    }
    fclose(outfile);
    if (options.preserve)
        osys_copy_attr((new_outfile ? infile_name_local : bakfile_name),
                       outfile_name);
    if (!new_outfile && !options.backup)
    {
        if (osys_unlink(bakfile_name) != 0)
            opng_print_warning("Can't remove the backup file");
    }
    usr_printf("\nOutput IDAT size = %" "lu" " bytes",
               process.out_idat_size);
    if (process.status & INPUT_HAS_PNG_DATASTREAM)
    {
        usr_printf(" (");
        opng_print_fsize_difference(process.in_idat_size,
                                    process.out_idat_size, 0);
        usr_printf(")");
    }
    usr_printf("\nOutput file size = %" "lu" " bytes (",
               process.out_file_size);
    opng_print_fsize_difference(process.in_file_size,
                                process.out_file_size, 1);
    usr_printf(")\n");
}
int
opng_initialize(const struct opng_options *init_options,
                const struct opng_ui *init_ui)
{
    usr_printf = init_ui->printf_fn;
    usr_print_cntrl = init_ui->print_cntrl_fn;
    usr_progress = init_ui->progress_fn;
    usr_panic = init_ui->panic_fn;
    if (usr_printf == ((void*)0) ||
        usr_print_cntrl == ((void*)0) ||
        usr_progress == ((void*)0) ||
        usr_panic == ((void*)0))
       return -1;
    options = *init_options;
    if (options.optim_level == 0)
    {
        options.nb = options.nc = options.np = 1;
        options.nz = 1;
    }
    __builtin___memset_chk (&summary, 0, sizeof(summary), __builtin_object_size (&summary, 0));
    engine.started = 1;
    return 0;
}
int
opng_optimize(const char *infile_name)
{
    const char *err_msg;
    volatile int result;
    { if (!(engine.started)) usr_panic("The OptiPNG engine is not running"); };
    usr_printf("** Processing: %s\n", infile_name);
    ++summary.file_count;
    opng_clear_image_info();
    { jmp_buf * volatile exception__prev; jmp_buf exception__env; exception__prev = the_exception_context->penv; the_exception_context->penv = &exception__env; if (setjmp(exception__env) == 0) { do
    {
        opng_optimize_impl(infile_name);
        if (process.status & INPUT_HAS_ERRORS)
        {
            ++summary.err_count;
            ++summary.fix_count;
        }
        if (process.status & INPUT_HAS_MULTIPLE_IMAGES)
        {
            if (options.snip)
                ++summary.snip_count;
        }
        result = 0;
    }
    while (the_exception_context->caught = 0, the_exception_context->caught); } else { the_exception_context->caught = 1; } the_exception_context->penv = exception__prev; } if (!the_exception_context->caught || ((err_msg) = the_exception_context->v.etmp, 0)) { } else
    {
        ++summary.err_count;
        opng_print_error(err_msg);
        result = -1;
    }
    opng_destroy_image_info();
    usr_printf("\n");
    return result;
}
int
opng_finalize(void)
{
    if (options.verbose || summary.snip_count > 0 || summary.err_count > 0)
    {
        usr_printf("** Status report\n");
        usr_printf("%u file(s) have been processed.\n", summary.file_count);
        if (summary.snip_count > 0)
        {
            usr_printf("%u multi-image file(s) have been snipped.\n",
                       summary.snip_count);
        }
        if (summary.err_count > 0)
        {
            usr_printf("%u error(s) have been encountered.\n",
                       summary.err_count);
            if (summary.fix_count > 0)
                usr_printf("%u erroneous file(s) have been fixed.\n",
                           summary.fix_count);
        }
    }
    engine.started = 0;
    return 0;
}
