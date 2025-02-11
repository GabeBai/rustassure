typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
  void
libzahl_memmovef(register zahl_char_t *d, register const zahl_char_t *s, size_t n)
{
 if (n && n < 4) {
  d[0] = s[0];
  d[1] = s[1];
  d[2] = s[2];
 } else {
  size_t i;
  for (i = 0; i < n; i += 4) {
   d[i + 0] = s[i + 0];
   d[i + 1] = s[i + 1];
   d[i + 2] = s[i + 2];
   d[i + 3] = s[i + 3];
  }
 }
}
