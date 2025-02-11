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
libzahl_zadd_unsigned(z_t a, z_t b, z_t c)
{
 size_t size, n;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  zabs(a, c);
  return;
 } else if (__builtin_expect(!!(zzero(c)), 0)) {
  zabs(a, b);
  return;
 }
 size = ((b->used) > (c->used) ? (b->used) : (c->used));
 n = b->used + c->used - size;
 do { if ((a)->alloced < (size + 1)) libzahl_realloc(a, (size + 1)); } while (0);
 a->chars[size] = 0;
 if (a == b) {
  if (a->used < c->used) {
   n = c->used;
   libzahl_memset(a->chars + a->used, 0, n - a->used);
  }
  zadd_impl_3(a, c, n);
 } else if (__builtin_expect(!!(a == c), 0)) {
  if (a->used < b->used) {
   n = b->used;
   libzahl_memset(a->chars + a->used, 0, n - a->used);
  }
  zadd_impl_3(a, b, n);
 } else if (__builtin_expect(!!(b->used > c->used), 1)) {
  libzahl_memcpy(a->chars + n, b->chars + n, size - n);
  a->used = size;
  zadd_impl_4(a, b, c, n);
 } else {
  libzahl_memcpy(a->chars + n, c->chars + n, size - n);
  a->used = size;
  zadd_impl_4(a, b, c, n);
 }
 ((a)->sign = (1));
}
