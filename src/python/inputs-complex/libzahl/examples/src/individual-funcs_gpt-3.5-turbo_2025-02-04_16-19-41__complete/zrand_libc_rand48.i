typedef long unsigned int size_t;
typedef long __darwin_intptr_t;
typedef long __darwin_time_t;
typedef __darwin_intptr_t intptr_t;
1];
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
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
long lrand48(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
void srand48(long);
typedef __darwin_time_t time_t;
time_t time(time_t *);
 void
zrand_libc_rand48(void *out, size_t n, void *statep)
{
  char inited = 0;
 long int r0, r1;
 unsigned char *buf = out;
 if (!inited) {
  inited = 1;
  srand48((intptr_t)out | time(((void*)0)));
 }
 while (n--) {
  r0 = lrand48() & 15;
  r1 = lrand48() & 15;
  buf[n] = (unsigned char)((r0 << 4) | r1);
 }
 (void) statep;
}
