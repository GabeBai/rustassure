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
void znot(z_t, z_t);
  size_t zbits(z_t);
  int zzero(z_t);
  int zsignum(z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
void
znot(z_t a, z_t b)
{
 size_t bits;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  ((a)->sign = (0));
  return;
 }
 bits = zbits(b);
 a->used = b->used;
 ((a)->sign = (-zsignum(b)));
 do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (b->chars); size_t i__, n__ = (a->used); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = ~(b__[i__ + 0]); a__[i__ + 1] = ~(b__[i__ + 1]); a__[i__ + 2] = ~(b__[i__ + 2]); a__[i__ + 3] = ~(b__[i__ + 3]); } } while (0);
 bits = ((bits) & (64 - 1));
 if (bits)
  a->chars[a->used - 1] &= ((zahl_char_t)1 << bits) - 1;
 do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); if (!(a)->used) ((a)->sign = (0)); } while (0);
}
