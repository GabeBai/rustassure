typedef signed int __int32_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
typedef __int32_t int32_t;
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
struct aptx_context;
  int32_t clip(int32_t a, int32_t amin, int32_t amax)
{
    if (a < amin) return amin;
    else if (a > amax) return amax;
    else return a;
}
