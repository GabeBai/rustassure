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
  void zsetu(z_t, uint64_t);
  void zabs(z_t, z_t);
  void zneg(z_t, z_t);
void zpowu(z_t, z_t, unsigned long long int);
  int zzero(z_t);
  int zsignum(z_t);
void zmul_ll(z_t, z_t, z_t);
void zsqr_ll(z_t, z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
        extern z_t libzahl_tmp_pow_b;           
void
zpowu(z_t a, z_t b, unsigned long long int c)
{
 int neg;
 if (__builtin_expect(!!(!c), 0)) {
  if (__builtin_expect(!!(zzero(b)), 0))
   libzahl_failure(-ZERROR_0_POW_0);
  zsetu(a, 1);
  return;
 } else if (__builtin_expect(!!(zzero(b)), 0)) {
  ((a)->sign = (0));
  return;
 }
 neg = (zsignum(b) < 0) && (c & 1);
 zabs(libzahl_tmp_pow_b, b);
 if (c & 1)
  zset(a, libzahl_tmp_pow_b);
 else
  zsetu(a, 1);
 while (c >>= 1) {
  zsqr_ll(libzahl_tmp_pow_b, libzahl_tmp_pow_b);
  if (c & 1)
   zmul_ll(a, a, libzahl_tmp_pow_b);
 }
 if (neg)
  zneg(a, a);
}
