char * opng_strltrim(const char *str);

typedef int __int32_t;
typedef long __darwin_time_t;
extern int * __error(void);
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
unsigned long
  strtoul(const char *__str, char **__endptr, int __base);
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
opng_str2ulong(unsigned long *out_val, const char *in_str,
               int allow_multiplier)
{
    const char *begin_ptr;
    char *end_ptr;
    unsigned long multiplier;
    begin_ptr = end_ptr = opng_strltrim(in_str);
    if (*begin_ptr >= '0' && *begin_ptr <= '9')
        *out_val = strtoul(begin_ptr, &end_ptr, 10);
    if (begin_ptr == end_ptr)
    {
        (*__error()) = 22;
        *out_val = 0;
        return -1;
    }
    if (allow_multiplier)
    {
        if (*end_ptr == 'k' || *end_ptr == 'K')
        {
            ++end_ptr;
            multiplier = 1024UL;
        }
        else if (*end_ptr == 'M')
        {
            ++end_ptr;
            multiplier = 1024UL * 1024UL;
        }
        else if (*end_ptr == 'G')
        {
            ++end_ptr;
            multiplier = 1024UL * 1024UL * 1024UL;
        }
        else
            multiplier = 1;
        if (multiplier > 1)
        {
            if (*out_val > (9223372036854775807L *2UL+1UL) / multiplier)
            {
                (*__error()) = 34;
                *out_val = (9223372036854775807L *2UL+1UL);
            }
            else
                *out_val *= multiplier;
        }
    }
    if (*opng_strltrim(end_ptr) != 0)
    {
        (*__error()) = 22;
        return -1;
    }
    return 0;
}
