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
  void zinit(z_t);
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
extern struct zahl **libzahl_temp_stack;
extern struct zahl **libzahl_temp_stack_head;
extern struct zahl **libzahl_temp_stack_end;
  void
zinit_temp(z_t a)
{
 zinit(a);
 if (__builtin_expect(!!(libzahl_temp_stack_head == libzahl_temp_stack_end), 0)) {
  size_t n = (size_t)(libzahl_temp_stack_end - libzahl_temp_stack);
  void* old = libzahl_temp_stack;
  libzahl_temp_stack = realloc(old, 2 * n * sizeof(*libzahl_temp_stack));
  if (__builtin_expect(!!(!libzahl_temp_stack), 0)) {
   libzahl_temp_stack = old;
   libzahl_memfailure();
  }
  libzahl_temp_stack_head = libzahl_temp_stack + n;
  libzahl_temp_stack_end = libzahl_temp_stack_head + n;
 }
 *libzahl_temp_stack_head++ = a;
}
