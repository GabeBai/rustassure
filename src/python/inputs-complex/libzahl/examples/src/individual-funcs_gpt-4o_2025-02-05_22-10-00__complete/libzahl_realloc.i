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
void zfree(z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
void *realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
extern zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
extern size_t libzahl_pool_n[sizeof(size_t) * 8];
void
libzahl_realloc(z_t a, size_t need)
{
 size_t i, new_size = 1;
 zahl_char_t *new;
 new_size <<= i = (8 * sizeof(unsigned long int) - 1 - (size_t)__builtin_clzl(need));
 if (__builtin_expect(!!(new_size != need), 1)) {
  i += 1;
  new_size <<= 1;
 }
 if (__builtin_expect(!!(libzahl_pool_n[i]), 1)) {
  libzahl_pool_n[i]--;
  new = libzahl_pool[i][libzahl_pool_n[i]];
  libzahl_memcpy(new, a->chars, a->alloced);
  zfree(a);
  a->chars = new;
 } else {
  a->chars = realloc(a->chars, (new_size + 4) * sizeof(zahl_char_t));
  if (__builtin_expect(!!(!a->chars), 0))
   libzahl_memfailure();
 }
 a->alloced = new_size;
}
