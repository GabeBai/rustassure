typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
  void
libzahl_memcpy(register zahl_char_t *restrict d, register const zahl_char_t *restrict s, register size_t n)
{
 switch (n) { case 20: d[20 - 1] = s[20 - 1];; case 19: d[19 - 1] = s[19 - 1];; case 18: d[18 - 1] = s[18 - 1];; case 17: d[17 - 1] = s[17 - 1];; case 16: d[16 - 1] = s[16 - 1];; case 15: d[15 - 1] = s[15 - 1];; case 14: d[14 - 1] = s[14 - 1];; case 13: d[13 - 1] = s[13 - 1];; case 12: d[12 - 1] = s[12 - 1];; case 11: d[11 - 1] = s[11 - 1];; case 10: d[10 - 1] = s[10 - 1];; case 9: d[9 - 1] = s[9 - 1];; case 8: d[8 - 1] = s[8 - 1];; case 7: d[7 - 1] = s[7 - 1];; case 6: d[6 - 1] = s[6 - 1];; case 5: d[5 - 1] = s[5 - 1];; case 4: d[4 - 1] = s[4 - 1];; case 3: d[3 - 1] = s[3 - 1];; case 2: d[2 - 1] = s[2 - 1];; case 1: d[1 - 1] = s[1 - 1];; case 0: break; default:;
 {
  size_t i;
  for (i = 0; i < n; i += 4) {
   d[i + 0] = s[i + 0];
   d[i + 1] = s[i + 1];
   d[i + 2] = s[i + 2];
   d[i + 3] = s[i + 3];
  }
 }
 break; };
}
