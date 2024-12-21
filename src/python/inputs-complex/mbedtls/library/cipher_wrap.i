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
typedef __clock_t clock_t;
typedef __time_t time_t;
struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int tm_gmtoff;
  const char *tm_zone;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
typedef __pid_t pid_t;
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
extern clock_t clock (void) __attribute__ ((__nothrow__ ));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ ));
extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ ));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ ));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ ));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ ));
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__ ));
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ ));
extern int dysize (int __year) __attribute__ ((__nothrow__ )) __attribute__ ((__const__));
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ ));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__ ));
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ ));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ ));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ ));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ ));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ ));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ ));
extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
typedef time_t mbedtls_time_t;
void mbedtls_platform_zeroize( void *buf, size_t len );
struct tm *mbedtls_platform_gmtime_r( const mbedtls_time_t *tt,
                                      struct tm *tm_buf );
typedef enum {
    MBEDTLS_CIPHER_ID_NONE = 0,
    MBEDTLS_CIPHER_ID_NULL,
    MBEDTLS_CIPHER_ID_AES,
    MBEDTLS_CIPHER_ID_DES,
    MBEDTLS_CIPHER_ID_3DES,
    MBEDTLS_CIPHER_ID_CAMELLIA,
    MBEDTLS_CIPHER_ID_BLOWFISH,
    MBEDTLS_CIPHER_ID_ARC4,
    MBEDTLS_CIPHER_ID_ARIA,
    MBEDTLS_CIPHER_ID_CHACHA20,
} mbedtls_cipher_id_t;
typedef enum {
    MBEDTLS_CIPHER_NONE = 0,
    MBEDTLS_CIPHER_NULL,
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_CIPHER_ARIA_128_ECB,
    MBEDTLS_CIPHER_ARIA_192_ECB,
    MBEDTLS_CIPHER_ARIA_256_ECB,
    MBEDTLS_CIPHER_ARIA_128_CBC,
    MBEDTLS_CIPHER_ARIA_192_CBC,
    MBEDTLS_CIPHER_ARIA_256_CBC,
    MBEDTLS_CIPHER_ARIA_128_CFB128,
    MBEDTLS_CIPHER_ARIA_192_CFB128,
    MBEDTLS_CIPHER_ARIA_256_CFB128,
    MBEDTLS_CIPHER_ARIA_128_CTR,
    MBEDTLS_CIPHER_ARIA_192_CTR,
    MBEDTLS_CIPHER_ARIA_256_CTR,
    MBEDTLS_CIPHER_ARIA_128_GCM,
    MBEDTLS_CIPHER_ARIA_192_GCM,
    MBEDTLS_CIPHER_ARIA_256_GCM,
    MBEDTLS_CIPHER_ARIA_128_CCM,
    MBEDTLS_CIPHER_ARIA_192_CCM,
    MBEDTLS_CIPHER_ARIA_256_CCM,
    MBEDTLS_CIPHER_AES_128_OFB,
    MBEDTLS_CIPHER_AES_192_OFB,
    MBEDTLS_CIPHER_AES_256_OFB,
    MBEDTLS_CIPHER_AES_128_XTS,
    MBEDTLS_CIPHER_AES_256_XTS,
    MBEDTLS_CIPHER_CHACHA20,
    MBEDTLS_CIPHER_CHACHA20_POLY1305,
    MBEDTLS_CIPHER_AES_128_KW,
    MBEDTLS_CIPHER_AES_192_KW,
    MBEDTLS_CIPHER_AES_256_KW,
    MBEDTLS_CIPHER_AES_128_KWP,
    MBEDTLS_CIPHER_AES_192_KWP,
    MBEDTLS_CIPHER_AES_256_KWP,
} mbedtls_cipher_type_t;
typedef enum {
    MBEDTLS_MODE_NONE = 0,
    MBEDTLS_MODE_ECB,
    MBEDTLS_MODE_CBC,
    MBEDTLS_MODE_CFB,
    MBEDTLS_MODE_OFB,
    MBEDTLS_MODE_CTR,
    MBEDTLS_MODE_GCM,
    MBEDTLS_MODE_STREAM,
    MBEDTLS_MODE_CCM,
    MBEDTLS_MODE_XTS,
    MBEDTLS_MODE_CHACHAPOLY,
    MBEDTLS_MODE_KW,
    MBEDTLS_MODE_KWP,
} mbedtls_cipher_mode_t;
typedef enum {
    MBEDTLS_PADDING_PKCS7 = 0,
    MBEDTLS_PADDING_ONE_AND_ZEROS,
    MBEDTLS_PADDING_ZEROS_AND_LEN,
    MBEDTLS_PADDING_ZEROS,
    MBEDTLS_PADDING_NONE,
} mbedtls_cipher_padding_t;
typedef enum {
    MBEDTLS_OPERATION_NONE = -1,
    MBEDTLS_DECRYPT = 0,
    MBEDTLS_ENCRYPT,
} mbedtls_operation_t;
enum {
    MBEDTLS_KEY_LENGTH_NONE = 0,
    MBEDTLS_KEY_LENGTH_DES = 64,
    MBEDTLS_KEY_LENGTH_DES_EDE = 128,
    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
typedef struct mbedtls_cipher_base_t mbedtls_cipher_base_t;
typedef struct mbedtls_cmac_context_t mbedtls_cmac_context_t;
typedef struct mbedtls_cipher_info_t
{
    mbedtls_cipher_type_t type;
    mbedtls_cipher_mode_t mode;
    unsigned int key_bitlen;
    const char * name;
    unsigned int iv_size;
    int flags;
    unsigned int block_size;
    const mbedtls_cipher_base_t *base;
} mbedtls_cipher_info_t;
typedef struct mbedtls_cipher_context_t
{
    const mbedtls_cipher_info_t *cipher_info;
    int key_bitlen;
    mbedtls_operation_t operation;
    void (*add_padding)( unsigned char *output, size_t olen, size_t data_len );
    int (*get_padding)( unsigned char *input, size_t ilen, size_t *data_len );
    unsigned char unprocessed_data[16];
    size_t unprocessed_len;
    unsigned char iv[16];
    size_t iv_size;
    void *cipher_ctx;
} mbedtls_cipher_context_t;
const int *mbedtls_cipher_list( void );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type );
const mbedtls_cipher_info_t *mbedtls_cipher_info_from_values( const mbedtls_cipher_id_t cipher_id,
                                              int key_bitlen,
                                              const mbedtls_cipher_mode_t mode );
void mbedtls_cipher_init( mbedtls_cipher_context_t *ctx );
void mbedtls_cipher_free( mbedtls_cipher_context_t *ctx );
int mbedtls_cipher_setup( mbedtls_cipher_context_t *ctx,
                          const mbedtls_cipher_info_t *cipher_info );
static inline unsigned int mbedtls_cipher_get_block_size(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    return ctx->cipher_info->block_size;
}
static inline mbedtls_cipher_mode_t mbedtls_cipher_get_cipher_mode(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_MODE_NONE;
    return ctx->cipher_info->mode;
}
static inline int mbedtls_cipher_get_iv_size(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    if( ctx->iv_size != 0 )
        return (int) ctx->iv_size;
    return (int) ctx->cipher_info->iv_size;
}
static inline mbedtls_cipher_type_t mbedtls_cipher_get_type(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_CIPHER_NONE;
    return ctx->cipher_info->type;
}
static inline const char *mbedtls_cipher_get_name(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return 0;
    return ctx->cipher_info->name;
}
static inline int mbedtls_cipher_get_key_bitlen(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_KEY_LENGTH_NONE;
    return (int) ctx->cipher_info->key_bitlen;
}
static inline mbedtls_operation_t mbedtls_cipher_get_operation(
    const mbedtls_cipher_context_t *ctx )
{
    do { } while( 0 );
    if( ctx->cipher_info == ((void*)0) )
        return MBEDTLS_OPERATION_NONE;
    return ctx->operation;
}
int mbedtls_cipher_setkey( mbedtls_cipher_context_t *ctx,
                           const unsigned char *key,
                           int key_bitlen,
                           const mbedtls_operation_t operation );
