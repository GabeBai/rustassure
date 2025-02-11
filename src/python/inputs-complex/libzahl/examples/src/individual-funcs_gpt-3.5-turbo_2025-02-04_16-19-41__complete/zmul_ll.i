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
void zadd_unsigned_assign(z_t, z_t);
void zsub_nonnegative_assign(z_t, z_t);
void zlsh(z_t, z_t, size_t);
  size_t zbits(z_t);
void zmul_ll(z_t, z_t, z_t);
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
zmul_ll(z_t a, z_t b, z_t c)
{
 size_t m, m2;
 z_t b_high, b_low, c_high, c_low;
 if (__builtin_expect(!!(zzero1(b, c)), 0)) {
  ((a)->sign = (0));
  return;
 }
 m = zbits(b);
 m2 = b == c ? m : zbits(c);
 if (m + m2 <= 64) {
  zmul_ll_single_char(a, b, c);
  return;
 }
        m = ((m) > (m2) ? (m) : (m2));
 m2 = m >> 1;
 zinit_temp(b_high);
 zinit_temp(b_low);
 zinit_temp(c_high);
 zinit_temp(c_low);
 zsplit_pz(b_high, b_low, b, m2);
 zsplit_pz(c_high, c_low, c, m2);
 zmul_ll(a, b_low, c_low);
 zadd_unsigned_assign(b_low, b_high);
 zadd_unsigned_assign(c_low, c_high);
 zmul_ll(b_low, b_low, c_low);
 zmul_ll(c_low, b_high, c_high);
 zsub_nonnegative_assign(b_low, a);
 zsub_nonnegative_assign(b_low, c_low);
 zlsh(b_low, b_low, m2);
 m2 <<= 1;
 zlsh(c_low, c_low, m2);
 zadd_unsigned_assign(a, b_low);
 zadd_unsigned_assign(a, c_low);
 zfree_temp(c_low);
 zfree_temp(c_high);
 zfree_temp(b_low);
 zfree_temp(b_high);
}
