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
typedef unsigned int uint32_t;
 
uint32_t
_OSSwapInt32(
 uint32_t _data
 )
{
 _data = __builtin_bswap32(_data);
 return _data;
}