int mbedtls_cipher_set_padding_mode( mbedtls_cipher_context_t *ctx,
                                     mbedtls_cipher_padding_t mode );
int mbedtls_cipher_set_iv( mbedtls_cipher_context_t *ctx,
                           const unsigned char *iv,
                           size_t iv_len );
int mbedtls_cipher_reset( mbedtls_cipher_context_t *ctx );
int mbedtls_cipher_update_ad( mbedtls_cipher_context_t *ctx,
                      const unsigned char *ad, size_t ad_len );
int mbedtls_cipher_update( mbedtls_cipher_context_t *ctx,
                           const unsigned char *input,
                           size_t ilen, unsigned char *output,
                           size_t *olen );
int mbedtls_cipher_finish( mbedtls_cipher_context_t *ctx,
                   unsigned char *output, size_t *olen );
int mbedtls_cipher_write_tag( mbedtls_cipher_context_t *ctx,
                      unsigned char *tag, size_t tag_len );
int mbedtls_cipher_check_tag( mbedtls_cipher_context_t *ctx,
                      const unsigned char *tag, size_t tag_len );
int mbedtls_cipher_crypt( mbedtls_cipher_context_t *ctx,
                  const unsigned char *iv, size_t iv_len,
                  const unsigned char *input, size_t ilen,
                  unsigned char *output, size_t *olen );
int mbedtls_cipher_auth_encrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         unsigned char *tag, size_t tag_len );
int mbedtls_cipher_auth_decrypt( mbedtls_cipher_context_t *ctx,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *ad, size_t ad_len,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen,
                         const unsigned char *tag, size_t tag_len );
struct mbedtls_cipher_base_t
{
    mbedtls_cipher_id_t cipher;
    int (*ecb_func)( void *ctx, mbedtls_operation_t mode,
                     const unsigned char *input, unsigned char *output );
    int (*cbc_func)( void *ctx, mbedtls_operation_t mode, size_t length,
                     unsigned char *iv, const unsigned char *input,
                     unsigned char *output );
    int (*cfb_func)( void *ctx, mbedtls_operation_t mode, size_t length, size_t *iv_off,
                     unsigned char *iv, const unsigned char *input,
                     unsigned char *output );
    int (*ofb_func)( void *ctx, size_t length, size_t *iv_off,
                     unsigned char *iv,
                     const unsigned char *input,
                     unsigned char *output );
    int (*ctr_func)( void *ctx, size_t length, size_t *nc_off,
                     unsigned char *nonce_counter, unsigned char *stream_block,
                     const unsigned char *input, unsigned char *output );
    int (*xts_func)( void *ctx, mbedtls_operation_t mode, size_t length,
                     const unsigned char data_unit[16],
                     const unsigned char *input, unsigned char *output );
    int (*stream_func)( void *ctx, size_t length,
                        const unsigned char *input, unsigned char *output );
    int (*setkey_enc_func)( void *ctx, const unsigned char *key,
                            unsigned int key_bitlen );
    int (*setkey_dec_func)( void *ctx, const unsigned char *key,
                            unsigned int key_bitlen);
    void * (*ctx_alloc_func)( void );
    void (*ctx_free_func)( void *ctx );
};
typedef struct
{
    mbedtls_cipher_type_t type;
    const mbedtls_cipher_info_t *info;
} mbedtls_cipher_definition_t;
extern const mbedtls_cipher_definition_t mbedtls_cipher_definitions[];
extern int mbedtls_cipher_supported[];
void mbedtls_strerror( int errnum, char *buffer, size_t buflen );
const char * mbedtls_high_level_strerr( int error_code );
const char * mbedtls_low_level_strerr( int error_code );

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
typedef struct mbedtls_poly1305_context
{
    uint32_t r[4];
    uint32_t s[4];
    uint32_t acc[5];
    uint8_t queue[16];
    size_t queue_len;
}
mbedtls_poly1305_context;
void mbedtls_poly1305_init( mbedtls_poly1305_context *ctx );
void mbedtls_poly1305_free( mbedtls_poly1305_context *ctx );
int mbedtls_poly1305_starts( mbedtls_poly1305_context *ctx,
                             const unsigned char key[32] );
int mbedtls_poly1305_update( mbedtls_poly1305_context *ctx,
                             const unsigned char *input,
                             size_t ilen );
int mbedtls_poly1305_finish( mbedtls_poly1305_context *ctx,
                             unsigned char mac[16] );
int mbedtls_poly1305_mac( const unsigned char key[32],
                          const unsigned char *input,
                          size_t ilen,
                          unsigned char mac[16] );
int mbedtls_poly1305_self_test( int verbose );
typedef enum
{
    MBEDTLS_CHACHAPOLY_ENCRYPT,
    MBEDTLS_CHACHAPOLY_DECRYPT
}
mbedtls_chachapoly_mode_t;
typedef struct mbedtls_chacha20_context
{
    uint32_t state[16];
    uint8_t keystream8[64];
    size_t keystream_bytes_used;
}
mbedtls_chacha20_context;
void mbedtls_chacha20_init( mbedtls_chacha20_context *ctx );
void mbedtls_chacha20_free( mbedtls_chacha20_context *ctx );
int mbedtls_chacha20_setkey( mbedtls_chacha20_context *ctx,
                             const unsigned char key[32] );
int mbedtls_chacha20_starts( mbedtls_chacha20_context* ctx,
                             const unsigned char nonce[12],
                             uint32_t counter );
int mbedtls_chacha20_update( mbedtls_chacha20_context *ctx,
                             size_t size,
                             const unsigned char *input,
                             unsigned char *output );
int mbedtls_chacha20_crypt( const unsigned char key[32],
                            const unsigned char nonce[12],
                            uint32_t counter,
                            size_t size,
                            const unsigned char* input,
                            unsigned char* output );
int mbedtls_chacha20_self_test( int verbose );

typedef struct mbedtls_chachapoly_context
{
    mbedtls_chacha20_context chacha20_ctx;
    mbedtls_poly1305_context poly1305_ctx;
    uint64_t aad_len;
    uint64_t ciphertext_len;
    int state;
    mbedtls_chachapoly_mode_t mode;
}
mbedtls_chachapoly_context;
void mbedtls_chachapoly_init( mbedtls_chachapoly_context *ctx );
void mbedtls_chachapoly_free( mbedtls_chachapoly_context *ctx );
int mbedtls_chachapoly_setkey( mbedtls_chachapoly_context *ctx,
                               const unsigned char key[32] );
int mbedtls_chachapoly_starts( mbedtls_chachapoly_context *ctx,
                               const unsigned char nonce[12],
                               mbedtls_chachapoly_mode_t mode );
int mbedtls_chachapoly_update_aad( mbedtls_chachapoly_context *ctx,
                                   const unsigned char *aad,
                                   size_t aad_len );
int mbedtls_chachapoly_update( mbedtls_chachapoly_context *ctx,
                               size_t len,
                               const unsigned char *input,
                               unsigned char *output );
int mbedtls_chachapoly_finish( mbedtls_chachapoly_context *ctx,
                               unsigned char mac[16] );
int mbedtls_chachapoly_encrypt_and_tag( mbedtls_chachapoly_context *ctx,
                                        size_t length,
                                        const unsigned char nonce[12],
                                        const unsigned char *aad,
                                        size_t aad_len,
                                        const unsigned char *input,
                                        unsigned char *output,
                                        unsigned char tag[16] );
int mbedtls_chachapoly_auth_decrypt( mbedtls_chachapoly_context *ctx,
                                     size_t length,
                                     const unsigned char nonce[12],
                                     const unsigned char *aad,
                                     size_t aad_len,
                                     const unsigned char tag[16],
                                     const unsigned char *input,
                                     unsigned char *output );
int mbedtls_chachapoly_self_test( int verbose );
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
typedef struct mbedtls_arc4_context
{
    int x;
    int y;
    unsigned char m[256];
}
mbedtls_arc4_context;
void mbedtls_arc4_init( mbedtls_arc4_context *ctx );
void mbedtls_arc4_free( mbedtls_arc4_context *ctx );
void mbedtls_arc4_setup( mbedtls_arc4_context *ctx, const unsigned char *key,
                 unsigned int keylen );
