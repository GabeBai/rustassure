typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
  void
libzahl_memmove(register zahl_char_t *d, register const zahl_char_t *s, size_t n)
{
 if (d < s)
  libzahl_memmovef(d, s, n);
 else
  libzahl_memmoveb(d, s, n);
}
