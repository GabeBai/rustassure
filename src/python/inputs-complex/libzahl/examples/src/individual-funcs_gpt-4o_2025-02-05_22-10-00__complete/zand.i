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
void zand(z_t, z_t, z_t);
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
zand(z_t a, z_t b, z_t c)
{
 if (__builtin_expect(!!(zzero(b)), 0)) {
  ((a)->sign = (0));
  return;
 } else if (__builtin_expect(!!(zzero(c)), 0)) {
  ((a)->sign = (0));
  return;
 }
 a->used = ((b->used) < (c->used) ? (b->used) : (c->used));
 if (a == b) {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (a->chars); const zahl_char_t *c__ = (c->chars); size_t i__, n__ = (a->used); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = b__[i__ + 0] & c__[i__ + 0]; a__[i__ + 1] = b__[i__ + 1] & c__[i__ + 1]; a__[i__ + 2] = b__[i__ + 2] & c__[i__ + 2]; a__[i__ + 3] = b__[i__ + 3] & c__[i__ + 3]; } } while (0);
 } else if (__builtin_expect(!!(a == c), 0)) {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (a->chars); const zahl_char_t *c__ = (b->chars); size_t i__, n__ = (a->used); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = b__[i__ + 0] & c__[i__ + 0]; a__[i__ + 1] = b__[i__ + 1] & c__[i__ + 1]; a__[i__ + 2] = b__[i__ + 2] & c__[i__ + 2]; a__[i__ + 3] = b__[i__ + 3] & c__[i__ + 3]; } } while (0);
 } else {
  do { if ((a)->alloced < (a->used)) libzahl_realloc(a, (a->used)); } while (0);
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (b->chars); const zahl_char_t *c__ = (c->chars); size_t i__, n__ = (a->used); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = b__[i__ + 0] & c__[i__ + 0]; a__[i__ + 1] = b__[i__ + 1] & c__[i__ + 1]; a__[i__ + 2] = b__[i__ + 2] & c__[i__ + 2]; a__[i__ + 3] = b__[i__ + 3] & c__[i__ + 3]; } } while (0);
 }
 do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); ((a)->sign = ((a)->used ? (((zsignum(b) > 0) + (zsignum(c) > 0) > 0) * 2 - 1) : 0)); } while (0);
}
