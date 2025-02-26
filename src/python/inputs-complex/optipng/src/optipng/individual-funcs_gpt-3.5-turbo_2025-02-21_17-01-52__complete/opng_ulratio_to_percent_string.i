typedef long unsigned int size_t;
typedef unsigned long long opng_ullong_t;
struct opng_ulratio
{
    unsigned long num;
    unsigned long denom;
};
int
opng_ulratio_to_percent_string(char *buffer, size_t buffer_size,
                               const struct opng_ulratio *ratio);
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
int
opng_ulratio_to_percent_string(char *buffer, size_t buffer_size,
                               const struct opng_ulratio *ratio)
{
    opng_ulongest_impl_t num = ratio->num;
    opng_ulongest_impl_t denom = ratio->denom;
    return opng_sprint_uratio_impl(buffer, buffer_size, num, denom, 1);
}
