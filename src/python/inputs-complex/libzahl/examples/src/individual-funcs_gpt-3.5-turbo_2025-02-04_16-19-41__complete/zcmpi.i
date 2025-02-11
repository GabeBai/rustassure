typedef long unsigned int size_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;
typedef uint64_t zahl_char_t;
struct zahl {
        int sign;
 int padding__;
        size_t used;
        size_t alloced;
        zahl_char_t *chars;
};
typedef struct zahl z_t[1];
enum zprimality {
 NONPRIME = 0,
 PROBABLY_PRIME,
 PRIME
};
enum zranddev {
 FAST_RANDOM = 0,
 SECURE_RANDOM,
 DEFAULT_RANDOM,
 FASTEST_RANDOM,
 LIBC_RAND_RANDOM,
 LIBC_RANDOM_RANDOM,
 LIBC_RAND48_RANDOM
};
enum zranddist {
 QUASIUNIFORM = 0,
 UNIFORM,
 MODUNIFORM
};
enum zerror {
 ZERROR_ERRNO_SET = 0,
 ZERROR_0_POW_0,
 ZERROR_0_DIV_0,
 ZERROR_DIV_0,
 ZERROR_NEGATIVE,
 ZERROR_INVALID_RADIX
};
  int zcmpi(z_t, int64_t);
  int zzero(z_t);
  int zsignum(z_t);
  int
zcmpi(z_t a, int64_t b)
{
 if (__builtin_expect(!!(!b), 0))
  return zsignum(a);
 if (__builtin_expect(!!(zzero(a)), 0))
  return __builtin_expect(!!(b < 0), 1) ? 1 : -1;
 if (__builtin_expect(!!(b < 0), 1)) {
  if (zsignum(a) > 0)
   return +1;
  while (!a->chars[a->used - 1]) a->used--;
  if (a->used > 1)
   return -1;
  return a->chars[0] > (zahl_char_t)-b ? -1 : a->chars[0] < (zahl_char_t)-b;
 } else {
  if (zsignum(a) < 0)
   return -1;
  while (!a->chars[a->used - 1]) a->used--;
  if (a->used > 1)
   return +1;
  return a->chars[0] < (zahl_char_t)b ? -1 : a->chars[0] > (zahl_char_t)b;
 }
}
