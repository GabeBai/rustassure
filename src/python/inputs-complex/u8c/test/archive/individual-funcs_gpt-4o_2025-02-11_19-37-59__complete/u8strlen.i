struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
int u8strlen(const char *s);
int u8strlen(const char *s)
{
  int len=0;
  while (*s) {
    if ((*s & 0xC0) != 0x80) len++ ;
    s++;
  }
  return len;
}
