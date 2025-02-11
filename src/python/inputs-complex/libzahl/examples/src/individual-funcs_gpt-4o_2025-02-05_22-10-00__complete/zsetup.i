typedef int jmp_buf[((14 + 8 + 2) * 2)];
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
extern struct zahl libzahl_tmp_div[1];
extern struct zahl libzahl_tmp_mod[1];
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
void zsetup(jmp_buf);
  void zinit(z_t);
  void zsetu(z_t, uint64_t);
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
extern z_t libzahl_tmp_str_num; extern z_t libzahl_tmp_str_mag; extern z_t libzahl_tmp_str_div; extern z_t libzahl_tmp_str_rem; extern z_t libzahl_tmp_gcd_u; extern z_t libzahl_tmp_gcd_v; extern z_t libzahl_tmp_sub; extern z_t libzahl_tmp_modmul; extern z_t libzahl_tmp_pow_b; extern z_t libzahl_tmp_pow_c; extern z_t libzahl_tmp_pow_d; extern z_t libzahl_tmp_modsqr; extern z_t libzahl_tmp_divmod_a; extern z_t libzahl_tmp_divmod_b; extern z_t libzahl_tmp_divmod_d; extern z_t libzahl_tmp_ptest_x; extern z_t libzahl_tmp_ptest_a; extern z_t libzahl_tmp_ptest_d; extern z_t libzahl_tmp_ptest_n1; extern z_t libzahl_tmp_ptest_n4;
extern z_t libzahl_const_1e19; extern z_t libzahl_const_1; extern z_t libzahl_const_2; extern z_t libzahl_const_4;
extern z_t libzahl_tmp_divmod_ds[64];
extern jmp_buf libzahl_jmp_buf;
extern int libzahl_set_up;
extern zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
extern size_t libzahl_pool_n[sizeof(size_t) * 8];
extern size_t libzahl_pool_alloc[sizeof(size_t) * 8];
extern struct zahl **libzahl_temp_stack;
extern struct zahl **libzahl_temp_stack_head;
extern struct zahl **libzahl_temp_stack_end;
z_t libzahl_tmp_div; z_t libzahl_tmp_mod; z_t libzahl_tmp_str_num; z_t libzahl_tmp_str_mag; z_t libzahl_tmp_str_div; z_t libzahl_tmp_str_rem; z_t libzahl_tmp_gcd_u; z_t libzahl_tmp_gcd_v; z_t libzahl_tmp_sub; z_t libzahl_tmp_modmul; z_t libzahl_tmp_pow_b; z_t libzahl_tmp_pow_c; z_t libzahl_tmp_pow_d; z_t libzahl_tmp_modsqr; z_t libzahl_tmp_divmod_a; z_t libzahl_tmp_divmod_b; z_t libzahl_tmp_divmod_d; z_t libzahl_tmp_ptest_x; z_t libzahl_tmp_ptest_a; z_t libzahl_tmp_ptest_d; z_t libzahl_tmp_ptest_n1; z_t libzahl_tmp_ptest_n4;
z_t libzahl_const_1e19; z_t libzahl_const_1; z_t libzahl_const_2; z_t libzahl_const_4;
z_t libzahl_tmp_divmod_ds[64];
jmp_buf libzahl_jmp_buf;
int libzahl_set_up = 0;
zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
size_t libzahl_pool_n[sizeof(size_t) * 8];
size_t libzahl_pool_alloc[sizeof(size_t) * 8];
struct zahl **libzahl_temp_stack;
struct zahl **libzahl_temp_stack_head;
struct zahl **libzahl_temp_stack_end;
 zahl_char_t constant_chars[1 + 1 + 1 + 1 + 4];
