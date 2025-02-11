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
  void zset(z_t, z_t);
  void zseti(z_t, int64_t);
  int zcmpmag(z_t, z_t);
void zdivmod(z_t, z_t, z_t, z_t);
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
zdivmod(z_t a, z_t b, z_t c, z_t d)
{
 int c_sign, sign, cmpmag;
 c_sign = zsignum(c);
 sign = c_sign * zsignum(d);
 if (__builtin_expect(!!(!sign), 0)) {
  if (__builtin_expect(!!(!zzero(c)), 0)) {
   libzahl_failure(-ZERROR_DIV_0);
  } else if (__builtin_expect(!!(zzero(d)), 0)) {
   libzahl_failure(-ZERROR_0_DIV_0);
  } else {
   ((a)->sign = (0));
   ((b)->sign = (0));
  }
  return;
 } else if (cmpmag = zcmpmag(c, d), __builtin_expect(!!(cmpmag <= 0), 0)) {
  if (__builtin_expect(!!(cmpmag == 0), 0)) {
   zseti(a, sign);
   ((b)->sign = (0));
  } else {
   do { if ((b) != (c)) zset(b, c); } while (0);
   ((a)->sign = (0));
  }
  return;
 }
 zdivmod_impl(a, b, c, d);
 ((a)->sign = (sign));
 if (zsignum(b) > 0)
  ((b)->sign = (c_sign));
}
