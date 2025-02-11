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
void ztrunc(z_t, z_t, size_t);
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
ztrunc(z_t a, z_t b, size_t bits)
{
 size_t chars;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  ((a)->sign = (0));
  return;
 }
 chars = (((bits) + (64 - 1)) >> 6);
 a->used = ((chars) < (b->used) ? (chars) : (b->used));
 if (__builtin_expect(!!(a->used < chars), 0))
  bits = 0;
 if (__builtin_expect(!!(a != b), 1)) {
  a->sign = b->sign;
  do { if ((a)->alloced < (a->used)) libzahl_realloc(a, (a->used)); } while (0);
  libzahl_memcpy(a->chars, b->chars, a->used);
 }
 bits = ((bits) & (64 - 1));
 if (__builtin_expect(!!(bits), 1))
  a->chars[a->used - 1] &= ((zahl_char_t)1 << bits) - 1;
 do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); if (!(a)->used) ((a)->sign = (0)); } while (0);
}
