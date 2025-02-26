typedef unsigned long long uint64_t;
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
static inline
uint64_t
_OSSwapInt64(
 uint64_t _data
 )
{
 return __builtin_bswap64(_data);
}