int mbedtls_arc4_crypt( mbedtls_arc4_context *ctx, size_t length, const unsigned char *input,
                unsigned char *output );
int mbedtls_arc4_self_test( int verbose );
typedef struct mbedtls_camellia_context
{
    int nr;
    uint32_t rk[68];
}
mbedtls_camellia_context;
void mbedtls_camellia_init( mbedtls_camellia_context *ctx );
void mbedtls_camellia_free( mbedtls_camellia_context *ctx );
int mbedtls_camellia_setkey_enc( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits );
int mbedtls_camellia_setkey_dec( mbedtls_camellia_context *ctx,
                                 const unsigned char *key,
                                 unsigned int keybits );
int mbedtls_camellia_crypt_ecb( mbedtls_camellia_context *ctx,
                    int mode,
                    const unsigned char input[16],
                    unsigned char output[16] );
int mbedtls_camellia_crypt_cbc( mbedtls_camellia_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[16],
                    const unsigned char *input,
                    unsigned char *output );
int mbedtls_camellia_crypt_cfb128( mbedtls_camellia_context *ctx,
                       int mode,
                       size_t length,
                       size_t *iv_off,
                       unsigned char iv[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_camellia_crypt_ctr( mbedtls_camellia_context *ctx,
                       size_t length,
                       size_t *nc_off,
                       unsigned char nonce_counter[16],
                       unsigned char stream_block[16],
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_camellia_self_test( int verbose );
typedef struct mbedtls_des_context
{
    uint32_t sk[32];
}
mbedtls_des_context;
typedef struct mbedtls_des3_context
{
    uint32_t sk[96];
}
mbedtls_des3_context;
void mbedtls_des_init( mbedtls_des_context *ctx );
void mbedtls_des_free( mbedtls_des_context *ctx );
void mbedtls_des3_init( mbedtls_des3_context *ctx );
void mbedtls_des3_free( mbedtls_des3_context *ctx );
void mbedtls_des_key_set_parity( unsigned char key[8] );
int mbedtls_des_key_check_key_parity( const unsigned char key[8] );
int mbedtls_des_key_check_weak( const unsigned char key[8] );
int mbedtls_des_setkey_enc( mbedtls_des_context *ctx, const unsigned char key[8] );
int mbedtls_des_setkey_dec( mbedtls_des_context *ctx, const unsigned char key[8] );
int mbedtls_des3_set2key_enc( mbedtls_des3_context *ctx,
                      const unsigned char key[8 * 2] );
int mbedtls_des3_set2key_dec( mbedtls_des3_context *ctx,
                      const unsigned char key[8 * 2] );
int mbedtls_des3_set3key_enc( mbedtls_des3_context *ctx,
                      const unsigned char key[8 * 3] );
int mbedtls_des3_set3key_dec( mbedtls_des3_context *ctx,
                      const unsigned char key[8 * 3] );
int mbedtls_des_crypt_ecb( mbedtls_des_context *ctx,
                    const unsigned char input[8],
                    unsigned char output[8] );
int mbedtls_des_crypt_cbc( mbedtls_des_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[8],
                    const unsigned char *input,
                    unsigned char *output );
int mbedtls_des3_crypt_ecb( mbedtls_des3_context *ctx,
                     const unsigned char input[8],
                     unsigned char output[8] );
int mbedtls_des3_crypt_cbc( mbedtls_des3_context *ctx,
                     int mode,
                     size_t length,
                     unsigned char iv[8],
                     const unsigned char *input,
                     unsigned char *output );
void mbedtls_des_setkey( uint32_t SK[32],
                         const unsigned char key[8] );
int mbedtls_des_self_test( int verbose );
typedef struct mbedtls_blowfish_context
{
    uint32_t P[16 + 2];
    uint32_t S[4][256];
}
mbedtls_blowfish_context;
void mbedtls_blowfish_init( mbedtls_blowfish_context *ctx );
void mbedtls_blowfish_free( mbedtls_blowfish_context *ctx );
int mbedtls_blowfish_setkey( mbedtls_blowfish_context *ctx, const unsigned char *key,
                     unsigned int keybits );
int mbedtls_blowfish_crypt_ecb( mbedtls_blowfish_context *ctx,
                        int mode,
                        const unsigned char input[8],
                        unsigned char output[8] );
int mbedtls_blowfish_crypt_cbc( mbedtls_blowfish_context *ctx,
                        int mode,
                        size_t length,
                        unsigned char iv[8],
                        const unsigned char *input,
                        unsigned char *output );
int mbedtls_blowfish_crypt_cfb64( mbedtls_blowfish_context *ctx,
                          int mode,
                          size_t length,
                          size_t *iv_off,
                          unsigned char iv[8],
                          const unsigned char *input,
                          unsigned char *output );
int mbedtls_blowfish_crypt_ctr( mbedtls_blowfish_context *ctx,
                        size_t length,
                        size_t *nc_off,
                        unsigned char nonce_counter[8],
                        unsigned char stream_block[8],
                        const unsigned char *input,
                        unsigned char *output );
typedef struct mbedtls_gcm_context
{
    mbedtls_cipher_context_t cipher_ctx;
    uint64_t HL[16];
    uint64_t HH[16];
    uint64_t len;
    uint64_t add_len;
    unsigned char base_ectr[16];
    unsigned char y[16];
    unsigned char buf[16];
    int mode;
}
mbedtls_gcm_context;
void mbedtls_gcm_init( mbedtls_gcm_context *ctx );
int mbedtls_gcm_setkey( mbedtls_gcm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits );
int mbedtls_gcm_crypt_and_tag( mbedtls_gcm_context *ctx,
                       int mode,
                       size_t length,
                       const unsigned char *iv,
                       size_t iv_len,
                       const unsigned char *add,
                       size_t add_len,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t tag_len,
                       unsigned char *tag );
int mbedtls_gcm_auth_decrypt( mbedtls_gcm_context *ctx,
                      size_t length,
                      const unsigned char *iv,
                      size_t iv_len,
                      const unsigned char *add,
                      size_t add_len,
                      const unsigned char *tag,
                      size_t tag_len,
                      const unsigned char *input,
                      unsigned char *output );
int mbedtls_gcm_starts( mbedtls_gcm_context *ctx,
                int mode,
                const unsigned char *iv,
                size_t iv_len,
                const unsigned char *add,
                size_t add_len );
int mbedtls_gcm_update( mbedtls_gcm_context *ctx,
                size_t length,
                const unsigned char *input,
                unsigned char *output );
int mbedtls_gcm_finish( mbedtls_gcm_context *ctx,
                unsigned char *tag,
                size_t tag_len );
void mbedtls_gcm_free( mbedtls_gcm_context *ctx );
int mbedtls_gcm_self_test( int verbose );
typedef struct mbedtls_ccm_context
{
    mbedtls_cipher_context_t cipher_ctx;
}
mbedtls_ccm_context;
void mbedtls_ccm_init( mbedtls_ccm_context *ctx );
int mbedtls_ccm_setkey( mbedtls_ccm_context *ctx,
                        mbedtls_cipher_id_t cipher,
                        const unsigned char *key,
                        unsigned int keybits );
void mbedtls_ccm_free( mbedtls_ccm_context *ctx );
int mbedtls_ccm_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len );
int mbedtls_ccm_star_encrypt_and_tag( mbedtls_ccm_context *ctx, size_t length,
                         const unsigned char *iv, size_t iv_len,
                         const unsigned char *add, size_t add_len,
                         const unsigned char *input, unsigned char *output,
                         unsigned char *tag, size_t tag_len );
int mbedtls_ccm_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len );
int mbedtls_ccm_star_auth_decrypt( mbedtls_ccm_context *ctx, size_t length,
                      const unsigned char *iv, size_t iv_len,
                      const unsigned char *add, size_t add_len,
                      const unsigned char *input, unsigned char *output,
                      const unsigned char *tag, size_t tag_len );
int mbedtls_ccm_self_test( int verbose );
typedef __builtin_va_list va_list;
typedef __builtin_va_list __gnuc_va_list;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef __gnuc_va_list va_list;
typedef __off64_t off_t;
typedef __ssize_t ssize_t;
typedef __fpos64_t fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ ));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ ));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ ));
extern int fclose (FILE *__stream);
extern FILE *tmpfile (void) __asm__ ("" "tmpfile64")
  __attribute__ ((__malloc__)) ;
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ )) ;
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ )) ;
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char *__restrict __filename, const char *__restrict __modes) __asm__ ("" "fopen64")
  __attribute__ ((__malloc__)) ;
