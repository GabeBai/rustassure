typedef long unsigned int size_t;
typedef long __darwin_ssize_t;
typedef __darwin_ssize_t ssize_t;
ssize_t read(int, void *, size_t) __asm("_" "read" );
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
 void
zrand_fd(void *out, size_t n, void *statep)
{
 int fd = *(int *)statep;
 ssize_t read_just;
 size_t read_total = 0;
 char *buf = out;
 while (n) {
  read_just = read(fd, buf + read_total, n);
  if (__builtin_expect(!!(read_just < 0), 0))
   libzahl_failure((*__error()));
  read_total += (size_t)read_just;
  n -= (size_t)read_just;
 }
}
