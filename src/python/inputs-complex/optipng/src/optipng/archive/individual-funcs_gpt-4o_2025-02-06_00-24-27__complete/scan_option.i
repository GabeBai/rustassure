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
typedef unsigned int opng_bitset_t;
enum
{
    OPNG_BITSET_ELT_MIN = 0,
    OPNG_BITSET_ELT_MAX = (int)((sizeof(opng_bitset_t) * 8) - 1)
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
 int
scan_option(const char *str,
            char opt_buf[], size_t opt_buf_size, const char **opt_arg_ptr)
{
    const char *ptr;
    unsigned int opt_len;
    if (str[0] != '-' || str[1] == 0)
        return 0;
    opt_len = 0;
    ptr = str + 1;
    while (*ptr == '-')
        ++ptr;
    if (*ptr == 0)
        --ptr;
    for ( ; ; )
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = (char)tolower(*ptr);
        ++opt_len;
        ++ptr;
        if (*ptr == 0 || isspace(*ptr))
        {
            while (isspace(*ptr))
                ++ptr;
            *opt_arg_ptr = (*ptr != 0) ? ptr : ((void*)0);
            break;
        }
        if (*ptr == '=')
        {
            ++ptr;
            *opt_arg_ptr = ptr;
            break;
        }
    }
    if (opt_buf_size > 0)
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = '\0';
        else
            opt_buf[opt_buf_size - 1] = '\0';
    }
    return 1;
}
