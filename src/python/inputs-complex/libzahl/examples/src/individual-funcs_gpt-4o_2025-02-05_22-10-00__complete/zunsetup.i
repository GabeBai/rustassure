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
void zunsetup(void);
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
extern z_t libzahl_tmp_str_num; extern z_t libzahl_tmp_str_mag; extern z_t libzahl_tmp_str_div; extern z_t libzahl_tmp_str_rem; extern z_t libzahl_tmp_gcd_u; extern z_t libzahl_tmp_gcd_v; extern z_t libzahl_tmp_sub; extern z_t libzahl_tmp_modmul; extern z_t libzahl_tmp_pow_b; extern z_t libzahl_tmp_pow_c; extern z_t libzahl_tmp_pow_d; extern z_t libzahl_tmp_modsqr; extern z_t libzahl_tmp_divmod_a; extern z_t libzahl_tmp_divmod_b; extern z_t libzahl_tmp_divmod_d; extern z_t libzahl_tmp_ptest_x; extern z_t libzahl_tmp_ptest_a; extern z_t libzahl_tmp_ptest_d; extern z_t libzahl_tmp_ptest_n1; extern z_t libzahl_tmp_ptest_n4;
extern z_t libzahl_tmp_divmod_ds[64];
extern int libzahl_set_up;
extern zahl_char_t **libzahl_pool[sizeof(size_t) * 8];
extern size_t libzahl_pool_n[sizeof(size_t) * 8];
extern struct zahl **libzahl_temp_stack;
void
zunsetup(void)
{
 size_t i;
 if (libzahl_set_up) {
  libzahl_set_up = 0;
  free(libzahl_tmp_div->chars); free(libzahl_tmp_mod->chars); free(libzahl_tmp_str_num->chars); free(libzahl_tmp_str_mag->chars); free(libzahl_tmp_str_div->chars); free(libzahl_tmp_str_rem->chars); free(libzahl_tmp_gcd_u->chars); free(libzahl_tmp_gcd_v->chars); free(libzahl_tmp_sub->chars); free(libzahl_tmp_modmul->chars); free(libzahl_tmp_pow_b->chars); free(libzahl_tmp_pow_c->chars); free(libzahl_tmp_pow_d->chars); free(libzahl_tmp_modsqr->chars); free(libzahl_tmp_divmod_a->chars); free(libzahl_tmp_divmod_b->chars); free(libzahl_tmp_divmod_d->chars); free(libzahl_tmp_ptest_x->chars); free(libzahl_tmp_ptest_a->chars); free(libzahl_tmp_ptest_d->chars); free(libzahl_tmp_ptest_n1->chars); free(libzahl_tmp_ptest_n4->chars);;
  for (i = 64; i--;)
   free(libzahl_tmp_divmod_ds[i]->chars);
  for (i = sizeof(libzahl_pool) / sizeof(*libzahl_pool); i--;) {
   while (libzahl_pool_n[i]--)
    free(libzahl_pool[i][libzahl_pool_n[i]]);
   free(libzahl_pool[i]);
  }
  free(libzahl_temp_stack);
 }
}
