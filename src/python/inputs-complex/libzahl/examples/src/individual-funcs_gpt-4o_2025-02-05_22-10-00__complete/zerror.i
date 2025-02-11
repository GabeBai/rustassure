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
enum zerror zerror(const char **);
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
void abort(void) __attribute__((__cold__)) __attribute__((__noreturn__));
char *strerror(int __errnum) __asm("_" "strerror" );
extern int libzahl_error;
enum zerror
zerror(const char **desc)
{
 if (libzahl_error >= 0) {
  if (desc)
   *desc = strerror(libzahl_error);
  (*__error()) = libzahl_error;
  return ZERROR_ERRNO_SET;
 }
 if (desc) {
  switch (-libzahl_error) {
  case ZERROR_0_POW_0: *desc = "indeterminate form: 0:th power of 0"; break; case ZERROR_0_DIV_0: *desc = "indeterminate form: 0 divided by 0"; break; case ZERROR_DIV_0: *desc = "undefined result: division by 0"; break; case ZERROR_NEGATIVE: *desc = "argument must be non-negative"; break;
  default:
   abort();
  }
 }
 return -libzahl_error;
}
