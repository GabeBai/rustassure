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
zsplit_unsigned_fast_small_auto(z_t high, z_t low, z_t a, size_t n)
{
 zahl_char_t mask = 1;
 mask = (mask << n) - 1;
 high->sign = 1;
 high->used = 1;
 high->chars[0] = a->chars[0] >> n;
 if (a->used == 2) {
  high->chars[1] = a->chars[1] >> n;
  high->used += !!high->chars[1];
  n = 64 - n;
  high->chars[0] |= (a->chars[1] & mask) << n;
 }
 low->sign = 1;
 low->used = 1;
 low->chars[0] = a->chars[0] & mask;
 if (__builtin_expect(!!(!low->chars[0]), 0))
  low->sign = 0;
}
