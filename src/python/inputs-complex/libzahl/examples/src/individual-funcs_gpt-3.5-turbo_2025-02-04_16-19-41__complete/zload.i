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
size_t zload(z_t, const void *);
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
size_t
zload(z_t a, const void *buffer)
{
 const char *buf = buffer;
 a->sign = (int)*((const long *)buf), buf += sizeof(long);
 a->used = *((const size_t *)buf), buf += sizeof(size_t);
 if (__builtin_expect(!!(a->sign), 1)) {
  do { if ((a)->alloced < (a->used)) libzahl_realloc(a, (a->used)); } while (0);
  libzahl_memcpy(a->chars, (const zahl_char_t *)buf, a->used);
 }
 return sizeof(long) + sizeof(size_t) +
  (zzero(a) ? 0 : ((a->used + 3) & (size_t)~3) * sizeof(zahl_char_t));
}
