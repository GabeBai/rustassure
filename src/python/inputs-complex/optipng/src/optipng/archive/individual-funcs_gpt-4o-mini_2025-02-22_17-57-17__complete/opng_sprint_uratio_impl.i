typedef long unsigned int size_t;
typedef unsigned long long opng_ullong_t;
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
typedef opng_ullong_t opng_ulongest_impl_t;
static int
opng_sprint_uratio_impl(char *buffer, size_t buffer_size,
                        opng_ulongest_impl_t num, opng_ulongest_impl_t denom,
                        int always_percent)
{
    opng_ulongest_impl_t integer_part, remainder;
    unsigned int fractional_part, scale;
    double scaled_ratio;
    if (denom == 0)
        return opng_snprintf_impl(buffer, buffer_size,
                                  num == 0 ? "??%%" : "INFTY%%");
    if (num < denom && denom / (denom - num) < 20000)
    {
        scale = 10000;
        scaled_ratio = ((double)num * (double)scale) / (double)denom;
        fractional_part = (unsigned int)(scaled_ratio + 0.5);
        if (fractional_part >= scale)
            fractional_part = scale - 1;
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%u.%02u%%",
                                  fractional_part / 100,
                                  fractional_part % 100);
    }
    integer_part = num / denom;
    remainder = num % denom;
    scale = 100;
    scaled_ratio = ((double)remainder * (double)scale) / (double)denom;
    fractional_part = (unsigned int)(scaled_ratio + 0.5);
    if (fractional_part >= scale)
    {
        fractional_part = 0;
        ++integer_part;
    }
    if (always_percent)
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%" "ll" "u%02u%%",
                                  integer_part, fractional_part);
    if (integer_part < 100)
        return opng_snprintf_impl(buffer, buffer_size,
                                  "%" "ll" "u.%02ux",
                                  integer_part, fractional_part);
    integer_part = num / denom;
    if (remainder > (denom - 1) / 2)
        ++integer_part;
    return opng_snprintf_impl(buffer, buffer_size,
                              "%" "ll" "ux",
                              integer_part);
}