void
zsetup(jmp_buf env)
{
 size_t i;
 *libzahl_jmp_buf = *env;
 if (__builtin_expect(!!(!libzahl_set_up), 1)) {
  libzahl_set_up = 1;
  __builtin___memset_chk (libzahl_pool, 0, sizeof(libzahl_pool), __builtin_object_size (libzahl_pool, 0));
  __builtin___memset_chk (libzahl_pool_n, 0, sizeof(libzahl_pool_n), __builtin_object_size (libzahl_pool_n, 0));
  __builtin___memset_chk (libzahl_pool_alloc, 0, sizeof(libzahl_pool_alloc), __builtin_object_size (libzahl_pool_alloc, 0));
  zinit(libzahl_tmp_div); if (0) zsetu(libzahl_tmp_div, 1); zinit(libzahl_tmp_mod); if (0) zsetu(libzahl_tmp_mod, 1); zinit(libzahl_tmp_str_num); if (0) zsetu(libzahl_tmp_str_num, 1); zinit(libzahl_tmp_str_mag); if (0) zsetu(libzahl_tmp_str_mag, 1); zinit(libzahl_tmp_str_div); if (0) zsetu(libzahl_tmp_str_div, 1); zinit(libzahl_tmp_str_rem); if (0) zsetu(libzahl_tmp_str_rem, 1); zinit(libzahl_tmp_gcd_u); if (0) zsetu(libzahl_tmp_gcd_u, 1); zinit(libzahl_tmp_gcd_v); if (0) zsetu(libzahl_tmp_gcd_v, 1); zinit(libzahl_tmp_sub); if (0) zsetu(libzahl_tmp_sub, 1); zinit(libzahl_tmp_modmul); if (0) zsetu(libzahl_tmp_modmul, 1); zinit(libzahl_tmp_pow_b); if (0) zsetu(libzahl_tmp_pow_b, 1); zinit(libzahl_tmp_pow_c); if (0) zsetu(libzahl_tmp_pow_c, 1); zinit(libzahl_tmp_pow_d); if (0) zsetu(libzahl_tmp_pow_d, 1); zinit(libzahl_tmp_modsqr); if (0) zsetu(libzahl_tmp_modsqr, 1); zinit(libzahl_tmp_divmod_a); if (0) zsetu(libzahl_tmp_divmod_a, 1); zinit(libzahl_tmp_divmod_b); if (0) zsetu(libzahl_tmp_divmod_b, 1); zinit(libzahl_tmp_divmod_d); if (0) zsetu(libzahl_tmp_divmod_d, 1); zinit(libzahl_tmp_ptest_x); if (0) zsetu(libzahl_tmp_ptest_x, 1); zinit(libzahl_tmp_ptest_a); if (0) zsetu(libzahl_tmp_ptest_a, 1); zinit(libzahl_tmp_ptest_d); if (0) zsetu(libzahl_tmp_ptest_d, 1); zinit(libzahl_tmp_ptest_n1); if (0) zsetu(libzahl_tmp_ptest_n1, 1); zinit(libzahl_tmp_ptest_n4); if (0) zsetu(libzahl_tmp_ptest_n4, 1);;
  (libzahl_const_1e19)->alloced = 1, (libzahl_const_1e19)->chars = constant_chars + (0), zsetu(libzahl_const_1e19, 10000000000000000000ULL); (libzahl_const_1)->alloced = 1, (libzahl_const_1)->chars = constant_chars + (1), zsetu(libzahl_const_1, 1); (libzahl_const_2)->alloced = 1, (libzahl_const_2)->chars = constant_chars + (2), zsetu(libzahl_const_2, 2); (libzahl_const_4)->alloced = 1, (libzahl_const_4)->chars = constant_chars + (3), zsetu(libzahl_const_4, 4);;
  for (i = 64; i--;)
   zinit(libzahl_tmp_divmod_ds[i]);
  libzahl_temp_stack = malloc(256 * sizeof(*libzahl_temp_stack));
  if (__builtin_expect(!!(!libzahl_temp_stack), 0))
   libzahl_memfailure();
  libzahl_temp_stack_head = libzahl_temp_stack;
  libzahl_temp_stack_end = libzahl_temp_stack + 256;
 }
}