extern FILE *freopen (const char *__restrict __filename, const char *__restrict __modes, FILE *__restrict __stream) __asm__ ("" "freopen64")
       ;
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ ))
  __attribute__ ((__malloc__)) ;
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ ));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ ));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ ));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ ));
typedef float _Float32;
typedef double _Float64;
typedef double _Float32x;
typedef long double _Float64x;
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ ));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ ))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
                                                         ;
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off64_t __off, int __whence) __asm__ ("" "fseeko64");
extern __off64_t ftello (FILE *__stream) __asm__ ("" "ftello64");
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos) __asm__ ("" "fgetpos64");
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __asm__ ("" "fsetpos64");
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void perror (const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern int pclose (FILE *__stream);
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) ;
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ ))
                                     ;
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ )) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ ));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
extern __inline __attribute__ ((__gnu_inline__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __arg)
{
  return vfprintf (stdout, __fmt, __arg);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
}
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ )) ;
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void*)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ )) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void*)0), 10);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ )) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void*)0), 10);
}
extern char *l64a (long int __n) __attribute__ ((__nothrow__ )) ;
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino64_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __id_t id_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return ((__uint16_t) ((((__bsx) >> 8) & 0xff) | (((__bsx) & 0xff) << 8)));
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return ((((__bsx) & 0xff000000u) >> 24) | (((__bsx) & 0x00ff0000u) >> 8) | (((__bsx) & 0x0000ff00u) << 8) | (((__bsx) & 0x000000ffu) << 24));
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return ((((__bsx) & 0xff00000000000000ull) >> 56) | (((__bsx) & 0x00ff000000000000ull) >> 40) | (((__bsx) & 0x0000ff0000000000ull) >> 24) | (((__bsx) & 0x000000ff00000000ull) >> 8) | (((__bsx) & 0x00000000ff000000ull) << 8) | (((__bsx) & 0x0000000000ff0000ull) << 24) | (((__bsx) & 0x000000000000ff00ull) << 40) | (((__bsx) & 0x00000000000000ffull) << 56));
}
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
typedef __blksize_t blksize_t;
typedef __blkcnt64_t blkcnt_t;
typedef __fsblkcnt64_t fsblkcnt_t;
typedef __fsfilcnt64_t fsfilcnt_t;

typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __elision;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  int __cur_writer;
  int __shared;
  signed char __rwelision;
  unsigned char __pad1[7];
  unsigned long int __pad2;
  unsigned int __flags;
};
struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct
{
  int __data ;
} __once_flag;
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
extern long int random (void) __attribute__ ((__nothrow__ ));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ ));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ ));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ ));
extern double drand48 (void) __attribute__ ((__nothrow__ ));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ ));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ ));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ ));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) ;
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__)) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__))
                       ;
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ )) ;
extern void *alloca (size_t __size) __attribute__ ((__nothrow__ ));
extern void *valloc (size_t __size) __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__))
                                         ;
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
                                         ;
extern void abort (void) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int putenv (char *__string) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ ));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __asm__ ("" "mkstemp64")
     __attribute__ ((__nonnull__ (1))) ;
