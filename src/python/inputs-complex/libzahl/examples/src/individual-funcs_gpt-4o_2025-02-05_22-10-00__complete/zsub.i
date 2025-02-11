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
  void zneg(z_t, z_t);
void zsub(z_t, z_t, z_t);
void zadd_unsigned(z_t, z_t, z_t);
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
zsub(z_t a, z_t b, z_t c)
{
 if (__builtin_expect(!!(zzero(b)), 0)) {
  zneg(a, c);
 } else if (__builtin_expect(!!(zzero(c)), 0)) {
  do { if ((a) != (b)) zset(a, b); } while (0);
 } else if (__builtin_expect(!!((zsignum(b) < 0)), 0)) {
  if ((zsignum(c) < 0)) {
   libzahl_zsub_unsigned(a, c, b);
  } else {
   zadd_unsigned(a, b, c);
   ((a)->sign = (-zsignum(a)));
  }
 } else if ((zsignum(c) < 0)) {
  zadd_unsigned(a, b, c);
 } else {
  libzahl_zsub_unsigned(a, b, c);
 }
}
