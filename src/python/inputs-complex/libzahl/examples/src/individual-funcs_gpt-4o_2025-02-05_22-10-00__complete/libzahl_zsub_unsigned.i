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
  int zcmpmag(z_t, z_t);
  void zabs(z_t, z_t);
  void zneg(z_t, z_t);
  int zzero(z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
      extern z_t libzahl_tmp_sub;             
  void
libzahl_zsub_unsigned(z_t a, z_t b, z_t c)
{
 int magcmp;
 size_t n;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  zabs(a, c);
  zneg(a, a);
  return;
 } else if (__builtin_expect(!!(zzero(c)), 0)) {
  zabs(a, b);
  return;
 }
 magcmp = zcmpmag(b, c);
 if (__builtin_expect(!!(magcmp <= 0), 0)) {
  if (__builtin_expect(!!(magcmp == 0), 0)) {
   ((a)->sign = (0));
   return;
  }
  n = b->used;
  if (a == b) {
   zset(libzahl_tmp_sub, b);
   do { if ((a) != (c)) zset(a, c); } while (0);
   zsub_impl(a, libzahl_tmp_sub, n);
  } else {
   do { if ((a) != (c)) zset(a, c); } while (0);
   zsub_impl(a, b, n);
  }
 } else {
  n = c->used;
  if (__builtin_expect(!!(a == c), 0)) {
   zset(libzahl_tmp_sub, c);
   do { if ((a) != (b)) zset(a, b); } while (0);
   zsub_impl(a, libzahl_tmp_sub, n);
  } else {
   do { if ((a) != (b)) zset(a, b); } while (0);
   zsub_impl(a, c, n);
  }
 }
 ((a)->sign = (magcmp));
}
