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
void free(void * );
void *realloc(void * __ptr, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(2))) ;
extern zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
extern size_t libzahl_pool_n[sizeof(size_t) * 8];
extern size_t libzahl_pool_alloc[sizeof(size_t) * 8];
void
zfree(z_t a)
{
 size_t i, x, j;
 zahl_char_t **new;
 if (__builtin_expect(!!(!a->chars), 0))
  return;
 i = (8 * sizeof(unsigned long int) - 1 - (size_t)__builtin_clzl(a->alloced));
 j = libzahl_pool_n[i]++;
 if (j == libzahl_pool_alloc[i]) {
  x = j ? ((j * 3) >> 1) : 128;
  new = realloc(libzahl_pool[i], x * sizeof(zahl_char_t *));
  if (__builtin_expect(!!(!new), 0)) {
   free(a->chars);
   free(libzahl_pool[i]);
   libzahl_pool_n[i] = 0;
   libzahl_pool[i] = 0;
   libzahl_pool_alloc[i] = 0;
   return;
  }
  libzahl_pool[i] = new;
  libzahl_pool_alloc[i] = x;
 }
 libzahl_pool[i][j] = a->chars;
}
