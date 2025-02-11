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
  void zmul(z_t, z_t, z_t);
  int zsignum(z_t);
void zmul_ll(z_t, z_t, z_t);
  void
zmul(z_t a, z_t b, z_t c)
{
 int b_sign, c_sign;
 b_sign = b->sign, b->sign *= b_sign;
 c_sign = c->sign, c->sign *= c_sign;
 zmul_ll(a, b, c);
 c->sign = c_sign;
 b->sign = b_sign;
 ((a)->sign = (zsignum(b) * zsignum(c)));
}
