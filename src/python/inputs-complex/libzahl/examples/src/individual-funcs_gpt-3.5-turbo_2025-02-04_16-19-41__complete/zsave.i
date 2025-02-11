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
  size_t zsave(z_t, void *);
  int zzero(z_t);
  size_t
zsave(z_t a, void *buffer)
{
 if (__builtin_expect(!!(buffer), 1)) {
  char *buf = buffer;
  *((long *)buf) = a->sign, buf += sizeof(long);
  *((size_t *)buf) = a->used, buf += sizeof(size_t);
  if (__builtin_expect(!!(!zzero(a)), 1)) {
   a->chars[a->used + 2] = 0;
   a->chars[a->used + 1] = 0;
   a->chars[a->used + 0] = 0;
   libzahl_memcpy((zahl_char_t *)buf, a->chars, a->used);
  }
 }
 return sizeof(long) + sizeof(size_t) +
  (zzero(a) ? 0 :((a->used + 3) & (size_t)~3) * sizeof(zahl_char_t));
}
