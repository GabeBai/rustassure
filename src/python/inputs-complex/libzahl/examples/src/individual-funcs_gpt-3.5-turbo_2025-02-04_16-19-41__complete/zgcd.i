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
  void zset(z_t, z_t);
  int zcmpmag(z_t, z_t);
void zsub_positive_assign(z_t, z_t);
void zlsh(z_t, z_t, size_t);
void zrsh(z_t, z_t, size_t);
  size_t zlsb(z_t);
  int zzero(z_t);
  int zsignum(z_t);
void zgcd(z_t, z_t, z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
    extern z_t libzahl_tmp_gcd_u; extern z_t libzahl_tmp_gcd_v;              
void
zgcd(z_t a, z_t b, z_t c)
{
 size_t shifts;
 zahl_char_t *u_orig, *v_orig;
 size_t u_lsb, v_lsb;
 int neg, cmpmag;
 if (__builtin_expect(!!(zzero(b)), 0)) {
  do { if ((a) != (c)) zset(a, c); } while (0);
  return;
 }
 if (__builtin_expect(!!(zzero(c)), 0)) {
  do { if ((a) != (b)) zset(a, b); } while (0);
  return;
 }
 neg = ((zsignum(b) & zsignum(c)) < 0);
 u_lsb = zlsb(b);
 v_lsb = zlsb(c);
 shifts = ((u_lsb) < (v_lsb) ? (u_lsb) : (v_lsb));
 zrsh(libzahl_tmp_gcd_u, b, u_lsb);
 zrsh(libzahl_tmp_gcd_v, c, v_lsb);
 u_orig = libzahl_tmp_gcd_u->chars;
 v_orig = libzahl_tmp_gcd_v->chars;
 for (;;) {
  if (__builtin_expect(!!((cmpmag = zcmpmag(libzahl_tmp_gcd_u, libzahl_tmp_gcd_v)) >= 0), 1)) {
   if (__builtin_expect(!!(cmpmag == 0), 0))
    break;
   zswap_tainted_unsigned(libzahl_tmp_gcd_u, libzahl_tmp_gcd_v);
  }
  zsub_positive_assign(libzahl_tmp_gcd_v, libzahl_tmp_gcd_u);
  zrsh_taint(libzahl_tmp_gcd_v, zlsb(libzahl_tmp_gcd_v));
 }
 zlsh(a, libzahl_tmp_gcd_u, shifts);
 ((a)->sign = (neg ? -1 : 1));
 libzahl_tmp_gcd_u->chars = u_orig;
 libzahl_tmp_gcd_v->chars = v_orig;
}
