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
void libzahl_realloc(struct zahl *, size_t);
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
zrand_get_random_bits(z_t r, size_t bits, void (*fun)(void *, size_t, void *), void *statep)
{
 size_t n, chars = (((bits) + (64 - 1)) >> 6);
 zahl_char_t mask = 1;
 do { if ((r)->alloced < (chars)) libzahl_realloc(r, (chars)); } while (0);
 fun(r->chars, chars * sizeof(zahl_char_t), statep);
 bits = ((bits) & (64 - 1));
 mask <<= bits;
 mask -= 1;
 r->chars[chars - 1] &= mask;
 for (n = chars; n--;) {
  if (__builtin_expect(!!(r->chars[n]), 1)) {
   r->used = n + 1;
   ((r)->sign = (1));
   return;
  }
 }
        ((r)->sign = (0));
}
