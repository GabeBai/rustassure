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
  void zset(z_t, z_t);
  void zbset(z_t, z_t, size_t, int);
  int zzero(z_t);
void zbset_ll_set(z_t, size_t);
void zbset_ll_clear(z_t, size_t);
void zbset_ll_flip(z_t, size_t);
  void
zbset(z_t a, z_t b, size_t bit, int action)
{
 if (__builtin_expect(!!(a != b), 0))
  zset(a, b);
 if (__builtin_constant_p(action) && __builtin_constant_p(bit)) {
  zahl_char_t mask = 1;
  if (zzero(a) || ((bit) >> 6) >= a->used) {
   if (!action)
    return;
   goto fallback;
  }
  mask <<= ((bit) & (64 - 1));
  if (action > 0) {
   a->chars[((bit) >> 6)] |= mask;
   return;
  } else if (action < 0) {
   a->chars[((bit) >> 6)] ^= mask;
  } else {
   a->chars[((bit) >> 6)] &= ~mask;
  }
  do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); if (!(a)->used) ((a)->sign = (0)); } while (0);
  return;
 }
fallback:
 if (action > 0)
  zbset_ll_set(a, bit);
 else if (action < 0)
  zbset_ll_flip(a, bit);
 else
  zbset_ll_clear(a, bit);
}
