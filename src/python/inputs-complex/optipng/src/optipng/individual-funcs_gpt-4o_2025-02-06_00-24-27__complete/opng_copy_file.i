struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);

typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
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
size_t fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
struct _OSUnalignedU16 {
 volatile uint16_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU32 {
 volatile uint32_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU64 {
 volatile uint64_t __val;
} __attribute__((__packed__));
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
int memcmp(const void *__s1, const void *__s2, size_t __n);
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
};
 typedef unsigned char png_byte;
   typedef unsigned int png_uint_32;
typedef size_t png_size_t;
   typedef png_size_t png_alloc_size_t;
typedef void * png_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * * png_infopp;
typedef png_struct * restrict png_structrp;
typedef const png_struct * restrict png_const_structrp;
typedef png_info * restrict png_inforp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, png_size_t);
typedef void ( *png_flush_ptr) (png_structp);
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
extern void ( png_write_sig) (png_structrp png_ptr);
extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, png_size_t length);
extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);
extern __attribute__((__malloc__)) png_voidp ( png_malloc) (png_const_structrp png_ptr, png_alloc_size_t size);
extern void ( png_free) (png_const_structrp png_ptr, png_voidp ptr);
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
struct fssearchblock;
struct searchstate;
struct internal_state;
typedef int jmp_buf[((14 + 8 + 2) * 2)];
extern int setjmp(jmp_buf);
extern void longjmp(jmp_buf, int) __attribute__((__noreturn__));
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
struct exception_context the_exception_context[1];
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
 const png_byte sig_IEND[4] = { 0x49, 0x45, 0x4e, 0x44 };
 png_structp write_ptr;
 void
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
