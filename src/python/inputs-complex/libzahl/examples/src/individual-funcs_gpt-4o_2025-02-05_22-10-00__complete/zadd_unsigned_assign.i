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
  void zabs(z_t, z_t);
void zadd_unsigned_assign(z_t, z_t);
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
void
zadd_unsigned_assign(z_t a, z_t b)
{
 size_t size, n;
 if (__builtin_expect(!!(zzero(a)), 0)) {
  zabs(a, b);
  return;
 } else if (__builtin_expect(!!(zzero(b)), 0)) {
  return;
 }
 size = ((a->used) > (b->used) ? (a->used) : (b->used));
 n = a->used + b->used - size;
 do { if ((a)->alloced < (size + 1)) libzahl_realloc(a, (size + 1)); } while (0);
 a->chars[size] = 0;
 if (a->used < b->used) {
  n = b->used;
  libzahl_memset(a->chars + a->used, 0, n - a->used);
 }
 zadd_impl_3(a, b, n);
 ((a)->sign = (1));
}
