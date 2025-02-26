struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
int u8next_(const char *txt, int *ch);
static inline int u8codepoint(char *s) {int c; (void)u8next_(s, &c); return c;}
