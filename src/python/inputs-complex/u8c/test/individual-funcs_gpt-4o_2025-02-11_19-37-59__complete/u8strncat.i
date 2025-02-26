typedef long unsigned int __darwin_size_t;
typedef __darwin_size_t size_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
char *u8strncpy(char *dest, const char *src, size_t n);
char *u8strncat(char *dest, const char *src, size_t n);
char *u8strncat(char *dest, const char *src, size_t n)
{
  char *d = dest;
  while (*d) d++;
  u8strncpy(d,src,n);
  d[n] = '\0';
  return dest;
}
