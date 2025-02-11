void app_printf(const char *fmt, ...);
void app_print_cntrl(int cntrl_code);
void app_progress(unsigned long current_step, unsigned long total_steps);
void panic(const char *msg);

typedef int __int32_t;
typedef long __darwin_time_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
int asprintf(char ** restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
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
 struct opng_options options;
 int
process_files(int argc, char *argv[])
{
    int result;
    struct opng_ui ui;
    int i;
    ui.printf_fn = app_printf;
    ui.print_cntrl_fn = app_print_cntrl;
    ui.progress_fn = app_progress;
    ui.panic_fn = panic;
    if (opng_initialize(&options, &ui) != 0)
        panic("Can't initialize optimization engine");
    result = 0;
    for (i = 1; i < argc; ++i)
    {
        if (argv[i] == ((void*)0) || argv[i][0] == 0)
            continue;
        if (opng_optimize(argv[i]) != 0)
            result = 1;
    }
    if (opng_finalize() != 0)
        panic("Can't finalize optimization engine");
    return result;
}
