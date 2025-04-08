typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
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
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);
typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);
typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);
typedef int cookie_close_function_t (void *__cookie);
typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;
typedef __fpos_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ))
  __attribute__ ((__nonnull__ (1)));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
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
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
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
extern int getc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int putw (int __w, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                          __attribute__ ((__nonnull__ (3)));
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __attribute__ ((__nonnull__ (3)));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern long int ftell (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern void rewind (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fseeko (FILE *__stream, __off_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern __off_t ftello (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __attribute__ ((__nonnull__ (1)));
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void perror (const char *__s) __attribute__ ((__cold__));
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int pclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) ;
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ))
                                     ;
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
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
int opng_validate_image(png_structp png_ptr, png_infop info_ptr);
png_uint_32 opng_reduce_image(png_structp png_ptr, png_infop info_ptr,
   png_uint_32 reductions);

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
extern char *strchrnul (const char *__s, int __c)
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
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
                                         ;
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
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
extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
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
   ((void) sizeof ((*num_palette >= 0 && *num_palette <= max_tuples) ? 1 : 0), __extension__ ({ if (*num_palette >= 0 && *num_palette <= max_tuples) ; else __assert_fail ("*num_palette >= 0 && *num_palette <= max_tuples", "opngreduc.c", 109, __extension__ __PRETTY_FUNCTION__); }));
   ((void) sizeof ((*num_trans >= 0 && *num_trans <= *num_palette) ? 1 : 0), __extension__ ({ if (*num_trans >= 0 && *num_trans <= *num_palette) ; else __assert_fail ("*num_trans >= 0 && *num_trans <= *num_palette", "opngreduc.c", 110, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((low >= 0 && low <= *num_palette) ? 1 : 0), __extension__ ({ if (low >= 0 && low <= *num_palette) ; else __assert_fail ("low >= 0 && low <= *num_palette", "opngreduc.c", 179, __extension__ __PRETTY_FUNCTION__); }));
   for (i = *num_palette; i > low; --i)
      palette[i] = palette[i - 1];
   palette[low].red = (png_byte)red;
   palette[low].green = (png_byte)green;
   palette[low].blue = (png_byte)blue;
   ++(*num_palette);
   if (alpha < 255)
   {
      ((void) sizeof ((low <= *num_trans) ? 1 : 0), __extension__ ({ if (low <= *num_trans) ; else __assert_fail ("low <= *num_trans", "opngreduc.c", 188, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((num_palette > 0) ? 1 : 0), __extension__ ({ if (num_palette > 0) ; else __assert_fail ("num_palette > 0", "opngreduc.c", 212, __extension__ __PRETTY_FUNCTION__); }));
   src_num_palette = 0;
   png_get_PLTE(png_ptr, info_ptr, &palette, &src_num_palette);
   if (num_palette == src_num_palette)
      return;
   memcpy(buffer, palette, num_palette * sizeof(png_color));
   if (num_palette > src_num_palette)
      memset(buffer + src_num_palette, 0,
         (num_palette - src_num_palette) * sizeof(png_color));
   png_set_PLTE(png_ptr, info_ptr, buffer, num_palette);
}
static void
opng_realloc_tRNS(png_structp png_ptr, png_infop info_ptr, int num_trans)
{
   png_byte buffer[256];
   png_bytep trans_alpha;
   int src_num_trans;
   ((void)0);
   ((void) sizeof ((num_trans > 0) ? 1 : 0), __extension__ ({ if (num_trans > 0) ; else __assert_fail ("num_trans > 0", "opngreduc.c", 238, __extension__ __PRETTY_FUNCTION__); }));
   src_num_trans = 0;
   png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &src_num_trans, ((void*)0));
   if (num_trans == src_num_trans)
      return;
   memcpy(buffer, trans_alpha, (size_t)num_trans);
   if (num_trans > src_num_trans)
      memset(buffer + src_num_trans, 0, num_trans - src_num_trans);
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
   ((void) sizeof ((!(color_type & 1)) ? 1 : 0), __extension__ ({ if (!(color_type & 1)) ; else __assert_fail ("!(color_type & 1)", "opngreduc.c", 267, __extension__ __PRETTY_FUNCTION__); }));
   ((void) sizeof ((bit_depth == 8) ? 1 : 0), __extension__ ({ if (bit_depth == 8) ; else __assert_fail ("bit_depth == 8", "opngreduc.c", 268, __extension__ __PRETTY_FUNCTION__); }));
   if (!(color_type & 4))
   {
      if (trans_color == ((void*)0))
      {
         memset(alpha_row, 255, (size_t)width);
         return;
      }
      if (color_type == (2))
      {
         ((void) sizeof ((channels == 3) ? 1 : 0), __extension__ ({ if (channels == 3) ; else __assert_fail ("channels == 3", "opngreduc.c", 280, __extension__ __PRETTY_FUNCTION__); }));
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
         ((void) sizeof ((color_type == 0) ? 1 : 0), __extension__ ({ if (color_type == 0) ; else __assert_fail ("color_type == 0", "opngreduc.c", 293, __extension__ __PRETTY_FUNCTION__); }));
         ((void) sizeof ((channels == 1) ? 1 : 0), __extension__ ({ if (channels == 1) ; else __assert_fail ("channels == 1", "opngreduc.c", 294, __extension__ __PRETTY_FUNCTION__); }));
         trans_gray = (png_byte)trans_color->gray;
         for (i = 0; i < width; ++i)
            alpha_row[i] = (png_byte)((row[i] == trans_gray) ? 0 : 255);
      }
      return;
   }
   ((void) sizeof ((channels > 1) ? 1 : 0), __extension__ ({ if (channels > 1) ; else __assert_fail ("channels > 1", "opngreduc.c", 303, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((src_bit_depth >= 8) ? 1 : 0), __extension__ ({ if (src_bit_depth >= 8) ; else __assert_fail ("src_bit_depth >= 8", "opngreduc.c", 506, __extension__ __PRETTY_FUNCTION__); }));
   if (reductions & 0x0001)
   {
      ((void) sizeof ((src_bit_depth == 16) ? 1 : 0), __extension__ ({ if (src_bit_depth == 16) ; else __assert_fail ("src_bit_depth == 16", "opngreduc.c", 509, __extension__ __PRETTY_FUNCTION__); }));
      dest_bit_depth = 8;
   }
   else
      dest_bit_depth = src_bit_depth;
   src_byte_depth = src_bit_depth / 8;
   dest_byte_depth = dest_bit_depth / 8;
   dest_color_type = src_color_type;
   if (reductions & 0x0004)
   {
      ((void) sizeof ((src_color_type & 2) ? 1 : 0), __extension__ ({ if (src_color_type & 2) ; else __assert_fail ("src_color_type & 2", "opngreduc.c", 521, __extension__ __PRETTY_FUNCTION__); }));
      dest_color_type &= ~2;
   }
   if (reductions & 0x0008)
   {
      ((void) sizeof ((src_color_type & 4) ? 1 : 0), __extension__ ({ if (src_color_type & 4) ; else __assert_fail ("src_color_type & 4", "opngreduc.c", 526, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((src_sample_size > dest_sample_size) ? 1 : 0), __extension__ ({ if (src_sample_size > dest_sample_size) ; else __assert_fail ("src_sample_size > dest_sample_size", "opngreduc.c", 551, __extension__ __PRETTY_FUNCTION__); }));
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
      ((void) sizeof ((num_palette > 0) ? 1 : 0), __extension__ ({ if (num_palette > 0) ; else __assert_fail ("num_palette > 0", "opngreduc.c", 691, __extension__ __PRETTY_FUNCTION__); }));
      dest_bit_depth = 1;
   }
   if (src_bit_depth <= dest_bit_depth)
   {
      ((void) sizeof ((src_bit_depth == dest_bit_depth) ? 1 : 0), __extension__ ({ if (src_bit_depth == dest_bit_depth) ; else __assert_fail ("src_bit_depth == dest_bit_depth", "opngreduc.c", 697, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((!(color_type & 1)) ? 1 : 0), __extension__ ({ if (!(color_type & 1)) ; else __assert_fail ("!(color_type & 1)", "opngreduc.c", 802, __extension__ __PRETTY_FUNCTION__); }));
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
                  ((void) sizeof ((num_palette < 0) ? 1 : 0), __extension__ ({ if (num_palette < 0) ; else __assert_fail ("num_palette < 0", "opngreduc.c", 844, __extension__ __PRETTY_FUNCTION__); }));
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
                  ((void) sizeof ((num_palette < 0) ? 1 : 0), __extension__ ({ if (num_palette < 0) ; else __assert_fail ("num_palette < 0", "opngreduc.c", 866, __extension__ __PRETTY_FUNCTION__); }));
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
      ((void) sizeof ((num_palette > 0 && num_palette <= 256) ? 1 : 0), __extension__ ({ if (num_palette > 0 && num_palette <= 256) ; else __assert_fail ("num_palette > 0 && num_palette <= 256", "opngreduc.c", 905, __extension__ __PRETTY_FUNCTION__); }));
      ((void) sizeof ((num_trans >= 0 && num_trans <= num_palette) ? 1 : 0), __extension__ ({ if (num_trans >= 0 && num_trans <= num_palette) ; else __assert_fail ("num_trans >= 0 && num_trans <= num_palette", "opngreduc.c", 906, __extension__ __PRETTY_FUNCTION__); }));
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
            ((void) sizeof ((index >= 0) ? 1 : 0), __extension__ ({ if (index >= 0) ; else __assert_fail ("index >= 0", "opngreduc.c", 957, __extension__ __PRETTY_FUNCTION__); }));
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
            ((void) sizeof ((index >= 0) ? 1 : 0), __extension__ ({ if (index >= 0) ; else __assert_fail ("index >= 0", "opngreduc.c", 977, __extension__ __PRETTY_FUNCTION__); }));
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
   memset(usage_map, 0, 256);
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
      ((void) sizeof ((bit_depth < 8) ? 1 : 0), __extension__ ({ if (bit_depth < 8) ; else __assert_fail ("bit_depth < 8", "opngreduc.c", 1039, __extension__ __PRETTY_FUNCTION__); }));
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
      ((void) sizeof ((trans_alpha != ((void*)0) && num_trans > 0) ? 1 : 0), __extension__ ({ if (trans_alpha != ((void*)0) && num_trans > 0) ; else __assert_fail ("trans_alpha != ((void*)0) && num_trans > 0", "opngreduc.c", 1117, __extension__ __PRETTY_FUNCTION__); }));
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
   ((void) sizeof ((last_color_index >= 0) ? 1 : 0), __extension__ ({ if (last_color_index >= 0) ; else __assert_fail ("last_color_index >= 0", "opngreduc.c", 1135, __extension__ __PRETTY_FUNCTION__); }));
   ((void) sizeof ((last_color_index >= last_trans_index) ? 1 : 0), __extension__ ({ if (last_color_index >= last_trans_index) ; else __assert_fail ("last_color_index >= last_trans_index", "opngreduc.c", 1136, __extension__ __PRETTY_FUNCTION__); }));
   if (last_color_index >= num_palette)
   {
      png_warning(png_ptr, "Too few colors in PLTE");
      opng_realloc_PLTE(png_ptr, info_ptr, last_color_index + 1);
      png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette);
      ((void) sizeof ((num_palette == last_color_index + 1) ? 1 : 0), __extension__ ({ if (num_palette == last_color_index + 1) ; else __assert_fail ("num_palette == last_color_index + 1", "opngreduc.c", 1145, __extension__ __PRETTY_FUNCTION__); }));
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
         ((void) sizeof ((num_palette == last_color_index + 1) ? 1 : 0), __extension__ ({ if (num_palette == last_color_index + 1) ; else __assert_fail ("num_palette == last_color_index + 1", "opngreduc.c", 1203, __extension__ __PRETTY_FUNCTION__); }));
         result |= 0x0200;
      }
      if (num_trans > 0 && num_trans != last_trans_index + 1)
      {
         opng_realloc_tRNS(png_ptr, info_ptr, last_trans_index + 1);
         png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &num_trans, ((void*)0));
         ((void) sizeof ((num_trans == last_trans_index + 1) ? 1 : 0), __extension__ ({ if (num_trans == last_trans_index + 1) ; else __assert_fail ("num_trans == last_trans_index + 1", "opngreduc.c", 1212, __extension__ __PRETTY_FUNCTION__); }));
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
