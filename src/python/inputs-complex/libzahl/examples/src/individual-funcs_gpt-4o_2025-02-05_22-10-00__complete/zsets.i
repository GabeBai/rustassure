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
void zadd(z_t, z_t, z_t);
  void zmul(z_t, z_t, z_t);
  int zsignum(z_t);
int zsets(z_t, const char *);
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
extern z_t libzahl_tmp_str_num;                   
extern z_t libzahl_const_1e19;   
int isdigit(int);
int
zsets(z_t a, const char *str)
{
 unsigned long long int temp = 0;
 int neg = (*str == '-');
 const char *str_end;
 str += neg || (*str == '+');
 if (__builtin_expect(!!(!*str), 0)) {
  (*__error()) = 22;
  return -1;
 }
 for (str_end = str; *str_end; str_end++) {
  if (__builtin_expect(!!(!isdigit(*str_end)), 0)) {
   (*__error()) = 22;
   return -1;
  }
 }
 ((a)->sign = (0));
 zset(libzahl_tmp_str_num, libzahl_const_1e19);
 switch ((str_end - str) % 19) {
  while (*str) {
   zmul(a, a, libzahl_const_1e19);
   temp = 0;
   case 0: temp *= 10, temp += *str++ & 15; case 18: temp *= 10, temp += *str++ & 15; case 17: temp *= 10, temp += *str++ & 15; case 16: temp *= 10, temp += *str++ & 15; case 15: temp *= 10, temp += *str++ & 15; case 14: temp *= 10, temp += *str++ & 15; case 13: temp *= 10, temp += *str++ & 15; case 12: temp *= 10, temp += *str++ & 15; case 11: temp *= 10, temp += *str++ & 15;
   case 10: temp *= 10, temp += *str++ & 15; case 9: temp *= 10, temp += *str++ & 15; case 8: temp *= 10, temp += *str++ & 15; case 7: temp *= 10, temp += *str++ & 15; case 6: temp *= 10, temp += *str++ & 15; case 5: temp *= 10, temp += *str++ & 15; case 4: temp *= 10, temp += *str++ & 15; case 3: temp *= 10, temp += *str++ & 15; case 2: temp *= 10, temp += *str++ & 15; case 1: temp *= 10, temp += *str++ & 15;
   if (!temp)
    continue;
   libzahl_tmp_str_num->chars[0] = (zahl_char_t)temp;
   zadd(a, a, libzahl_tmp_str_num);
  }
 }
 if (__builtin_expect(!!(neg), 0))
  ((a)->sign = (-zsignum(a)));
 return 0;
}
