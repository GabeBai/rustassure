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
  void zswap(z_t, z_t);
  int zcmpmag(z_t, z_t);
  void zabs(z_t, z_t);
void zsub_unsigned(z_t, z_t, z_t);
void zlsh(z_t, z_t, size_t);
void zrsh(z_t, z_t, size_t);
  size_t zbits(z_t);
  void zbset(z_t, z_t, size_t, int);
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
            extern z_t libzahl_tmp_divmod_a; extern z_t libzahl_tmp_divmod_b; extern z_t libzahl_tmp_divmod_d;     
extern z_t libzahl_tmp_divmod_ds[64];
  void
zdivmod_impl(z_t a, z_t b, z_t c, z_t d)
{
 size_t c_bits, d_bits, bit, i;
  z_t tds[64];
 c_bits = zbits(c);
 d_bits = zbits(d);
 bit = c_bits - d_bits;
 zlsh(libzahl_tmp_divmod_d, d, bit);
 ((libzahl_tmp_divmod_d)->sign = (1));
 if (zcmpmag(libzahl_tmp_divmod_d, c) > 0) {
  zrsh(libzahl_tmp_divmod_d, libzahl_tmp_divmod_d, 1);
  bit -= 1;
 }
 ((libzahl_tmp_divmod_a)->sign = (0));
 zabs(libzahl_tmp_divmod_b, c);
 if (__builtin_expect(!!(bit <= 64), 0)) {
  for (;;) {
   if (zcmpmag(libzahl_tmp_divmod_d, libzahl_tmp_divmod_b) <= 0) {
    zsub_unsigned(libzahl_tmp_divmod_b, libzahl_tmp_divmod_b, libzahl_tmp_divmod_d);
    zbset(libzahl_tmp_divmod_a, libzahl_tmp_divmod_a, bit, 1);
   }
   if (!bit-- || zzero(libzahl_tmp_divmod_b))
    goto done;
   zrsh(libzahl_tmp_divmod_d, libzahl_tmp_divmod_d, 1);
  }
 } else {
  for (i = 0; i < 64; i++) {
   zrsh(libzahl_tmp_divmod_ds[i], libzahl_tmp_divmod_d, i);
   tds[i]->used = libzahl_tmp_divmod_ds[i]->used;
   tds[i]->sign = libzahl_tmp_divmod_ds[i]->sign;
   tds[i]->chars = libzahl_tmp_divmod_ds[i]->chars;
  }
  for (;;) {
   for (i = 0; i < 64; i++) {
    if (zcmpmag(tds[i], libzahl_tmp_divmod_b) <= 0) {
     zsub_unsigned(libzahl_tmp_divmod_b, libzahl_tmp_divmod_b, tds[i]);
     zbset(libzahl_tmp_divmod_a, libzahl_tmp_divmod_a, bit, 1);
    }
    if (!bit-- || zzero(libzahl_tmp_divmod_b))
     goto done;
   }
   for (i = ((bit) < (64 - 1) ? (bit) : (64 - 1)) + 1; i--;)
    zrsh_taint(tds[i], 64);
  }
 }
done:
 zswap(a, libzahl_tmp_divmod_a);
 zswap(b, libzahl_tmp_divmod_b);
}
