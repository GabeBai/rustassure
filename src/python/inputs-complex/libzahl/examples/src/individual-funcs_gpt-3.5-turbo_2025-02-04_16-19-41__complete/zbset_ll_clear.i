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
  int zzero(z_t);
void zbset_ll_clear(z_t, size_t);
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
zbset_ll_clear(z_t a, size_t bit)
{
 zahl_char_t mask = 1; size_t chars = ((bit) >> 6); if (0) { if (zzero(a)) { a->used = 0; ((a)->sign = (1)); } if (__builtin_expect(!!(chars >= a->used), 0)) { do { if ((a)->alloced < (chars + 1)) libzahl_realloc(a, (chars + 1)); } while (0); libzahl_memset(a->chars + a->used, 0, chars + 1 - a->used); a->used = chars + 1; } } else if (__builtin_expect(!!(chars >= a->used), 0)) { return; } bit = ((bit) & (64 - 1)); mask <<= bit;
 a->chars[chars] &= ~mask;
 do { for (; (a)->used && !(a)->chars[(a)->used - 1]; (a)->used--); if (!(a)->used) ((a)->sign = (0)); } while (0);
}
