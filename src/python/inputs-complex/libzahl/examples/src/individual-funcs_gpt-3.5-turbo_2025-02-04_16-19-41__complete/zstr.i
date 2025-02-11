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
  void zabs(z_t, z_t);
void zdivmod(z_t, z_t, z_t, z_t);
  int zzero(z_t);
  int zsignum(z_t);
char *zstr(z_t, char *, size_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
extern z_t libzahl_tmp_str_num;   extern z_t libzahl_tmp_str_rem;                
extern z_t libzahl_const_1e19;   
extern void *libzahl_temp_allocation;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
char *
zstr(z_t a, char *b, size_t n)
{
 char buf[19 + 1];
 size_t len, neg, last, tot = 0;
 char overridden = 0;
 if (__builtin_expect(!!(zzero(a)), 0)) {
  if (__builtin_expect(!!(!b), 0) && __builtin_expect(!!(!(b = malloc(2))), 0))
   libzahl_memfailure();
  b[0] = '0';
  b[1] = 0;
  return b;
 }
 if (!n) {
  n = (20 * 64 / 64 + (64 == 8)) * a->used;
 }
 if (__builtin_expect(!!(!b), 0) && __builtin_expect(!!(!(b = libzahl_temp_allocation = malloc(n + 1))), 0))
  libzahl_memfailure();
 neg = (zsignum(a) < 0);
 zabs(libzahl_tmp_str_num, a);
 b[0] = '-';
 b += neg;
 n -= neg;
 n = (last = n) > 19 ? (n - 19) : 0;
 for (;;) {
  zdivmod(libzahl_tmp_str_num, libzahl_tmp_str_rem, libzahl_tmp_str_num, libzahl_const_1e19);
  if (__builtin_expect(!!(!zzero(libzahl_tmp_str_num)), 1)) {
   sprintint_fix(b + n, zzero(libzahl_tmp_str_rem) ? 0 : libzahl_tmp_str_rem->chars[0]);
   b[n + 19] = overridden;
   overridden = b[n];
   n = (last = n) > 19 ? (n - 19) : 0;
   tot += 19;
  } else {
   len = sprintint_min(buf, libzahl_tmp_str_rem->chars[0]);
   if (tot) {
    __builtin___memcpy_chk (b, buf, len, __builtin_object_size (b, 0));
    __builtin___memmove_chk (b + len, b + last, tot + 1, __builtin_object_size (b + len, 0));
   } else {
    __builtin___memcpy_chk (b, buf, len + 1, __builtin_object_size (b, 0));
   }
   break;
  }
 }
 libzahl_temp_allocation = 0;
 return b - neg;
}
