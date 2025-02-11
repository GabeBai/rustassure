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
  void zswap(z_t, z_t);
  void zset(z_t, z_t);
  void zsetu(z_t, uint64_t);
  int zcmp(z_t, z_t);
  int zcmpu(z_t, uint64_t);
void zmodsqr(z_t, z_t, z_t);
void zmodpow(z_t, z_t, z_t, z_t);
void zadd_unsigned(z_t, z_t, z_t);
void zsub_unsigned(z_t, z_t, z_t);
void zrsh(z_t, z_t, size_t);
  size_t zlsb(z_t);
  int zeven(z_t);
enum zprimality zptest(z_t, z_t, int);
void zrand(z_t, enum zranddev, enum zranddist, z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
               extern z_t libzahl_tmp_ptest_x; extern z_t libzahl_tmp_ptest_a; extern z_t libzahl_tmp_ptest_d; extern z_t libzahl_tmp_ptest_n1; extern z_t libzahl_tmp_ptest_n4;
 extern z_t libzahl_const_1; extern z_t libzahl_const_2; extern z_t libzahl_const_4;
enum zprimality
zptest(z_t witness, z_t n, int t)
{
 size_t i, r;
 if (__builtin_expect(!!(zcmpu(n, 3) <= 0), 0)) {
  if (zcmpu(n, 1) <= 0) {
   if (witness)
    do { if ((witness) != (n)) zset(witness, n); } while (0);
   return NONPRIME;
  } else {
   return PRIME;
  }
 }
 if (__builtin_expect(!!(zeven(n)), 0)) {
  if (witness)
   zsetu(witness, 2);
  return NONPRIME;
 }
 zsub_unsigned(libzahl_tmp_ptest_n1, n, libzahl_const_1);
 zsub_unsigned(libzahl_tmp_ptest_n4, n, libzahl_const_4);
 r = zlsb(libzahl_tmp_ptest_n1);
 zrsh(libzahl_tmp_ptest_d, libzahl_tmp_ptest_n1, r);
 while (t--) {
  zrand(libzahl_tmp_ptest_a, DEFAULT_RANDOM, UNIFORM, libzahl_tmp_ptest_n4);
  zadd_unsigned(libzahl_tmp_ptest_a, libzahl_tmp_ptest_a, libzahl_const_2);
  zmodpow(libzahl_tmp_ptest_x, libzahl_tmp_ptest_a, libzahl_tmp_ptest_d, n);
  if (!zcmp(libzahl_tmp_ptest_x, libzahl_const_1) || !zcmp(libzahl_tmp_ptest_x, libzahl_tmp_ptest_n1))
   continue;
  for (i = 1; i < r; i++) {
   zmodsqr(libzahl_tmp_ptest_x, libzahl_tmp_ptest_x, n);
   if (!zcmp(libzahl_tmp_ptest_x, libzahl_const_1)) {
    if (witness)
     zswap(witness, libzahl_tmp_ptest_a);
    return NONPRIME;
   }
   if (!zcmp(libzahl_tmp_ptest_x, libzahl_tmp_ptest_n1))
    break;
  }
  if (i == r) {
   if (witness)
    zswap(witness, libzahl_tmp_ptest_a);
   return NONPRIME;
  }
 }
 return PROBABLY_PRIME;
}
