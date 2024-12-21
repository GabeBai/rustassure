typedef int mbedtls_iso_c_forbids_empty_translation_units;
typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
typedef struct mbedtls_aes_context
{
    int nr;
    uint32_t *rk;
    uint32_t buf[68];
}
mbedtls_aes_context;
typedef struct mbedtls_aes_xts_context
{
    mbedtls_aes_context crypt;
    mbedtls_aes_context tweak;
} mbedtls_aes_xts_context;
void mbedtls_aes_init( mbedtls_aes_context *ctx );
void mbedtls_aes_free( mbedtls_aes_context *ctx );
void mbedtls_aes_xts_init( mbedtls_aes_xts_context *ctx );
void mbedtls_aes_xts_free( mbedtls_aes_xts_context *ctx );
int mbedtls_aes_setkey_enc( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
int mbedtls_aes_setkey_dec( mbedtls_aes_context *ctx, const unsigned char *key,
                    unsigned int keybits );
int mbedtls_aes_xts_setkey_enc( mbedtls_aes_xts_context *ctx,
                                const unsigned char *key,
                                unsigned int keybits );
int mbedtls_aes_xts_setkey_dec( mbedtls_aes_xts_context *ctx,
                                const unsigned char *key,
                                unsigned int keybits );
int mbedtls_aes_crypt_ecb( mbedtls_aes_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
int mbedtls_aes_crypt_cbc( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
int mbedtls_aes_crypt_xts( mbedtls_aes_xts_context *ctx,
                           int mode,
                           size_t length,
                           const unsigned char data_unit[16],
                           const unsigned char *input,
                           unsigned char *output );
int mbedtls_aes_crypt_cfb128( mbedtls_aes_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_aes_crypt_cfb8( mbedtls_aes_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
int mbedtls_aes_crypt_ofb( mbedtls_aes_context *ctx,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_aes_crypt_ctr( mbedtls_aes_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_internal_aes_encrypt( mbedtls_aes_context *ctx,
                                  const unsigned char input[16],
                                  unsigned char output[16] );
int mbedtls_internal_aes_decrypt( mbedtls_aes_context *ctx,
                                  const unsigned char input[16],
                                  unsigned char output[16] );
                   void mbedtls_aes_encrypt( mbedtls_aes_context *ctx,
                                             const unsigned char input[16],
                                             unsigned char output[16] );
                   void mbedtls_aes_decrypt( mbedtls_aes_context *ctx,
                                             const unsigned char input[16],
                                             unsigned char output[16] );
int mbedtls_aes_self_test( int verbose );
int mbedtls_aesni_has_support( unsigned int what );
int mbedtls_aesni_crypt_ecb( mbedtls_aes_context *ctx,
                             int mode,
                             const unsigned char input[16],
                             unsigned char output[16] );
void mbedtls_aesni_gcm_mult( unsigned char c[16],
                             const unsigned char a[16],
                             const unsigned char b[16] );
void mbedtls_aesni_inverse_key( unsigned char *invkey,
                                const unsigned char *fwdkey,
                                int nr );
int mbedtls_aesni_setkey_enc( unsigned char *rk,
                              const unsigned char *key,
                              size_t bits );

extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2))) ;
struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
};
typedef struct __locale_struct *__locale_t;

typedef __locale_t locale_t;
extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)))
                                           ;
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 3)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ ));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)))
                                          ;
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ ));
extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int ffsl (long int __l) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));
extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)))
                                                  ;
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ ));
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
int mbedtls_aesni_has_support( unsigned int what )
{
    static int done = 0;
    static unsigned int c = 0;
    if( ! done )
    {
        __asm( "movl  $1, %%eax   \n\t"
             "cpuid             \n\t"
             : "=c" (c)
             :
             : "eax", "ebx", "edx" );
        done = 1;
    }
    return( ( c & what ) != 0 );
}
int mbedtls_aesni_crypt_ecb( mbedtls_aes_context *ctx,
                     int mode,
                     const unsigned char input[16],
                     unsigned char output[16] )
{
    __asm( "movdqu    (%3), %%xmm0    \n\t"
         "movdqu    (%1), %%xmm1    \n\t"
         "pxor      %%xmm1, %%xmm0  \n\t"
         "add       $16, %1         \n\t"
         "subl      $1, %0          \n\t"
         "test      %2, %2          \n\t"
         "jz        2f              \n\t"
         "1:                        \n\t"
         "movdqu    (%1), %%xmm1    \n\t"
         ".byte 0x66,0x0F,0x38,0xDC," "0xC1" "\n\t"
         "add       $16, %1         \n\t"
         "subl      $1, %0          \n\t"
         "jnz       1b              \n\t"
         "movdqu    (%1), %%xmm1    \n\t"
         ".byte 0x66,0x0F,0x38,0xDD," "0xC1" "\n\t"
         "jmp       3f              \n\t"
         "2:                        \n\t"
         "movdqu    (%1), %%xmm1    \n\t"
         ".byte 0x66,0x0F,0x38,0xDE," "0xC1" "\n\t"
         "add       $16, %1         \n\t"
         "subl      $1, %0          \n\t"
         "jnz       2b              \n\t"
         "movdqu    (%1), %%xmm1    \n\t"
         ".byte 0x66,0x0F,0x38,0xDF," "0xC1" "\n\t"
         "3:                        \n\t"
         "movdqu    %%xmm0, (%4)    \n\t"
         :
         : "r" (ctx->nr), "r" (ctx->rk), "r" (mode), "r" (input), "r" (output)
         : "memory", "cc", "xmm0", "xmm1" );
    return( 0 );
}
void mbedtls_aesni_gcm_mult( unsigned char c[16],
                     const unsigned char a[16],
                     const unsigned char b[16] )
{
    unsigned char aa[16], bb[16], cc[16];
    size_t i;
    for( i = 0; i < 16; i++ )
    {
        aa[i] = a[15 - i];
        bb[i] = b[15 - i];
    }
    __asm( "movdqu (%0), %%xmm0               \n\t"
         "movdqu (%1), %%xmm1               \n\t"
         "movdqa %%xmm1, %%xmm2             \n\t"
         "movdqa %%xmm1, %%xmm3             \n\t"
         "movdqa %%xmm1, %%xmm4             \n\t"
         ".byte 0x66,0x0F,0x3A,0x44," "0xC8" ",0x00         \n\t"
         ".byte 0x66,0x0F,0x3A,0x44," "0xD0" ",0x11         \n\t"
         ".byte 0x66,0x0F,0x3A,0x44," "0xD8" ",0x10         \n\t"
         ".byte 0x66,0x0F,0x3A,0x44," "0xE0" ",0x01         \n\t"
         "pxor %%xmm3, %%xmm4               \n\t"
         "movdqa %%xmm4, %%xmm3             \n\t"
         "psrldq $8, %%xmm4                 \n\t"
         "pslldq $8, %%xmm3                 \n\t"
         "pxor %%xmm4, %%xmm2               \n\t"
         "pxor %%xmm3, %%xmm1               \n\t"
         "movdqa %%xmm1, %%xmm3             \n\t"
         "movdqa %%xmm2, %%xmm4             \n\t"
         "psllq $1, %%xmm1                  \n\t"
         "psllq $1, %%xmm2                  \n\t"
         "psrlq $63, %%xmm3                 \n\t"
         "psrlq $63, %%xmm4                 \n\t"
         "movdqa %%xmm3, %%xmm5             \n\t"
         "pslldq $8, %%xmm3                 \n\t"
         "pslldq $8, %%xmm4                 \n\t"
         "psrldq $8, %%xmm5                 \n\t"
         "por %%xmm3, %%xmm1                \n\t"
         "por %%xmm4, %%xmm2                \n\t"
         "por %%xmm5, %%xmm2                \n\t"
         "movdqa %%xmm1, %%xmm3             \n\t"
         "movdqa %%xmm1, %%xmm4             \n\t"
         "movdqa %%xmm1, %%xmm5             \n\t"
         "psllq $63, %%xmm3                 \n\t"
         "psllq $62, %%xmm4                 \n\t"
         "psllq $57, %%xmm5                 \n\t"
         "pxor %%xmm4, %%xmm3               \n\t"
         "pxor %%xmm5, %%xmm3               \n\t"
         "pslldq $8, %%xmm3                 \n\t"
         "pxor %%xmm3, %%xmm1               \n\t"
         "movdqa %%xmm1,%%xmm0              \n\t"
         "movdqa %%xmm1,%%xmm4              \n\t"
         "movdqa %%xmm1,%%xmm5              \n\t"
         "psrlq $1, %%xmm0                  \n\t"
         "psrlq $2, %%xmm4                  \n\t"
         "psrlq $7, %%xmm5                  \n\t"
         "pxor %%xmm4, %%xmm0               \n\t"
         "pxor %%xmm5, %%xmm0               \n\t"
         "movdqa %%xmm1,%%xmm3              \n\t"
         "movdqa %%xmm1,%%xmm4              \n\t"
         "movdqa %%xmm1,%%xmm5              \n\t"
         "psllq $63, %%xmm3                 \n\t"
         "psllq $62, %%xmm4                 \n\t"
         "psllq $57, %%xmm5                 \n\t"
         "pxor %%xmm4, %%xmm3               \n\t"
         "pxor %%xmm5, %%xmm3               \n\t"
         "psrldq $8, %%xmm3                 \n\t"
         "pxor %%xmm3, %%xmm0               \n\t"
         "pxor %%xmm1, %%xmm0               \n\t"
         "pxor %%xmm2, %%xmm0               \n\t"
         "movdqu %%xmm0, (%2)               \n\t"
         :
         : "r" (aa), "r" (bb), "r" (cc)
         : "memory", "cc", "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5" );
    for( i = 0; i < 16; i++ )
        c[i] = cc[15 - i];
    return;
}
void mbedtls_aesni_inverse_key( unsigned char *invkey,
                        const unsigned char *fwdkey, int nr )
{
    unsigned char *ik = invkey;
    const unsigned char *fk = fwdkey + 16 * nr;
    memcpy( ik, fk, 16 );
    for( fk -= 16, ik += 16; fk > fwdkey; fk -= 16, ik += 16 )
        __asm( "movdqu (%0), %%xmm0       \n\t"
             ".byte 0x66,0x0F,0x38,0xDB," "0xC0" "\n\t"
             "movdqu %%xmm0, (%1)       \n\t"
             :
             : "r" (fk), "r" (ik)
             : "memory", "xmm0" );
    memcpy( ik, fk, 16 );
}
static void aesni_setkey_enc_128( unsigned char *rk,
                                  const unsigned char *key )
{
    __asm( "movdqu (%1), %%xmm0               \n\t"
         "movdqu %%xmm0, (%0)               \n\t"
         "jmp 2f                            \n\t"
         "1:                                \n\t"
         "pshufd $0xff, %%xmm1, %%xmm1      \n\t"
         "pxor %%xmm0, %%xmm1               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm0, %%xmm1               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm0, %%xmm1               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm1, %%xmm0               \n\t"
         "add $16, %0                       \n\t"
         "movdqu %%xmm0, (%0)               \n\t"
         "ret                               \n\t"
         "2:                                \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x01        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x02        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x04        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x08        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x10        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x20        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x40        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x80        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x1B        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xC8" ",0x36        \n\tcall 1b \n\t"
         :
         : "r" (rk), "r" (key)
         : "memory", "cc", "0" );
}
static void aesni_setkey_enc_192( unsigned char *rk,
                                  const unsigned char *key )
{
    __asm( "movdqu (%1), %%xmm0   \n\t"
         "movdqu %%xmm0, (%0)   \n\t"
         "add $16, %0           \n\t"
         "movq 16(%1), %%xmm1   \n\t"
         "movq %%xmm1, (%0)     \n\t"
         "add $8, %0            \n\t"
         "jmp 2f                \n\t"
         "1:                            \n\t"
         "pshufd $0x55, %%xmm2, %%xmm2  \n\t"
         "pxor %%xmm0, %%xmm2           \n\t"
         "pslldq $4, %%xmm0             \n\t"
         "pxor %%xmm0, %%xmm2           \n\t"
         "pslldq $4, %%xmm0             \n\t"
         "pxor %%xmm0, %%xmm2           \n\t"
         "pslldq $4, %%xmm0             \n\t"
         "pxor %%xmm2, %%xmm0           \n\t"
         "movdqu %%xmm0, (%0)           \n\t"
         "add $16, %0                   \n\t"
         "pshufd $0xff, %%xmm0, %%xmm2  \n\t"
         "pxor %%xmm1, %%xmm2           \n\t"
         "pslldq $4, %%xmm1             \n\t"
         "pxor %%xmm2, %%xmm1           \n\t"
         "movq %%xmm1, (%0)             \n\t"
         "add $8, %0                    \n\t"
         "ret                           \n\t"
         "2:                            \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x01    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x02    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x04    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x08    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x10    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x20    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x40    \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x80    \n\tcall 1b \n\t"
         :
         : "r" (rk), "r" (key)
         : "memory", "cc", "0" );
}
static void aesni_setkey_enc_256( unsigned char *rk,
                                  const unsigned char *key )
{
    __asm( "movdqu (%1), %%xmm0           \n\t"
         "movdqu %%xmm0, (%0)           \n\t"
         "add $16, %0                   \n\t"
         "movdqu 16(%1), %%xmm1         \n\t"
         "movdqu %%xmm1, (%0)           \n\t"
         "jmp 2f                        \n\t"
         "1:                                \n\t"
         "pshufd $0xff, %%xmm2, %%xmm2      \n\t"
         "pxor %%xmm0, %%xmm2               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm0, %%xmm2               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm0, %%xmm2               \n\t"
         "pslldq $4, %%xmm0                 \n\t"
         "pxor %%xmm2, %%xmm0               \n\t"
         "add $16, %0                       \n\t"
         "movdqu %%xmm0, (%0)               \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD0" ",0x00        \n\t"
         "pshufd $0xaa, %%xmm2, %%xmm2      \n\t"
         "pxor %%xmm1, %%xmm2               \n\t"
         "pslldq $4, %%xmm1                 \n\t"
         "pxor %%xmm1, %%xmm2               \n\t"
         "pslldq $4, %%xmm1                 \n\t"
         "pxor %%xmm1, %%xmm2               \n\t"
         "pslldq $4, %%xmm1                 \n\t"
         "pxor %%xmm2, %%xmm1               \n\t"
         "add $16, %0                       \n\t"
         "movdqu %%xmm1, (%0)               \n\t"
         "ret                               \n\t"
         "2:                                \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x01        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x02        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x04        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x08        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x10        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x20        \n\tcall 1b \n\t"
         ".byte 0x66,0x0F,0x3A,0xDF," "0xD1" ",0x40        \n\tcall 1b \n\t"
         :
         : "r" (rk), "r" (key)
         : "memory", "cc", "0" );
}
int mbedtls_aesni_setkey_enc( unsigned char *rk,
                      const unsigned char *key,
                      size_t bits )
{
    switch( bits )
    {
        case 128: aesni_setkey_enc_128( rk, key ); break;
        case 192: aesni_setkey_enc_192( rk, key ); break;
        case 256: aesni_setkey_enc_256( rk, key ); break;
        default : return( -0x0020 );
    }
    return( 0 );
}
