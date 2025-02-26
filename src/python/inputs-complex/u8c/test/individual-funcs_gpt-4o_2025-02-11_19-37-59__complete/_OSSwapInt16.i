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
 
uint16_t
_OSSwapInt16(
 uint16_t _data
 )
{
 return (uint16_t)(_data << 8 | _data >> 8);
}
