typedef long unsigned int size_t;
typedef unsigned long long uint64_t;
int close(int) __asm("_" "close" );
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
  int zcmpmag(z_t, z_t);
void zadd(z_t, z_t, z_t);
void zsub(z_t, z_t, z_t);
  void zmul(z_t, z_t, z_t);
void zrsh(z_t, z_t, size_t);
  size_t zbits(z_t);
  int zzero(z_t);
  int zsignum(z_t);
void zrand(z_t, enum zranddev, enum zranddist, z_t);
extern int * __error(void);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
int rand_r(unsigned *) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
 extern z_t libzahl_const_1;  
int open(const char *, int, ...) __asm("_" "open" );
void
zrand(z_t r, enum zranddev dev, enum zranddist dist, z_t n)
{
 const char *pathname = 0;
 size_t bits;
 int fd = -1;
 void *statep = 0;
 void (*random_fun)(void *, size_t, void *) = &zrand_fd;
        switch (dev) {
 case FAST_RANDOM:
  pathname = "/dev/urandom";
  break;
 case SECURE_RANDOM:
  pathname = "/dev/random";
  break;
 case LIBC_RAND_RANDOM:
  random_fun = &zrand_libc_rand;
  break;
 case DEFAULT_RANDOM:
 case FASTEST_RANDOM:
 case LIBC_RANDOM_RANDOM:
  random_fun = &zrand_libc_random;
  break;
 case LIBC_RAND48_RANDOM:
  random_fun = &zrand_libc_rand48;
  break;
 default:
  libzahl_failure(22);
 }
 if (__builtin_expect(!!(zzero(n)), 0)) {
  ((r)->sign = (0));
  return;
 }
 if (pathname) {
  fd = open(pathname, 0x0000);
  if (__builtin_expect(!!(fd < 0), 0))
   libzahl_failure((*__error()));
  statep = &fd;
 }
 switch (dist) {
 case QUASIUNIFORM:
  do { if (__builtin_expect(!!((zsignum(n) < 0)), 0)) libzahl_failure(-ZERROR_NEGATIVE); bits = zbits(n); do zrand_get_random_bits(r, bits, random_fun, statep); while (0 && __builtin_expect(!!(zcmpmag(r, n) > 0), 0)); } while (0);
  zadd(r, r, libzahl_const_1);
  zmul(r, r, n);
  zrsh(r, r, bits);
  break;
 case UNIFORM:
  do { if (__builtin_expect(!!((zsignum(n) < 0)), 0)) libzahl_failure(-ZERROR_NEGATIVE); bits = zbits(n); do zrand_get_random_bits(r, bits, random_fun, statep); while (1 && __builtin_expect(!!(zcmpmag(r, n) > 0), 0)); } while (0);
  break;
 case MODUNIFORM:
  do { if (__builtin_expect(!!((zsignum(n) < 0)), 0)) libzahl_failure(-ZERROR_NEGATIVE); bits = zbits(n); do zrand_get_random_bits(r, bits, random_fun, statep); while (0 && __builtin_expect(!!(zcmpmag(r, n) > 0), 0)); } while (0);
  if (__builtin_expect(!!(zcmpmag(r, n) > 0), 0))
          zsub(r, r, n);
  break;
 default:
  libzahl_failure(22);
  break;
 }
 if (fd >= 0)
  close(fd);
}
