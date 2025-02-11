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
  void zset(z_t, z_t);
void zrsh(z_t, z_t, size_t);
  size_t zbits(z_t);
  int zzero(z_t);
  int zsignum(z_t);
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
zrsh(z_t a, z_t b, size_t bits)
{
 size_t i, chars, cbits;
 if (__builtin_expect(!!(!bits), 0)) {
  do { if ((a) != (b)) zset(a, b); } while (0);
  return;
 }
 chars = ((bits) >> 6);
 if (__builtin_expect(!!(zzero(b) || chars >= b->used || zbits(b) <= bits), 0)) {
  ((a)->sign = (0));
  return;
 }
 bits = ((bits) & (64 - 1));
 cbits = 64 - bits;
 if (__builtin_expect(!!(chars), 1) && __builtin_expect(!!(a == b), 1)) {
  a->used -= chars;
  libzahl_memmove(a->chars, a->chars + chars, a->used);
 } else if (__builtin_expect(!!(a != b), 0)) {
  a->used = b->used - chars;
  do { if ((a)->alloced < (a->used)) libzahl_realloc(a, (a->used)); } while (0);
  libzahl_memcpy(a->chars, b->chars + chars, a->used);
 }
 if (__builtin_expect(!!(bits), 0)) {
  a->chars[0] >>= bits;
  for (i = 1; i < a->used; i++) {
   a->chars[i - 1] |= a->chars[i] << cbits;
   a->chars[i] >>= bits;
  }
  for (; !(a)->chars[(a)->used - 1]; (a)->used--);
 }
 ((a)->sign = (zsignum(b)));
}
