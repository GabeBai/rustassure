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
zadd_impl_4(z_t a, z_t b, z_t c, size_t n)
{
 zahl_char_t carry = 0, tcarry;
 zahl_char_t *ac = a->chars, *bc = b->chars, *cc = c->chars;
 size_t i;
 for (i = 0; i < n; i++) {
  tcarry = __builtin_uaddl_overflow(bc[i], cc[i], ac + i);
  carry = tcarry | (zahl_char_t)__builtin_uaddl_overflow(ac[i], carry, ac + i);
 }
 while (carry) {
  carry = __builtin_uaddl_overflow(ac[i], 1, ac + i);
  i++;
 }
 if (a->used < i)
  a->used = i;
}
