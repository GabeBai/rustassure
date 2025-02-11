typedef int jmp_buf[((14 + 8 + 2) * 2)];
extern void longjmp(jmp_buf, int) __attribute__((__noreturn__));
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
void zfree(z_t);
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
void free(void * );
extern jmp_buf libzahl_jmp_buf;
extern int libzahl_error;
extern struct zahl **libzahl_temp_stack;
extern struct zahl **libzahl_temp_stack_head;
extern void *libzahl_temp_allocation;
 void
libzahl_failure(int error)
{
 libzahl_error = (error);
 if (libzahl_temp_stack)
  while (libzahl_temp_stack_head != libzahl_temp_stack)
   zfree(*--libzahl_temp_stack_head);
 free(libzahl_temp_allocation);
 libzahl_temp_allocation = 0;
 longjmp(libzahl_jmp_buf, 1);
}