extern int mkstemps (char *__template, int __suffixlen) __asm__ ("" "mkstemps64") __attribute__ ((__nonnull__ (1))) ;
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int system (const char *__command) ;
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ )) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;
  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (const void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 {
   return (void *) __p;
 }
    }
  return ((void*)0);
}
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ )) __attribute__ ((__const__)) ;
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3))) ;
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ ));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ ));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ ))
                                      ;
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ ))
                                    ;
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1))) ;
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2, 3))) ;
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
typedef struct mbedtls_platform_context
{
    char dummy;
}
mbedtls_platform_context;
int mbedtls_platform_setup( mbedtls_platform_context *ctx );
void mbedtls_platform_teardown( mbedtls_platform_context *ctx );
static void *gcm_ctx_alloc( void )
{
    void *ctx = calloc( 1, sizeof( mbedtls_gcm_context ) );
    if( ctx != ((void*)0) )
        mbedtls_gcm_init( (mbedtls_gcm_context *) ctx );
    return( ctx );
}
static void gcm_ctx_free( void *ctx )
{
    mbedtls_gcm_free( ctx );
    free( ctx );
}
static void *ccm_ctx_alloc( void )
{
    void *ctx = calloc( 1, sizeof( mbedtls_ccm_context ) );
    if( ctx != ((void*)0) )
        mbedtls_ccm_init( (mbedtls_ccm_context *) ctx );
    return( ctx );
}
static void ccm_ctx_free( void *ctx )
{
    mbedtls_ccm_free( ctx );
    free( ctx );
}
static int aes_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_aes_crypt_ecb( (mbedtls_aes_context *) ctx, operation, input, output );
}
static int aes_crypt_cbc_wrap( void *ctx, mbedtls_operation_t operation, size_t length,
        unsigned char *iv, const unsigned char *input, unsigned char *output )
{
    return mbedtls_aes_crypt_cbc( (mbedtls_aes_context *) ctx, operation, length, iv, input,
                          output );
}
static int aes_crypt_cfb128_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, size_t *iv_off, unsigned char *iv,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_aes_crypt_cfb128( (mbedtls_aes_context *) ctx, operation, length, iv_off, iv,
                             input, output );
}
static int aes_crypt_ofb_wrap( void *ctx, size_t length, size_t *iv_off,
        unsigned char *iv, const unsigned char *input, unsigned char *output )
{
    return mbedtls_aes_crypt_ofb( (mbedtls_aes_context *) ctx, length, iv_off,
                                    iv, input, output );
}
static int aes_crypt_ctr_wrap( void *ctx, size_t length, size_t *nc_off,
        unsigned char *nonce_counter, unsigned char *stream_block,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_aes_crypt_ctr( (mbedtls_aes_context *) ctx, length, nc_off, nonce_counter,
                          stream_block, input, output );
}
static int aes_crypt_xts_wrap( void *ctx, mbedtls_operation_t operation,
                               size_t length,
                               const unsigned char data_unit[16],
                               const unsigned char *input,
                               unsigned char *output )
{
    mbedtls_aes_xts_context *xts_ctx = ctx;
    int mode;
    switch( operation )
    {
        case MBEDTLS_ENCRYPT:
            mode = 1;
            break;
        case MBEDTLS_DECRYPT:
            mode = 0;
            break;
        default:
            return -0x6100;
    }
    return mbedtls_aes_crypt_xts( xts_ctx, mode, length,
                                  data_unit, input, output );
}
static int aes_setkey_dec_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    return mbedtls_aes_setkey_dec( (mbedtls_aes_context *) ctx, key, key_bitlen );
}
static int aes_setkey_enc_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    return mbedtls_aes_setkey_enc( (mbedtls_aes_context *) ctx, key, key_bitlen );
}
static void * aes_ctx_alloc( void )
{
    mbedtls_aes_context *aes = calloc( 1, sizeof( mbedtls_aes_context ) );
    if( aes == ((void*)0) )
        return( ((void*)0) );
    mbedtls_aes_init( aes );
    return( aes );
}
static void aes_ctx_free( void *ctx )
{
    mbedtls_aes_free( (mbedtls_aes_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t aes_info = {
    MBEDTLS_CIPHER_ID_AES,
    aes_crypt_ecb_wrap,
    aes_crypt_cbc_wrap,
    aes_crypt_cfb128_wrap,
    aes_crypt_ofb_wrap,
    aes_crypt_ctr_wrap,
    ((void*)0),
    ((void*)0),
    aes_setkey_enc_wrap,
    aes_setkey_dec_wrap,
    aes_ctx_alloc,
    aes_ctx_free
};
static const mbedtls_cipher_info_t aes_128_ecb_info = {
    MBEDTLS_CIPHER_AES_128_ECB,
    MBEDTLS_MODE_ECB,
    128,
    "AES-128-ECB",
    0,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_192_ecb_info = {
    MBEDTLS_CIPHER_AES_192_ECB,
    MBEDTLS_MODE_ECB,
    192,
    "AES-192-ECB",
    0,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_256_ecb_info = {
    MBEDTLS_CIPHER_AES_256_ECB,
    MBEDTLS_MODE_ECB,
    256,
    "AES-256-ECB",
    0,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_128_cbc_info = {
    MBEDTLS_CIPHER_AES_128_CBC,
    MBEDTLS_MODE_CBC,
    128,
    "AES-128-CBC",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_192_cbc_info = {
    MBEDTLS_CIPHER_AES_192_CBC,
    MBEDTLS_MODE_CBC,
    192,
    "AES-192-CBC",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_256_cbc_info = {
    MBEDTLS_CIPHER_AES_256_CBC,
    MBEDTLS_MODE_CBC,
    256,
    "AES-256-CBC",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_128_cfb128_info = {
    MBEDTLS_CIPHER_AES_128_CFB128,
    MBEDTLS_MODE_CFB,
    128,
    "AES-128-CFB128",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_192_cfb128_info = {
    MBEDTLS_CIPHER_AES_192_CFB128,
    MBEDTLS_MODE_CFB,
    192,
    "AES-192-CFB128",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_256_cfb128_info = {
    MBEDTLS_CIPHER_AES_256_CFB128,
    MBEDTLS_MODE_CFB,
    256,
    "AES-256-CFB128",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_128_ofb_info = {
    MBEDTLS_CIPHER_AES_128_OFB,
    MBEDTLS_MODE_OFB,
    128,
    "AES-128-OFB",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_192_ofb_info = {
    MBEDTLS_CIPHER_AES_192_OFB,
    MBEDTLS_MODE_OFB,
    192,
    "AES-192-OFB",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_256_ofb_info = {
    MBEDTLS_CIPHER_AES_256_OFB,
    MBEDTLS_MODE_OFB,
    256,
    "AES-256-OFB",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_128_ctr_info = {
    MBEDTLS_CIPHER_AES_128_CTR,
    MBEDTLS_MODE_CTR,
    128,
    "AES-128-CTR",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_192_ctr_info = {
    MBEDTLS_CIPHER_AES_192_CTR,
    MBEDTLS_MODE_CTR,
    192,
    "AES-192-CTR",
    16,
    0,
    16,
    &aes_info
};
static const mbedtls_cipher_info_t aes_256_ctr_info = {
    MBEDTLS_CIPHER_AES_256_CTR,
    MBEDTLS_MODE_CTR,
    256,
    "AES-256-CTR",
    16,
    0,
    16,
    &aes_info
};
static int xts_aes_setkey_enc_wrap( void *ctx, const unsigned char *key,
                                    unsigned int key_bitlen )
{
    mbedtls_aes_xts_context *xts_ctx = ctx;
    return( mbedtls_aes_xts_setkey_enc( xts_ctx, key, key_bitlen ) );
}
static int xts_aes_setkey_dec_wrap( void *ctx, const unsigned char *key,
                                    unsigned int key_bitlen )
{
    mbedtls_aes_xts_context *xts_ctx = ctx;
    return( mbedtls_aes_xts_setkey_dec( xts_ctx, key, key_bitlen ) );
}
static void *xts_aes_ctx_alloc( void )
{
    mbedtls_aes_xts_context *xts_ctx = calloc( 1, sizeof( *xts_ctx ) );
    if( xts_ctx != ((void*)0) )
        mbedtls_aes_xts_init( xts_ctx );
    return( xts_ctx );
}
static void xts_aes_ctx_free( void *ctx )
{
    mbedtls_aes_xts_context *xts_ctx = ctx;
    if( xts_ctx == ((void*)0) )
        return;
    mbedtls_aes_xts_free( xts_ctx );
    free( xts_ctx );
}
static const mbedtls_cipher_base_t xts_aes_info = {
    MBEDTLS_CIPHER_ID_AES,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    aes_crypt_xts_wrap,
    ((void*)0),
    xts_aes_setkey_enc_wrap,
    xts_aes_setkey_dec_wrap,
    xts_aes_ctx_alloc,
    xts_aes_ctx_free
};
static const mbedtls_cipher_info_t aes_128_xts_info = {
    MBEDTLS_CIPHER_AES_128_XTS,
    MBEDTLS_MODE_XTS,
    256,
    "AES-128-XTS",
    16,
    0,
    16,
    &xts_aes_info
};
static const mbedtls_cipher_info_t aes_256_xts_info = {
    MBEDTLS_CIPHER_AES_256_XTS,
    MBEDTLS_MODE_XTS,
    512,
    "AES-256-XTS",
    16,
    0,
    16,
    &xts_aes_info
};
static int gcm_aes_setkey_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    return mbedtls_gcm_setkey( (mbedtls_gcm_context *) ctx, MBEDTLS_CIPHER_ID_AES,
                     key, key_bitlen );
}
static const mbedtls_cipher_base_t gcm_aes_info = {
    MBEDTLS_CIPHER_ID_AES,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    gcm_aes_setkey_wrap,
    gcm_aes_setkey_wrap,
    gcm_ctx_alloc,
    gcm_ctx_free,
};
static const mbedtls_cipher_info_t aes_128_gcm_info = {
    MBEDTLS_CIPHER_AES_128_GCM,
    MBEDTLS_MODE_GCM,
    128,
    "AES-128-GCM",
    12,
    0x01,
    16,
    &gcm_aes_info
};
static const mbedtls_cipher_info_t aes_192_gcm_info = {
    MBEDTLS_CIPHER_AES_192_GCM,
    MBEDTLS_MODE_GCM,
    192,
    "AES-192-GCM",
    12,
    0x01,
    16,
    &gcm_aes_info
};
static const mbedtls_cipher_info_t aes_256_gcm_info = {
    MBEDTLS_CIPHER_AES_256_GCM,
    MBEDTLS_MODE_GCM,
    256,
    "AES-256-GCM",
    12,
    0x01,
    16,
    &gcm_aes_info
};
static int ccm_aes_setkey_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    return mbedtls_ccm_setkey( (mbedtls_ccm_context *) ctx, MBEDTLS_CIPHER_ID_AES,
                     key, key_bitlen );
}
static const mbedtls_cipher_base_t ccm_aes_info = {
    MBEDTLS_CIPHER_ID_AES,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ccm_aes_setkey_wrap,
    ccm_aes_setkey_wrap,
    ccm_ctx_alloc,
    ccm_ctx_free,
};
static const mbedtls_cipher_info_t aes_128_ccm_info = {
    MBEDTLS_CIPHER_AES_128_CCM,
    MBEDTLS_MODE_CCM,
    128,
    "AES-128-CCM",
    12,
    0x01,
    16,
    &ccm_aes_info
};
static const mbedtls_cipher_info_t aes_192_ccm_info = {
    MBEDTLS_CIPHER_AES_192_CCM,
    MBEDTLS_MODE_CCM,
    192,
    "AES-192-CCM",
    12,
    0x01,
    16,
    &ccm_aes_info
};
static const mbedtls_cipher_info_t aes_256_ccm_info = {
    MBEDTLS_CIPHER_AES_256_CCM,
    MBEDTLS_MODE_CCM,
    256,
    "AES-256-CCM",
    12,
    0x01,
    16,
    &ccm_aes_info
};
static int camellia_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_ecb( (mbedtls_camellia_context *) ctx, operation, input,
                               output );
}
static int camellia_crypt_cbc_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, unsigned char *iv,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_cbc( (mbedtls_camellia_context *) ctx, operation, length, iv,
                               input, output );
}
static int camellia_crypt_cfb128_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, size_t *iv_off, unsigned char *iv,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_cfb128( (mbedtls_camellia_context *) ctx, operation, length,
                                  iv_off, iv, input, output );
}
static int camellia_crypt_ctr_wrap( void *ctx, size_t length, size_t *nc_off,
        unsigned char *nonce_counter, unsigned char *stream_block,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_camellia_crypt_ctr( (mbedtls_camellia_context *) ctx, length, nc_off,
                               nonce_counter, stream_block, input, output );
}
static int camellia_setkey_dec_wrap( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return mbedtls_camellia_setkey_dec( (mbedtls_camellia_context *) ctx, key, key_bitlen );
}
static int camellia_setkey_enc_wrap( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return mbedtls_camellia_setkey_enc( (mbedtls_camellia_context *) ctx, key, key_bitlen );
}
static void * camellia_ctx_alloc( void )
{
    mbedtls_camellia_context *ctx;
    ctx = calloc( 1, sizeof( mbedtls_camellia_context ) );
    if( ctx == ((void*)0) )
        return( ((void*)0) );
    mbedtls_camellia_init( ctx );
    return( ctx );
}
static void camellia_ctx_free( void *ctx )
{
    mbedtls_camellia_free( (mbedtls_camellia_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t camellia_info = {
    MBEDTLS_CIPHER_ID_CAMELLIA,
    camellia_crypt_ecb_wrap,
    camellia_crypt_cbc_wrap,
    camellia_crypt_cfb128_wrap,
    ((void*)0),
    camellia_crypt_ctr_wrap,
    ((void*)0),
    ((void*)0),
    camellia_setkey_enc_wrap,
    camellia_setkey_dec_wrap,
    camellia_ctx_alloc,
    camellia_ctx_free
};
static const mbedtls_cipher_info_t camellia_128_ecb_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_ECB,
    MBEDTLS_MODE_ECB,
    128,
    "CAMELLIA-128-ECB",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_192_ecb_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_ECB,
    MBEDTLS_MODE_ECB,
    192,
    "CAMELLIA-192-ECB",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_256_ecb_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_ECB,
    MBEDTLS_MODE_ECB,
    256,
    "CAMELLIA-256-ECB",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_128_cbc_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_CBC,
    MBEDTLS_MODE_CBC,
    128,
    "CAMELLIA-128-CBC",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_192_cbc_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_CBC,
    MBEDTLS_MODE_CBC,
    192,
    "CAMELLIA-192-CBC",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_256_cbc_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_CBC,
    MBEDTLS_MODE_CBC,
    256,
    "CAMELLIA-256-CBC",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_128_cfb128_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_CFB128,
    MBEDTLS_MODE_CFB,
    128,
    "CAMELLIA-128-CFB128",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_192_cfb128_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_CFB128,
    MBEDTLS_MODE_CFB,
    192,
    "CAMELLIA-192-CFB128",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_256_cfb128_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_CFB128,
    MBEDTLS_MODE_CFB,
    256,
    "CAMELLIA-256-CFB128",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_128_ctr_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_CTR,
    MBEDTLS_MODE_CTR,
    128,
    "CAMELLIA-128-CTR",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_192_ctr_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_CTR,
    MBEDTLS_MODE_CTR,
    192,
    "CAMELLIA-192-CTR",
    16,
    0,
    16,
    &camellia_info
};
static const mbedtls_cipher_info_t camellia_256_ctr_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_CTR,
    MBEDTLS_MODE_CTR,
    256,
    "CAMELLIA-256-CTR",
    16,
    0,
    16,
    &camellia_info
};
static int gcm_camellia_setkey_wrap( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return mbedtls_gcm_setkey( (mbedtls_gcm_context *) ctx, MBEDTLS_CIPHER_ID_CAMELLIA,
                     key, key_bitlen );
}
static const mbedtls_cipher_base_t gcm_camellia_info = {
    MBEDTLS_CIPHER_ID_CAMELLIA,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    gcm_camellia_setkey_wrap,
    gcm_camellia_setkey_wrap,
    gcm_ctx_alloc,
    gcm_ctx_free,
};
static const mbedtls_cipher_info_t camellia_128_gcm_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_GCM,
    MBEDTLS_MODE_GCM,
    128,
    "CAMELLIA-128-GCM",
    12,
    0x01,
    16,
    &gcm_camellia_info
};
static const mbedtls_cipher_info_t camellia_192_gcm_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_GCM,
    MBEDTLS_MODE_GCM,
    192,
    "CAMELLIA-192-GCM",
    12,
    0x01,
    16,
    &gcm_camellia_info
};
static const mbedtls_cipher_info_t camellia_256_gcm_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_GCM,
    MBEDTLS_MODE_GCM,
    256,
    "CAMELLIA-256-GCM",
    12,
    0x01,
    16,
    &gcm_camellia_info
};
static int ccm_camellia_setkey_wrap( void *ctx, const unsigned char *key,
                                     unsigned int key_bitlen )
{
    return mbedtls_ccm_setkey( (mbedtls_ccm_context *) ctx, MBEDTLS_CIPHER_ID_CAMELLIA,
                     key, key_bitlen );
}
static const mbedtls_cipher_base_t ccm_camellia_info = {
    MBEDTLS_CIPHER_ID_CAMELLIA,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ccm_camellia_setkey_wrap,
    ccm_camellia_setkey_wrap,
    ccm_ctx_alloc,
    ccm_ctx_free,
};
static const mbedtls_cipher_info_t camellia_128_ccm_info = {
    MBEDTLS_CIPHER_CAMELLIA_128_CCM,
    MBEDTLS_MODE_CCM,
    128,
    "CAMELLIA-128-CCM",
    12,
    0x01,
    16,
    &ccm_camellia_info
};
static const mbedtls_cipher_info_t camellia_192_ccm_info = {
    MBEDTLS_CIPHER_CAMELLIA_192_CCM,
    MBEDTLS_MODE_CCM,
    192,
    "CAMELLIA-192-CCM",
    12,
    0x01,
    16,
    &ccm_camellia_info
};
static const mbedtls_cipher_info_t camellia_256_ccm_info = {
    MBEDTLS_CIPHER_CAMELLIA_256_CCM,
    MBEDTLS_MODE_CCM,
    256,
    "CAMELLIA-256-CCM",
    12,
    0x01,
    16,
    &ccm_camellia_info
};
static int des_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    ((void) operation);
    return mbedtls_des_crypt_ecb( (mbedtls_des_context *) ctx, input, output );
}
static int des3_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    ((void) operation);
    return mbedtls_des3_crypt_ecb( (mbedtls_des3_context *) ctx, input, output );
}
static int des_crypt_cbc_wrap( void *ctx, mbedtls_operation_t operation, size_t length,
        unsigned char *iv, const unsigned char *input, unsigned char *output )
{
    return mbedtls_des_crypt_cbc( (mbedtls_des_context *) ctx, operation, length, iv, input,
                          output );
}
static int des3_crypt_cbc_wrap( void *ctx, mbedtls_operation_t operation, size_t length,
        unsigned char *iv, const unsigned char *input, unsigned char *output )
{
    return mbedtls_des3_crypt_cbc( (mbedtls_des3_context *) ctx, operation, length, iv, input,
                           output );
}
static int des_setkey_dec_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des_setkey_dec( (mbedtls_des_context *) ctx, key );
}
static int des_setkey_enc_wrap( void *ctx, const unsigned char *key,
                                unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des_setkey_enc( (mbedtls_des_context *) ctx, key );
}
static int des3_set2key_dec_wrap( void *ctx, const unsigned char *key,
                                  unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des3_set2key_dec( (mbedtls_des3_context *) ctx, key );
}
static int des3_set2key_enc_wrap( void *ctx, const unsigned char *key,
                                  unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des3_set2key_enc( (mbedtls_des3_context *) ctx, key );
}
static int des3_set3key_dec_wrap( void *ctx, const unsigned char *key,
                                  unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des3_set3key_dec( (mbedtls_des3_context *) ctx, key );
}
static int des3_set3key_enc_wrap( void *ctx, const unsigned char *key,
                                  unsigned int key_bitlen )
{
    ((void) key_bitlen);
    return mbedtls_des3_set3key_enc( (mbedtls_des3_context *) ctx, key );
}
static void * des_ctx_alloc( void )
{
    mbedtls_des_context *des = calloc( 1, sizeof( mbedtls_des_context ) );
    if( des == ((void*)0) )
        return( ((void*)0) );
    mbedtls_des_init( des );
    return( des );
}
static void des_ctx_free( void *ctx )
{
    mbedtls_des_free( (mbedtls_des_context *) ctx );
    free( ctx );
}
static void * des3_ctx_alloc( void )
{
    mbedtls_des3_context *des3;
    des3 = calloc( 1, sizeof( mbedtls_des3_context ) );
    if( des3 == ((void*)0) )
        return( ((void*)0) );
    mbedtls_des3_init( des3 );
    return( des3 );
}
static void des3_ctx_free( void *ctx )
{
    mbedtls_des3_free( (mbedtls_des3_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t des_info = {
    MBEDTLS_CIPHER_ID_DES,
    des_crypt_ecb_wrap,
    des_crypt_cbc_wrap,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    des_setkey_enc_wrap,
    des_setkey_dec_wrap,
    des_ctx_alloc,
    des_ctx_free
};
static const mbedtls_cipher_info_t des_ecb_info = {
    MBEDTLS_CIPHER_DES_ECB,
    MBEDTLS_MODE_ECB,
    MBEDTLS_KEY_LENGTH_DES,
    "DES-ECB",
    8,
    0,
    8,
    &des_info
};
static const mbedtls_cipher_info_t des_cbc_info = {
    MBEDTLS_CIPHER_DES_CBC,
    MBEDTLS_MODE_CBC,
    MBEDTLS_KEY_LENGTH_DES,
    "DES-CBC",
    8,
    0,
    8,
    &des_info
};
static const mbedtls_cipher_base_t des_ede_info = {
    MBEDTLS_CIPHER_ID_DES,
    des3_crypt_ecb_wrap,
    des3_crypt_cbc_wrap,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    des3_set2key_enc_wrap,
    des3_set2key_dec_wrap,
    des3_ctx_alloc,
    des3_ctx_free
};
static const mbedtls_cipher_info_t des_ede_ecb_info = {
    MBEDTLS_CIPHER_DES_EDE_ECB,
    MBEDTLS_MODE_ECB,
    MBEDTLS_KEY_LENGTH_DES_EDE,
    "DES-EDE-ECB",
    8,
    0,
    8,
    &des_ede_info
};
static const mbedtls_cipher_info_t des_ede_cbc_info = {
    MBEDTLS_CIPHER_DES_EDE_CBC,
    MBEDTLS_MODE_CBC,
    MBEDTLS_KEY_LENGTH_DES_EDE,
    "DES-EDE-CBC",
    8,
    0,
    8,
    &des_ede_info
};
static const mbedtls_cipher_base_t des_ede3_info = {
    MBEDTLS_CIPHER_ID_3DES,
    des3_crypt_ecb_wrap,
    des3_crypt_cbc_wrap,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    des3_set3key_enc_wrap,
    des3_set3key_dec_wrap,
    des3_ctx_alloc,
    des3_ctx_free
};
static const mbedtls_cipher_info_t des_ede3_ecb_info = {
    MBEDTLS_CIPHER_DES_EDE3_ECB,
    MBEDTLS_MODE_ECB,
    MBEDTLS_KEY_LENGTH_DES_EDE3,
    "DES-EDE3-ECB",
    8,
    0,
    8,
    &des_ede3_info
};
static const mbedtls_cipher_info_t des_ede3_cbc_info = {
    MBEDTLS_CIPHER_DES_EDE3_CBC,
    MBEDTLS_MODE_CBC,
    MBEDTLS_KEY_LENGTH_DES_EDE3,
    "DES-EDE3-CBC",
    8,
    0,
    8,
    &des_ede3_info
};
static int blowfish_crypt_ecb_wrap( void *ctx, mbedtls_operation_t operation,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_blowfish_crypt_ecb( (mbedtls_blowfish_context *) ctx, operation, input,
                               output );
}
static int blowfish_crypt_cbc_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, unsigned char *iv, const unsigned char *input,
        unsigned char *output )
{
    return mbedtls_blowfish_crypt_cbc( (mbedtls_blowfish_context *) ctx, operation, length, iv,
                               input, output );
}
static int blowfish_crypt_cfb64_wrap( void *ctx, mbedtls_operation_t operation,
        size_t length, size_t *iv_off, unsigned char *iv,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_blowfish_crypt_cfb64( (mbedtls_blowfish_context *) ctx, operation, length,
                                 iv_off, iv, input, output );
}
static int blowfish_crypt_ctr_wrap( void *ctx, size_t length, size_t *nc_off,
        unsigned char *nonce_counter, unsigned char *stream_block,
        const unsigned char *input, unsigned char *output )
{
    return mbedtls_blowfish_crypt_ctr( (mbedtls_blowfish_context *) ctx, length, nc_off,
                               nonce_counter, stream_block, input, output );
}
static int blowfish_setkey_wrap( void *ctx, const unsigned char *key,
                                 unsigned int key_bitlen )
{
    return mbedtls_blowfish_setkey( (mbedtls_blowfish_context *) ctx, key, key_bitlen );
}
static void * blowfish_ctx_alloc( void )
{
    mbedtls_blowfish_context *ctx;
    ctx = calloc( 1, sizeof( mbedtls_blowfish_context ) );
    if( ctx == ((void*)0) )
        return( ((void*)0) );
    mbedtls_blowfish_init( ctx );
    return( ctx );
}
static void blowfish_ctx_free( void *ctx )
{
    mbedtls_blowfish_free( (mbedtls_blowfish_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t blowfish_info = {
    MBEDTLS_CIPHER_ID_BLOWFISH,
    blowfish_crypt_ecb_wrap,
    blowfish_crypt_cbc_wrap,
    blowfish_crypt_cfb64_wrap,
    ((void*)0),
    blowfish_crypt_ctr_wrap,
    ((void*)0),
    ((void*)0),
    blowfish_setkey_wrap,
    blowfish_setkey_wrap,
    blowfish_ctx_alloc,
    blowfish_ctx_free
};
static const mbedtls_cipher_info_t blowfish_ecb_info = {
    MBEDTLS_CIPHER_BLOWFISH_ECB,
    MBEDTLS_MODE_ECB,
    128,
    "BLOWFISH-ECB",
    8,
    0x02,
    8,
    &blowfish_info
};
static const mbedtls_cipher_info_t blowfish_cbc_info = {
    MBEDTLS_CIPHER_BLOWFISH_CBC,
    MBEDTLS_MODE_CBC,
    128,
    "BLOWFISH-CBC",
    8,
    0x02,
    8,
    &blowfish_info
};
static const mbedtls_cipher_info_t blowfish_cfb64_info = {
    MBEDTLS_CIPHER_BLOWFISH_CFB64,
    MBEDTLS_MODE_CFB,
    128,
    "BLOWFISH-CFB64",
    8,
    0x02,
    8,
    &blowfish_info
};
static const mbedtls_cipher_info_t blowfish_ctr_info = {
    MBEDTLS_CIPHER_BLOWFISH_CTR,
    MBEDTLS_MODE_CTR,
    128,
    "BLOWFISH-CTR",
    8,
    0x02,
    8,
    &blowfish_info
};
static int arc4_crypt_stream_wrap( void *ctx, size_t length,
                                   const unsigned char *input,
                                   unsigned char *output )
{
    return( mbedtls_arc4_crypt( (mbedtls_arc4_context *) ctx, length, input, output ) );
}
static int arc4_setkey_wrap( void *ctx, const unsigned char *key,
                             unsigned int key_bitlen )
{
    if( key_bitlen % 8 != 0 )
        return( -0x6100 );
    mbedtls_arc4_setup( (mbedtls_arc4_context *) ctx, key, key_bitlen / 8 );
    return( 0 );
}
static void * arc4_ctx_alloc( void )
{
    mbedtls_arc4_context *ctx;
    ctx = calloc( 1, sizeof( mbedtls_arc4_context ) );
    if( ctx == ((void*)0) )
        return( ((void*)0) );
    mbedtls_arc4_init( ctx );
    return( ctx );
}
static void arc4_ctx_free( void *ctx )
{
    mbedtls_arc4_free( (mbedtls_arc4_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t arc4_base_info = {
    MBEDTLS_CIPHER_ID_ARC4,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    arc4_crypt_stream_wrap,
    arc4_setkey_wrap,
    arc4_setkey_wrap,
    arc4_ctx_alloc,
    arc4_ctx_free
};
static const mbedtls_cipher_info_t arc4_128_info = {
    MBEDTLS_CIPHER_ARC4_128,
    MBEDTLS_MODE_STREAM,
    128,
    "ARC4-128",
    0,
    0,
    1,
    &arc4_base_info
};
static int chacha20_setkey_wrap( void *ctx, const unsigned char *key,
                                 unsigned int key_bitlen )
{
    if( key_bitlen != 256U )
        return( -0x6100 );
    if ( 0 != mbedtls_chacha20_setkey( (mbedtls_chacha20_context*)ctx, key ) )
        return( -0x6100 );
    return( 0 );
}
static int chacha20_stream_wrap( void *ctx, size_t length,
                                 const unsigned char *input,
                                 unsigned char *output )
{
    int ret = -0x006E;
    ret = mbedtls_chacha20_update( ctx, length, input, output );
    if( ret == -0x0051 )
        return( -0x6100 );
    return( ret );
}
static void * chacha20_ctx_alloc( void )
{
    mbedtls_chacha20_context *ctx;
    ctx = calloc( 1, sizeof( mbedtls_chacha20_context ) );
    if( ctx == ((void*)0) )
        return( ((void*)0) );
    mbedtls_chacha20_init( ctx );
    return( ctx );
}
static void chacha20_ctx_free( void *ctx )
{
    mbedtls_chacha20_free( (mbedtls_chacha20_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t chacha20_base_info = {
    MBEDTLS_CIPHER_ID_CHACHA20,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    chacha20_stream_wrap,
    chacha20_setkey_wrap,
    chacha20_setkey_wrap,
    chacha20_ctx_alloc,
    chacha20_ctx_free
};
static const mbedtls_cipher_info_t chacha20_info = {
    MBEDTLS_CIPHER_CHACHA20,
    MBEDTLS_MODE_STREAM,
    256,
    "CHACHA20",
    12,
    0,
    1,
    &chacha20_base_info
};
static int chachapoly_setkey_wrap( void *ctx,
                                   const unsigned char *key,
                                   unsigned int key_bitlen )
{
    if( key_bitlen != 256U )
        return( -0x6100 );
    if ( 0 != mbedtls_chachapoly_setkey( (mbedtls_chachapoly_context*)ctx, key ) )
        return( -0x6100 );
    return( 0 );
}
static void * chachapoly_ctx_alloc( void )
{
    mbedtls_chachapoly_context *ctx;
    ctx = calloc( 1, sizeof( mbedtls_chachapoly_context ) );
    if( ctx == ((void*)0) )
        return( ((void*)0) );
    mbedtls_chachapoly_init( ctx );
    return( ctx );
}
static void chachapoly_ctx_free( void *ctx )
{
    mbedtls_chachapoly_free( (mbedtls_chachapoly_context *) ctx );
    free( ctx );
}
static const mbedtls_cipher_base_t chachapoly_base_info = {
    MBEDTLS_CIPHER_ID_CHACHA20,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    chachapoly_setkey_wrap,
    chachapoly_setkey_wrap,
    chachapoly_ctx_alloc,
    chachapoly_ctx_free
};
static const mbedtls_cipher_info_t chachapoly_info = {
    MBEDTLS_CIPHER_CHACHA20_POLY1305,
    MBEDTLS_MODE_CHACHAPOLY,
    256,
    "CHACHA20-POLY1305",
    12,
    0,
    1,
    &chachapoly_base_info
};
const mbedtls_cipher_definition_t mbedtls_cipher_definitions[] =
{
    { MBEDTLS_CIPHER_AES_128_ECB, &aes_128_ecb_info },
    { MBEDTLS_CIPHER_AES_192_ECB, &aes_192_ecb_info },
    { MBEDTLS_CIPHER_AES_256_ECB, &aes_256_ecb_info },
    { MBEDTLS_CIPHER_AES_128_CBC, &aes_128_cbc_info },
    { MBEDTLS_CIPHER_AES_192_CBC, &aes_192_cbc_info },
    { MBEDTLS_CIPHER_AES_256_CBC, &aes_256_cbc_info },
    { MBEDTLS_CIPHER_AES_128_CFB128, &aes_128_cfb128_info },
    { MBEDTLS_CIPHER_AES_192_CFB128, &aes_192_cfb128_info },
    { MBEDTLS_CIPHER_AES_256_CFB128, &aes_256_cfb128_info },
    { MBEDTLS_CIPHER_AES_128_OFB, &aes_128_ofb_info },
    { MBEDTLS_CIPHER_AES_192_OFB, &aes_192_ofb_info },
    { MBEDTLS_CIPHER_AES_256_OFB, &aes_256_ofb_info },
    { MBEDTLS_CIPHER_AES_128_CTR, &aes_128_ctr_info },
    { MBEDTLS_CIPHER_AES_192_CTR, &aes_192_ctr_info },
    { MBEDTLS_CIPHER_AES_256_CTR, &aes_256_ctr_info },
    { MBEDTLS_CIPHER_AES_128_XTS, &aes_128_xts_info },
    { MBEDTLS_CIPHER_AES_256_XTS, &aes_256_xts_info },
    { MBEDTLS_CIPHER_AES_128_GCM, &aes_128_gcm_info },
    { MBEDTLS_CIPHER_AES_192_GCM, &aes_192_gcm_info },
    { MBEDTLS_CIPHER_AES_256_GCM, &aes_256_gcm_info },
    { MBEDTLS_CIPHER_AES_128_CCM, &aes_128_ccm_info },
    { MBEDTLS_CIPHER_AES_192_CCM, &aes_192_ccm_info },
    { MBEDTLS_CIPHER_AES_256_CCM, &aes_256_ccm_info },
    { MBEDTLS_CIPHER_ARC4_128, &arc4_128_info },
    { MBEDTLS_CIPHER_BLOWFISH_ECB, &blowfish_ecb_info },
    { MBEDTLS_CIPHER_BLOWFISH_CBC, &blowfish_cbc_info },
    { MBEDTLS_CIPHER_BLOWFISH_CFB64, &blowfish_cfb64_info },
    { MBEDTLS_CIPHER_BLOWFISH_CTR, &blowfish_ctr_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_ECB, &camellia_128_ecb_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_ECB, &camellia_192_ecb_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_ECB, &camellia_256_ecb_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_CBC, &camellia_128_cbc_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_CBC, &camellia_192_cbc_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_CBC, &camellia_256_cbc_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_CFB128, &camellia_128_cfb128_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_CFB128, &camellia_192_cfb128_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_CFB128, &camellia_256_cfb128_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_CTR, &camellia_128_ctr_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_CTR, &camellia_192_ctr_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_CTR, &camellia_256_ctr_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_GCM, &camellia_128_gcm_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_GCM, &camellia_192_gcm_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_GCM, &camellia_256_gcm_info },
    { MBEDTLS_CIPHER_CAMELLIA_128_CCM, &camellia_128_ccm_info },
    { MBEDTLS_CIPHER_CAMELLIA_192_CCM, &camellia_192_ccm_info },
    { MBEDTLS_CIPHER_CAMELLIA_256_CCM, &camellia_256_ccm_info },
    { MBEDTLS_CIPHER_DES_ECB, &des_ecb_info },
    { MBEDTLS_CIPHER_DES_EDE_ECB, &des_ede_ecb_info },
    { MBEDTLS_CIPHER_DES_EDE3_ECB, &des_ede3_ecb_info },
    { MBEDTLS_CIPHER_DES_CBC, &des_cbc_info },
    { MBEDTLS_CIPHER_DES_EDE_CBC, &des_ede_cbc_info },
    { MBEDTLS_CIPHER_DES_EDE3_CBC, &des_ede3_cbc_info },
    { MBEDTLS_CIPHER_CHACHA20, &chacha20_info },
    { MBEDTLS_CIPHER_CHACHA20_POLY1305, &chachapoly_info },
    { MBEDTLS_CIPHER_NONE, ((void*)0) }
};
int mbedtls_cipher_supported[( sizeof(mbedtls_cipher_definitions) / sizeof(mbedtls_cipher_definitions[0]) )];
