typedef int __int32_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
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
 typedef unsigned char png_byte;
typedef png_byte * png_bytep;
typedef const char * png_const_charp;
typedef struct png_struct_def png_struct;
typedef png_struct * png_structp;
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
struct exception_context { jmp_buf *penv; int caught; volatile struct { const char * etmp; } v; };
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
 const png_byte sig_dSIG[4] = { 0x64, 0x53, 0x49, 0x47 };
 struct opng_options options;
 int
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
