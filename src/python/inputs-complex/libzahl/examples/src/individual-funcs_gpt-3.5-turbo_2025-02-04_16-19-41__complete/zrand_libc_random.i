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
long random(void) __attribute__((__availability__(swift, unavailable, message="Use arc4random instead.")));
void srandom(unsigned);
typedef __darwin_time_t time_t;
time_t time(time_t *);
 void
zrand_libc_random(void *out, size_t n, void *statep)
{
  char inited = 0;
 long int ri;
 unsigned char *buf = out;
 if (!inited) {
  inited = 1;
  srandom((unsigned)((intptr_t)out | time(((void*)0))));
 }
 while (n--) {
  ri = random();
  buf[n] = (unsigned char)((ri >> 0) & 255);
  if (!n--) break;
  buf[n] = (unsigned char)((ri >> 8) & 255);
  if (!n--) break;
  buf[n] = (unsigned char)((ri >> 16) & 255);
 }
 (void) statep;
}
