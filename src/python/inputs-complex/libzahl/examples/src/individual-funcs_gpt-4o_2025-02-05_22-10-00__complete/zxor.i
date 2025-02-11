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
void zxor(z_t, z_t, z_t);
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
zxor(z_t a, z_t b, z_t c)
{
 size_t n, m, bn, cn;
 const zahl_char_t *restrict bc;
 const zahl_char_t *restrict cc;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  do { if ((a) != (c)) zset(a, c); } while (0);
  return;
 } else if (__builtin_expect(!!(zzero(c)), 0)) {
  do { if ((a) != (b)) zset(a, b); } while (0);
  return;
 }
 bn = b->used;
 bc = b->chars;
 cn = c->used;
 cc = c->chars;
 ((n) = ((bn) < (cn) ? (bn) : (cn)), (m) = ((bn) > (cn) ? (bn) : (cn)));
 do { if ((a)->alloced < (m)) libzahl_realloc(a, (m)); } while (0);
 if (a == b) {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (a->chars); const zahl_char_t *c__ = (cc); size_t i__, n__ = (n); if (n__ <= 4) { if (n__ >= 1) a__[0] = b__[0] ^ c__[0]; if (n__ >= 2) a__[1] = b__[1] ^ c__[1]; if (n__ >= 3) a__[2] = b__[2] ^ c__[2]; if (n__ >= 4) a__[3] = b__[3] ^ c__[3]; } else { for (i__ = 0; (i__ += 4) < n__;) { a__[i__ - 1] = b__[i__ - 1] ^ c__[i__ - 1]; a__[i__ - 2] = b__[i__ - 2] ^ c__[i__ - 2]; a__[i__ - 3] = b__[i__ - 3] ^ c__[i__ - 3]; a__[i__ - 4] = b__[i__ - 4] ^ c__[i__ - 4]; } if (i__ > n__) for (i__ -= 4; i__ < n__; i__++) a__[i__] = b__[i__] ^ c__[i__]; } } while (0);
  if (a->used < cn)
   zmemcpy_range(a->chars, cc, n, m);
 } else if (__builtin_expect(!!(a == c), 0)) {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (a->chars); const zahl_char_t *c__ = (bc); size_t i__, n__ = (n); if (n__ <= 4) { if (n__ >= 1) a__[0] = b__[0] ^ c__[0]; if (n__ >= 2) a__[1] = b__[1] ^ c__[1]; if (n__ >= 3) a__[2] = b__[2] ^ c__[2]; if (n__ >= 4) a__[3] = b__[3] ^ c__[3]; } else { for (i__ = 0; (i__ += 4) < n__;) { a__[i__ - 1] = b__[i__ - 1] ^ c__[i__ - 1]; a__[i__ - 2] = b__[i__ - 2] ^ c__[i__ - 2]; a__[i__ - 3] = b__[i__ - 3] ^ c__[i__ - 3]; a__[i__ - 4] = b__[i__ - 4] ^ c__[i__ - 4]; } if (i__ > n__) for (i__ -= 4; i__ < n__; i__++) a__[i__] = b__[i__] ^ c__[i__]; } } while (0);
  if (a->used < bn)
   zmemcpy_range(a->chars, bc, n, m);
 } else if (m == bn) {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (c->chars); const zahl_char_t *c__ = (b->chars); size_t i__, n__ = (n); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = b__[i__ + 0] ^ c__[i__ + 0]; a__[i__ + 1] = b__[i__ + 1] ^ c__[i__ + 1]; a__[i__ + 2] = b__[i__ + 2] ^ c__[i__ + 2]; a__[i__ + 3] = b__[i__ + 3] ^ c__[i__ + 3]; } } while (0);
  zmemcpy_range(a->chars, b->chars, n, m);
 } else {
  do { zahl_char_t *a__ = (a->chars); const zahl_char_t *b__ = (b->chars); const zahl_char_t *c__ = (c->chars); size_t i__, n__ = (n); for (i__ = 0; i__ < n__; i__ += 4) { a__[i__ + 0] = b__[i__ + 0] ^ c__[i__ + 0]; a__[i__ + 1] = b__[i__ + 1] ^ c__[i__ + 1]; a__[i__ + 2] = b__[i__ + 2] ^ c__[i__ + 2]; a__[i__ + 3] = b__[i__ + 3] ^ c__[i__ + 3]; } } while (0);
  zmemcpy_range(a->chars, c->chars, n, m);
 }
 a->used = m;
 do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); ((a)->sign = ((a)->used ? (1 - 2 * ((zsignum(b) ^ zsignum(c)) < 0)) : 0)); } while (0);
}
