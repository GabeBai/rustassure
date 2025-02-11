typedef long unsigned int size_t;
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
void zrsh(z_t, z_t, size_t);
void ztrunc(z_t, z_t, size_t);
  void zsplit(z_t, z_t, z_t, size_t);
          void
zsplit(z_t high, z_t low, z_t a, size_t delim)
{
 if (__builtin_expect(!!(high == a), 0)) {
  ztrunc(low, a, delim);
  zrsh(high, a, delim);
 } else {
  zrsh(high, a, delim);
  ztrunc(low, a, delim);
 }
}
