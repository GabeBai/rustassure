typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
  void
libzahl_memset_precise(register zahl_char_t *a, register zahl_char_t v, size_t n)
{
 size_t i;
 if (n <= 4) {
  if (n >= 1)
   a[0] = v;
  if (n >= 2)
   a[1] = v;
  if (n >= 3)
   a[2] = v;
  if (n >= 4)
   a[3] = v;
 } else {
  for (i = 0; (i += 4) <= n;) {
   a[i - 1] = v;
   a[i - 2] = v;
   a[i - 3] = v;
   a[i - 4] = v;
  }
  if (i > n)
   for (i -= 4; i < n; i++)
    a[i] = v;
 }
}
