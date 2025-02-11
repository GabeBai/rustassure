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
  void zsetu(z_t, uint64_t);
  int zcmpmag(z_t, z_t);
  void zdiv(z_t, z_t, z_t);
  void zsqr(z_t, z_t);
  int zzero(z_t);
  int zsignum(z_t);
size_t zstr_length(z_t, unsigned long long int);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
extern z_t libzahl_tmp_str_num; extern z_t libzahl_tmp_str_mag; extern z_t libzahl_tmp_str_div;                 
size_t
zstr_length(z_t a, unsigned long long int radix)
{
 size_t size_total = 1, size_temp;
 if (__builtin_expect(!!(radix < 2), 0))
  libzahl_failure(-ZERROR_INVALID_RADIX);
 zset(libzahl_tmp_str_num, a);
 while (!zzero(libzahl_tmp_str_num)) {
  zsetu(libzahl_tmp_str_mag, radix);
  zset(libzahl_tmp_str_div, libzahl_tmp_str_mag);
  size_temp = 1;
  while (zcmpmag(libzahl_tmp_str_mag, libzahl_tmp_str_num) <= 0) {
   zset(libzahl_tmp_str_div, libzahl_tmp_str_mag);
   zsqr(libzahl_tmp_str_mag, libzahl_tmp_str_mag);
   size_temp <<= 1;
  }
  size_temp >>= 1;
  size_total += size_temp;
  zdiv(libzahl_tmp_str_num, libzahl_tmp_str_num, libzahl_tmp_str_div);
 }
 return size_total + (zsignum(a) < 0);
}
