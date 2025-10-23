typedef unsigned short int __uint16_t;
__extension__ 
__extension__  
__extension__
__extension__
__extension__
__extension__
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
