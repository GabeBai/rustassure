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
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((__noreturn__)) __attribute__((__cold__)) __attribute__((__disable_tail_calls__));
int
opng_validate_image(png_structp png_ptr, png_infop info_ptr)
{
   ((void)0);
   if (png_get_bit_depth(png_ptr, info_ptr) == 0)
      return 0;
   if (png_get_color_type(png_ptr, info_ptr) & 1)
   {
      if (!png_get_valid(png_ptr, info_ptr, 0x0008))
         return 0;
   }
   if (!png_get_valid(png_ptr, info_ptr, 0x8000))
      return 0;
   return 1;
}
static int
opng_insert_palette_entry(png_colorp palette, int *num_palette,
   png_bytep trans_alpha, int *num_trans, int max_tuples,
   unsigned int red, unsigned int green, unsigned int blue, unsigned int alpha,
   int *index)
{
   int low, high, mid, cmp;
   int i;
   (__builtin_expect(!(*num_palette >= 0 && *num_palette <= max_tuples), 0) ? __assert_rtn(__func__, "opngreduc.c", 109, "*num_palette >= 0 && *num_palette <= max_tuples") : (void)0);
   (__builtin_expect(!(*num_trans >= 0 && *num_trans <= *num_palette), 0) ? __assert_rtn(__func__, "opngreduc.c", 110, "*num_trans >= 0 && *num_trans <= *num_palette") : (void)0);
   if (alpha < 255)
   {
      low = 0;
      high = *num_trans - 1;
      while (low <= high)
      {
         mid = (low + high) / 2;
         cmp = (((int)(alpha) != (int)(trans_alpha[mid])) ? ((int)(alpha) - (int)(trans_alpha[mid])) : (((int)(red) != (palette[mid].red)) ? ((int)(red) - (int)(palette[mid].red)) : (((int)(green) != (int)(palette[mid].green)) ? ((int)(green) - (int)(palette[mid].green)) : ((int)(blue) - (int)(palette[mid].blue)))));
         if (cmp < 0)
            high = mid - 1;
         else if (cmp > 0)
            low = mid + 1;
         else
         {
            *index = mid;
            return 0;
         }
      }
   }
   else
   {
      low = *num_trans;
      high = *num_palette - 1;
      while (low <= high)
      {
         mid = (low + high) / 2;
         cmp = (((int)(red) != (int)(palette[mid].red)) ? ((int)(red) - (int)(palette[mid].red)) : (((int)(green) != (int)(palette[mid].green)) ? ((int)(green) - (int)(palette[mid].green)) : ((int)(blue) - (int)(palette[mid].blue))));
         if (cmp < 0)
            high = mid - 1;
         else if (cmp > 0)
            low = mid + 1;
         else
         {
            *index = mid;
            return 0;
         }
      }
   }
   if (alpha > 255)
   {
      for (i = 0; i < *num_trans; ++i)
      {
         cmp = (((int)(red) != (int)(palette[i].red)) ? ((int)(red) - (int)(palette[i].red)) : (((int)(green) != (int)(palette[i].green)) ? ((int)(green) - (int)(palette[i].green)) : ((int)(blue) - (int)(palette[i].blue))));
         if (cmp == 0)
         {
            *index = i;
            return 0;
         }
      }
   }
   if (*num_palette >= max_tuples)
   {
      *num_palette = *num_trans = *index = -1;
      return -1;
   }
   (__builtin_expect(!(low >= 0 && low <= *num_palette), 0) ? __assert_rtn(__func__, "opngreduc.c", 179, "low >= 0 && low <= *num_palette") : (void)0);
   for (i = *num_palette; i > low; --i)
      palette[i] = palette[i - 1];
   palette[low].red = (png_byte)red;
   palette[low].green = (png_byte)green;
   palette[low].blue = (png_byte)blue;
   ++(*num_palette);
   if (alpha < 255)
   {
      (__builtin_expect(!(low <= *num_trans), 0) ? __assert_rtn(__func__, "opngreduc.c", 188, "low <= *num_trans") : (void)0);
      for (i = *num_trans; i > low; --i)
         trans_alpha[i] = trans_alpha[i - 1];
      trans_alpha[low] = (png_byte)alpha;
      ++(*num_trans);
   }
   *index = low;
   return 1;
}
static void
opng_realloc_PLTE(png_structp png_ptr, png_infop info_ptr, int num_palette)
{
   png_color buffer[256];
   png_colorp palette;
   int src_num_palette;
   ((void)0);
   (__builtin_expect(!(num_palette > 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 212, "num_palette > 0") : (void)0);
   src_num_palette = 0;
   png_get_PLTE(png_ptr, info_ptr, &palette, &src_num_palette);
   if (num_palette == src_num_palette)
      return;
   __builtin___memcpy_chk (buffer, palette, num_palette * sizeof(png_color), __builtin_object_size (buffer, 0));
   if (num_palette > src_num_palette)
      __builtin___memset_chk (buffer + src_num_palette, 0, (num_palette - src_num_palette) * sizeof(png_color), __builtin_object_size (buffer + src_num_palette, 0));
   png_set_PLTE(png_ptr, info_ptr, buffer, num_palette);
}
static void
opng_realloc_tRNS(png_structp png_ptr, png_infop info_ptr, int num_trans)
{
   png_byte buffer[256];
   png_bytep trans_alpha;
   int src_num_trans;
   ((void)0);
   (__builtin_expect(!(num_trans > 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 238, "num_trans > 0") : (void)0);
   src_num_trans = 0;
   png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &src_num_trans, ((void*)0));
   if (num_trans == src_num_trans)
      return;
   __builtin___memcpy_chk (buffer, trans_alpha, (size_t)num_trans, __builtin_object_size (buffer, 0));
   if (num_trans > src_num_trans)
      __builtin___memset_chk (buffer + src_num_trans, 0, num_trans - src_num_trans, __builtin_object_size (buffer + src_num_trans, 0));
   png_set_tRNS(png_ptr, info_ptr, buffer, num_trans, ((void*)0));
}
static void
opng_get_alpha_row(png_row_infop row_info_ptr, png_color_16p trans_color,
   png_bytep row, png_bytep alpha_row)
{
   png_bytep sample_ptr;
   png_uint_32 width;
   int color_type, bit_depth, channels;
   png_byte trans_red, trans_green, trans_blue, trans_gray;
   png_uint_32 i;
   width = row_info_ptr->width;
   color_type = row_info_ptr->color_type;
   bit_depth = row_info_ptr->bit_depth;
   channels = row_info_ptr->channels;
   (__builtin_expect(!(!(color_type & 1)), 0) ? __assert_rtn(__func__, "opngreduc.c", 267, "!(color_type & 1)") : (void)0);
   (__builtin_expect(!(bit_depth == 8), 0) ? __assert_rtn(__func__, "opngreduc.c", 268, "bit_depth == 8") : (void)0);
   if (!(color_type & 4))
   {
      if (trans_color == ((void*)0))
      {
         __builtin___memset_chk (alpha_row, 255, (size_t)width, __builtin_object_size (alpha_row, 0));
         return;
      }
      if (color_type == (2))
      {
         (__builtin_expect(!(channels == 3), 0) ? __assert_rtn(__func__, "opngreduc.c", 280, "channels == 3") : (void)0);
         trans_red = (png_byte)trans_color->red;
         trans_green = (png_byte)trans_color->green;
         trans_blue = (png_byte)trans_color->blue;
         sample_ptr = row;
         for (i = 0; i < width; ++i, sample_ptr += 3)
            alpha_row[i] = (png_byte)
               ((sample_ptr[0] == trans_red &&
                 sample_ptr[1] == trans_green &&
                 sample_ptr[2] == trans_blue) ? 0 : 255);
      }
      else
      {
         (__builtin_expect(!(color_type == 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 293, "color_type == 0") : (void)0);
         (__builtin_expect(!(channels == 1), 0) ? __assert_rtn(__func__, "opngreduc.c", 294, "channels == 1") : (void)0);
         trans_gray = (png_byte)trans_color->gray;
         for (i = 0; i < width; ++i)
            alpha_row[i] = (png_byte)((row[i] == trans_gray) ? 0 : 255);
      }
      return;
   }
   (__builtin_expect(!(channels > 1), 0) ? __assert_rtn(__func__, "opngreduc.c", 303, "channels > 1") : (void)0);
   sample_ptr = row + (channels - 1);
   for (i = 0; i < width; ++i, sample_ptr += channels, ++alpha_row)
      *alpha_row = *sample_ptr;
}
static png_uint_32
opng_analyze_bits(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_bytepp row_ptr;
   png_bytep component_ptr;
   png_uint_32 height, width;
   int bit_depth, color_type, byte_depth, channels, sample_size, offset_alpha;
   png_color_16p background;
   png_uint_32 i, j;
   ((void)0);
   png_get_IHDR(png_ptr, info_ptr, &width, &height, &bit_depth, &color_type,
      ((void*)0), ((void*)0), ((void*)0));
   if (bit_depth < 8)
      return 0x0000;
   if (color_type & 1)
      return 0x0000;
   byte_depth = bit_depth / 8;
   channels = png_get_channels(png_ptr, info_ptr);
   sample_size = channels * byte_depth;
   offset_alpha = (channels - 1) * byte_depth;
   reductions &= (0x0001 |
      0x0004 | 0x0008);
   if (bit_depth <= 8)
      reductions &= ~0x0001;
   if (!(color_type & 2))
      reductions &= ~0x0004;
   if (!(color_type & 4))
      reductions &= ~0x0008;
   if (png_get_bKGD(png_ptr, info_ptr, &background))
   {
      if (reductions & 0x0001)
      {
         if (background->red % 257 != 0 ||
             background->green % 257 != 0 ||
             background->blue % 257 != 0 ||
             background->gray % 257 != 0)
            reductions &= ~0x0001;
      }
      if (reductions & 0x0004)
      {
         if (background->red != background->green ||
             background->red != background->blue)
            reductions &= ~0x0004;
      }
   }
   row_ptr = png_get_rows(png_ptr, info_ptr);
   for (i = 0; i < height; ++i, ++row_ptr)
   {
      if (reductions == 0x0000)
         return 0x0000;
      if (reductions & 0x0001)
      {
         component_ptr = *row_ptr;
         for (j = 0; j < channels * width; ++j, component_ptr += 2)
         {
            if (component_ptr[0] != component_ptr[1])
            {
               reductions &= ~0x0001;
               break;
            }
         }
      }
      if (bit_depth == 8)
      {
         if (reductions & 0x0004)
         {
            component_ptr = *row_ptr;
            for (j = 0; j < width; ++j, component_ptr += sample_size)
            {
               if (component_ptr[0] != component_ptr[1] ||
                   component_ptr[0] != component_ptr[2])
               {
                  reductions &= ~0x0004;
                  break;
               }
            }
         }
         if (reductions & 0x0008)
         {
            component_ptr = *row_ptr + offset_alpha;
            for (j = 0; j < width; ++j, component_ptr += sample_size)
            {
               if (component_ptr[0] != 255)
               {
                  reductions &= ~0x0008;
                  break;
               }
            }
         }
      }
      else
      {
         if (reductions & 0x0004)
         {
            component_ptr = *row_ptr;
            for (j = 0; j < width; ++j, component_ptr += sample_size)
            {
               if (component_ptr[0] != component_ptr[2] ||
                   component_ptr[0] != component_ptr[4] ||
                   component_ptr[1] != component_ptr[3] ||
                   component_ptr[1] != component_ptr[5])
               {
                  reductions &= ~0x0004;
                  break;
               }
            }
         }
         if (reductions & 0x0008)
         {
            component_ptr = *row_ptr + offset_alpha;
            for (j = 0; j < width; ++j, component_ptr += sample_size)
            {
               if (component_ptr[0] != 255 || component_ptr[1] != 255)
               {
                  reductions &= ~0x0008;
                  break;
               }
            }
         }
      }
   }
   return reductions;
}
static png_uint_32
opng_reduce_bits(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_bytepp row_ptr;
   png_bytep src_ptr, dest_ptr;
   png_uint_32 width, height;
   int interlace_type, compression_type, filter_type;
   int src_bit_depth, dest_bit_depth;
   int src_byte_depth, dest_byte_depth;
   int src_color_type, dest_color_type;
   int src_channels, dest_channels;
   int src_sample_size, dest_sample_size;
   int tran_tbl[8];
   png_color_16p trans_color;
   png_color_16p background;
   png_color_8p sig_bits;
   png_uint_32 i, j;
   int k;
   ((void)0);
   reductions = opng_analyze_bits(png_ptr, info_ptr, reductions);
   if (reductions == 0x0000)
      return 0x0000;
   png_get_IHDR(png_ptr, info_ptr, &width, &height,
      &src_bit_depth, &src_color_type,
      &interlace_type, &compression_type, &filter_type);
   (__builtin_expect(!(src_bit_depth >= 8), 0) ? __assert_rtn(__func__, "opngreduc.c", 506, "src_bit_depth >= 8") : (void)0);
   if (reductions & 0x0001)
   {
      (__builtin_expect(!(src_bit_depth == 16), 0) ? __assert_rtn(__func__, "opngreduc.c", 509, "src_bit_depth == 16") : (void)0);
      dest_bit_depth = 8;
   }
   else
      dest_bit_depth = src_bit_depth;
   src_byte_depth = src_bit_depth / 8;
   dest_byte_depth = dest_bit_depth / 8;
   dest_color_type = src_color_type;
   if (reductions & 0x0004)
   {
      (__builtin_expect(!(src_color_type & 2), 0) ? __assert_rtn(__func__, "opngreduc.c", 521, "src_color_type & 2") : (void)0);
      dest_color_type &= ~2;
   }
   if (reductions & 0x0008)
   {
      (__builtin_expect(!(src_color_type & 4), 0) ? __assert_rtn(__func__, "opngreduc.c", 526, "src_color_type & 4") : (void)0);
      dest_color_type &= ~4;
   }
   src_channels = png_get_channels(png_ptr, info_ptr);
   dest_channels =
      ((dest_color_type & 2) ? 3 : 1) +
      ((dest_color_type & 4) ? 1 : 0);
   src_sample_size = src_channels * src_byte_depth;
   dest_sample_size = dest_channels * dest_byte_depth;
   for (k = 0; k < 4 * dest_byte_depth; ++k)
      tran_tbl[k] = k * src_bit_depth / dest_bit_depth;
   if ((reductions & 0x0004) &&
       (dest_color_type & 4))
   {
      tran_tbl[dest_byte_depth] = tran_tbl[3 * dest_byte_depth];
      if (dest_byte_depth == 2)
         tran_tbl[dest_byte_depth + 1] = tran_tbl[3 * dest_byte_depth + 1];
   }
   (__builtin_expect(!(src_sample_size > dest_sample_size), 0) ? __assert_rtn(__func__, "opngreduc.c", 551, "src_sample_size > dest_sample_size") : (void)0);
   row_ptr = png_get_rows(png_ptr, info_ptr);
   for (i = 0; i < height; ++i, ++row_ptr)
   {
      src_ptr = dest_ptr = *row_ptr;
      for (j = 0; j < width; ++j)
      {
         for (k = 0; k < dest_sample_size; ++k)
            dest_ptr[k] = src_ptr[tran_tbl[k]];
         src_ptr += src_sample_size;
         dest_ptr += dest_sample_size;
      }
   }
   if (png_get_tRNS(png_ptr, info_ptr, ((void*)0), ((void*)0), &trans_color))
   {
      if (reductions & 0x0001)
      {
         if (trans_color->red % 257 == 0 &&
             trans_color->green % 257 == 0 &&
             trans_color->blue % 257 == 0 &&
             trans_color->gray % 257 == 0)
         {
            trans_color->red &= 255;
            trans_color->green &= 255;
            trans_color->blue &= 255;
            trans_color->gray &= 255;
         }
         else
         {
            png_free_data(png_ptr, info_ptr, 0x2000, -1);
            png_set_invalid(png_ptr, info_ptr, 0x0010);
         }
      }
      if (reductions & 0x0004)
      {
         if (trans_color->red == trans_color->green ||
             trans_color->red == trans_color->blue)
            trans_color->gray = trans_color->red;
         else
         {
            png_free_data(png_ptr, info_ptr, 0x2000, -1);
            png_set_invalid(png_ptr, info_ptr, 0x0010);
         }
      }
   }
   if (png_get_bKGD(png_ptr, info_ptr, &background))
   {
      if (reductions & 0x0001)
      {
         background->red &= 255;
         background->green &= 255;
         background->blue &= 255;
         background->gray &= 255;
      }
      if (reductions & 0x0004)
         background->gray = background->red;
   }
   if (png_get_sBIT(png_ptr, info_ptr, &sig_bits))
   {
      if (reductions & 0x0001)
      {
         if (sig_bits->red > 8)
            sig_bits->red = 8;
         if (sig_bits->green > 8)
            sig_bits->green = 8;
         if (sig_bits->blue > 8)
            sig_bits->blue = 8;
         if (sig_bits->gray > 8)
            sig_bits->gray = 8;
         if (sig_bits->alpha > 8)
            sig_bits->alpha = 8;
      }
      if (reductions & 0x0004)
      {
         png_byte max_sig_bits = sig_bits->red;
         if (max_sig_bits < sig_bits->green)
            max_sig_bits = sig_bits->green;
         if (max_sig_bits < sig_bits->blue)
            max_sig_bits = sig_bits->blue;
         sig_bits->gray = max_sig_bits;
      }
   }
   png_set_IHDR(png_ptr, info_ptr, width, height,
      dest_bit_depth, dest_color_type,
      interlace_type, compression_type, filter_type);
   return reductions;
}
static png_uint_32
opng_reduce_palette_bits(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_bytepp row_ptr;
   png_bytep src_sample_ptr, dest_sample_ptr;
   png_uint_32 width, height;
   int color_type, interlace_type, compression_type, filter_type;
   int src_bit_depth, dest_bit_depth;
   unsigned int src_mask_init, src_mask, src_shift, dest_shift;
   unsigned int sample, dest_buf;
   png_colorp palette;
   int num_palette;
   png_uint_32 i, j;
   ((void)0);
   if (!(reductions & 0x0002))
      return 0x0000;
   png_get_IHDR(png_ptr, info_ptr, &width, &height, &src_bit_depth,
      &color_type, &interlace_type, &compression_type, &filter_type);
   if (color_type != (2 | 1))
      return 0x0000;
   if (!png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette))
      num_palette = 0;
   if (num_palette > 16)
      return 0x0000;
   else if (num_palette > 4)
      dest_bit_depth = 4;
   else if (num_palette > 2)
      dest_bit_depth = 2;
   else
   {
      (__builtin_expect(!(num_palette > 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 691, "num_palette > 0") : (void)0);
      dest_bit_depth = 1;
   }
   if (src_bit_depth <= dest_bit_depth)
   {
      (__builtin_expect(!(src_bit_depth == dest_bit_depth), 0) ? __assert_rtn(__func__, "opngreduc.c", 697, "src_bit_depth == dest_bit_depth") : (void)0);
      return 0x0000;
   }
   row_ptr = png_get_rows(png_ptr, info_ptr);
   if (src_bit_depth == 8)
   {
      for (i = 0; i < height; ++i, ++row_ptr)
      {
         src_sample_ptr = dest_sample_ptr = *row_ptr;
         dest_shift = 8;
         dest_buf = 0;
         for (j = 0; j < width; ++j)
         {
            dest_shift -= dest_bit_depth;
            if (dest_shift > 0)
               dest_buf |= *src_sample_ptr << dest_shift;
            else
            {
               *dest_sample_ptr++ = (png_byte)(dest_buf | *src_sample_ptr);
               dest_shift = 8;
               dest_buf = 0;
            }
            ++src_sample_ptr;
         }
         if (dest_shift != 0)
            *dest_sample_ptr = (png_byte)dest_buf;
      }
   }
   else
   {
      src_mask_init = (1 << (8 + src_bit_depth)) - (1 << 8);
      for (i = 0; i < height; ++i, ++row_ptr)
      {
         src_sample_ptr = dest_sample_ptr = *row_ptr;
         src_shift = dest_shift = 8;
         src_mask = src_mask_init;
         dest_buf = 0;
         for (j = 0; j < width; ++j)
         {
            src_shift -= src_bit_depth;
            src_mask >>= src_bit_depth;
            sample = (*src_sample_ptr & src_mask) >> src_shift;
            dest_shift -= dest_bit_depth;
            if (dest_shift > 0)
               dest_buf |= sample << dest_shift;
            else
            {
               *dest_sample_ptr++ = (png_byte)(dest_buf | sample);
               dest_shift = 8;
               dest_buf = 0;
            }
            if (src_shift == 0)
            {
               src_shift = 8;
               src_mask = src_mask_init;
               ++src_sample_ptr;
            }
         }
         if (dest_shift != 0)
            *dest_sample_ptr = (png_byte)dest_buf;
      }
   }
   png_set_IHDR(png_ptr, info_ptr, width, height, dest_bit_depth,
      color_type, interlace_type, compression_type, filter_type);
   return 0x0002;
}
static png_uint_32
opng_reduce_to_palette(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_uint_32 result;
   png_row_info row_info;
   png_bytepp row_ptr;
   png_bytep sample_ptr, alpha_row;
   png_uint_32 height, width;
   int color_type, interlace_type, compression_type, filter_type;
   int src_bit_depth, dest_bit_depth, channels;
   png_color palette[256];
   png_byte trans_alpha[256];
   png_color_16p trans_color;
   int num_palette, num_trans, index;
   unsigned int gray, red, green, blue, alpha;
   unsigned int prev_gray, prev_red, prev_green, prev_blue, prev_alpha;
   png_color_16p background;
   png_uint_32 i, j;
   ((void)0);
   png_get_IHDR(png_ptr, info_ptr, &width, &height, &src_bit_depth,
      &color_type, &interlace_type, &compression_type, &filter_type);
   if (src_bit_depth != 8)
      return 0x0000;
   (__builtin_expect(!(!(color_type & 1)), 0) ? __assert_rtn(__func__, "opngreduc.c", 802, "!(color_type & 1)") : (void)0);
   row_ptr = png_get_rows(png_ptr, info_ptr);
   channels = png_get_channels(png_ptr, info_ptr);
   alpha_row = (png_bytep)png_malloc(png_ptr, width);
   row_info.width = width;
   row_info.rowbytes = 0;
   row_info.color_type = (png_byte)color_type;
   row_info.bit_depth = (png_byte)src_bit_depth;
   row_info.channels = (png_byte)channels;
   row_info.pixel_depth = 0;
   num_palette = num_trans = 0;
   trans_color = ((void*)0);
   png_get_tRNS(png_ptr, info_ptr, ((void*)0), ((void*)0), &trans_color);
   prev_gray = prev_red = prev_green = prev_blue = prev_alpha = 256;
   for (i = 0; i < height; ++i, ++row_ptr)
   {
      sample_ptr = *row_ptr;
      opng_get_alpha_row(&row_info, trans_color, *row_ptr, alpha_row);
      if (color_type & 2)
      {
         for (j = 0; j < width; ++j, sample_ptr += channels)
         {
            red = sample_ptr[0];
            green = sample_ptr[1];
            blue = sample_ptr[2];
            alpha = alpha_row[j];
            if (red != prev_red || green != prev_green || blue != prev_blue ||
                alpha != prev_alpha)
            {
               prev_red = red;
               prev_green = green;
               prev_blue = blue;
               prev_alpha = alpha;
               if (opng_insert_palette_entry(palette, &num_palette,
                   trans_alpha, &num_trans, 256,
                   red, green, blue, alpha, &index) < 0)
               {
                  (__builtin_expect(!(num_palette < 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 844, "num_palette < 0") : (void)0);
                  i = height;
                  break;
               }
            }
         }
      }
      else
      {
         for (j = 0; j < width; ++j, sample_ptr += channels)
         {
            gray = sample_ptr[0];
            alpha = alpha_row[j];
            if (gray != prev_gray || alpha != prev_alpha)
            {
               prev_gray = gray;
               prev_alpha = alpha;
               if (opng_insert_palette_entry(palette, &num_palette,
                   trans_alpha, &num_trans, 256,
                   gray, gray, gray, alpha, &index) < 0)
               {
                  (__builtin_expect(!(num_palette < 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 866, "num_palette < 0") : (void)0);
                  i = height;
                  break;
               }
            }
         }
      }
   }
   if ((num_palette >= 0) && png_get_bKGD(png_ptr, info_ptr, &background))
   {
      if (color_type & 2)
      {
         red = background->red;
         green = background->green;
         blue = background->blue;
      }
      else
         red = green = blue = background->gray;
      opng_insert_palette_entry(palette, &num_palette,
         trans_alpha, &num_trans, 256,
         red, green, blue, 256, &index);
      if (index >= 0)
         background->index = (png_byte)index;
   }
   if (num_palette >= 0)
   {
      (__builtin_expect(!(num_palette > 0 && num_palette <= 256), 0) ? __assert_rtn(__func__, "opngreduc.c", 905, "num_palette > 0 && num_palette <= 256") : (void)0);
      (__builtin_expect(!(num_trans >= 0 && num_trans <= num_palette), 0) ? __assert_rtn(__func__, "opngreduc.c", 906, "num_trans >= 0 && num_trans <= num_palette") : (void)0);
      if (num_palette <= 2)
         dest_bit_depth = 1;
      else if (num_palette <= 4)
         dest_bit_depth = 2;
      else if (num_palette <= 16)
         dest_bit_depth = 4;
      else
         dest_bit_depth = 8;
      if (channels * 8 == dest_bit_depth ||
          (3 * num_palette + num_trans) * 8 / (channels * 8 - dest_bit_depth)
             / width / height >= 1)
         num_palette = -1;
   }
   if (num_palette < 0)
   {
      png_free(png_ptr, alpha_row);
      return 0x0000;
   }
   row_ptr = png_get_rows(png_ptr, info_ptr);
   index = -1;
   prev_red = prev_green = prev_blue = prev_alpha = (unsigned int)(-1);
   for (i = 0; i < height; ++i, ++row_ptr)
   {
      sample_ptr = *row_ptr;
      opng_get_alpha_row(&row_info, trans_color, *row_ptr, alpha_row);
      if (color_type & 2)
      {
         for (j = 0; j < width; ++j, sample_ptr += channels)
         {
            red = sample_ptr[0];
            green = sample_ptr[1];
            blue = sample_ptr[2];
            alpha = alpha_row[j];
            if (red != prev_red || green != prev_green || blue != prev_blue ||
                alpha != prev_alpha)
            {
               prev_red = red;
               prev_green = green;
               prev_blue = blue;
               prev_alpha = alpha;
               if (opng_insert_palette_entry(palette, &num_palette,
                   trans_alpha, &num_trans, 256,
                   red, green, blue, alpha, &index) != 0)
                  index = -1;
            }
            (__builtin_expect(!(index >= 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 957, "index >= 0") : (void)0);
            (*row_ptr)[j] = (png_byte)index;
         }
      }
      else
      {
         for (j = 0; j < width; ++j, sample_ptr += channels)
         {
            gray = sample_ptr[0];
            alpha = alpha_row[j];
            if (gray != prev_gray || alpha != prev_alpha)
            {
               prev_gray = gray;
               prev_alpha = alpha;
               if (opng_insert_palette_entry(palette, &num_palette,
                   trans_alpha, &num_trans, 256,
                   gray, gray, gray, alpha, &index) != 0)
                  index = -1;
            }
            (__builtin_expect(!(index >= 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 977, "index >= 0") : (void)0);
            (*row_ptr)[j] = (png_byte)index;
         }
      }
   }
   png_set_IHDR(png_ptr, info_ptr, width, height, 8, (2 | 1),
      interlace_type, compression_type, filter_type);
   png_set_PLTE(png_ptr, info_ptr, palette, num_palette);
   if (num_trans > 0)
      png_set_tRNS(png_ptr, info_ptr, trans_alpha, num_trans, ((void*)0));
   png_free(png_ptr, alpha_row);
   result = 0x0010;
   if (reductions & 0x0002)
      result |= opng_reduce_palette_bits(png_ptr, info_ptr, reductions);
   return result;
}
static void
opng_analyze_sample_usage(png_structp png_ptr, png_infop info_ptr,
   png_bytep usage_map)
{
   png_bytepp row_ptr;
   png_bytep sample_ptr;
   png_uint_32 width, height;
   int bit_depth, init_shift, init_mask, shift, mask;
   png_color_16p background;
   png_uint_32 i, j;
   ((void)0);
   height = png_get_image_height(png_ptr, info_ptr);
   width = png_get_image_width(png_ptr, info_ptr);
   bit_depth = png_get_bit_depth(png_ptr, info_ptr);
   row_ptr = png_get_rows(png_ptr, info_ptr);
   __builtin___memset_chk (usage_map, 0, 256, __builtin_object_size (usage_map, 0));
   if (bit_depth == 8)
   {
      for (i = 0; i < height; ++i, ++row_ptr)
      {
         for (j = 0, sample_ptr = *row_ptr; j < width; ++j, ++sample_ptr)
            usage_map[*sample_ptr] = 1;
      }
   }
   else
   {
      (__builtin_expect(!(bit_depth < 8), 0) ? __assert_rtn(__func__, "opngreduc.c", 1039, "bit_depth < 8") : (void)0);
      init_shift = 8 - bit_depth;
      init_mask = (1 << 8) - (1 << init_shift);
      for (i = 0; i < height; ++i, ++row_ptr)
      {
         for (j = 0, sample_ptr = *row_ptr; j < width; ++sample_ptr)
         {
            mask = init_mask;
            shift = init_shift;
            do
            {
               usage_map[(*sample_ptr & mask) >> shift] = 1;
               mask >>= bit_depth;
               shift -= bit_depth;
               ++j;
            } while (mask > 0 && j < width);
         }
      }
   }
   if (png_get_bKGD(png_ptr, info_ptr, &background))
      usage_map[background->index] = 1;
}
static png_uint_32
opng_reduce_palette(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_uint_32 result;
   png_colorp palette;
   png_bytep trans_alpha;
   png_bytepp row_ptr;
   png_uint_32 width, height;
   int bit_depth, color_type, interlace_type, compression_type, filter_type;
   int num_palette, num_trans;
   int last_color_index, last_trans_index;
   png_byte crt_trans_value, last_trans_value;
   png_byte is_used[256];
   png_color_16 gray_trans;
   int is_gray;
   png_color_16p background;
   png_uint_16p hist;
   png_color_8p sig_bits;
   png_uint_32 i, j;
   int k;
   ((void)0);
   result = 0x0000;
   png_get_IHDR(png_ptr, info_ptr, &width, &height, &bit_depth,
      &color_type, &interlace_type, &compression_type, &filter_type);
   row_ptr = png_get_rows(png_ptr, info_ptr);
   if (!png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette))
   {
      palette = ((void*)0);
      num_palette = 0;
   }
   if (!png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &num_trans, ((void*)0)))
   {
      trans_alpha = ((void*)0);
      num_trans = 0;
   }
   else
      (__builtin_expect(!(trans_alpha != ((void*)0) && num_trans > 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 1117, "trans_alpha != ((void*)0) && num_trans > 0") : (void)0);
   opng_analyze_sample_usage(png_ptr, info_ptr, is_used);
   is_gray = (reductions & 0x0080) && (bit_depth == 8);
   last_color_index = last_trans_index = -1;
   for (k = 0; k < 256; ++k)
   {
      if (!is_used[k])
         continue;
      last_color_index = k;
      if (k < num_trans && trans_alpha[k] < 255)
         last_trans_index = k;
      if (is_gray)
         if (palette[k].red != palette[k].green ||
             palette[k].red != palette[k].blue)
            is_gray = 0;
   }
   (__builtin_expect(!(last_color_index >= 0), 0) ? __assert_rtn(__func__, "opngreduc.c", 1135, "last_color_index >= 0") : (void)0);
   (__builtin_expect(!(last_color_index >= last_trans_index), 0) ? __assert_rtn(__func__, "opngreduc.c", 1136, "last_color_index >= last_trans_index") : (void)0);
   if (last_color_index >= num_palette)
   {
      png_warning(png_ptr, "Too few colors in PLTE");
      opng_realloc_PLTE(png_ptr, info_ptr, last_color_index + 1);
      png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette);
      (__builtin_expect(!(num_palette == last_color_index + 1), 0) ? __assert_rtn(__func__, "opngreduc.c", 1145, "num_palette == last_color_index + 1") : (void)0);
      result |= 0x2000;
   }
   if (num_trans > num_palette)
   {
      png_warning(png_ptr, "Too many alpha values in tRNS");
      result |= 0x2000;
   }
   if (is_gray && last_trans_index >= 0)
   {
      gray_trans.gray = palette[last_trans_index].red;
      last_trans_value = trans_alpha[last_trans_index];
      for (k = 0; k <= last_color_index; ++k)
      {
         if (!is_used[k])
            continue;
         if (k <= last_trans_index)
         {
            crt_trans_value = trans_alpha[k];
            if (crt_trans_value < 255 && palette[k].red != gray_trans.gray)
            {
               is_gray = 0;
               break;
            }
         }
         else
            crt_trans_value = 255;
         if (palette[k].red == gray_trans.gray &&
             crt_trans_value != last_trans_value)
         {
            is_gray = 0;
            break;
         }
      }
   }
   if (num_trans > 0 && last_trans_index < 0)
   {
      num_trans = 0;
      png_free_data(png_ptr, info_ptr, 0x2000, -1);
      png_set_invalid(png_ptr, info_ptr, 0x0010);
      result |= 0x0200;
   }
   if (reductions & 0x0200)
   {
      if (num_palette != last_color_index + 1)
      {
         opng_realloc_PLTE(png_ptr, info_ptr, last_color_index + 1);
         png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette);
         (__builtin_expect(!(num_palette == last_color_index + 1), 0) ? __assert_rtn(__func__, "opngreduc.c", 1203, "num_palette == last_color_index + 1") : (void)0);
         result |= 0x0200;
      }
      if (num_trans > 0 && num_trans != last_trans_index + 1)
      {
         opng_realloc_tRNS(png_ptr, info_ptr, last_trans_index + 1);
         png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &num_trans, ((void*)0));
         (__builtin_expect(!(num_trans == last_trans_index + 1), 0) ? __assert_rtn(__func__, "opngreduc.c", 1212, "num_trans == last_trans_index + 1") : (void)0);
         result |= 0x0200;
      }
   }
   if (reductions & 0x0002)
   {
      result |= opng_reduce_palette_bits(png_ptr, info_ptr, reductions);
      bit_depth = png_get_bit_depth(png_ptr, info_ptr);
   }
   if ((bit_depth < 8) || !is_gray)
      return result;
   for (i = 0; i < height; ++i)
   {
      for (j = 0; j < width; ++j)
         row_ptr[i][j] = palette[row_ptr[i][j]].red;
   }
   if (num_trans > 0)
      png_set_tRNS(png_ptr, info_ptr, ((void*)0), 0, &gray_trans);
   if (png_get_bKGD(png_ptr, info_ptr, &background))
      background->gray = palette[background->index].red;
   if (png_get_hIST(png_ptr, info_ptr, &hist))
   {
      png_free_data(png_ptr, info_ptr, 0x0008, -1);
      png_set_invalid(png_ptr, info_ptr, 0x0040);
   }
   if (png_get_sBIT(png_ptr, info_ptr, &sig_bits))
   {
      png_byte max_sig_bits = sig_bits->red;
      if (max_sig_bits < sig_bits->green)
         max_sig_bits = sig_bits->green;
      if (max_sig_bits < sig_bits->blue)
         max_sig_bits = sig_bits->blue;
      sig_bits->gray = max_sig_bits;
   }
   png_set_IHDR(png_ptr, info_ptr, width, height, bit_depth,
      0, interlace_type, compression_type, filter_type);
   png_free_data(png_ptr, info_ptr, 0x1000, -1);
   png_set_invalid(png_ptr, info_ptr, 0x0008);
   return 0x0080;
}
png_uint_32
opng_reduce_image(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions)
{
   png_uint_32 result;
   int color_type;
   ((void)0);
   if (!opng_validate_image(png_ptr, info_ptr))
   {
      png_warning(png_ptr,
         "Image reduction requires the presence of all critical information");
      return 0x0000;
   }
   color_type = png_get_color_type(png_ptr, info_ptr);
   result = opng_reduce_bits(png_ptr, info_ptr, reductions);
   if (color_type == (2 | 1) &&
       (reductions &
        (0x0080 |
         0x0200 |
         0x0002)))
      result |= opng_reduce_palette(png_ptr, info_ptr, reductions);
   if (((color_type & ~4) == 0 &&
        (reductions & 0x0040)) ||
       ((color_type & ~4) == (2) &&
        (reductions & 0x0010)))
   {
      if (!(result & 0x0080))
         result |= opng_reduce_to_palette(png_ptr, info_ptr, reductions);
   }
   return result;
}
