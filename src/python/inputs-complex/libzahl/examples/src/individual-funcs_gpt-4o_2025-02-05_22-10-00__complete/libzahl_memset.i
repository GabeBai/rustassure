typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
  void
libzahl_memset(register zahl_char_t *a, register zahl_char_t v, size_t n)
{
 size_t i;
 for (i = 0; i < n; i += 4) {
  a[i + 0] = v;
  a[i + 1] = v;
  a[i + 2] = v;
  a[i + 3] = v;
 }
}
