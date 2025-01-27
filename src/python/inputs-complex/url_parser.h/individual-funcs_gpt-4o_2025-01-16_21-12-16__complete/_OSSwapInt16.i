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
static inline
uint16_t
_OSSwapInt16(
 uint16_t _data
 )
{
 return (uint16_t)(_data << 8 | _data >> 8);
}
