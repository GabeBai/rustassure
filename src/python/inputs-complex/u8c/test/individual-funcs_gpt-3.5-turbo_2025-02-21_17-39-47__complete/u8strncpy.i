typedef long unsigned int __darwin_size_t;
typedef __darwin_size_t size_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
char *u8strncpy(char *dest, const char *src, size_t n);
char *u8strncpy(char *dest, const char *src, size_t n)
{
  int k = n-1;
  int i;
  if (n) {
    dest[k] = 0;
    __builtin___strncpy_chk (dest, src,n, __builtin_object_size (dest, 2 > 1 ? 1 : 0));
    if (dest[k] & 0x80) {
      for (i=k; (i>0) && ((k-i) < 3) && ((dest[i] & 0xC0) == 0x80); i--) ;
      switch(k-i) {
        case 0: dest[i] = '\0'; break;
        case 1: if ( (dest[i] & 0xE0) != 0xC0) dest[i] = '\0'; break;
        case 2: if ( (dest[i] & 0xF0) != 0xE0) dest[i] = '\0'; break;
        case 3: if ( (dest[i] & 0xF8) != 0xF0) dest[i] = '\0'; break;
      }
    }
  }
  return dest;
}
