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
void zlsh(z_t, z_t, size_t);
  size_t zbits(z_t);
  int zzero(z_t);
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
void
zsqr_ll(z_t a, z_t b)
{
 z_t z0, z1, high, low;
 zahl_char_t auxchars[3 * 4];
 size_t bits;
 bits = zbits(b);
 if (bits <= 64 / 2) {
  zsqr_ll_single_char(a, b);
  return;
 }
 bits >>= 1;
 if (bits < 64) {
  low->chars = auxchars;
  high->chars = auxchars + 4;
  zsplit_unsigned_fast_small_auto(high, low, b, bits);
 } else {
  bits = ((bits) & ~(size_t)(64 - 1));
  zsplit_unsigned_fast_large_taint(high, low, b, bits);
 }
 if (__builtin_expect(!!(zzero(low)), 0)) {
  zsqr_ll(a, high);
  zlsh(a, a, bits << 1);
 } else {
  zinit_temp(z0);
  zinit_temp(z1);
  zsqr_ll(z0, low);
  zmul_ll(z1, low, high);
  zlsh(z1, z1, bits + 1);
  zsqr_ll(a, high);
  zlsh(a, a, bits << 1);
  zadd_unsigned_assign(a, z1);
  zadd_unsigned_assign(a, z0);
  zfree_temp(z1);
  zfree_temp(z0);
 }
}
