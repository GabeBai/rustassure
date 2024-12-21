typedef int mbedtls_iso_c_forbids_empty_translation_units;
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
typedef uint16_t psa_key_handle_t;
typedef uint32_t psa_app_key_id_t;
typedef psa_app_key_id_t psa_key_file_id_t;

typedef long int ptrdiff_t;
typedef long unsigned int size_t;
typedef int wchar_t;
typedef struct {
  long long __clang_max_align_nonce1
      __attribute__((__aligned__(__alignof__(long long))));
  long double __clang_max_align_nonce2
      __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
typedef int32_t psa_status_t;
typedef uint16_t psa_key_type_t;
typedef uint8_t psa_ecc_family_t;
typedef uint8_t psa_dh_family_t;
typedef uint32_t psa_algorithm_t;
typedef uint32_t psa_key_lifetime_t;
typedef uint8_t psa_key_persistence_t;
typedef uint32_t psa_key_location_t;
typedef uint32_t psa_key_id_t;
typedef uint32_t psa_key_usage_t;
typedef struct psa_key_attributes_s psa_key_attributes_t;
typedef uint16_t psa_key_derivation_step_t;
psa_status_t psa_crypto_init(void);
static psa_key_attributes_t psa_key_attributes_init(void);
static void psa_set_key_id(psa_key_attributes_t *attributes,
                           psa_key_id_t id);
static void psa_set_key_lifetime(psa_key_attributes_t *attributes,
                                 psa_key_lifetime_t lifetime);
static psa_key_id_t psa_get_key_id(const psa_key_attributes_t *attributes);
static psa_key_lifetime_t psa_get_key_lifetime(
    const psa_key_attributes_t *attributes);
static void psa_set_key_usage_flags(psa_key_attributes_t *attributes,
                                    psa_key_usage_t usage_flags);
static psa_key_usage_t psa_get_key_usage_flags(
    const psa_key_attributes_t *attributes);
static void psa_set_key_algorithm(psa_key_attributes_t *attributes,
                                  psa_algorithm_t alg);
static psa_algorithm_t psa_get_key_algorithm(
    const psa_key_attributes_t *attributes);
static void psa_set_key_type(psa_key_attributes_t *attributes,
                             psa_key_type_t type);
static void psa_set_key_bits(psa_key_attributes_t *attributes,
                             size_t bits);
static psa_key_type_t psa_get_key_type(const psa_key_attributes_t *attributes);
static size_t psa_get_key_bits(const psa_key_attributes_t *attributes);
psa_status_t psa_get_key_attributes(psa_key_handle_t handle,
                                    psa_key_attributes_t *attributes);
void psa_reset_key_attributes(psa_key_attributes_t *attributes);
psa_status_t psa_open_key(psa_key_id_t id,
                          psa_key_handle_t *handle);
psa_status_t psa_close_key(psa_key_handle_t handle);
psa_status_t psa_copy_key(psa_key_handle_t source_handle,
                          const psa_key_attributes_t *attributes,
                          psa_key_handle_t *target_handle);
psa_status_t psa_destroy_key(psa_key_handle_t handle);
psa_status_t psa_import_key(const psa_key_attributes_t *attributes,
                            const uint8_t *data,
                            size_t data_length,
                            psa_key_handle_t *handle);
psa_status_t psa_export_key(psa_key_handle_t handle,
                            uint8_t *data,
                            size_t data_size,
                            size_t *data_length);
psa_status_t psa_export_public_key(psa_key_handle_t handle,
                                   uint8_t *data,
                                   size_t data_size,
                                   size_t *data_length);
psa_status_t psa_hash_compute(psa_algorithm_t alg,
                              const uint8_t *input,
                              size_t input_length,
                              uint8_t *hash,
                              size_t hash_size,
                              size_t *hash_length);
psa_status_t psa_hash_compare(psa_algorithm_t alg,
                              const uint8_t *input,
                              size_t input_length,
                              const uint8_t *hash,
                              size_t hash_length);
typedef struct psa_hash_operation_s psa_hash_operation_t;
static psa_hash_operation_t psa_hash_operation_init(void);
psa_status_t psa_hash_setup(psa_hash_operation_t *operation,
                            psa_algorithm_t alg);
psa_status_t psa_hash_update(psa_hash_operation_t *operation,
                             const uint8_t *input,
                             size_t input_length);
psa_status_t psa_hash_finish(psa_hash_operation_t *operation,
                             uint8_t *hash,
                             size_t hash_size,
                             size_t *hash_length);
psa_status_t psa_hash_verify(psa_hash_operation_t *operation,
                             const uint8_t *hash,
                             size_t hash_length);
psa_status_t psa_hash_abort(psa_hash_operation_t *operation);
psa_status_t psa_hash_clone(const psa_hash_operation_t *source_operation,
                            psa_hash_operation_t *target_operation);
psa_status_t psa_mac_compute(psa_key_handle_t handle,
                             psa_algorithm_t alg,
                             const uint8_t *input,
                             size_t input_length,
                             uint8_t *mac,
                             size_t mac_size,
                             size_t *mac_length);
psa_status_t psa_mac_verify(psa_key_handle_t handle,
                            psa_algorithm_t alg,
                            const uint8_t *input,
                            size_t input_length,
                            const uint8_t *mac,
                            size_t mac_length);
typedef struct psa_mac_operation_s psa_mac_operation_t;
static psa_mac_operation_t psa_mac_operation_init(void);
psa_status_t psa_mac_sign_setup(psa_mac_operation_t *operation,
                                psa_key_handle_t handle,
                                psa_algorithm_t alg);
psa_status_t psa_mac_verify_setup(psa_mac_operation_t *operation,
                                  psa_key_handle_t handle,
                                  psa_algorithm_t alg);
psa_status_t psa_mac_update(psa_mac_operation_t *operation,
                            const uint8_t *input,
                            size_t input_length);
psa_status_t psa_mac_sign_finish(psa_mac_operation_t *operation,
                                 uint8_t *mac,
                                 size_t mac_size,
                                 size_t *mac_length);
psa_status_t psa_mac_verify_finish(psa_mac_operation_t *operation,
                                   const uint8_t *mac,
                                   size_t mac_length);
psa_status_t psa_mac_abort(psa_mac_operation_t *operation);
psa_status_t psa_cipher_encrypt(psa_key_handle_t handle,
                                psa_algorithm_t alg,
                                const uint8_t *input,
                                size_t input_length,
                                uint8_t *output,
                                size_t output_size,
                                size_t *output_length);
psa_status_t psa_cipher_decrypt(psa_key_handle_t handle,
                                psa_algorithm_t alg,
                                const uint8_t *input,
                                size_t input_length,
                                uint8_t *output,
                                size_t output_size,
                                size_t *output_length);
typedef struct psa_cipher_operation_s psa_cipher_operation_t;
static psa_cipher_operation_t psa_cipher_operation_init(void);
psa_status_t psa_cipher_encrypt_setup(psa_cipher_operation_t *operation,
                                      psa_key_handle_t handle,
                                      psa_algorithm_t alg);
psa_status_t psa_cipher_decrypt_setup(psa_cipher_operation_t *operation,
                                      psa_key_handle_t handle,
                                      psa_algorithm_t alg);
psa_status_t psa_cipher_generate_iv(psa_cipher_operation_t *operation,
                                    uint8_t *iv,
                                    size_t iv_size,
                                    size_t *iv_length);
psa_status_t psa_cipher_set_iv(psa_cipher_operation_t *operation,
                               const uint8_t *iv,
                               size_t iv_length);
psa_status_t psa_cipher_update(psa_cipher_operation_t *operation,
                               const uint8_t *input,
                               size_t input_length,
                               uint8_t *output,
                               size_t output_size,
                               size_t *output_length);
psa_status_t psa_cipher_finish(psa_cipher_operation_t *operation,
                               uint8_t *output,
                               size_t output_size,
                               size_t *output_length);
psa_status_t psa_cipher_abort(psa_cipher_operation_t *operation);
psa_status_t psa_aead_encrypt(psa_key_handle_t handle,
                              psa_algorithm_t alg,
                              const uint8_t *nonce,
                              size_t nonce_length,
                              const uint8_t *additional_data,
                              size_t additional_data_length,
                              const uint8_t *plaintext,
                              size_t plaintext_length,
                              uint8_t *ciphertext,
                              size_t ciphertext_size,
                              size_t *ciphertext_length);
psa_status_t psa_aead_decrypt(psa_key_handle_t handle,
                              psa_algorithm_t alg,
                              const uint8_t *nonce,
                              size_t nonce_length,
                              const uint8_t *additional_data,
                              size_t additional_data_length,
                              const uint8_t *ciphertext,
                              size_t ciphertext_length,
                              uint8_t *plaintext,
                              size_t plaintext_size,
                              size_t *plaintext_length);
typedef struct psa_aead_operation_s psa_aead_operation_t;
static psa_aead_operation_t psa_aead_operation_init(void);
psa_status_t psa_aead_encrypt_setup(psa_aead_operation_t *operation,
                                    psa_key_handle_t handle,
                                    psa_algorithm_t alg);
psa_status_t psa_aead_decrypt_setup(psa_aead_operation_t *operation,
                                    psa_key_handle_t handle,
                                    psa_algorithm_t alg);
psa_status_t psa_aead_generate_nonce(psa_aead_operation_t *operation,
                                     uint8_t *nonce,
                                     size_t nonce_size,
                                     size_t *nonce_length);
psa_status_t psa_aead_set_nonce(psa_aead_operation_t *operation,
                                const uint8_t *nonce,
                                size_t nonce_length);
psa_status_t psa_aead_set_lengths(psa_aead_operation_t *operation,
                                  size_t ad_length,
                                  size_t plaintext_length);
psa_status_t psa_aead_update_ad(psa_aead_operation_t *operation,
                                const uint8_t *input,
                                size_t input_length);
psa_status_t psa_aead_update(psa_aead_operation_t *operation,
                             const uint8_t *input,
                             size_t input_length,
                             uint8_t *output,
                             size_t output_size,
                             size_t *output_length);
psa_status_t psa_aead_finish(psa_aead_operation_t *operation,
                             uint8_t *ciphertext,
                             size_t ciphertext_size,
                             size_t *ciphertext_length,
                             uint8_t *tag,
                             size_t tag_size,
                             size_t *tag_length);
psa_status_t psa_aead_verify(psa_aead_operation_t *operation,
                             uint8_t *plaintext,
                             size_t plaintext_size,
                             size_t *plaintext_length,
                             const uint8_t *tag,
                             size_t tag_length);
psa_status_t psa_aead_abort(psa_aead_operation_t *operation);
psa_status_t psa_sign_hash(psa_key_handle_t handle,
                           psa_algorithm_t alg,
                           const uint8_t *hash,
                           size_t hash_length,
                           uint8_t *signature,
                           size_t signature_size,
                           size_t *signature_length);
psa_status_t psa_verify_hash(psa_key_handle_t handle,
                             psa_algorithm_t alg,
                             const uint8_t *hash,
                             size_t hash_length,
                             const uint8_t *signature,
                             size_t signature_length);
psa_status_t psa_asymmetric_encrypt(psa_key_handle_t handle,
                                    psa_algorithm_t alg,
                                    const uint8_t *input,
                                    size_t input_length,
                                    const uint8_t *salt,
                                    size_t salt_length,
                                    uint8_t *output,
                                    size_t output_size,
                                    size_t *output_length);
psa_status_t psa_asymmetric_decrypt(psa_key_handle_t handle,
                                    psa_algorithm_t alg,
                                    const uint8_t *input,
                                    size_t input_length,
                                    const uint8_t *salt,
                                    size_t salt_length,
                                    uint8_t *output,
                                    size_t output_size,
                                    size_t *output_length);
typedef struct psa_key_derivation_s psa_key_derivation_operation_t;
static psa_key_derivation_operation_t psa_key_derivation_operation_init(void);
psa_status_t psa_key_derivation_setup(
    psa_key_derivation_operation_t *operation,
    psa_algorithm_t alg);
psa_status_t psa_key_derivation_get_capacity(
    const psa_key_derivation_operation_t *operation,
    size_t *capacity);
psa_status_t psa_key_derivation_set_capacity(
    psa_key_derivation_operation_t *operation,
    size_t capacity);
psa_status_t psa_key_derivation_input_bytes(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    const uint8_t *data,
    size_t data_length);
psa_status_t psa_key_derivation_input_key(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    psa_key_handle_t handle);
psa_status_t psa_key_derivation_key_agreement(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    psa_key_handle_t private_key,
    const uint8_t *peer_key,
    size_t peer_key_length);
psa_status_t psa_key_derivation_output_bytes(
    psa_key_derivation_operation_t *operation,
    uint8_t *output,
    size_t output_length);
psa_status_t psa_key_derivation_output_key(
    const psa_key_attributes_t *attributes,
    psa_key_derivation_operation_t *operation,
    psa_key_handle_t *handle);
psa_status_t psa_key_derivation_abort(
    psa_key_derivation_operation_t *operation);
psa_status_t psa_raw_key_agreement(psa_algorithm_t alg,
                                   psa_key_handle_t private_key,
                                   const uint8_t *peer_key,
                                   size_t peer_key_length,
                                   uint8_t *output,
                                   size_t output_size,
                                   size_t *output_length);
psa_status_t psa_generate_random(uint8_t *output,
                                 size_t output_size);
psa_status_t psa_generate_key(const psa_key_attributes_t *attributes,
                              psa_key_handle_t *handle);

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
struct mbedtls_cmac_context_t
{
    unsigned char state[16];
    unsigned char unprocessed_block[16];
    size_t unprocessed_len;
};
int mbedtls_cipher_cmac_starts( mbedtls_cipher_context_t *ctx,
                                const unsigned char *key, size_t keybits );
int mbedtls_cipher_cmac_update( mbedtls_cipher_context_t *ctx,
                                const unsigned char *input, size_t ilen );
int mbedtls_cipher_cmac_finish( mbedtls_cipher_context_t *ctx,
                                unsigned char *output );
int mbedtls_cipher_cmac_reset( mbedtls_cipher_context_t *ctx );
int mbedtls_cipher_cmac( const mbedtls_cipher_info_t *cipher_info,
                         const unsigned char *key, size_t keylen,
                         const unsigned char *input, size_t ilen,
                         unsigned char *output );
int mbedtls_aes_cmac_prf_128( const unsigned char *key, size_t key_len,
                              const unsigned char *input, size_t in_len,
                              unsigned char output[16] );
int mbedtls_cmac_self_test( int verbose );
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
typedef enum {
    MBEDTLS_MD_NONE=0,
    MBEDTLS_MD_MD2,
    MBEDTLS_MD_MD4,
    MBEDTLS_MD_MD5,
    MBEDTLS_MD_SHA1,
    MBEDTLS_MD_SHA224,
    MBEDTLS_MD_SHA256,
    MBEDTLS_MD_SHA384,
    MBEDTLS_MD_SHA512,
    MBEDTLS_MD_RIPEMD160,
} mbedtls_md_type_t;
typedef struct mbedtls_md_info_t mbedtls_md_info_t;
typedef struct mbedtls_md_context_t
{
    const mbedtls_md_info_t *md_info;
    void *md_ctx;
    void *hmac_ctx;
} mbedtls_md_context_t;
const int *mbedtls_md_list( void );
const mbedtls_md_info_t *mbedtls_md_info_from_string( const char *md_name );
const mbedtls_md_info_t *mbedtls_md_info_from_type( mbedtls_md_type_t md_type );
void mbedtls_md_init( mbedtls_md_context_t *ctx );
void mbedtls_md_free( mbedtls_md_context_t *ctx );
int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info ) ;
int mbedtls_md_setup( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info, int hmac );
int mbedtls_md_clone( mbedtls_md_context_t *dst,
                      const mbedtls_md_context_t *src );
unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info );
mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info );
const char *mbedtls_md_get_name( const mbedtls_md_info_t *md_info );
int mbedtls_md_starts( mbedtls_md_context_t *ctx );
int mbedtls_md_update( mbedtls_md_context_t *ctx, const unsigned char *input, size_t ilen );
int mbedtls_md_finish( mbedtls_md_context_t *ctx, unsigned char *output );
int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
        unsigned char *output );
int mbedtls_md_file( const mbedtls_md_info_t *md_info, const char *path,
                     unsigned char *output );
int mbedtls_md_hmac_starts( mbedtls_md_context_t *ctx, const unsigned char *key,
                    size_t keylen );
int mbedtls_md_hmac_update( mbedtls_md_context_t *ctx, const unsigned char *input,
                    size_t ilen );
int mbedtls_md_hmac_finish( mbedtls_md_context_t *ctx, unsigned char *output);
int mbedtls_md_hmac_reset( mbedtls_md_context_t *ctx );
int mbedtls_md_hmac( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output );
int mbedtls_md_process( mbedtls_md_context_t *ctx, const unsigned char *data );
typedef struct mbedtls_md2_context
{
    unsigned char cksum[16];
    unsigned char state[48];
    unsigned char buffer[16];
    size_t left;
}
mbedtls_md2_context;
void mbedtls_md2_init( mbedtls_md2_context *ctx );
void mbedtls_md2_free( mbedtls_md2_context *ctx );
void mbedtls_md2_clone( mbedtls_md2_context *dst,
                        const mbedtls_md2_context *src );
int mbedtls_md2_starts_ret( mbedtls_md2_context *ctx );
int mbedtls_md2_update_ret( mbedtls_md2_context *ctx,
                            const unsigned char *input,
                            size_t ilen );
int mbedtls_md2_finish_ret( mbedtls_md2_context *ctx,
                            unsigned char output[16] );
int mbedtls_internal_md2_process( mbedtls_md2_context *ctx );
                   void mbedtls_md2_starts( mbedtls_md2_context *ctx );
                   void mbedtls_md2_update( mbedtls_md2_context *ctx,
                                            const unsigned char *input,
                                            size_t ilen );
                   void mbedtls_md2_finish( mbedtls_md2_context *ctx,
                                            unsigned char output[16] );
                   void mbedtls_md2_process( mbedtls_md2_context *ctx );
int mbedtls_md2_ret( const unsigned char *input,
                     size_t ilen,
                     unsigned char output[16] );
                   void mbedtls_md2( const unsigned char *input,
                                     size_t ilen,
                                     unsigned char output[16] );
int mbedtls_md2_self_test( int verbose );
typedef struct mbedtls_md4_context
{
    uint32_t total[2];
    uint32_t state[4];
    unsigned char buffer[64];
}
mbedtls_md4_context;
void mbedtls_md4_init( mbedtls_md4_context *ctx );
void mbedtls_md4_free( mbedtls_md4_context *ctx );
void mbedtls_md4_clone( mbedtls_md4_context *dst,
                        const mbedtls_md4_context *src );
int mbedtls_md4_starts_ret( mbedtls_md4_context *ctx );
int mbedtls_md4_update_ret( mbedtls_md4_context *ctx,
                            const unsigned char *input,
                            size_t ilen );
int mbedtls_md4_finish_ret( mbedtls_md4_context *ctx,
                            unsigned char output[16] );
int mbedtls_internal_md4_process( mbedtls_md4_context *ctx,
                                  const unsigned char data[64] );
                   void mbedtls_md4_starts( mbedtls_md4_context *ctx );
                   void mbedtls_md4_update( mbedtls_md4_context *ctx,
                                            const unsigned char *input,
                                            size_t ilen );
                   void mbedtls_md4_finish( mbedtls_md4_context *ctx,
                                            unsigned char output[16] );
                   void mbedtls_md4_process( mbedtls_md4_context *ctx,
                                             const unsigned char data[64] );
int mbedtls_md4_ret( const unsigned char *input,
                     size_t ilen,
                     unsigned char output[16] );
                   void mbedtls_md4( const unsigned char *input,
                                     size_t ilen,
                                     unsigned char output[16] );
int mbedtls_md4_self_test( int verbose );
typedef struct mbedtls_md5_context
{
    uint32_t total[2];
    uint32_t state[4];
    unsigned char buffer[64];
}
mbedtls_md5_context;
void mbedtls_md5_init( mbedtls_md5_context *ctx );
void mbedtls_md5_free( mbedtls_md5_context *ctx );
void mbedtls_md5_clone( mbedtls_md5_context *dst,
                        const mbedtls_md5_context *src );
int mbedtls_md5_starts_ret( mbedtls_md5_context *ctx );
int mbedtls_md5_update_ret( mbedtls_md5_context *ctx,
                            const unsigned char *input,
                            size_t ilen );
int mbedtls_md5_finish_ret( mbedtls_md5_context *ctx,
                            unsigned char output[16] );
int mbedtls_internal_md5_process( mbedtls_md5_context *ctx,
                                  const unsigned char data[64] );
                   void mbedtls_md5_starts( mbedtls_md5_context *ctx );
                   void mbedtls_md5_update( mbedtls_md5_context *ctx,
                                            const unsigned char *input,
                                            size_t ilen );
                   void mbedtls_md5_finish( mbedtls_md5_context *ctx,
                                            unsigned char output[16] );
                   void mbedtls_md5_process( mbedtls_md5_context *ctx,
                                             const unsigned char data[64] );
int mbedtls_md5_ret( const unsigned char *input,
                     size_t ilen,
                     unsigned char output[16] );
                   void mbedtls_md5( const unsigned char *input,
                                     size_t ilen,
                                     unsigned char output[16] );
int mbedtls_md5_self_test( int verbose );
typedef struct mbedtls_ripemd160_context
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
}
mbedtls_ripemd160_context;
void mbedtls_ripemd160_init( mbedtls_ripemd160_context *ctx );
void mbedtls_ripemd160_free( mbedtls_ripemd160_context *ctx );
void mbedtls_ripemd160_clone( mbedtls_ripemd160_context *dst,
                        const mbedtls_ripemd160_context *src );
int mbedtls_ripemd160_starts_ret( mbedtls_ripemd160_context *ctx );
int mbedtls_ripemd160_update_ret( mbedtls_ripemd160_context *ctx,
                                  const unsigned char *input,
                                  size_t ilen );
int mbedtls_ripemd160_finish_ret( mbedtls_ripemd160_context *ctx,
                                  unsigned char output[20] );
int mbedtls_internal_ripemd160_process( mbedtls_ripemd160_context *ctx,
                                        const unsigned char data[64] );
                   void mbedtls_ripemd160_starts(
                                            mbedtls_ripemd160_context *ctx );
                   void mbedtls_ripemd160_update(
                                                mbedtls_ripemd160_context *ctx,
                                                const unsigned char *input,
                                                size_t ilen );
                   void mbedtls_ripemd160_finish(
                                                mbedtls_ripemd160_context *ctx,
                                                unsigned char output[20] );
                   void mbedtls_ripemd160_process(
                                            mbedtls_ripemd160_context *ctx,
                                            const unsigned char data[64] );
int mbedtls_ripemd160_ret( const unsigned char *input,
                           size_t ilen,
                           unsigned char output[20] );
                   void mbedtls_ripemd160( const unsigned char *input,
                                           size_t ilen,
                                           unsigned char output[20] );
int mbedtls_ripemd160_self_test( int verbose );
typedef struct mbedtls_sha1_context
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
}
mbedtls_sha1_context;
void mbedtls_sha1_init( mbedtls_sha1_context *ctx );
void mbedtls_sha1_free( mbedtls_sha1_context *ctx );
void mbedtls_sha1_clone( mbedtls_sha1_context *dst,
                         const mbedtls_sha1_context *src );
int mbedtls_sha1_starts_ret( mbedtls_sha1_context *ctx );
int mbedtls_sha1_update_ret( mbedtls_sha1_context *ctx,
                             const unsigned char *input,
                             size_t ilen );
int mbedtls_sha1_finish_ret( mbedtls_sha1_context *ctx,
                             unsigned char output[20] );
int mbedtls_internal_sha1_process( mbedtls_sha1_context *ctx,
                                   const unsigned char data[64] );
                   void mbedtls_sha1_starts( mbedtls_sha1_context *ctx );
                   void mbedtls_sha1_update( mbedtls_sha1_context *ctx,
                                             const unsigned char *input,
                                             size_t ilen );
                   void mbedtls_sha1_finish( mbedtls_sha1_context *ctx,
                                             unsigned char output[20] );
                   void mbedtls_sha1_process( mbedtls_sha1_context *ctx,
                                              const unsigned char data[64] );
int mbedtls_sha1_ret( const unsigned char *input,
                      size_t ilen,
                      unsigned char output[20] );
                   void mbedtls_sha1( const unsigned char *input,
                                      size_t ilen,
                                      unsigned char output[20] );
int mbedtls_sha1_self_test( int verbose );
typedef struct mbedtls_sha256_context
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
}
mbedtls_sha256_context;
void mbedtls_sha256_init( mbedtls_sha256_context *ctx );
void mbedtls_sha256_free( mbedtls_sha256_context *ctx );
void mbedtls_sha256_clone( mbedtls_sha256_context *dst,
                           const mbedtls_sha256_context *src );
int mbedtls_sha256_starts_ret( mbedtls_sha256_context *ctx, int is224 );
int mbedtls_sha256_update_ret( mbedtls_sha256_context *ctx,
                               const unsigned char *input,
                               size_t ilen );
int mbedtls_sha256_finish_ret( mbedtls_sha256_context *ctx,
                               unsigned char output[32] );
int mbedtls_internal_sha256_process( mbedtls_sha256_context *ctx,
                                     const unsigned char data[64] );
                   void mbedtls_sha256_starts( mbedtls_sha256_context *ctx,
                                               int is224 );
                   void mbedtls_sha256_update( mbedtls_sha256_context *ctx,
                                               const unsigned char *input,
                                               size_t ilen );
                   void mbedtls_sha256_finish( mbedtls_sha256_context *ctx,
                                               unsigned char output[32] );
                   void mbedtls_sha256_process( mbedtls_sha256_context *ctx,
                                                const unsigned char data[64] );
int mbedtls_sha256_ret( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[32],
                        int is224 );
                   void mbedtls_sha256( const unsigned char *input,
                                        size_t ilen,
                                        unsigned char output[32],
                                        int is224 );
int mbedtls_sha256_self_test( int verbose );
typedef struct mbedtls_sha512_context
{
    uint64_t total[2];
    uint64_t state[8];
    unsigned char buffer[128];
    int is384;
}
mbedtls_sha512_context;
void mbedtls_sha512_init( mbedtls_sha512_context *ctx );
void mbedtls_sha512_free( mbedtls_sha512_context *ctx );
void mbedtls_sha512_clone( mbedtls_sha512_context *dst,
                           const mbedtls_sha512_context *src );
int mbedtls_sha512_starts_ret( mbedtls_sha512_context *ctx, int is384 );
int mbedtls_sha512_update_ret( mbedtls_sha512_context *ctx,
                    const unsigned char *input,
                    size_t ilen );
int mbedtls_sha512_finish_ret( mbedtls_sha512_context *ctx,
                               unsigned char output[64] );
int mbedtls_internal_sha512_process( mbedtls_sha512_context *ctx,
                                     const unsigned char data[128] );
                   void mbedtls_sha512_starts( mbedtls_sha512_context *ctx,
                                               int is384 );
                   void mbedtls_sha512_update( mbedtls_sha512_context *ctx,
                                               const unsigned char *input,
                                               size_t ilen );
                   void mbedtls_sha512_finish( mbedtls_sha512_context *ctx,
                                               unsigned char output[64] );
                   void mbedtls_sha512_process(
                                            mbedtls_sha512_context *ctx,
                                            const unsigned char data[128] );
int mbedtls_sha512_ret( const unsigned char *input,
                        size_t ilen,
                        unsigned char output[64],
                        int is384 );
                   void mbedtls_sha512( const unsigned char *input,
                                        size_t ilen,
                                        unsigned char output[64],
                                        int is384 );
int mbedtls_sha512_self_test( int verbose );

struct psa_hash_operation_s
{
    psa_algorithm_t alg;
    union
    {
        unsigned dummy;
        mbedtls_md5_context md5;
        mbedtls_ripemd160_context ripemd160;
        mbedtls_sha1_context sha1;
        mbedtls_sha256_context sha256;
        mbedtls_sha512_context sha512;
    } ctx;
};
static inline struct psa_hash_operation_s psa_hash_operation_init( void )
{
    const struct psa_hash_operation_s v = {0, {0}};
    return( v );
}
typedef struct
{
        struct psa_hash_operation_s hash_ctx;
        uint8_t opad[128];
} psa_hmac_internal_data;
struct psa_mac_operation_s
{
    psa_algorithm_t alg;
    unsigned int key_set : 1;
    unsigned int iv_required : 1;
    unsigned int iv_set : 1;
    unsigned int has_input : 1;
    unsigned int is_sign : 1;
    uint8_t mac_size;
    union
    {
        unsigned dummy;
        psa_hmac_internal_data hmac;
    } ctx;
};
static inline struct psa_mac_operation_s psa_mac_operation_init( void )
{
    const struct psa_mac_operation_s v = {0, 0, 0, 0, 0, 0, 0, {0}};
    return( v );
}
struct psa_cipher_operation_s
{
    psa_algorithm_t alg;
    unsigned int key_set : 1;
    unsigned int iv_required : 1;
    unsigned int iv_set : 1;
    uint8_t iv_size;
    uint8_t block_size;
    union
    {
        unsigned dummy;
        mbedtls_cipher_context_t cipher;
    } ctx;
};
static inline struct psa_cipher_operation_s psa_cipher_operation_init( void )
{
    const struct psa_cipher_operation_s v = {0, 0, 0, 0, 0, 0, {0}};
    return( v );
}
struct psa_aead_operation_s
{
    psa_algorithm_t alg;
    unsigned int key_set : 1;
    unsigned int iv_set : 1;
    uint8_t iv_size;
    uint8_t block_size;
    union
    {
        unsigned dummy;
        mbedtls_cipher_context_t cipher;
    } ctx;
};
static inline struct psa_aead_operation_s psa_aead_operation_init( void )
{
    const struct psa_aead_operation_s v = {0, 0, 0, 0, 0, {0}};
    return( v );
}
typedef struct
{
    uint8_t *info;
    size_t info_length;
    psa_hmac_internal_data hmac;
    uint8_t prk[64];
    uint8_t output_block[64];
    uint8_t offset_in_block;
    uint8_t block_number;
    unsigned int state : 2;
    unsigned int info_set : 1;
} psa_hkdf_key_derivation_t;
typedef enum
{
    TLS12_PRF_STATE_INIT,
    TLS12_PRF_STATE_SEED_SET,
    TLS12_PRF_STATE_KEY_SET,
    TLS12_PRF_STATE_LABEL_SET,
    TLS12_PRF_STATE_OUTPUT
} psa_tls12_prf_key_derivation_state_t;
typedef struct psa_tls12_prf_key_derivation_s
{
    uint8_t left_in_block;
    uint8_t block_number;
    psa_tls12_prf_key_derivation_state_t state;
    uint8_t *seed;
    size_t seed_length;
    uint8_t *label;
    size_t label_length;
    psa_hmac_internal_data hmac;
    uint8_t Ai[64];
    uint8_t output_block[64];
} psa_tls12_prf_key_derivation_t;
struct psa_key_derivation_s
{
    psa_algorithm_t alg;
    unsigned int can_output_key : 1;
    size_t capacity;
    union
    {
        uint8_t dummy;
        psa_hkdf_key_derivation_t hkdf;
        psa_tls12_prf_key_derivation_t tls12_prf;
    } ctx;
};
static inline struct psa_key_derivation_s psa_key_derivation_operation_init( void )
{
    const struct psa_key_derivation_s v = {0, 0, 0, {0}};
    return( v );
}
struct psa_key_policy_s
{
    psa_key_usage_t usage;
    psa_algorithm_t alg;
    psa_algorithm_t alg2;
};
typedef struct psa_key_policy_s psa_key_policy_t;
static inline struct psa_key_policy_s psa_key_policy_init( void )
{
    const struct psa_key_policy_s v = {0, 0, 0};
    return( v );
}
typedef uint16_t psa_key_bits_t;
typedef uint16_t psa_key_attributes_flag_t;
typedef struct
{
    psa_key_type_t type;
    psa_key_bits_t bits;
    psa_key_lifetime_t lifetime;
    psa_key_id_t id;
    psa_key_policy_t policy;
    psa_key_attributes_flag_t flags;
} psa_core_key_attributes_t;
struct psa_key_attributes_s
{
    psa_core_key_attributes_t core;
    void *domain_parameters;
    size_t domain_parameters_size;
};
static inline struct psa_key_attributes_s psa_key_attributes_init( void )
{
    const struct psa_key_attributes_s v = {{((psa_key_type_t)0x0000), 0, ((psa_key_lifetime_t)0x00000000), 0, {0, 0, 0}, 0}, ((void*)0), 0};
    return( v );
}
static inline void psa_set_key_id(psa_key_attributes_t *attributes,
                                  psa_key_id_t id)
{
    attributes->core.id = id;
    if( attributes->core.lifetime == ((psa_key_lifetime_t)0x00000000) )
        attributes->core.lifetime = ((psa_key_lifetime_t)0x00000001);
}
static inline psa_key_id_t psa_get_key_id(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.id );
}
static inline void psa_set_key_lifetime(psa_key_attributes_t *attributes,
                                        psa_key_lifetime_t lifetime)
{
    attributes->core.lifetime = lifetime;
    if( lifetime == ((psa_key_lifetime_t)0x00000000) )
    {
        attributes->core.id = 0;
    }
}
static inline psa_key_lifetime_t psa_get_key_lifetime(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.lifetime );
}
static inline void psa_set_key_usage_flags(psa_key_attributes_t *attributes,
                                           psa_key_usage_t usage_flags)
{
    attributes->core.policy.usage = usage_flags;
}
static inline psa_key_usage_t psa_get_key_usage_flags(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.policy.usage );
}
static inline void psa_set_key_algorithm(psa_key_attributes_t *attributes,
                                         psa_algorithm_t alg)
{
    attributes->core.policy.alg = alg;
}
static inline psa_algorithm_t psa_get_key_algorithm(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.policy.alg );
}
psa_status_t psa_set_key_domain_parameters(psa_key_attributes_t *attributes,
                                           psa_key_type_t type,
                                           const uint8_t *data,
                                           size_t data_length);
static inline void psa_set_key_type(psa_key_attributes_t *attributes,
                                    psa_key_type_t type)
{
    if( attributes->domain_parameters == ((void*)0) )
    {
        attributes->core.type = type;
    }
    else
    {
        (void) psa_set_key_domain_parameters( attributes, type, ((void*)0), 0 );
    }
}
static inline psa_key_type_t psa_get_key_type(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.type );
}
static inline void psa_set_key_bits(psa_key_attributes_t *attributes,
                                    size_t bits)
{
    if( bits > 0xfff8 )
        attributes->core.bits = ( (psa_key_bits_t) ( -1 ) );
    else
        attributes->core.bits = (psa_key_bits_t) bits;
}
static inline size_t psa_get_key_bits(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.bits );
}
typedef size_t mbedtls_deprecated_size_t;
typedef psa_status_t mbedtls_deprecated_psa_status_t;
typedef psa_key_usage_t mbedtls_deprecated_psa_key_usage_t;
typedef psa_ecc_family_t mbedtls_deprecated_psa_ecc_family_t;
typedef psa_dh_family_t mbedtls_deprecated_psa_dh_family_t;
typedef psa_ecc_family_t psa_ecc_curve_t;
typedef psa_dh_family_t psa_dh_group_t;
                       static inline psa_status_t psa_asymmetric_sign( psa_key_handle_t key,
                            psa_algorithm_t alg,
                            const uint8_t *hash,
                            size_t hash_length,
                            uint8_t *signature,
                            size_t signature_size,
                            size_t *signature_length )
{
    return psa_sign_hash( key, alg, hash, hash_length, signature, signature_size, signature_length );
}
                       static inline psa_status_t psa_asymmetric_verify( psa_key_handle_t key,
                              psa_algorithm_t alg,
                              const uint8_t *hash,
                              size_t hash_length,
                              const uint8_t *signature,
                              size_t signature_length )
{
    return psa_verify_hash( key, alg, hash, hash_length, signature, signature_length );
}
static inline void psa_set_key_enrollment_algorithm(
    psa_key_attributes_t *attributes,
    psa_algorithm_t alg2)
{
    attributes->core.policy.alg2 = alg2;
}
static inline psa_algorithm_t psa_get_key_enrollment_algorithm(
    const psa_key_attributes_t *attributes)
{
    return( attributes->core.policy.alg2 );
}
void mbedtls_psa_crypto_free( void );
typedef struct mbedtls_psa_stats_s
{
    size_t volatile_slots;
    size_t persistent_slots;
    size_t external_slots;
    size_t half_filled_slots;
    size_t cache_slots;
    size_t empty_slots;
    psa_app_key_id_t max_open_internal_key_id;
    psa_app_key_id_t max_open_external_key_id;
} mbedtls_psa_stats_t;
void mbedtls_psa_get_stats( mbedtls_psa_stats_t *stats );
psa_status_t mbedtls_psa_inject_entropy(const uint8_t *seed,
                                        size_t seed_size);
psa_status_t psa_set_key_domain_parameters(psa_key_attributes_t *attributes,
                                           psa_key_type_t type,
                                           const uint8_t *data,
                                           size_t data_length);
psa_status_t psa_get_key_domain_parameters(
    const psa_key_attributes_t *attributes,
    uint8_t *data,
    size_t data_size,
    size_t *data_length);
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
 typedef int64_t mbedtls_mpi_sint;
        typedef uint64_t mbedtls_mpi_uint;
            typedef unsigned int mbedtls_t_udbl __attribute__((mode(TI)));
typedef struct mbedtls_mpi
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
void mbedtls_mpi_init( mbedtls_mpi *X );
void mbedtls_mpi_free( mbedtls_mpi *X );
int mbedtls_mpi_grow( mbedtls_mpi *X, size_t nblimbs );
int mbedtls_mpi_shrink( mbedtls_mpi *X, size_t nblimbs );
int mbedtls_mpi_copy( mbedtls_mpi *X, const mbedtls_mpi *Y );
void mbedtls_mpi_swap( mbedtls_mpi *X, mbedtls_mpi *Y );
int mbedtls_mpi_safe_cond_assign( mbedtls_mpi *X, const mbedtls_mpi *Y, unsigned char assign );
int mbedtls_mpi_safe_cond_swap( mbedtls_mpi *X, mbedtls_mpi *Y, unsigned char assign );
int mbedtls_mpi_lset( mbedtls_mpi *X, mbedtls_mpi_sint z );
int mbedtls_mpi_get_bit( const mbedtls_mpi *X, size_t pos );
int mbedtls_mpi_set_bit( mbedtls_mpi *X, size_t pos, unsigned char val );
size_t mbedtls_mpi_lsb( const mbedtls_mpi *X );
size_t mbedtls_mpi_bitlen( const mbedtls_mpi *X );
size_t mbedtls_mpi_size( const mbedtls_mpi *X );
int mbedtls_mpi_read_string( mbedtls_mpi *X, int radix, const char *s );
int mbedtls_mpi_write_string( const mbedtls_mpi *X, int radix,
                              char *buf, size_t buflen, size_t *olen );
int mbedtls_mpi_read_file( mbedtls_mpi *X, int radix, FILE *fin );
int mbedtls_mpi_write_file( const char *p, const mbedtls_mpi *X,
                            int radix, FILE *fout );
int mbedtls_mpi_read_binary( mbedtls_mpi *X, const unsigned char *buf,
                             size_t buflen );
int mbedtls_mpi_read_binary_le( mbedtls_mpi *X,
                                const unsigned char *buf, size_t buflen );
int mbedtls_mpi_write_binary( const mbedtls_mpi *X, unsigned char *buf,
                              size_t buflen );
int mbedtls_mpi_write_binary_le( const mbedtls_mpi *X,
                                 unsigned char *buf, size_t buflen );
int mbedtls_mpi_shift_l( mbedtls_mpi *X, size_t count );
int mbedtls_mpi_shift_r( mbedtls_mpi *X, size_t count );
int mbedtls_mpi_cmp_abs( const mbedtls_mpi *X, const mbedtls_mpi *Y );
int mbedtls_mpi_cmp_mpi( const mbedtls_mpi *X, const mbedtls_mpi *Y );
int mbedtls_mpi_lt_mpi_ct( const mbedtls_mpi *X, const mbedtls_mpi *Y,
        unsigned *ret );
int mbedtls_mpi_cmp_int( const mbedtls_mpi *X, mbedtls_mpi_sint z );
int mbedtls_mpi_add_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_sub_abs( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_add_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_sub_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_add_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_sub_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_mul_mpi( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_mul_int( mbedtls_mpi *X, const mbedtls_mpi *A,
                         mbedtls_mpi_uint b );
int mbedtls_mpi_div_mpi( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_div_int( mbedtls_mpi *Q, mbedtls_mpi *R, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_mod_mpi( mbedtls_mpi *R, const mbedtls_mpi *A,
                         const mbedtls_mpi *B );
int mbedtls_mpi_mod_int( mbedtls_mpi_uint *r, const mbedtls_mpi *A,
                         mbedtls_mpi_sint b );
int mbedtls_mpi_exp_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *E, const mbedtls_mpi *N,
                         mbedtls_mpi *_RR );
int mbedtls_mpi_fill_random( mbedtls_mpi *X, size_t size,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_mpi_gcd( mbedtls_mpi *G, const mbedtls_mpi *A,
                     const mbedtls_mpi *B );
int mbedtls_mpi_inv_mod( mbedtls_mpi *X, const mbedtls_mpi *A,
                         const mbedtls_mpi *N );
                   int mbedtls_mpi_is_prime( const mbedtls_mpi *X,
                          int (*f_rng)(void *, unsigned char *, size_t),
                          void *p_rng );
int mbedtls_mpi_is_prime_ext( const mbedtls_mpi *X, int rounds,
                              int (*f_rng)(void *, unsigned char *, size_t),
                              void *p_rng );
typedef enum {
    MBEDTLS_MPI_GEN_PRIME_FLAG_DH = 0x0001,
    MBEDTLS_MPI_GEN_PRIME_FLAG_LOW_ERR = 0x0002,
} mbedtls_mpi_gen_prime_flag_t;
int mbedtls_mpi_gen_prime( mbedtls_mpi *X, size_t nbits, int flags,
                   int (*f_rng)(void *, unsigned char *, size_t),
                   void *p_rng );
int mbedtls_mpi_self_test( int verbose );
typedef enum
{
    MBEDTLS_ECP_DP_NONE = 0,
    MBEDTLS_ECP_DP_SECP192R1,
    MBEDTLS_ECP_DP_SECP224R1,
    MBEDTLS_ECP_DP_SECP256R1,
    MBEDTLS_ECP_DP_SECP384R1,
    MBEDTLS_ECP_DP_SECP521R1,
    MBEDTLS_ECP_DP_BP256R1,
    MBEDTLS_ECP_DP_BP384R1,
    MBEDTLS_ECP_DP_BP512R1,
    MBEDTLS_ECP_DP_CURVE25519,
    MBEDTLS_ECP_DP_SECP192K1,
    MBEDTLS_ECP_DP_SECP224K1,
    MBEDTLS_ECP_DP_SECP256K1,
    MBEDTLS_ECP_DP_CURVE448,
} mbedtls_ecp_group_id;
typedef enum
{
    MBEDTLS_ECP_TYPE_NONE = 0,
    MBEDTLS_ECP_TYPE_SHORT_WEIERSTRASS,
    MBEDTLS_ECP_TYPE_MONTGOMERY,
} mbedtls_ecp_curve_type;
typedef struct mbedtls_ecp_curve_info
{
    mbedtls_ecp_group_id grp_id;
    uint16_t tls_id;
    uint16_t bit_size;
    const char *name;
} mbedtls_ecp_curve_info;
typedef struct mbedtls_ecp_point
{
    mbedtls_mpi X;
    mbedtls_mpi Y;
    mbedtls_mpi Z;
}
mbedtls_ecp_point;
typedef struct mbedtls_ecp_group
{
    mbedtls_ecp_group_id id;
    mbedtls_mpi P;
    mbedtls_mpi A;
    mbedtls_mpi B;
    mbedtls_ecp_point G;
    mbedtls_mpi N;
    size_t pbits;
    size_t nbits;
    unsigned int h;
    int (*modp)(mbedtls_mpi *);
    int (*t_pre)(mbedtls_ecp_point *, void *);
    int (*t_post)(mbedtls_ecp_point *, void *);
    void *t_data;
    mbedtls_ecp_point *T;
    size_t T_size;
}
mbedtls_ecp_group;
typedef void mbedtls_ecp_restart_ctx;
typedef struct mbedtls_ecp_keypair
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
}
mbedtls_ecp_keypair;
mbedtls_ecp_curve_type mbedtls_ecp_get_type( const mbedtls_ecp_group *grp );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_list( void );
const mbedtls_ecp_group_id *mbedtls_ecp_grp_id_list( void );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_grp_id( mbedtls_ecp_group_id grp_id );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_tls_id( uint16_t tls_id );
const mbedtls_ecp_curve_info *mbedtls_ecp_curve_info_from_name( const char *name );
void mbedtls_ecp_point_init( mbedtls_ecp_point *pt );
void mbedtls_ecp_group_init( mbedtls_ecp_group *grp );
void mbedtls_ecp_keypair_init( mbedtls_ecp_keypair *key );
void mbedtls_ecp_point_free( mbedtls_ecp_point *pt );
void mbedtls_ecp_group_free( mbedtls_ecp_group *grp );
void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key );
int mbedtls_ecp_copy( mbedtls_ecp_point *P, const mbedtls_ecp_point *Q );
int mbedtls_ecp_group_copy( mbedtls_ecp_group *dst,
                            const mbedtls_ecp_group *src );
int mbedtls_ecp_set_zero( mbedtls_ecp_point *pt );
int mbedtls_ecp_is_zero( mbedtls_ecp_point *pt );
int mbedtls_ecp_point_cmp( const mbedtls_ecp_point *P,
                           const mbedtls_ecp_point *Q );
int mbedtls_ecp_point_read_string( mbedtls_ecp_point *P, int radix,
                           const char *x, const char *y );
int mbedtls_ecp_point_write_binary( const mbedtls_ecp_group *grp,
                                    const mbedtls_ecp_point *P,
                                    int format, size_t *olen,
                                    unsigned char *buf, size_t buflen );
int mbedtls_ecp_point_read_binary( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *P,
                                   const unsigned char *buf, size_t ilen );
int mbedtls_ecp_tls_read_point( const mbedtls_ecp_group *grp,
                                mbedtls_ecp_point *pt,
                                const unsigned char **buf, size_t len );
int mbedtls_ecp_tls_write_point( const mbedtls_ecp_group *grp,
                                 const mbedtls_ecp_point *pt,
                                 int format, size_t *olen,
                                 unsigned char *buf, size_t blen );
int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id );
int mbedtls_ecp_tls_read_group( mbedtls_ecp_group *grp,
                                const unsigned char **buf, size_t len );
int mbedtls_ecp_tls_read_group_id( mbedtls_ecp_group_id *grp,
                                   const unsigned char **buf,
                                   size_t len );
int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp,
                                 size_t *olen,
                                 unsigned char *buf, size_t blen );
int mbedtls_ecp_mul( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecp_mul_restartable( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_ecp_restart_ctx *rs_ctx );
int mbedtls_ecp_muladd( mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q );
int mbedtls_ecp_muladd_restartable(
             mbedtls_ecp_group *grp, mbedtls_ecp_point *R,
             const mbedtls_mpi *m, const mbedtls_ecp_point *P,
             const mbedtls_mpi *n, const mbedtls_ecp_point *Q,
             mbedtls_ecp_restart_ctx *rs_ctx );
int mbedtls_ecp_check_pubkey( const mbedtls_ecp_group *grp,
                              const mbedtls_ecp_point *pt );
int mbedtls_ecp_check_privkey( const mbedtls_ecp_group *grp,
                               const mbedtls_mpi *d );
int mbedtls_ecp_gen_privkey( const mbedtls_ecp_group *grp,
                     mbedtls_mpi *d,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_ecp_gen_keypair_base( mbedtls_ecp_group *grp,
                                  const mbedtls_ecp_point *G,
                                  mbedtls_mpi *d, mbedtls_ecp_point *Q,
                                  int (*f_rng)(void *, unsigned char *, size_t),
                                  void *p_rng );
int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp, mbedtls_mpi *d,
                             mbedtls_ecp_point *Q,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng );
int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
int mbedtls_ecp_read_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                          const unsigned char *buf, size_t buflen );
int mbedtls_ecp_write_key( mbedtls_ecp_keypair *key,
                           unsigned char *buf, size_t buflen );
int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub,
                                const mbedtls_ecp_keypair *prv );
int mbedtls_ecp_self_test( int verbose );
static inline psa_ecc_family_t mbedtls_ecc_group_to_psa( mbedtls_ecp_group_id grpid,
                                                        size_t *bits )
{
    switch( grpid )
    {
        case MBEDTLS_ECP_DP_SECP192R1:
            *bits = 192;
            return( ((psa_ecc_family_t) 0x12) );
        case MBEDTLS_ECP_DP_SECP224R1:
            *bits = 224;
            return( ((psa_ecc_family_t) 0x12) );
        case MBEDTLS_ECP_DP_SECP256R1:
            *bits = 256;
            return( ((psa_ecc_family_t) 0x12) );
        case MBEDTLS_ECP_DP_SECP384R1:
            *bits = 384;
            return( ((psa_ecc_family_t) 0x12) );
        case MBEDTLS_ECP_DP_SECP521R1:
            *bits = 521;
            return( ((psa_ecc_family_t) 0x12) );
        case MBEDTLS_ECP_DP_BP256R1:
            *bits = 256;
            return( ((psa_ecc_family_t) 0x30) );
        case MBEDTLS_ECP_DP_BP384R1:
            *bits = 384;
            return( ((psa_ecc_family_t) 0x30) );
        case MBEDTLS_ECP_DP_BP512R1:
            *bits = 512;
            return( ((psa_ecc_family_t) 0x30) );
        case MBEDTLS_ECP_DP_CURVE25519:
            *bits = 255;
            return( ((psa_ecc_family_t) 0x41) );
        case MBEDTLS_ECP_DP_SECP192K1:
            *bits = 192;
            return( ((psa_ecc_family_t) 0x17) );
        case MBEDTLS_ECP_DP_SECP224K1:
            *bits = 224;
            return( ((psa_ecc_family_t) 0x17) );
        case MBEDTLS_ECP_DP_SECP256K1:
            *bits = 256;
            return( ((psa_ecc_family_t) 0x17) );
        case MBEDTLS_ECP_DP_CURVE448:
            *bits = 448;
            return( ((psa_ecc_family_t) 0x41) );
        default:
            *bits = 0;
            return( 0 );
    }
}
mbedtls_ecp_group_id mbedtls_ecc_group_of_psa( psa_ecc_family_t curve,
                                               size_t byte_length );

typedef enum {
    PSA_CRYPTO_DRIVER_DECRYPT,
    PSA_CRYPTO_DRIVER_ENCRYPT
} psa_encrypt_or_decrypt_t;
typedef struct {
    const void *const persistent_data;
    const size_t persistent_data_size;
    uintptr_t transient_data;
} psa_drv_se_context_t;
typedef psa_status_t (*psa_drv_se_init_t)(psa_drv_se_context_t *drv_context,
                                          void *persistent_data,
                                          psa_key_location_t location);
typedef uint64_t psa_key_slot_number_t;
typedef psa_status_t (*psa_drv_se_mac_setup_t)(psa_drv_se_context_t *drv_context,
                                               void *op_context,
                                               psa_key_slot_number_t key_slot,
                                               psa_algorithm_t algorithm);
typedef psa_status_t (*psa_drv_se_mac_update_t)(void *op_context,
                                                const uint8_t *p_input,
                                                size_t input_length);
typedef psa_status_t (*psa_drv_se_mac_finish_t)(void *op_context,
                                                uint8_t *p_mac,
                                                size_t mac_size,
                                                size_t *p_mac_length);
typedef psa_status_t (*psa_drv_se_mac_finish_verify_t)(void *op_context,
                                                       const uint8_t *p_mac,
                                                       size_t mac_length);
typedef psa_status_t (*psa_drv_se_mac_abort_t)(void *op_context);
typedef psa_status_t (*psa_drv_se_mac_generate_t)(psa_drv_se_context_t *drv_context,
                                                  const uint8_t *p_input,
                                                  size_t input_length,
                                                  psa_key_slot_number_t key_slot,
                                                  psa_algorithm_t alg,
                                                  uint8_t *p_mac,
                                                  size_t mac_size,
                                                  size_t *p_mac_length);
typedef psa_status_t (*psa_drv_se_mac_verify_t)(psa_drv_se_context_t *drv_context,
                                                const uint8_t *p_input,
                                                size_t input_length,
                                                psa_key_slot_number_t key_slot,
                                                psa_algorithm_t alg,
                                                const uint8_t *p_mac,
                                                size_t mac_length);
typedef struct {
    size_t context_size;
    psa_drv_se_mac_setup_t p_setup;
    psa_drv_se_mac_update_t p_update;
    psa_drv_se_mac_finish_t p_finish;
    psa_drv_se_mac_finish_verify_t p_finish_verify;
    psa_drv_se_mac_abort_t p_abort;
    psa_drv_se_mac_generate_t p_mac;
    psa_drv_se_mac_verify_t p_mac_verify;
} psa_drv_se_mac_t;
typedef psa_status_t (*psa_drv_se_cipher_setup_t)(psa_drv_se_context_t *drv_context,
                                                  void *op_context,
                                                  psa_key_slot_number_t key_slot,
                                                  psa_algorithm_t algorithm,
                                                  psa_encrypt_or_decrypt_t direction);
typedef psa_status_t (*psa_drv_se_cipher_set_iv_t)(void *op_context,
                                                   const uint8_t *p_iv,
                                                   size_t iv_length);
typedef psa_status_t (*psa_drv_se_cipher_update_t)(void *op_context,
                                                   const uint8_t *p_input,
                                                   size_t input_size,
                                                   uint8_t *p_output,
                                                   size_t output_size,
                                                   size_t *p_output_length);
typedef psa_status_t (*psa_drv_se_cipher_finish_t)(void *op_context,
                                                   uint8_t *p_output,
                                                   size_t output_size,
                                                   size_t *p_output_length);
typedef psa_status_t (*psa_drv_se_cipher_abort_t)(void *op_context);
typedef psa_status_t (*psa_drv_se_cipher_ecb_t)(psa_drv_se_context_t *drv_context,
                                                psa_key_slot_number_t key_slot,
                                                psa_algorithm_t algorithm,
                                                psa_encrypt_or_decrypt_t direction,
                                                const uint8_t *p_input,
                                                size_t input_size,
                                                uint8_t *p_output,
                                                size_t output_size);
typedef struct {
    size_t context_size;
    psa_drv_se_cipher_setup_t p_setup;
    psa_drv_se_cipher_set_iv_t p_set_iv;
    psa_drv_se_cipher_update_t p_update;
    psa_drv_se_cipher_finish_t p_finish;
    psa_drv_se_cipher_abort_t p_abort;
    psa_drv_se_cipher_ecb_t p_ecb;
} psa_drv_se_cipher_t;
typedef psa_status_t (*psa_drv_se_asymmetric_sign_t)(psa_drv_se_context_t *drv_context,
                                                     psa_key_slot_number_t key_slot,
                                                     psa_algorithm_t alg,
                                                     const uint8_t *p_hash,
                                                     size_t hash_length,
                                                     uint8_t *p_signature,
                                                     size_t signature_size,
                                                     size_t *p_signature_length);
typedef psa_status_t (*psa_drv_se_asymmetric_verify_t)(psa_drv_se_context_t *drv_context,
                                                       psa_key_slot_number_t key_slot,
                                                       psa_algorithm_t alg,
                                                       const uint8_t *p_hash,
                                                       size_t hash_length,
                                                       const uint8_t *p_signature,
                                                       size_t signature_length);
typedef psa_status_t (*psa_drv_se_asymmetric_encrypt_t)(psa_drv_se_context_t *drv_context,
                                                        psa_key_slot_number_t key_slot,
                                                        psa_algorithm_t alg,
                                                        const uint8_t *p_input,
                                                        size_t input_length,
                                                        const uint8_t *p_salt,
                                                        size_t salt_length,
                                                        uint8_t *p_output,
                                                        size_t output_size,
                                                        size_t *p_output_length);
typedef psa_status_t (*psa_drv_se_asymmetric_decrypt_t)(psa_drv_se_context_t *drv_context,
                                                        psa_key_slot_number_t key_slot,
                                                        psa_algorithm_t alg,
                                                        const uint8_t *p_input,
                                                        size_t input_length,
                                                        const uint8_t *p_salt,
                                                        size_t salt_length,
                                                        uint8_t *p_output,
                                                        size_t output_size,
                                                        size_t *p_output_length);
typedef struct {
    psa_drv_se_asymmetric_sign_t p_sign;
    psa_drv_se_asymmetric_verify_t p_verify;
    psa_drv_se_asymmetric_encrypt_t p_encrypt;
    psa_drv_se_asymmetric_decrypt_t p_decrypt;
} psa_drv_se_asymmetric_t;
typedef psa_status_t (*psa_drv_se_aead_encrypt_t)(psa_drv_se_context_t *drv_context,
                                                  psa_key_slot_number_t key_slot,
                                                  psa_algorithm_t algorithm,
                                                  const uint8_t *p_nonce,
                                                  size_t nonce_length,
                                                  const uint8_t *p_additional_data,
                                                  size_t additional_data_length,
                                                  const uint8_t *p_plaintext,
                                                  size_t plaintext_length,
                                                  uint8_t *p_ciphertext,
                                                  size_t ciphertext_size,
                                                  size_t *p_ciphertext_length);
typedef psa_status_t (*psa_drv_se_aead_decrypt_t)(psa_drv_se_context_t *drv_context,
                                                  psa_key_slot_number_t key_slot,
                                                  psa_algorithm_t algorithm,
                                                  const uint8_t *p_nonce,
                                                  size_t nonce_length,
                                                  const uint8_t *p_additional_data,
                                                  size_t additional_data_length,
                                                  const uint8_t *p_ciphertext,
                                                  size_t ciphertext_length,
                                                  uint8_t *p_plaintext,
                                                  size_t plaintext_size,
                                                  size_t *p_plaintext_length);
typedef struct {
    psa_drv_se_aead_encrypt_t p_encrypt;
    psa_drv_se_aead_decrypt_t p_decrypt;
} psa_drv_se_aead_t;
typedef enum
{
    PSA_KEY_CREATION_IMPORT,
    PSA_KEY_CREATION_GENERATE,
    PSA_KEY_CREATION_DERIVE,
    PSA_KEY_CREATION_COPY,
    PSA_KEY_CREATION_REGISTER,
} psa_key_creation_method_t;
typedef psa_status_t (*psa_drv_se_allocate_key_t)(
    psa_drv_se_context_t *drv_context,
    void *persistent_data,
    const psa_key_attributes_t *attributes,
    psa_key_creation_method_t method,
    psa_key_slot_number_t *key_slot);
typedef psa_status_t (*psa_drv_se_validate_slot_number_t)(
    psa_drv_se_context_t *drv_context,
    void *persistent_data,
    const psa_key_attributes_t *attributes,
    psa_key_creation_method_t method,
    psa_key_slot_number_t key_slot);
typedef psa_status_t (*psa_drv_se_import_key_t)(
    psa_drv_se_context_t *drv_context,
    psa_key_slot_number_t key_slot,
    const psa_key_attributes_t *attributes,
    const uint8_t *data,
    size_t data_length,
    size_t *bits);
typedef psa_status_t (*psa_drv_se_destroy_key_t)(
    psa_drv_se_context_t *drv_context,
    void *persistent_data,
    psa_key_slot_number_t key_slot);
typedef psa_status_t (*psa_drv_se_export_key_t)(psa_drv_se_context_t *drv_context,
                                                psa_key_slot_number_t key,
                                                uint8_t *p_data,
                                                size_t data_size,
                                                size_t *p_data_length);
typedef psa_status_t (*psa_drv_se_generate_key_t)(
    psa_drv_se_context_t *drv_context,
    psa_key_slot_number_t key_slot,
    const psa_key_attributes_t *attributes,
    uint8_t *pubkey, size_t pubkey_size, size_t *pubkey_length);
typedef struct {
    psa_drv_se_allocate_key_t p_allocate;
    psa_drv_se_validate_slot_number_t p_validate_slot_number;
    psa_drv_se_import_key_t p_import;
    psa_drv_se_generate_key_t p_generate;
    psa_drv_se_destroy_key_t p_destroy;
    psa_drv_se_export_key_t p_export;
    psa_drv_se_export_key_t p_export_public;
} psa_drv_se_key_management_t;
typedef psa_status_t (*psa_drv_se_key_derivation_setup_t)(psa_drv_se_context_t *drv_context,
                                                          void *op_context,
                                                          psa_algorithm_t kdf_alg,
                                                          psa_key_slot_number_t source_key);
typedef psa_status_t (*psa_drv_se_key_derivation_collateral_t)(void *op_context,
                                                               uint32_t collateral_id,
                                                               const uint8_t *p_collateral,
                                                               size_t collateral_size);
typedef psa_status_t (*psa_drv_se_key_derivation_derive_t)(void *op_context,
                                                          psa_key_slot_number_t dest_key);
typedef psa_status_t (*psa_drv_se_key_derivation_export_t)(void *op_context,
                                                           uint8_t *p_output,
                                                           size_t output_size,
                                                           size_t *p_output_length);
typedef struct {
    size_t context_size;
    psa_drv_se_key_derivation_setup_t p_setup;
    psa_drv_se_key_derivation_collateral_t p_collateral;
    psa_drv_se_key_derivation_derive_t p_derive;
    psa_drv_se_key_derivation_export_t p_export;
} psa_drv_se_key_derivation_t;
typedef struct {
    uint32_t hal_version;
    size_t persistent_data_size;
    psa_drv_se_init_t p_init;
    const psa_drv_se_key_management_t *key_management;
    const psa_drv_se_mac_t *mac;
    const psa_drv_se_cipher_t *cipher;
    const psa_drv_se_aead_t *aead;
    const psa_drv_se_asymmetric_t *asymmetric;
    const psa_drv_se_key_derivation_t *derivation;
} psa_drv_se_t;
psa_status_t psa_register_se_driver(
    psa_key_location_t location,
    const psa_drv_se_t *methods);
typedef struct
{
    psa_core_key_attributes_t attr;
    union
    {
        struct key_data
        {
            uint8_t *data;
            size_t bytes;
        } key;
    } data;
} psa_key_slot_t;
static inline int psa_is_key_slot_occupied( const psa_key_slot_t *slot )
{
    return( slot->attr.type != 0 );
}
static inline uint16_t psa_key_slot_get_flags( const psa_key_slot_t *slot,
                                               uint16_t mask )
{
    return( slot->attr.flags & mask );
}
static inline void psa_key_slot_set_flags( psa_key_slot_t *slot,
                                           uint16_t mask,
                                           uint16_t value )
{
    slot->attr.flags = ( ( ~mask & slot->attr.flags ) |
                              ( mask & value ) );
}
static inline void psa_key_slot_set_bits_in_flags( psa_key_slot_t *slot,
                                                   uint16_t mask )
{
    slot->attr.flags |= mask;
}
static inline void psa_key_slot_clear_bits( psa_key_slot_t *slot,
                                            uint16_t mask )
{
    slot->attr.flags &= ~mask;
}
psa_status_t psa_wipe_key_slot( psa_key_slot_t *slot );
psa_status_t psa_import_key_into_slot( psa_key_slot_t *slot,
                                       const uint8_t *data,
                                       size_t data_length );
typedef int (*mbedtls_entropy_f_source_ptr)(void *data, unsigned char *output, size_t len,
                            size_t *olen);
typedef struct mbedtls_entropy_source_state
{
    mbedtls_entropy_f_source_ptr f_source;
    void * p_source;
    size_t size;
    size_t threshold;
    int strong;
}
mbedtls_entropy_source_state;
typedef struct mbedtls_entropy_context
{
    int accumulator_started;
    mbedtls_sha512_context accumulator;
    int source_count;
    mbedtls_entropy_source_state source[20];
}
mbedtls_entropy_context;
void mbedtls_entropy_init( mbedtls_entropy_context *ctx );
void mbedtls_entropy_free( mbedtls_entropy_context *ctx );
int mbedtls_entropy_add_source( mbedtls_entropy_context *ctx,
                        mbedtls_entropy_f_source_ptr f_source, void *p_source,
                        size_t threshold, int strong );
int mbedtls_entropy_gather( mbedtls_entropy_context *ctx );
int mbedtls_entropy_func( void *data, unsigned char *output, size_t len );
int mbedtls_entropy_update_manual( mbedtls_entropy_context *ctx,
                           const unsigned char *data, size_t len );
int mbedtls_entropy_write_seed_file( mbedtls_entropy_context *ctx, const char *path );
int mbedtls_entropy_update_seed_file( mbedtls_entropy_context *ctx, const char *path );
int mbedtls_entropy_self_test( int verbose );
psa_status_t mbedtls_psa_crypto_configure_entropy_sources(
    void (* entropy_init )( mbedtls_entropy_context *ctx ),
    void (* entropy_free )( mbedtls_entropy_context *ctx ) );
void psa_unregister_all_se_drivers( void );
psa_status_t psa_init_all_se_drivers( void );
typedef struct psa_se_drv_table_entry_s psa_se_drv_table_entry_t;
int psa_get_se_driver( psa_key_lifetime_t lifetime,
                       const psa_drv_se_t **p_methods,
                       psa_drv_se_context_t **p_drv_context);
psa_se_drv_table_entry_t *psa_get_se_driver_entry(
    psa_key_lifetime_t lifetime );
const psa_drv_se_t *psa_get_se_driver_methods(
    const psa_se_drv_table_entry_t *driver );
psa_drv_se_context_t *psa_get_se_driver_context(
    psa_se_drv_table_entry_t *driver );
psa_status_t psa_find_se_slot_for_key(
    const psa_key_attributes_t *attributes,
    psa_key_creation_method_t method,
    psa_se_drv_table_entry_t *driver,
    psa_key_slot_number_t *slot_number );
psa_status_t psa_destroy_se_key( psa_se_drv_table_entry_t *driver,
                                 psa_key_slot_number_t slot_number );
psa_status_t psa_load_se_persistent_data(
    const psa_se_drv_table_entry_t *driver );
psa_status_t psa_save_se_persistent_data(
    const psa_se_drv_table_entry_t *driver );
psa_status_t psa_destroy_se_persistent_data( psa_key_location_t location );
typedef struct
{
    uint8_t slot_number[sizeof( psa_key_slot_number_t )];
    uint8_t bits[sizeof( psa_key_bits_t )];
} psa_se_key_data_storage_t;
psa_status_t psa_get_key_slot( psa_key_handle_t handle,
                               psa_key_slot_t **p_slot );
psa_status_t psa_initialize_key_slots( void );
void psa_wipe_all_key_slots( void );
psa_status_t psa_get_empty_key_slot( psa_key_handle_t *handle,
                                     psa_key_slot_t **p_slot );
static inline int psa_key_lifetime_is_external( psa_key_lifetime_t lifetime )
{
    return( ((psa_key_location_t)((lifetime) >> 8))
                != ((psa_key_location_t)0x000000) );
}
psa_status_t psa_validate_key_location( psa_key_lifetime_t lifetime,
                                        psa_se_drv_table_entry_t **p_drv );
psa_status_t psa_validate_key_persistence( psa_key_lifetime_t lifetime,
                                           psa_key_id_t key_id );
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
int psa_is_key_present_in_storage( const psa_key_file_id_t key );
psa_status_t psa_save_persistent_key( const psa_core_key_attributes_t *attr,
                                      const uint8_t *data,
                                      const size_t data_length );
psa_status_t psa_load_persistent_key( psa_core_key_attributes_t *attr,
                                      uint8_t **data,
                                      size_t *data_length );
psa_status_t psa_destroy_persistent_key( const psa_key_file_id_t key );
void psa_free_persistent_key_data( uint8_t *key_data, size_t key_data_length );
void psa_format_key_data_for_storage( const uint8_t *data,
                                      const size_t data_length,
                                      const psa_core_key_attributes_t *attr,
                                      uint8_t *storage_data );
psa_status_t psa_parse_key_data_from_storage( const uint8_t *storage_data,
                                              size_t storage_data_length,
                                              uint8_t **key_data,
                                              size_t *key_data_length,
                                              psa_core_key_attributes_t *attr );

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ )) __attribute__ ((__noreturn__));
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
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;
typedef struct mbedtls_asn1_bitstring
{
    size_t len;
    unsigned char unused_bits;
    unsigned char *p;
}
mbedtls_asn1_bitstring;
typedef struct mbedtls_asn1_sequence
{
    mbedtls_asn1_buf buf;
    struct mbedtls_asn1_sequence *next;
}
mbedtls_asn1_sequence;
typedef struct mbedtls_asn1_named_data
{
    mbedtls_asn1_buf oid;
    mbedtls_asn1_buf val;
    struct mbedtls_asn1_named_data *next;
    unsigned char next_merged;
}
mbedtls_asn1_named_data;
int mbedtls_asn1_get_len( unsigned char **p,
                          const unsigned char *end,
                          size_t *len );
int mbedtls_asn1_get_tag( unsigned char **p,
                          const unsigned char *end,
                          size_t *len, int tag );
int mbedtls_asn1_get_bool( unsigned char **p,
                           const unsigned char *end,
                           int *val );
int mbedtls_asn1_get_int( unsigned char **p,
                          const unsigned char *end,
                          int *val );
int mbedtls_asn1_get_enum( unsigned char **p,
                           const unsigned char *end,
                           int *val );
int mbedtls_asn1_get_bitstring( unsigned char **p, const unsigned char *end,
                                mbedtls_asn1_bitstring *bs );
int mbedtls_asn1_get_bitstring_null( unsigned char **p,
                                     const unsigned char *end,
                                     size_t *len );
int mbedtls_asn1_get_sequence_of( unsigned char **p,
                                  const unsigned char *end,
                                  mbedtls_asn1_sequence *cur,
                                  int tag );
void mbedtls_asn1_sequence_free( mbedtls_asn1_sequence *seq );
int mbedtls_asn1_traverse_sequence_of(
    unsigned char **p,
    const unsigned char *end,
    unsigned char tag_must_mask, unsigned char tag_must_val,
    unsigned char tag_may_mask, unsigned char tag_may_val,
    int (*cb)( void *ctx, int tag,
               unsigned char* start, size_t len ),
    void *ctx );
int mbedtls_asn1_get_mpi( unsigned char **p,
                          const unsigned char *end,
                          mbedtls_mpi *X );
int mbedtls_asn1_get_alg( unsigned char **p,
                  const unsigned char *end,
                  mbedtls_asn1_buf *alg, mbedtls_asn1_buf *params );
int mbedtls_asn1_get_alg_null( unsigned char **p,
                       const unsigned char *end,
                       mbedtls_asn1_buf *alg );
mbedtls_asn1_named_data *mbedtls_asn1_find_named_data( mbedtls_asn1_named_data *list,
                                       const char *oid, size_t len );
void mbedtls_asn1_free_named_data( mbedtls_asn1_named_data *entry );
void mbedtls_asn1_free_named_data_list( mbedtls_asn1_named_data **head );
int mbedtls_asn1_write_len( unsigned char **p, unsigned char *start,
                            size_t len );
int mbedtls_asn1_write_tag( unsigned char **p, unsigned char *start,
                            unsigned char tag );
int mbedtls_asn1_write_raw_buffer( unsigned char **p, unsigned char *start,
                                   const unsigned char *buf, size_t size );
int mbedtls_asn1_write_mpi( unsigned char **p, unsigned char *start,
                            const mbedtls_mpi *X );
int mbedtls_asn1_write_null( unsigned char **p, unsigned char *start );
int mbedtls_asn1_write_oid( unsigned char **p, unsigned char *start,
                            const char *oid, size_t oid_len );
int mbedtls_asn1_write_algorithm_identifier( unsigned char **p,
                                             unsigned char *start,
                                             const char *oid, size_t oid_len,
                                             size_t par_len );
int mbedtls_asn1_write_bool( unsigned char **p, unsigned char *start,
                             int boolean );
int mbedtls_asn1_write_int( unsigned char **p, unsigned char *start, int val );
int mbedtls_asn1_write_enum( unsigned char **p, unsigned char *start, int val );
int mbedtls_asn1_write_tagged_string( unsigned char **p, unsigned char *start,
                                      int tag, const char *text,
                                      size_t text_len );
int mbedtls_asn1_write_printable_string( unsigned char **p,
                                         unsigned char *start,
                                         const char *text, size_t text_len );
int mbedtls_asn1_write_utf8_string( unsigned char **p, unsigned char *start,
                                    const char *text, size_t text_len );
int mbedtls_asn1_write_ia5_string( unsigned char **p, unsigned char *start,
                                   const char *text, size_t text_len );
int mbedtls_asn1_write_bitstring( unsigned char **p, unsigned char *start,
                                  const unsigned char *buf, size_t bits );
int mbedtls_asn1_write_named_bitstring( unsigned char **p,
                                        unsigned char *start,
                                        const unsigned char *buf,
                                        size_t bits );
int mbedtls_asn1_write_octet_string( unsigned char **p, unsigned char *start,
                                     const unsigned char *buf, size_t size );
mbedtls_asn1_named_data *mbedtls_asn1_store_named_data( mbedtls_asn1_named_data **list,
                                        const char *oid, size_t oid_len,
                                        const unsigned char *val,
                                        size_t val_len );

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
typedef struct mbedtls_ctr_drbg_context
{
    unsigned char counter[16];
    int reseed_counter;
    int prediction_resistance;
    size_t entropy_len;
    int reseed_interval;
    mbedtls_aes_context aes_ctx;
    int (*f_entropy)(void *, unsigned char *, size_t);
    void *p_entropy;
}
mbedtls_ctr_drbg_context;
void mbedtls_ctr_drbg_init( mbedtls_ctr_drbg_context *ctx );
int mbedtls_ctr_drbg_seed( mbedtls_ctr_drbg_context *ctx,
                   int (*f_entropy)(void *, unsigned char *, size_t),
                   void *p_entropy,
                   const unsigned char *custom,
                   size_t len );
void mbedtls_ctr_drbg_free( mbedtls_ctr_drbg_context *ctx );
void mbedtls_ctr_drbg_set_prediction_resistance( mbedtls_ctr_drbg_context *ctx,
                                         int resistance );
void mbedtls_ctr_drbg_set_entropy_len( mbedtls_ctr_drbg_context *ctx,
                               size_t len );
int mbedtls_ctr_drbg_set_nonce_len( mbedtls_ctr_drbg_context *ctx,
                                    size_t len );
void mbedtls_ctr_drbg_set_reseed_interval( mbedtls_ctr_drbg_context *ctx,
                                   int interval );
int mbedtls_ctr_drbg_reseed( mbedtls_ctr_drbg_context *ctx,
                     const unsigned char *additional, size_t len );
int mbedtls_ctr_drbg_update_ret( mbedtls_ctr_drbg_context *ctx,
                                 const unsigned char *additional,
                                 size_t add_len );
int mbedtls_ctr_drbg_random_with_add( void *p_rng,
                              unsigned char *output, size_t output_len,
                              const unsigned char *additional, size_t add_len );
int mbedtls_ctr_drbg_random( void *p_rng,
                     unsigned char *output, size_t output_len );
                   void mbedtls_ctr_drbg_update(
    mbedtls_ctr_drbg_context *ctx,
    const unsigned char *additional,
    size_t add_len );
int mbedtls_ctr_drbg_write_seed_file( mbedtls_ctr_drbg_context *ctx, const char *path );
int mbedtls_ctr_drbg_update_seed_file( mbedtls_ctr_drbg_context *ctx, const char *path );
int mbedtls_ctr_drbg_self_test( int verbose );
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
typedef enum
{
    MBEDTLS_ECDH_OURS,
    MBEDTLS_ECDH_THEIRS,
} mbedtls_ecdh_side;
typedef struct mbedtls_ecdh_context
{
    mbedtls_ecp_group grp;
    mbedtls_mpi d;
    mbedtls_ecp_point Q;
    mbedtls_ecp_point Qp;
    mbedtls_mpi z;
    int point_format;
    mbedtls_ecp_point Vi;
    mbedtls_ecp_point Vf;
    mbedtls_mpi _d;
}
mbedtls_ecdh_context;
int mbedtls_ecdh_can_do( mbedtls_ecp_group_id gid );
int mbedtls_ecdh_gen_public( mbedtls_ecp_group *grp, mbedtls_mpi *d, mbedtls_ecp_point *Q,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng );
int mbedtls_ecdh_compute_shared( mbedtls_ecp_group *grp, mbedtls_mpi *z,
                         const mbedtls_ecp_point *Q, const mbedtls_mpi *d,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
void mbedtls_ecdh_init( mbedtls_ecdh_context *ctx );
int mbedtls_ecdh_setup( mbedtls_ecdh_context *ctx,
                        mbedtls_ecp_group_id grp_id );
void mbedtls_ecdh_free( mbedtls_ecdh_context *ctx );
int mbedtls_ecdh_make_params( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
int mbedtls_ecdh_read_params( mbedtls_ecdh_context *ctx,
                              const unsigned char **buf,
                              const unsigned char *end );
int mbedtls_ecdh_get_params( mbedtls_ecdh_context *ctx,
                             const mbedtls_ecp_keypair *key,
                             mbedtls_ecdh_side side );
int mbedtls_ecdh_make_public( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
int mbedtls_ecdh_read_public( mbedtls_ecdh_context *ctx,
                              const unsigned char *buf, size_t blen );
int mbedtls_ecdh_calc_secret( mbedtls_ecdh_context *ctx, size_t *olen,
                      unsigned char *buf, size_t blen,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
void mbedtls_strerror( int errnum, char *buffer, size_t buflen );
const char * mbedtls_high_level_strerr( int error_code );
const char * mbedtls_low_level_strerr( int error_code );
struct mbedtls_md_info_t
{
    const char * name;
    mbedtls_md_type_t type;
    unsigned char size;
    unsigned char block_size;
};
extern const mbedtls_md_info_t mbedtls_md5_info;
extern const mbedtls_md_info_t mbedtls_ripemd160_info;
extern const mbedtls_md_info_t mbedtls_sha1_info;
extern const mbedtls_md_info_t mbedtls_sha224_info;
extern const mbedtls_md_info_t mbedtls_sha256_info;
extern const mbedtls_md_info_t mbedtls_sha384_info;
extern const mbedtls_md_info_t mbedtls_sha512_info;
typedef struct mbedtls_rsa_context
{
    int ver;
    size_t len;
    mbedtls_mpi N;
    mbedtls_mpi E;
    mbedtls_mpi D;
    mbedtls_mpi P;
    mbedtls_mpi Q;
    mbedtls_mpi DP;
    mbedtls_mpi DQ;
    mbedtls_mpi QP;
    mbedtls_mpi RN;
    mbedtls_mpi RP;
    mbedtls_mpi RQ;
    mbedtls_mpi Vi;
    mbedtls_mpi Vf;
    int padding;
    int hash_id;
}
mbedtls_rsa_context;
void mbedtls_rsa_init( mbedtls_rsa_context *ctx,
                       int padding,
                       int hash_id );
int mbedtls_rsa_import( mbedtls_rsa_context *ctx,
                        const mbedtls_mpi *N,
                        const mbedtls_mpi *P, const mbedtls_mpi *Q,
                        const mbedtls_mpi *D, const mbedtls_mpi *E );
int mbedtls_rsa_import_raw( mbedtls_rsa_context *ctx,
                            unsigned char const *N, size_t N_len,
                            unsigned char const *P, size_t P_len,
                            unsigned char const *Q, size_t Q_len,
                            unsigned char const *D, size_t D_len,
                            unsigned char const *E, size_t E_len );
int mbedtls_rsa_complete( mbedtls_rsa_context *ctx );
int mbedtls_rsa_export( const mbedtls_rsa_context *ctx,
                        mbedtls_mpi *N, mbedtls_mpi *P, mbedtls_mpi *Q,
                        mbedtls_mpi *D, mbedtls_mpi *E );
int mbedtls_rsa_export_raw( const mbedtls_rsa_context *ctx,
                            unsigned char *N, size_t N_len,
                            unsigned char *P, size_t P_len,
                            unsigned char *Q, size_t Q_len,
                            unsigned char *D, size_t D_len,
                            unsigned char *E, size_t E_len );
int mbedtls_rsa_export_crt( const mbedtls_rsa_context *ctx,
                            mbedtls_mpi *DP, mbedtls_mpi *DQ, mbedtls_mpi *QP );
void mbedtls_rsa_set_padding( mbedtls_rsa_context *ctx, int padding,
                              int hash_id );
size_t mbedtls_rsa_get_len( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_gen_key( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         unsigned int nbits, int exponent );
int mbedtls_rsa_check_pubkey( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_check_privkey( const mbedtls_rsa_context *ctx );
int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub,
                                const mbedtls_rsa_context *prv );
int mbedtls_rsa_public( mbedtls_rsa_context *ctx,
                const unsigned char *input,
                unsigned char *output );
int mbedtls_rsa_private( mbedtls_rsa_context *ctx,
                 int (*f_rng)(void *, unsigned char *, size_t),
                 void *p_rng,
                 const unsigned char *input,
                 unsigned char *output );
int mbedtls_rsa_pkcs1_encrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t ilen,
                       const unsigned char *input,
                       unsigned char *output );
int mbedtls_rsa_rsaes_pkcs1_v15_encrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t ilen,
                                 const unsigned char *input,
                                 unsigned char *output );
int mbedtls_rsa_rsaes_oaep_encrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t ilen,
                            const unsigned char *input,
                            unsigned char *output );
int mbedtls_rsa_pkcs1_decrypt( mbedtls_rsa_context *ctx,
                       int (*f_rng)(void *, unsigned char *, size_t),
                       void *p_rng,
                       int mode, size_t *olen,
                       const unsigned char *input,
                       unsigned char *output,
                       size_t output_max_len );
int mbedtls_rsa_rsaes_pkcs1_v15_decrypt( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode, size_t *olen,
                                 const unsigned char *input,
                                 unsigned char *output,
                                 size_t output_max_len );
int mbedtls_rsa_rsaes_oaep_decrypt( mbedtls_rsa_context *ctx,
                            int (*f_rng)(void *, unsigned char *, size_t),
                            void *p_rng,
                            int mode,
                            const unsigned char *label, size_t label_len,
                            size_t *olen,
                            const unsigned char *input,
                            unsigned char *output,
                            size_t output_max_len );
int mbedtls_rsa_pkcs1_sign( mbedtls_rsa_context *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t),
                    void *p_rng,
                    int mode,
                    mbedtls_md_type_t md_alg,
                    unsigned int hashlen,
                    const unsigned char *hash,
                    unsigned char *sig );
int mbedtls_rsa_rsassa_pkcs1_v15_sign( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               unsigned char *sig );
int mbedtls_rsa_rsassa_pss_sign( mbedtls_rsa_context *ctx,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng,
                         int mode,
                         mbedtls_md_type_t md_alg,
                         unsigned int hashlen,
                         const unsigned char *hash,
                         unsigned char *sig );
int mbedtls_rsa_pkcs1_verify( mbedtls_rsa_context *ctx,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng,
                      int mode,
                      mbedtls_md_type_t md_alg,
                      unsigned int hashlen,
                      const unsigned char *hash,
                      const unsigned char *sig );
int mbedtls_rsa_rsassa_pkcs1_v15_verify( mbedtls_rsa_context *ctx,
                                 int (*f_rng)(void *, unsigned char *, size_t),
                                 void *p_rng,
                                 int mode,
                                 mbedtls_md_type_t md_alg,
                                 unsigned int hashlen,
                                 const unsigned char *hash,
                                 const unsigned char *sig );
int mbedtls_rsa_rsassa_pss_verify( mbedtls_rsa_context *ctx,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           int mode,
                           mbedtls_md_type_t md_alg,
                           unsigned int hashlen,
                           const unsigned char *hash,
                           const unsigned char *sig );
int mbedtls_rsa_rsassa_pss_verify_ext( mbedtls_rsa_context *ctx,
                               int (*f_rng)(void *, unsigned char *, size_t),
                               void *p_rng,
                               int mode,
                               mbedtls_md_type_t md_alg,
                               unsigned int hashlen,
                               const unsigned char *hash,
                               mbedtls_md_type_t mgf1_hash_id,
                               int expected_salt_len,
                               const unsigned char *sig );
int mbedtls_rsa_copy( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src );
void mbedtls_rsa_free( mbedtls_rsa_context *ctx );
int mbedtls_rsa_self_test( int verbose );
typedef mbedtls_ecp_keypair mbedtls_ecdsa_context;
typedef void mbedtls_ecdsa_restart_ctx;
int mbedtls_ecdsa_can_do( mbedtls_ecp_group_id gid );
int mbedtls_ecdsa_sign( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecdsa_sign_det( mbedtls_ecp_group *grp, mbedtls_mpi *r,
                            mbedtls_mpi *s, const mbedtls_mpi *d,
                            const unsigned char *buf, size_t blen,
                            mbedtls_md_type_t md_alg ) ;
int mbedtls_ecdsa_sign_det_ext( mbedtls_ecp_group *grp, mbedtls_mpi *r,
                            mbedtls_mpi *s, const mbedtls_mpi *d,
                            const unsigned char *buf, size_t blen,
                            mbedtls_md_type_t md_alg,
                            int (*f_rng_blind)(void *, unsigned char *, size_t),
                            void *p_rng_blind );
int mbedtls_ecdsa_verify( mbedtls_ecp_group *grp,
                          const unsigned char *buf, size_t blen,
                          const mbedtls_ecp_point *Q, const mbedtls_mpi *r,
                          const mbedtls_mpi *s);
int mbedtls_ecdsa_write_signature( mbedtls_ecdsa_context *ctx,
                                   mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng );
int mbedtls_ecdsa_write_signature_restartable( mbedtls_ecdsa_context *ctx,
                           mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng,
                           mbedtls_ecdsa_restart_ctx *rs_ctx );
int mbedtls_ecdsa_write_signature_det( mbedtls_ecdsa_context *ctx,
                               const unsigned char *hash, size_t hlen,
                               unsigned char *sig, size_t *slen,
                               mbedtls_md_type_t md_alg ) ;
int mbedtls_ecdsa_read_signature( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen );
int mbedtls_ecdsa_read_signature_restartable( mbedtls_ecdsa_context *ctx,
                          const unsigned char *hash, size_t hlen,
                          const unsigned char *sig, size_t slen,
                          mbedtls_ecdsa_restart_ctx *rs_ctx );
int mbedtls_ecdsa_genkey( mbedtls_ecdsa_context *ctx, mbedtls_ecp_group_id gid,
                  int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_ecdsa_from_keypair( mbedtls_ecdsa_context *ctx,
                                const mbedtls_ecp_keypair *key );
void mbedtls_ecdsa_init( mbedtls_ecdsa_context *ctx );
void mbedtls_ecdsa_free( mbedtls_ecdsa_context *ctx );
typedef enum {
    MBEDTLS_PK_NONE=0,
    MBEDTLS_PK_RSA,
    MBEDTLS_PK_ECKEY,
    MBEDTLS_PK_ECKEY_DH,
    MBEDTLS_PK_ECDSA,
    MBEDTLS_PK_RSA_ALT,
    MBEDTLS_PK_RSASSA_PSS,
    MBEDTLS_PK_OPAQUE,
} mbedtls_pk_type_t;
typedef struct mbedtls_pk_rsassa_pss_options
{
    mbedtls_md_type_t mgf1_hash_id;
    int expected_salt_len;
} mbedtls_pk_rsassa_pss_options;
typedef enum
{
    MBEDTLS_PK_DEBUG_NONE = 0,
    MBEDTLS_PK_DEBUG_MPI,
    MBEDTLS_PK_DEBUG_ECP,
} mbedtls_pk_debug_type;
typedef struct mbedtls_pk_debug_item
{
    mbedtls_pk_debug_type type;
    const char *name;
    void *value;
} mbedtls_pk_debug_item;
typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;
typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
typedef void mbedtls_pk_restart_ctx;
static inline mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
static inline mbedtls_ecp_keypair *mbedtls_pk_ec( const mbedtls_pk_context pk )
{
    return( (mbedtls_ecp_keypair *) (pk).pk_ctx );
}
typedef int (*mbedtls_pk_rsa_alt_decrypt_func)( void *ctx, int mode, size_t *olen,
                    const unsigned char *input, unsigned char *output,
                    size_t output_max_len );
typedef int (*mbedtls_pk_rsa_alt_sign_func)( void *ctx,
                    int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
                    int mode, mbedtls_md_type_t md_alg, unsigned int hashlen,
                    const unsigned char *hash, unsigned char *sig );
typedef size_t (*mbedtls_pk_rsa_alt_key_len_func)( void *ctx );
const mbedtls_pk_info_t *mbedtls_pk_info_from_type( mbedtls_pk_type_t pk_type );
void mbedtls_pk_init( mbedtls_pk_context *ctx );
void mbedtls_pk_free( mbedtls_pk_context *ctx );
int mbedtls_pk_setup( mbedtls_pk_context *ctx, const mbedtls_pk_info_t *info );
int mbedtls_pk_setup_rsa_alt( mbedtls_pk_context *ctx, void * key,
                         mbedtls_pk_rsa_alt_decrypt_func decrypt_func,
                         mbedtls_pk_rsa_alt_sign_func sign_func,
                         mbedtls_pk_rsa_alt_key_len_func key_len_func );
size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );
static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
int mbedtls_pk_can_do( const mbedtls_pk_context *ctx, mbedtls_pk_type_t type );
int mbedtls_pk_verify( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len );
int mbedtls_pk_verify_restartable( mbedtls_pk_context *ctx,
               mbedtls_md_type_t md_alg,
               const unsigned char *hash, size_t hash_len,
               const unsigned char *sig, size_t sig_len,
               mbedtls_pk_restart_ctx *rs_ctx );
int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len );
int mbedtls_pk_sign( mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_sign_restartable( mbedtls_pk_context *ctx,
             mbedtls_md_type_t md_alg,
             const unsigned char *hash, size_t hash_len,
             unsigned char *sig, size_t *sig_len,
             int (*f_rng)(void *, unsigned char *, size_t), void *p_rng,
             mbedtls_pk_restart_ctx *rs_ctx );
int mbedtls_pk_decrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_encrypt( mbedtls_pk_context *ctx,
                const unsigned char *input, size_t ilen,
                unsigned char *output, size_t *olen, size_t osize,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng );
int mbedtls_pk_check_pair( const mbedtls_pk_context *pub, const mbedtls_pk_context *prv );
int mbedtls_pk_debug( const mbedtls_pk_context *ctx, mbedtls_pk_debug_item *items );
const char * mbedtls_pk_get_name( const mbedtls_pk_context *ctx );
mbedtls_pk_type_t mbedtls_pk_get_type( const mbedtls_pk_context *ctx );
int mbedtls_pk_parse_key( mbedtls_pk_context *ctx,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen );
int mbedtls_pk_parse_public_key( mbedtls_pk_context *ctx,
                         const unsigned char *key, size_t keylen );
int mbedtls_pk_parse_keyfile( mbedtls_pk_context *ctx,
                      const char *path, const char *password );
int mbedtls_pk_parse_public_keyfile( mbedtls_pk_context *ctx, const char *path );
int mbedtls_pk_write_key_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_pubkey_der( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_pubkey_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_write_key_pem( mbedtls_pk_context *ctx, unsigned char *buf, size_t size );
int mbedtls_pk_parse_subpubkey( unsigned char **p, const unsigned char *end,
                        mbedtls_pk_context *pk );
int mbedtls_pk_write_pubkey( unsigned char **p, unsigned char *start,
                     const mbedtls_pk_context *key );
int mbedtls_pk_load_file( const char *path, unsigned char **buf, size_t *n );
struct mbedtls_pk_info_t
{
    mbedtls_pk_type_t type;
    const char *name;
    size_t (*get_bitlen)( const void * );
    int (*can_do)( mbedtls_pk_type_t type );
    int (*verify_func)( void *ctx, mbedtls_md_type_t md_alg,
                        const unsigned char *hash, size_t hash_len,
                        const unsigned char *sig, size_t sig_len );
    int (*sign_func)( void *ctx, mbedtls_md_type_t md_alg,
                      const unsigned char *hash, size_t hash_len,
                      unsigned char *sig, size_t *sig_len,
                      int (*f_rng)(void *, unsigned char *, size_t),
                      void *p_rng );
    int (*decrypt_func)( void *ctx, const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen, size_t osize,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
    int (*encrypt_func)( void *ctx, const unsigned char *input, size_t ilen,
                         unsigned char *output, size_t *olen, size_t osize,
                         int (*f_rng)(void *, unsigned char *, size_t),
                         void *p_rng );
    int (*check_pair_func)( const void *pub, const void *prv );
    void * (*ctx_alloc_func)( void );
    void (*ctx_free_func)( void *ctx );
    void (*debug_func)( const void *ctx, mbedtls_pk_debug_item *items );
};
typedef struct
{
    void *key;
    mbedtls_pk_rsa_alt_decrypt_func decrypt_func;
    mbedtls_pk_rsa_alt_sign_func sign_func;
    mbedtls_pk_rsa_alt_key_len_func key_len_func;
} mbedtls_rsa_alt_context;
extern const mbedtls_pk_info_t mbedtls_rsa_info;
extern const mbedtls_pk_info_t mbedtls_eckey_info;
extern const mbedtls_pk_info_t mbedtls_eckeydh_info;
extern const mbedtls_pk_info_t mbedtls_ecdsa_info;
extern const mbedtls_pk_info_t mbedtls_rsa_alt_info;
typedef struct mbedtls_xtea_context
{
    uint32_t k[4];
}
mbedtls_xtea_context;
void mbedtls_xtea_init( mbedtls_xtea_context *ctx );
void mbedtls_xtea_free( mbedtls_xtea_context *ctx );
void mbedtls_xtea_setup( mbedtls_xtea_context *ctx, const unsigned char key[16] );
int mbedtls_xtea_crypt_ecb( mbedtls_xtea_context *ctx,
                    int mode,
                    const unsigned char input[8],
                    unsigned char output[8] );
int mbedtls_xtea_crypt_cbc( mbedtls_xtea_context *ctx,
                    int mode,
                    size_t length,
                    unsigned char iv[8],
                    const unsigned char *input,
                    unsigned char *output);
int mbedtls_xtea_self_test( int verbose );
static inline int safer_memcmp( const uint8_t *a, const uint8_t *b, size_t n )
{
    size_t i;
    unsigned char diff = 0;
    for( i = 0; i < n; i++ )
        diff |= a[i] ^ b[i];
    return( diff );
}
static int key_type_is_raw_bytes( psa_key_type_t type )
{
    return( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x1000) || ((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000)) );
}
typedef struct
{
    void (* entropy_init )( mbedtls_entropy_context *ctx );
    void (* entropy_free )( mbedtls_entropy_context *ctx );
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    unsigned initialized : 1;
    unsigned rng_state : 2;
} psa_global_data_t;
static psa_global_data_t global_data;
static psa_status_t mbedtls_to_psa_error( int ret )
{
    switch( ret < -0x7f ? - ( -ret & 0x7f80 ) : ret )
    {
        case 0:
            return( ((psa_status_t)0) );
        case -0x0020:
        case -0x0022:
        case -0x0023:
            return( ((psa_status_t)-134) );
        case -0x0025:
            return( ((psa_status_t)-147) );
        case -0x0019:
            return( ((psa_status_t)-147) );
        case -0x0060:
        case -0x0062:
        case -0x0064:
        case -0x0066:
        case -0x0068:
            return( ((psa_status_t)-135) );
        case -0x006A:
            return( ((psa_status_t)-141) );
        case -0x006C:
            return( ((psa_status_t)-138) );
        case -0x0016:
        case -0x0018:
            return( ((psa_status_t)-134) );
        case -0x0017:
            return( ((psa_status_t)-147) );
        case -0x0024:
        case -0x0026:
            return( ((psa_status_t)-134) );
        case -0x0027:
            return( ((psa_status_t)-147) );
        case -0x000D:
            return( ((psa_status_t)-135) );
        case -0x000F:
            return( ((psa_status_t)-149) );
        case -0x0011:
            return( ((psa_status_t)-147) );
        case -0x0051:
            return( ((psa_status_t)-135) );
        case -0x0054:
            return( ((psa_status_t)-137) );
        case -0x0056:
            return( ((psa_status_t)-149) );
        case -0x6080:
            return( ((psa_status_t)-134) );
        case -0x6100:
            return( ((psa_status_t)-135) );
        case -0x6180:
            return( ((psa_status_t)-141) );
        case -0x6200:
            return( ((psa_status_t)-150) );
        case -0x6280:
            return( ((psa_status_t)-137) );
        case -0x6300:
            return( ((psa_status_t)-149) );
        case -0x6380:
            return( ((psa_status_t)-151) );
        case -0x6400:
            return( ((psa_status_t)-147) );
        case -0x007A:
            return( ((psa_status_t)-147) );
        case -0x0034:
            return( ((psa_status_t)-148) );
        case -0x0036:
        case -0x0038:
            return( ((psa_status_t)-134) );
        case -0x003A:
            return( ((psa_status_t)-148) );
        case -0x0032:
            return( ((psa_status_t)-134) );
        case -0x0033:
            return( ((psa_status_t)-147) );
        case -0x0040:
        case -0x003D:
        case -0x003C:
            return( ((psa_status_t)-148) );
        case -0x0012:
            return( ((psa_status_t)-149) );
        case -0x0014:
            return( ((psa_status_t)-135) );
        case -0x0013:
            return( ((psa_status_t)-147) );
        case -0x002B:
        case -0x002D:
        case -0x002F:
            return( ((psa_status_t)-147) );
        case -0x5080:
            return( ((psa_status_t)-134) );
        case -0x5100:
            return( ((psa_status_t)-135) );
        case -0x5180:
            return( ((psa_status_t)-141) );
        case -0x5200:
            return( ((psa_status_t)-146) );
        case -0x5280:
            return( ((psa_status_t)-147) );
        case -0x0002:
            return( ((psa_status_t)-146) );
        case -0x0004:
            return( ((psa_status_t)-135) );
        case -0x0006:
            return( ((psa_status_t)-135) );
        case -0x0008:
            return( ((psa_status_t)-138) );
        case -0x000A:
            return( ((psa_status_t)-135) );
        case -0x000C:
            return( ((psa_status_t)-135) );
        case -0x000E:
            return( ((psa_status_t)-135) );
        case -0x0010:
            return( ((psa_status_t)-141) );
        case -0x3F80:
            return( ((psa_status_t)-141) );
        case -0x3F00:
        case -0x3E80:
            return( ((psa_status_t)-135) );
        case -0x3E00:
            return( ((psa_status_t)-146) );
        case -0x3D80:
        case -0x3D00:
            return( ((psa_status_t)-135) );
        case -0x3C80:
            return( ((psa_status_t)-134) );
        case -0x3C00:
        case -0x3B80:
            return( ((psa_status_t)-133) );
        case -0x3B00:
            return( ((psa_status_t)-135) );
        case -0x3A80:
        case -0x3A00:
        case -0x3980:
            return( ((psa_status_t)-134) );
        case -0x3900:
            return( ((psa_status_t)-149) );
        case -0x3880:
            return( ((psa_status_t)-147) );
        case -0x0070:
            return( ((psa_status_t)-147) );
        case -0x0072:
            return( ((psa_status_t)-134) );
        case -0x0031:
            return( ((psa_status_t)-147) );
        case -0x4080:
            return( ((psa_status_t)-135) );
        case -0x4100:
            return( ((psa_status_t)-150) );
        case -0x4180:
            return( ((psa_status_t)-147) );
        case -0x4200:
            return( ((psa_status_t)-135) );
        case -0x4280:
        case -0x4300:
            return( ((psa_status_t)-151) );
        case -0x4380:
            return( ((psa_status_t)-149) );
        case -0x4400:
            return( ((psa_status_t)-138) );
        case -0x4480:
            return( ((psa_status_t)-141) );
        case -0x4500:
            return( ((psa_status_t)-134) );
        case -0x4580:
            return( ((psa_status_t)-147) );
        case -0x0035:
        case -0x0037:
        case -0x0039:
            return( ((psa_status_t)-147) );
        case -0x0028:
            return( ((psa_status_t)-135) );
        case -0x0029:
            return( ((psa_status_t)-147) );
        case -0x4F80:
        case -0x4C80:
            return( ((psa_status_t)-135) );
        case -0x4F00:
            return( ((psa_status_t)-138) );
        case -0x4E80:
            return( ((psa_status_t)-134) );
        case -0x4C00:
        case -0x4E00:
            return( ((psa_status_t)-149) );
        case -0x4D80:
            return( ((psa_status_t)-141) );
        case -0x4B80:
            return( ((psa_status_t)-147) );
        case -0x006E:
            return( ((psa_status_t)-151) );
        default:
            return( ((psa_status_t)-132) );
    }
}
mbedtls_ecp_group_id mbedtls_ecc_group_of_psa( psa_ecc_family_t curve,
                                               size_t byte_length )
{
    switch( curve )
    {
        case ((psa_ecc_family_t) 0x12):
            switch( byte_length )
            {
                case (((192) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP192R1 );
                case (((224) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP224R1 );
                case (((256) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP256R1 );
                case (((384) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP384R1 );
                case (((521) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP521R1 );
                default:
                    return( MBEDTLS_ECP_DP_NONE );
            }
            break;
        case ((psa_ecc_family_t) 0x30):
            switch( byte_length )
            {
                case (((256) + 7) / 8):
                    return( MBEDTLS_ECP_DP_BP256R1 );
                case (((384) + 7) / 8):
                    return( MBEDTLS_ECP_DP_BP384R1 );
                case (((512) + 7) / 8):
                    return( MBEDTLS_ECP_DP_BP512R1 );
                default:
                    return( MBEDTLS_ECP_DP_NONE );
            }
            break;
        case ((psa_ecc_family_t) 0x41):
            switch( byte_length )
            {
                case (((255) + 7) / 8):
                    return( MBEDTLS_ECP_DP_CURVE25519 );
                case (((448) + 7) / 8):
                    return( MBEDTLS_ECP_DP_CURVE448 );
                default:
                    return( MBEDTLS_ECP_DP_NONE );
            }
            break;
        case ((psa_ecc_family_t) 0x17):
            switch( byte_length )
            {
                case (((192) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP192K1 );
                case (((224) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP224K1 );
                case (((256) + 7) / 8):
                    return( MBEDTLS_ECP_DP_SECP256K1 );
                default:
                    return( MBEDTLS_ECP_DP_NONE );
            }
            break;
        default:
            return( MBEDTLS_ECP_DP_NONE );
    }
}
static psa_status_t validate_unstructured_key_bit_size( psa_key_type_t type,
                                                        size_t bits )
{
    switch( type )
    {
        case ((psa_key_type_t)0x1001):
        case ((psa_key_type_t)0x1100):
        case ((psa_key_type_t)0x1200):
            break;
        case ((psa_key_type_t)0x2400):
            if( bits != 128 && bits != 192 && bits != 256 )
                return( ((psa_status_t)-135) );
            break;
        case ((psa_key_type_t)0x2403):
            if( bits != 128 && bits != 192 && bits != 256 )
                return( ((psa_status_t)-135) );
            break;
        case ((psa_key_type_t)0x2301):
            if( bits != 64 && bits != 128 && bits != 192 )
                return( ((psa_status_t)-135) );
            break;
        case ((psa_key_type_t)0x2002):
            if( bits < 8 || bits > 2048 )
                return( ((psa_status_t)-135) );
            break;
        case ((psa_key_type_t)0x2004):
            if( bits != 256 )
                return( ((psa_status_t)-135) );
            break;
        default:
            return( ((psa_status_t)-134) );
    }
    if( bits % 8 != 0 )
        return( ((psa_status_t)-135) );
    return( ((psa_status_t)0) );
}
static psa_status_t psa_check_rsa_key_byte_aligned(
    const mbedtls_rsa_context *rsa )
{
    mbedtls_mpi n;
    psa_status_t status;
    mbedtls_mpi_init( &n );
    status = mbedtls_to_psa_error(
        mbedtls_rsa_export( rsa, &n, ((void*)0), ((void*)0), ((void*)0), ((void*)0) ) );
    if( status == ((psa_status_t)0) )
    {
        if( mbedtls_mpi_bitlen( &n ) % 8 != 0 )
            status = ((psa_status_t)-134);
    }
    mbedtls_mpi_free( &n );
    return( status );
}
static psa_status_t psa_load_rsa_representation( psa_key_type_t type,
                                                 const uint8_t *data,
                                                 size_t data_length,
                                                 mbedtls_rsa_context **p_rsa )
{
    psa_status_t status;
    mbedtls_pk_context ctx;
    size_t bits;
    mbedtls_pk_init( &ctx );
    if( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) )
        status = mbedtls_to_psa_error(
            mbedtls_pk_parse_key( &ctx, data, data_length, ((void*)0), 0 ) );
    else
        status = mbedtls_to_psa_error(
            mbedtls_pk_parse_public_key( &ctx, data, data_length ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( mbedtls_pk_get_type( &ctx ) != MBEDTLS_PK_RSA )
    {
        status = ((psa_status_t)-135);
        goto exit;
    }
    bits = ((mbedtls_rsa_get_len( mbedtls_pk_rsa( ctx ) )) * 8);
    if( bits > 4096 )
    {
        status = ((psa_status_t)-134);
        goto exit;
    }
    status = psa_check_rsa_key_byte_aligned( mbedtls_pk_rsa( ctx ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    *p_rsa = mbedtls_pk_rsa( ctx );
    ctx.pk_info = ((void*)0);
exit:
    mbedtls_pk_free( &ctx );
    return( status );
}
static psa_status_t psa_export_rsa_key( psa_key_type_t type,
                                        mbedtls_rsa_context *rsa,
                                        uint8_t *data,
                                        size_t data_size,
                                        size_t *data_length )
{
    int ret;
    mbedtls_pk_context pk;
    uint8_t *pos = data + data_size;
    mbedtls_pk_init( &pk );
    pk.pk_info = &mbedtls_rsa_info;
    pk.pk_ctx = rsa;
    if( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) )
        ret = mbedtls_pk_write_key_der( &pk, data, data_size );
    else
        ret = mbedtls_pk_write_pubkey( &pos, data, &pk );
    if( ret < 0 )
    {
        memset( data, 0, data_size );
        return( mbedtls_to_psa_error( ret ) );
    }
    if( 2 * (size_t) ret <= data_size )
    {
        memcpy( data, data + data_size - ret, ret );
        memset( data + data_size - ret, 0, ret );
    }
    else if( (size_t) ret < data_size )
    {
        memmove( data, data + data_size - ret, ret );
        memset( data + ret, 0, data_size - ret );
    }
    *data_length = ret;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_import_rsa_key( psa_key_slot_t *slot,
                                        const uint8_t *data,
                                        size_t data_length )
{
    psa_status_t status;
    uint8_t* output = ((void*)0);
    mbedtls_rsa_context *rsa = ((void*)0);
    status = psa_load_rsa_representation( slot->attr.type,
                                          data,
                                          data_length,
                                          &rsa );
    if( status != ((psa_status_t)0) )
        goto exit;
    slot->attr.bits = (psa_key_bits_t) ((mbedtls_rsa_get_len( rsa )) * 8);
    output = calloc( 1, data_length );
    if( output == ((void*)0) )
    {
        status = ((psa_status_t)-141);
        goto exit;
    }
    status = psa_export_rsa_key( slot->attr.type,
                                 rsa,
                                 output,
                                 data_length,
                                 &data_length);
exit:
    mbedtls_rsa_free( rsa );
    free( rsa );
    if( status != ((psa_status_t)0) )
    {
        free( output );
        return( status );
    }
    slot->data.key.data = output;
    slot->data.key.bytes = data_length;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_load_ecp_representation( psa_key_type_t type,
                                                 const uint8_t *data,
                                                 size_t data_length,
                                                 mbedtls_ecp_keypair **p_ecp )
{
    mbedtls_ecp_group_id grp_id = MBEDTLS_ECP_DP_NONE;
    psa_status_t status;
    mbedtls_ecp_keypair *ecp = ((void*)0);
    size_t curve_size = data_length;
    if( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) &&
        ((psa_ecc_family_t) (((((type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? ((type) & ((psa_key_type_t)0x00ff)) : 0)) != ((psa_ecc_family_t) 0x41) )
    {
        if( ( data_length & 1 ) == 0 )
            return( ((psa_status_t)-135) );
        curve_size = data_length / 2;
    }
    ecp = calloc( 1, sizeof( mbedtls_ecp_keypair ) );
    if( ecp == ((void*)0) )
        return( ((psa_status_t)-141) );
    mbedtls_ecp_keypair_init( ecp );
    grp_id = mbedtls_ecc_group_of_psa( ((psa_ecc_family_t) (((((type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? ((type) & ((psa_key_type_t)0x00ff)) : 0)),
                                       curve_size );
    if( grp_id == MBEDTLS_ECP_DP_NONE )
    {
        status = ((psa_status_t)-135);
        goto exit;
    }
    status = mbedtls_to_psa_error(
                mbedtls_ecp_group_load( &ecp->grp, grp_id ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) )
    {
        status = mbedtls_to_psa_error(
            mbedtls_ecp_point_read_binary( &ecp->grp, &ecp->Q,
                                           data,
                                           data_length ) );
        if( status != ((psa_status_t)0) )
            goto exit;
        status = mbedtls_to_psa_error(
            mbedtls_ecp_check_pubkey( &ecp->grp, &ecp->Q ) );
        if( status != ((psa_status_t)0) )
            goto exit;
    }
    else
    {
        status = mbedtls_to_psa_error(
            mbedtls_ecp_read_key( ecp->grp.id,
                                  ecp,
                                  data,
                                  data_length ) );
        if( status != ((psa_status_t)0) )
            goto exit;
    }
    *p_ecp = ecp;
exit:
    if( status != ((psa_status_t)0) )
    {
        mbedtls_ecp_keypair_free( ecp );
        free( ecp );
    }
    return( status );
}
static psa_status_t psa_export_ecp_key( psa_key_type_t type,
                                        mbedtls_ecp_keypair *ecp,
                                        uint8_t *data,
                                        size_t data_size,
                                        size_t *data_length )
{
    psa_status_t status;
    if( (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) )
    {
        if( mbedtls_ecp_is_zero( &ecp->Q ) )
        {
            status = mbedtls_to_psa_error(
                mbedtls_ecp_mul( &ecp->grp, &ecp->Q, &ecp->d, &ecp->grp.G,
                                 mbedtls_ctr_drbg_random, &global_data.ctr_drbg ) );
            if( status != ((psa_status_t)0) )
                return( status );
        }
        status = mbedtls_to_psa_error(
                    mbedtls_ecp_point_write_binary( &ecp->grp, &ecp->Q,
                                                    0,
                                                    data_length,
                                                    data,
                                                    data_size ) );
        if( status != ((psa_status_t)0) )
            memset( data, 0, data_size );
        return( status );
    }
    else
    {
        if( data_size < (((ecp->grp.nbits) + 7) / 8) )
            return( ((psa_status_t)-138) );
        status = mbedtls_to_psa_error(
                    mbedtls_ecp_write_key( ecp,
                                           data,
                                           (((ecp->grp.nbits) + 7) / 8) ) );
        if( status == ((psa_status_t)0) )
            *data_length = (((ecp->grp.nbits) + 7) / 8);
        else
            memset( data, 0, data_size );
        return( status );
    }
}
static psa_status_t psa_import_ecp_key( psa_key_slot_t *slot,
                                        const uint8_t *data,
                                        size_t data_length )
{
    psa_status_t status;
    uint8_t* output = ((void*)0);
    mbedtls_ecp_keypair *ecp = ((void*)0);
    status = psa_load_ecp_representation( slot->attr.type,
                                          data,
                                          data_length,
                                          &ecp );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( ((psa_ecc_family_t) (((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? ((slot->attr.type) & ((psa_key_type_t)0x00ff)) : 0)) == ((psa_ecc_family_t) 0x41))
        slot->attr.bits = (psa_key_bits_t) ecp->grp.nbits + 1;
    else
        slot->attr.bits = (psa_key_bits_t) ecp->grp.nbits;
    output = calloc( 1, data_length );
    if( output == ((void*)0) )
    {
        status = ((psa_status_t)-141);
        goto exit;
    }
    status = psa_export_ecp_key( slot->attr.type,
                                 ecp,
                                 output,
                                 data_length,
                                 &data_length);
exit:
    mbedtls_ecp_keypair_free( ecp );
    free( ecp );
    if( status != ((psa_status_t)0) )
    {
        free( output );
        return( status );
    }
    slot->data.key.data = output;
    slot->data.key.bytes = data_length;
    return( ((psa_status_t)0) );
}
static inline size_t psa_get_key_slot_bits( const psa_key_slot_t *slot )
{
    return( slot->attr.bits );
}
static psa_status_t psa_allocate_buffer_to_slot( psa_key_slot_t *slot,
                                                 size_t buffer_length )
{
    if( slot->data.key.data != ((void*)0) )
        return( ((psa_status_t)-139) );
    slot->data.key.data = calloc( 1, buffer_length );
    if( slot->data.key.data == ((void*)0) )
        return( ((psa_status_t)-141) );
    slot->data.key.bytes = buffer_length;
    return( ((psa_status_t)0) );
}
psa_status_t psa_import_key_into_slot( psa_key_slot_t *slot,
                                       const uint8_t *data,
                                       size_t data_length )
{
    psa_status_t status = ((psa_status_t)0);
    if( data_length == 0 )
        return( ((psa_status_t)-134) );
    if( key_type_is_raw_bytes( slot->attr.type ) )
    {
        size_t bit_size = ((data_length) * 8);
        if( data_length > (18446744073709551615UL) / 8 )
            return( ((psa_status_t)-134) );
        if( bit_size > 0xfff8 )
            return( ((psa_status_t)-134) );
        status = validate_unstructured_key_bit_size( slot->attr.type, bit_size );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_allocate_buffer_to_slot( slot, data_length );
        if( status != ((psa_status_t)0) )
            return( status );
        memcpy( slot->data.key.data, data, data_length );
        slot->attr.bits = (psa_key_bits_t) bit_size;
    }
    else if( ((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) )
    {
        status = psa_import_ecp_key( slot,
                                     data, data_length );
    }
    else if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) )
    {
        status = psa_import_rsa_key( slot,
                                     data, data_length );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
    return( status );
}
static psa_algorithm_t psa_key_policy_algorithm_intersection(
    psa_algorithm_t alg1,
    psa_algorithm_t alg2 )
{
    if( alg1 == alg2 )
        return( alg1 );
    if( ((((alg1) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) &&
        ((((alg2) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) &&
        ( alg1 & ~((psa_algorithm_t)0x000000ff) ) == ( alg2 & ~((psa_algorithm_t)0x000000ff) ) )
    {
        if( (((((alg1) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg1) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) ? ((alg1) & ((psa_algorithm_t)0x000000ff)) == 0 ? 0 : ((alg1) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0) == ((psa_algorithm_t)0x010000ff) )
            return( alg2 );
        if( (((((alg2) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg2) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) ? ((alg2) & ((psa_algorithm_t)0x000000ff)) == 0 ? 0 : ((alg2) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0) == ((psa_algorithm_t)0x010000ff) )
            return( alg1 );
    }
    return( 0 );
}
static int psa_key_algorithm_permits( psa_algorithm_t policy_alg,
                                      psa_algorithm_t requested_alg )
{
    if( requested_alg == policy_alg )
        return( 1 );
    if( ((((requested_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((requested_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((requested_alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((requested_alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) &&
        (((((policy_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((policy_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((policy_alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((policy_alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) ? ((policy_alg) & ((psa_algorithm_t)0x000000ff)) == 0 ? 0 : ((policy_alg) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0) == ((psa_algorithm_t)0x010000ff) )
    {
        return( ( policy_alg & ~((psa_algorithm_t)0x000000ff) ) ==
                ( requested_alg & ~((psa_algorithm_t)0x000000ff) ) );
    }
    return( 0 );
}
static int psa_key_policy_permits( const psa_key_policy_t *policy,
                                   psa_algorithm_t alg )
{
    return( psa_key_algorithm_permits( policy->alg, alg ) ||
            psa_key_algorithm_permits( policy->alg2, alg ) );
}
static psa_status_t psa_restrict_key_policy(
    psa_key_policy_t *policy,
    const psa_key_policy_t *constraint )
{
    psa_algorithm_t intersection_alg =
        psa_key_policy_algorithm_intersection( policy->alg, constraint->alg );
    psa_algorithm_t intersection_alg2 =
        psa_key_policy_algorithm_intersection( policy->alg2, constraint->alg2 );
    if( intersection_alg == 0 && policy->alg != 0 && constraint->alg != 0 )
        return( ((psa_status_t)-135) );
    if( intersection_alg2 == 0 && policy->alg2 != 0 && constraint->alg2 != 0 )
        return( ((psa_status_t)-135) );
    policy->usage &= constraint->usage;
    policy->alg = intersection_alg;
    policy->alg2 = intersection_alg2;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_get_key_from_slot( psa_key_handle_t handle,
                                           psa_key_slot_t **p_slot,
                                           psa_key_usage_t usage,
                                           psa_algorithm_t alg )
{
    psa_status_t status;
    psa_key_slot_t *slot = ((void*)0);
    *p_slot = ((void*)0);
    status = psa_get_key_slot( handle, &slot );
    if( status != ((psa_status_t)0) )
        return( status );
    if( (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) )
        usage &= ~((psa_key_usage_t)0x00000001);
    if( ( slot->attr.policy.usage & usage ) != usage )
        return( ((psa_status_t)-133) );
    if( alg != 0 && ! psa_key_policy_permits( &slot->attr.policy, alg ) )
        return( ((psa_status_t)-133) );
    *p_slot = slot;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_remove_key_data_from_memory( psa_key_slot_t *slot )
{
    {
        if( slot->data.key.data != ((void*)0) )
            mbedtls_platform_zeroize( slot->data.key.data, slot->data.key.bytes);
        free( slot->data.key.data );
        slot->data.key.data = ((void*)0);
        slot->data.key.bytes = 0;
    }
    return( ((psa_status_t)0) );
}
psa_status_t psa_wipe_key_slot( psa_key_slot_t *slot )
{
    psa_status_t status = psa_remove_key_data_from_memory( slot );
    memset( slot, 0, sizeof( *slot ) );
    return( status );
}
psa_status_t psa_destroy_key( psa_key_handle_t handle )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    psa_status_t overall_status = ((psa_status_t)0);
    if( handle == 0 )
        return( ((psa_status_t)0) );
    status = psa_get_key_slot( handle, &slot );
    if( status != ((psa_status_t)0) )
        return( status );
    if( slot->attr.lifetime != ((psa_key_lifetime_t)0x00000000) )
    {
        status = psa_destroy_persistent_key( slot->attr.id );
        if( overall_status == ((psa_status_t)0) )
            overall_status = status;
    }
    status = psa_wipe_key_slot( slot );
    if( overall_status == ((psa_status_t)0) )
        overall_status = status;
    return( overall_status );
}
void psa_reset_key_attributes( psa_key_attributes_t *attributes )
{
    free( attributes->domain_parameters );
    memset( attributes, 0, sizeof( *attributes ) );
}
psa_status_t psa_set_key_domain_parameters( psa_key_attributes_t *attributes,
                                            psa_key_type_t type,
                                            const uint8_t *data,
                                            size_t data_length )
{
    uint8_t *copy = ((void*)0);
    if( data_length != 0 )
    {
        copy = calloc( 1, data_length );
        if( copy == ((void*)0) )
            return( ((psa_status_t)-141) );
        memcpy( copy, data, data_length );
    }
    if( attributes->domain_parameters != ((void*)0) )
    {
        free( attributes->domain_parameters );
        attributes->domain_parameters = ((void*)0);
        attributes->domain_parameters_size = 0;
    }
    attributes->domain_parameters = copy;
    attributes->domain_parameters_size = data_length;
    attributes->core.type = type;
    return( ((psa_status_t)0) );
}
psa_status_t psa_get_key_domain_parameters(
    const psa_key_attributes_t *attributes,
    uint8_t *data, size_t data_size, size_t *data_length )
{
    if( attributes->domain_parameters_size > data_size )
        return( ((psa_status_t)-138) );
    *data_length = attributes->domain_parameters_size;
    if( attributes->domain_parameters_size != 0 )
        memcpy( data, attributes->domain_parameters,
                attributes->domain_parameters_size );
    return( ((psa_status_t)0) );
}
static psa_status_t psa_get_rsa_public_exponent(
    const mbedtls_rsa_context *rsa,
    psa_key_attributes_t *attributes )
{
    mbedtls_mpi mpi;
    int ret = -0x006E;
    uint8_t *buffer = ((void*)0);
    size_t buflen;
    mbedtls_mpi_init( &mpi );
    ret = mbedtls_rsa_export( rsa, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &mpi );
    if( ret != 0 )
        goto exit;
    if( mbedtls_mpi_cmp_int( &mpi, 65537 ) == 0 )
    {
        goto exit;
    }
    buflen = mbedtls_mpi_size( &mpi );
    buffer = calloc( 1, buflen );
    if( buffer == ((void*)0) )
    {
        ret = -0x0010;
        goto exit;
    }
    ret = mbedtls_mpi_write_binary( &mpi, buffer, buflen );
    if( ret != 0 )
        goto exit;
    attributes->domain_parameters = buffer;
    attributes->domain_parameters_size = buflen;
exit:
    mbedtls_mpi_free( &mpi );
    if( ret != 0 )
        free( buffer );
    return( mbedtls_to_psa_error( ret ) );
}
psa_status_t psa_get_key_attributes( psa_key_handle_t handle,
                                     psa_key_attributes_t *attributes )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    psa_reset_key_attributes( attributes );
    status = psa_get_key_from_slot( handle, &slot, 0, 0 );
    if( status != ((psa_status_t)0) )
        return( status );
    attributes->core = slot->attr;
    attributes->core.flags &= ( ( ( (psa_key_attributes_flag_t) 0x0001 ) | 0 ) |
                                ( 0 ) );
    switch( slot->attr.type )
    {
        case ((psa_key_type_t)0x7001):
        case ((psa_key_type_t)0x4001):
            {
                mbedtls_rsa_context *rsa = ((void*)0);
                status = psa_load_rsa_representation( slot->attr.type,
                                                      slot->data.key.data,
                                                      slot->data.key.bytes,
                                                      &rsa );
                if( status != ((psa_status_t)0) )
                    break;
                status = psa_get_rsa_public_exponent( rsa,
                                                      attributes );
                mbedtls_rsa_free( rsa );
                free( rsa );
            }
            break;
        default:
            break;
    }
    if( status != ((psa_status_t)0) )
        psa_reset_key_attributes( attributes );
    return( status );
}
static psa_status_t psa_internal_export_key_buffer( const psa_key_slot_t *slot,
                                                    uint8_t *data,
                                                    size_t data_size,
                                                    size_t *data_length )
{
    if( slot->data.key.bytes > data_size )
        return( ((psa_status_t)-138) );
    memcpy( data, slot->data.key.data, slot->data.key.bytes );
    memset( data + slot->data.key.bytes, 0,
            data_size - slot->data.key.bytes );
    *data_length = slot->data.key.bytes;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_internal_export_key( const psa_key_slot_t *slot,
                                             uint8_t *data,
                                             size_t data_size,
                                             size_t *data_length,
                                             int export_public_key )
{
    *data_length = 0;
    if( export_public_key && ! (((slot->attr.type) & ((psa_key_type_t)0x7000) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4000)) )
        return( ((psa_status_t)-135) );
    if( data_size == 0 )
        return( ((psa_status_t)-138) );
    if( key_type_is_raw_bytes( slot->attr.type ) )
    {
        return( psa_internal_export_key_buffer( slot, data, data_size, data_length ) );
    }
    else if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) ||
             ((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) )
    {
        if( (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) )
        {
            return( psa_internal_export_key_buffer( slot, data, data_size, data_length ) );
        }
        else if( !export_public_key )
        {
            return( psa_internal_export_key_buffer( slot, data, data_size, data_length ) );
        }
        if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) )
        {
            mbedtls_rsa_context *rsa = ((void*)0);
            psa_status_t status = psa_load_rsa_representation(
                                    slot->attr.type,
                                    slot->data.key.data,
                                    slot->data.key.bytes,
                                    &rsa );
            if( status != ((psa_status_t)0) )
                return( status );
            status = psa_export_rsa_key( ((psa_key_type_t)0x4001),
                                         rsa,
                                         data,
                                         data_size,
                                         data_length );
            mbedtls_rsa_free( rsa );
            free( rsa );
            return( status );
        }
        else
        {
            mbedtls_ecp_keypair *ecp = ((void*)0);
            psa_status_t status = psa_load_ecp_representation(
                                    slot->attr.type,
                                    slot->data.key.data,
                                    slot->data.key.bytes,
                                    &ecp );
            if( status != ((psa_status_t)0) )
                return( status );
            status = psa_export_ecp_key( (((psa_key_type_t)0x4100) | (((psa_ecc_family_t) (((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? ((slot->attr.type) & ((psa_key_type_t)0x00ff)) : 0)))),
                                         ecp,
                                         data,
                                         data_size,
                                         data_length );
            mbedtls_ecp_keypair_free( ecp );
            free( ecp );
            return( status );
        }
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
}
psa_status_t psa_export_key( psa_key_handle_t handle,
                             uint8_t *data,
                             size_t data_size,
                             size_t *data_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    *data_length = 0;
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00000001), 0 );
    if( status != ((psa_status_t)0) )
        return( status );
    return( psa_internal_export_key( slot, data, data_size,
                                     data_length, 0 ) );
}
psa_status_t psa_export_public_key( psa_key_handle_t handle,
                                    uint8_t *data,
                                    size_t data_size,
                                    size_t *data_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    *data_length = 0;
    status = psa_get_key_from_slot( handle, &slot, 0, 0 );
    if( status != ((psa_status_t)0) )
        return( status );
    return( psa_internal_export_key( slot, data, data_size,
                                     data_length, 1 ) );
}
_Static_assert( ( ( ( (psa_key_attributes_flag_t) 0x0001 ) | 0 ) & ( 0 ) ) == 0,
               "One or more key attribute flag is listed as both external-only and dual-use" );
_Static_assert( ( ( 0 ) & ( 0 ) ) == 0,
               "One or more key attribute flag is listed as both internal-only and dual-use" );
_Static_assert( ( ( 0 ) & ( ( (psa_key_attributes_flag_t) 0x0001 ) | 0 ) ) == 0,
               "One or more key attribute flag is listed as both internal-only and external-only" );
static psa_status_t psa_validate_key_policy( const psa_key_policy_t *policy )
{
    if( ( policy->usage & ~( ((psa_key_usage_t)0x00000001) |
                             ((psa_key_usage_t)0x00000002) |
                             ((psa_key_usage_t)0x00000100) |
                             ((psa_key_usage_t)0x00000200) |
                             ((psa_key_usage_t)0x00000400) |
                             ((psa_key_usage_t)0x00000800) |
                             ((psa_key_usage_t)0x00001000) ) ) != 0 )
        return( ((psa_status_t)-135) );
    return( ((psa_status_t)0) );
}
static psa_status_t psa_validate_key_attributes(
    const psa_key_attributes_t *attributes,
    psa_se_drv_table_entry_t **p_drv )
{
    psa_status_t status = ((psa_status_t)-135);
    status = psa_validate_key_location( psa_get_key_lifetime( attributes ),
                                        p_drv );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_validate_key_persistence( psa_get_key_lifetime( attributes ),
                                           psa_get_key_id( attributes ) );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_validate_key_policy( &attributes->core.policy );
    if( status != ((psa_status_t)0) )
        return( status );
    if( psa_get_key_bits( attributes ) > 0xfff8 )
        return( ((psa_status_t)-134) );
    if( attributes->core.flags & ~ ( ( ( (psa_key_attributes_flag_t) 0x0001 ) | 0 ) |
                                     ( 0 ) ) )
        return( ((psa_status_t)-135) );
    return( ((psa_status_t)0) );
}
static psa_status_t psa_start_key_creation(
    psa_key_creation_method_t method,
    const psa_key_attributes_t *attributes,
    psa_key_handle_t *handle,
    psa_key_slot_t **p_slot,
    psa_se_drv_table_entry_t **p_drv )
{
    psa_status_t status;
    psa_key_slot_t *slot;
    (void) method;
    *p_drv = ((void*)0);
    status = psa_validate_key_attributes( attributes, p_drv );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_get_empty_key_slot( handle, p_slot );
    if( status != ((psa_status_t)0) )
        return( status );
    slot = *p_slot;
    slot->attr = attributes->core;
    slot->attr.flags &= ~( ( (psa_key_attributes_flag_t) 0x0001 ) | 0 );
    return( status );
}
static psa_status_t psa_finish_key_creation(
    psa_key_slot_t *slot,
    psa_se_drv_table_entry_t *driver )
{
    psa_status_t status = ((psa_status_t)0);
    (void) slot;
    (void) driver;
    if( ! (((psa_key_persistence_t)((slot->attr.lifetime) & 0x000000ff)) == ((psa_key_persistence_t)0x00)) )
    {
        {
            size_t buffer_size =
                ((((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x1000) || ((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000)) ? (((slot->attr.bits) + 7) / 8) : (slot->attr.type) == ((psa_key_type_t)0x7001) ? (9 * (((slot->attr.bits) / 2 + 1) / 8 + 5) + 14) : (slot->attr.type) == ((psa_key_type_t)0x4001) ? (((slot->attr.bits) / 8 + 5) + 11) : (slot->attr.type) == ((psa_key_type_t)0x7002) ? (((slot->attr.bits) / 8 + 5) * 3 + 75) : (slot->attr.type) == ((psa_key_type_t)0x4002) ? (((slot->attr.bits) / 8 + 5) * 3 + 59) : (((slot->attr.type) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x7100)) ? ((((slot->attr.bits) + 7) / 8)) : (((slot->attr.type) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? (2 * (((slot->attr.bits) + 7) / 8) + 1) : 0);
            uint8_t *buffer = calloc( 1, buffer_size );
            size_t length = 0;
            if( buffer == ((void*)0) )
                return( ((psa_status_t)-141) );
            status = psa_internal_export_key( slot,
                                              buffer, buffer_size, &length,
                                              0 );
            if( status == ((psa_status_t)0) )
                status = psa_save_persistent_key( &slot->attr,
                                                  buffer, length );
            mbedtls_platform_zeroize( buffer, buffer_size );
            free( buffer );
        }
    }
    return( status );
}
static void psa_fail_key_creation( psa_key_slot_t *slot,
                                   psa_se_drv_table_entry_t *driver )
{
    (void) driver;
    if( slot == ((void*)0) )
        return;
    psa_wipe_key_slot( slot );
}
static psa_status_t psa_validate_optional_attributes(
    const psa_key_slot_t *slot,
    const psa_key_attributes_t *attributes )
{
    if( attributes->core.type != 0 )
    {
        if( attributes->core.type != slot->attr.type )
            return( ((psa_status_t)-135) );
    }
    if( attributes->domain_parameters_size != 0 )
    {
        if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) )
        {
            mbedtls_rsa_context *rsa = ((void*)0);
            mbedtls_mpi actual, required;
            int ret = -0x006E;
            psa_status_t status = psa_load_rsa_representation(
                                    slot->attr.type,
                                    slot->data.key.data,
                                    slot->data.key.bytes,
                                    &rsa );
            if( status != ((psa_status_t)0) )
                return( status );
            mbedtls_mpi_init( &actual );
            mbedtls_mpi_init( &required );
            ret = mbedtls_rsa_export( rsa,
                                      ((void*)0), ((void*)0), ((void*)0), ((void*)0), &actual );
            mbedtls_rsa_free( rsa );
            free( rsa );
            if( ret != 0 )
                goto rsa_exit;
            ret = mbedtls_mpi_read_binary( &required,
                                           attributes->domain_parameters,
                                           attributes->domain_parameters_size );
            if( ret != 0 )
                goto rsa_exit;
            if( mbedtls_mpi_cmp_mpi( &actual, &required ) != 0 )
                ret = -0x4080;
        rsa_exit:
            mbedtls_mpi_free( &actual );
            mbedtls_mpi_free( &required );
            if( ret != 0)
                return( mbedtls_to_psa_error( ret ) );
        }
        else
        {
            return( ((psa_status_t)-135) );
        }
    }
    if( attributes->core.bits != 0 )
    {
        if( attributes->core.bits != slot->attr.bits )
            return( ((psa_status_t)-135) );
    }
    return( ((psa_status_t)0) );
}
psa_status_t psa_import_key( const psa_key_attributes_t *attributes,
                             const uint8_t *data,
                             size_t data_length,
                             psa_key_handle_t *handle )
{
    psa_status_t status;
    psa_key_slot_t *slot = ((void*)0);
    psa_se_drv_table_entry_t *driver = ((void*)0);
    if( data_length == 0 )
        return( ((psa_status_t)-135) );
    status = psa_start_key_creation( PSA_KEY_CREATION_IMPORT, attributes,
                                     handle, &slot, &driver );
    if( status != ((psa_status_t)0) )
        goto exit;
    {
        status = psa_import_key_into_slot( slot, data, data_length );
        if( status != ((psa_status_t)0) )
            goto exit;
    }
    status = psa_validate_optional_attributes( slot, attributes );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_finish_key_creation( slot, driver );
exit:
    if( status != ((psa_status_t)0) )
    {
        psa_fail_key_creation( slot, driver );
        *handle = 0;
    }
    return( status );
}
static psa_status_t psa_copy_key_material( const psa_key_slot_t *source,
                                           psa_key_slot_t *target )
{
    psa_status_t status;
    uint8_t *buffer = ((void*)0);
    size_t buffer_size = 0;
    size_t length;
    buffer_size = ((((source->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x1000) || ((source->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000)) ? (((psa_get_key_slot_bits( source )) + 7) / 8) : (source->attr.type) == ((psa_key_type_t)0x7001) ? (9 * (((psa_get_key_slot_bits( source )) / 2 + 1) / 8 + 5) + 14) : (source->attr.type) == ((psa_key_type_t)0x4001) ? (((psa_get_key_slot_bits( source )) / 8 + 5) + 11) : (source->attr.type) == ((psa_key_type_t)0x7002) ? (((psa_get_key_slot_bits( source )) / 8 + 5) * 3 + 75) : (source->attr.type) == ((psa_key_type_t)0x4002) ? (((psa_get_key_slot_bits( source )) / 8 + 5) * 3 + 59) : (((source->attr.type) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x7100)) ? ((((psa_get_key_slot_bits( source )) + 7) / 8)) : (((source->attr.type) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? (2 * (((psa_get_key_slot_bits( source )) + 7) / 8) + 1) : 0);
    buffer = calloc( 1, buffer_size );
    if( buffer == ((void*)0) )
        return( ((psa_status_t)-141) );
    status = psa_internal_export_key( source, buffer, buffer_size, &length, 0 );
    if( status != ((psa_status_t)0) )
        goto exit;
    target->attr.type = source->attr.type;
    status = psa_import_key_into_slot( target, buffer, length );
exit:
    mbedtls_platform_zeroize( buffer, buffer_size );
    free( buffer );
    return( status );
}
psa_status_t psa_copy_key( psa_key_handle_t source_handle,
                           const psa_key_attributes_t *specified_attributes,
                           psa_key_handle_t *target_handle )
{
    psa_status_t status;
    psa_key_slot_t *source_slot = ((void*)0);
    psa_key_slot_t *target_slot = ((void*)0);
    psa_key_attributes_t actual_attributes = *specified_attributes;
    psa_se_drv_table_entry_t *driver = ((void*)0);
    status = psa_get_key_from_slot( source_handle, &source_slot, ((psa_key_usage_t)0x00000002), 0 );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_validate_optional_attributes( source_slot,
                                               specified_attributes );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_restrict_key_policy( &actual_attributes.core.policy,
                                      &source_slot->attr.policy );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_start_key_creation( PSA_KEY_CREATION_COPY,
                                     &actual_attributes,
                                     target_handle, &target_slot, &driver );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_copy_key_material( source_slot, target_slot );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_finish_key_creation( target_slot, driver );
exit:
    if( status != ((psa_status_t)0) )
    {
        psa_fail_key_creation( target_slot, driver );
        *target_handle = 0;
    }
    return( status );
}
static const mbedtls_md_info_t *mbedtls_md_info_from_psa( psa_algorithm_t alg )
{
    switch( alg )
    {
        case ((psa_algorithm_t)0x01000003):
            return( &mbedtls_md5_info );
        case ((psa_algorithm_t)0x01000004):
            return( &mbedtls_ripemd160_info );
        case ((psa_algorithm_t)0x01000005):
            return( &mbedtls_sha1_info );
        case ((psa_algorithm_t)0x01000008):
            return( &mbedtls_sha224_info );
        case ((psa_algorithm_t)0x01000009):
            return( &mbedtls_sha256_info );
        case ((psa_algorithm_t)0x0100000a):
            return( &mbedtls_sha384_info );
        case ((psa_algorithm_t)0x0100000b):
            return( &mbedtls_sha512_info );
        default:
            return( ((void*)0) );
    }
}
psa_status_t psa_hash_abort( psa_hash_operation_t *operation )
{
    switch( operation->alg )
    {
        case 0:
            break;
        case ((psa_algorithm_t)0x01000003):
            mbedtls_md5_free( &operation->ctx.md5 );
            break;
        case ((psa_algorithm_t)0x01000004):
            mbedtls_ripemd160_free( &operation->ctx.ripemd160 );
            break;
        case ((psa_algorithm_t)0x01000005):
            mbedtls_sha1_free( &operation->ctx.sha1 );
            break;
        case ((psa_algorithm_t)0x01000008):
        case ((psa_algorithm_t)0x01000009):
            mbedtls_sha256_free( &operation->ctx.sha256 );
            break;
        case ((psa_algorithm_t)0x0100000a):
        case ((psa_algorithm_t)0x0100000b):
            mbedtls_sha512_free( &operation->ctx.sha512 );
            break;
        default:
            return( ((psa_status_t)-137) );
    }
    operation->alg = 0;
    return( ((psa_status_t)0) );
}
psa_status_t psa_hash_setup( psa_hash_operation_t *operation,
                             psa_algorithm_t alg )
{
    int ret = -0x006E;
    if( operation->alg != 0 )
    {
        return( ((psa_status_t)-137) );
    }
    switch( alg )
    {
        case ((psa_algorithm_t)0x01000003):
            mbedtls_md5_init( &operation->ctx.md5 );
            ret = mbedtls_md5_starts_ret( &operation->ctx.md5 );
            break;
        case ((psa_algorithm_t)0x01000004):
            mbedtls_ripemd160_init( &operation->ctx.ripemd160 );
            ret = mbedtls_ripemd160_starts_ret( &operation->ctx.ripemd160 );
            break;
        case ((psa_algorithm_t)0x01000005):
            mbedtls_sha1_init( &operation->ctx.sha1 );
            ret = mbedtls_sha1_starts_ret( &operation->ctx.sha1 );
            break;
        case ((psa_algorithm_t)0x01000008):
            mbedtls_sha256_init( &operation->ctx.sha256 );
            ret = mbedtls_sha256_starts_ret( &operation->ctx.sha256, 1 );
            break;
        case ((psa_algorithm_t)0x01000009):
            mbedtls_sha256_init( &operation->ctx.sha256 );
            ret = mbedtls_sha256_starts_ret( &operation->ctx.sha256, 0 );
            break;
        case ((psa_algorithm_t)0x0100000a):
            mbedtls_sha512_init( &operation->ctx.sha512 );
            ret = mbedtls_sha512_starts_ret( &operation->ctx.sha512, 1 );
            break;
        case ((psa_algorithm_t)0x0100000b):
            mbedtls_sha512_init( &operation->ctx.sha512 );
            ret = mbedtls_sha512_starts_ret( &operation->ctx.sha512, 0 );
            break;
        default:
            return( (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x01000000)) ?
                    ((psa_status_t)-134) :
                    ((psa_status_t)-135) );
    }
    if( ret == 0 )
        operation->alg = alg;
    else
        psa_hash_abort( operation );
    return( mbedtls_to_psa_error( ret ) );
}
psa_status_t psa_hash_update( psa_hash_operation_t *operation,
                              const uint8_t *input,
                              size_t input_length )
{
    int ret = -0x006E;
    if( input_length == 0 )
        return( ((psa_status_t)0) );
    switch( operation->alg )
    {
        case ((psa_algorithm_t)0x01000003):
            ret = mbedtls_md5_update_ret( &operation->ctx.md5,
                                          input, input_length );
            break;
        case ((psa_algorithm_t)0x01000004):
            ret = mbedtls_ripemd160_update_ret( &operation->ctx.ripemd160,
                                                input, input_length );
            break;
        case ((psa_algorithm_t)0x01000005):
            ret = mbedtls_sha1_update_ret( &operation->ctx.sha1,
                                           input, input_length );
            break;
        case ((psa_algorithm_t)0x01000008):
        case ((psa_algorithm_t)0x01000009):
            ret = mbedtls_sha256_update_ret( &operation->ctx.sha256,
                                             input, input_length );
            break;
        case ((psa_algorithm_t)0x0100000a):
        case ((psa_algorithm_t)0x0100000b):
            ret = mbedtls_sha512_update_ret( &operation->ctx.sha512,
                                             input, input_length );
            break;
        default:
            return( ((psa_status_t)-137) );
    }
    if( ret != 0 )
        psa_hash_abort( operation );
    return( mbedtls_to_psa_error( ret ) );
}
psa_status_t psa_hash_finish( psa_hash_operation_t *operation,
                              uint8_t *hash,
                              size_t hash_size,
                              size_t *hash_length )
{
    psa_status_t status;
    int ret = -0x006E;
    size_t actual_hash_length = ( (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((operation->alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
    *hash_length = hash_size;
    if( hash_size != 0 )
        memset( hash, '!', hash_size );
    if( hash_size < actual_hash_length )
    {
        status = ((psa_status_t)-138);
        goto exit;
    }
    switch( operation->alg )
    {
        case ((psa_algorithm_t)0x01000003):
            ret = mbedtls_md5_finish_ret( &operation->ctx.md5, hash );
            break;
        case ((psa_algorithm_t)0x01000004):
            ret = mbedtls_ripemd160_finish_ret( &operation->ctx.ripemd160, hash );
            break;
        case ((psa_algorithm_t)0x01000005):
            ret = mbedtls_sha1_finish_ret( &operation->ctx.sha1, hash );
            break;
        case ((psa_algorithm_t)0x01000008):
        case ((psa_algorithm_t)0x01000009):
            ret = mbedtls_sha256_finish_ret( &operation->ctx.sha256, hash );
            break;
        case ((psa_algorithm_t)0x0100000a):
        case ((psa_algorithm_t)0x0100000b):
            ret = mbedtls_sha512_finish_ret( &operation->ctx.sha512, hash );
            break;
        default:
            return( ((psa_status_t)-137) );
    }
    status = mbedtls_to_psa_error( ret );
exit:
    if( status == ((psa_status_t)0) )
    {
        *hash_length = actual_hash_length;
        return( psa_hash_abort( operation ) );
    }
    else
    {
        psa_hash_abort( operation );
        return( status );
    }
}
psa_status_t psa_hash_verify( psa_hash_operation_t *operation,
                              const uint8_t *hash,
                              size_t hash_length )
{
    uint8_t actual_hash[64];
    size_t actual_hash_length;
    psa_status_t status = psa_hash_finish( operation,
                                           actual_hash, sizeof( actual_hash ),
                                           &actual_hash_length );
    if( status != ((psa_status_t)0) )
        return( status );
    if( actual_hash_length != hash_length )
        return( ((psa_status_t)-149) );
    if( safer_memcmp( hash, actual_hash, actual_hash_length ) != 0 )
        return( ((psa_status_t)-149) );
    return( ((psa_status_t)0) );
}
psa_status_t psa_hash_compute( psa_algorithm_t alg,
                               const uint8_t *input, size_t input_length,
                               uint8_t *hash, size_t hash_size,
                               size_t *hash_length )
{
    psa_hash_operation_t operation = {0, {0}};
    psa_status_t status = ((psa_status_t)-151);
    *hash_length = hash_size;
    status = psa_hash_setup( &operation, alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_update( &operation, input, input_length );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_finish( &operation, hash, hash_size, hash_length );
    if( status != ((psa_status_t)0) )
        goto exit;
exit:
    if( status == ((psa_status_t)0) )
        status = psa_hash_abort( &operation );
    else
        psa_hash_abort( &operation );
    return( status );
}
psa_status_t psa_hash_compare( psa_algorithm_t alg,
                               const uint8_t *input, size_t input_length,
                               const uint8_t *hash, size_t hash_length )
{
    psa_hash_operation_t operation = {0, {0}};
    psa_status_t status = ((psa_status_t)-151);
    status = psa_hash_setup( &operation, alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_update( &operation, input, input_length );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_verify( &operation, hash, hash_length );
    if( status != ((psa_status_t)0) )
        goto exit;
exit:
    if( status == ((psa_status_t)0) )
        status = psa_hash_abort( &operation );
    else
        psa_hash_abort( &operation );
    return( status );
}
psa_status_t psa_hash_clone( const psa_hash_operation_t *source_operation,
                             psa_hash_operation_t *target_operation )
{
    if( target_operation->alg != 0 )
        return( ((psa_status_t)-137) );
    switch( source_operation->alg )
    {
        case 0:
            return( ((psa_status_t)-137) );
        case ((psa_algorithm_t)0x01000003):
            mbedtls_md5_clone( &target_operation->ctx.md5,
                               &source_operation->ctx.md5 );
            break;
        case ((psa_algorithm_t)0x01000004):
            mbedtls_ripemd160_clone( &target_operation->ctx.ripemd160,
                                     &source_operation->ctx.ripemd160 );
            break;
        case ((psa_algorithm_t)0x01000005):
            mbedtls_sha1_clone( &target_operation->ctx.sha1,
                                &source_operation->ctx.sha1 );
            break;
        case ((psa_algorithm_t)0x01000008):
        case ((psa_algorithm_t)0x01000009):
            mbedtls_sha256_clone( &target_operation->ctx.sha256,
                                  &source_operation->ctx.sha256 );
            break;
        case ((psa_algorithm_t)0x0100000a):
        case ((psa_algorithm_t)0x0100000b):
            mbedtls_sha512_clone( &target_operation->ctx.sha512,
                                  &source_operation->ctx.sha512 );
            break;
        default:
            return( ((psa_status_t)-134) );
    }
    target_operation->alg = source_operation->alg;
    return( ((psa_status_t)0) );
}
static const mbedtls_cipher_info_t *mbedtls_cipher_info_from_psa(
    psa_algorithm_t alg,
    psa_key_type_t key_type,
    size_t key_bits,
    mbedtls_cipher_id_t* cipher_id )
{
    mbedtls_cipher_mode_t mode;
    mbedtls_cipher_id_t cipher_id_tmp;
    if( (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x06000000)) )
        alg = (((alg) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00)));
    if( (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x04000000)) || (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x06000000)) )
    {
        switch( alg )
        {
            case ((psa_algorithm_t)0x04800001):
            case ((psa_algorithm_t)0x04800005):
                mode = MBEDTLS_MODE_STREAM;
                break;
            case ((psa_algorithm_t)0x04c00001):
                mode = MBEDTLS_MODE_CTR;
                break;
            case ((psa_algorithm_t)0x04c00002):
                mode = MBEDTLS_MODE_CFB;
                break;
            case ((psa_algorithm_t)0x04c00003):
                mode = MBEDTLS_MODE_OFB;
                break;
            case ((psa_algorithm_t)0x04600100):
                mode = MBEDTLS_MODE_CBC;
                break;
            case ((psa_algorithm_t)0x04600101):
                mode = MBEDTLS_MODE_CBC;
                break;
            case (((((psa_algorithm_t)0x06401001)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
                mode = MBEDTLS_MODE_CCM;
                break;
            case (((((psa_algorithm_t)0x06401002)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
                mode = MBEDTLS_MODE_GCM;
                break;
            case (((((psa_algorithm_t)0x06001005)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
                mode = MBEDTLS_MODE_CHACHAPOLY;
                break;
            default:
                return( ((void*)0) );
        }
    }
    else if( alg == ((psa_algorithm_t)0x02c00002) )
        mode = MBEDTLS_MODE_ECB;
    else
        return( ((void*)0) );
    switch( key_type )
    {
        case ((psa_key_type_t)0x2400):
            cipher_id_tmp = MBEDTLS_CIPHER_ID_AES;
            break;
        case ((psa_key_type_t)0x2301):
            if( key_bits == 64 )
                cipher_id_tmp = MBEDTLS_CIPHER_ID_DES;
            else
                cipher_id_tmp = MBEDTLS_CIPHER_ID_3DES;
            if( key_bits == 128 )
                key_bits = 192;
            break;
        case ((psa_key_type_t)0x2403):
            cipher_id_tmp = MBEDTLS_CIPHER_ID_CAMELLIA;
            break;
        case ((psa_key_type_t)0x2002):
            cipher_id_tmp = MBEDTLS_CIPHER_ID_ARC4;
            break;
        case ((psa_key_type_t)0x2004):
            cipher_id_tmp = MBEDTLS_CIPHER_ID_CHACHA20;
            break;
        default:
            return( ((void*)0) );
    }
    if( cipher_id != ((void*)0) )
        *cipher_id = cipher_id_tmp;
    return( mbedtls_cipher_info_from_values( cipher_id_tmp,
                                             (int) key_bits, mode ) );
}
static size_t psa_get_hash_block_size( psa_algorithm_t alg )
{
    switch( alg )
    {
        case ((psa_algorithm_t)0x01000001):
            return( 16 );
        case ((psa_algorithm_t)0x01000002):
            return( 64 );
        case ((psa_algorithm_t)0x01000003):
            return( 64 );
        case ((psa_algorithm_t)0x01000004):
            return( 64 );
        case ((psa_algorithm_t)0x01000005):
            return( 64 );
        case ((psa_algorithm_t)0x01000008):
            return( 64 );
        case ((psa_algorithm_t)0x01000009):
            return( 64 );
        case ((psa_algorithm_t)0x0100000a):
            return( 128 );
        case ((psa_algorithm_t)0x0100000b):
            return( 128 );
        default:
            return( 0 );
    }
}
static psa_status_t psa_mac_init( psa_mac_operation_t *operation,
                                  psa_algorithm_t alg )
{
    psa_status_t status = ((psa_status_t)-134);
    operation->alg = alg;
    operation->key_set = 0;
    operation->iv_set = 0;
    operation->iv_required = 0;
    operation->has_input = 0;
    operation->is_sign = 0;
    if( (((operation->alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00c00000))) == ((psa_algorithm_t)0x02800000)) )
    {
        operation->ctx.hmac.hash_ctx.alg = 0;
        status = ((psa_status_t)0);
    }
    else
    {
        if( ! (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x02000000)) )
            status = ((psa_status_t)-135);
    }
    if( status != ((psa_status_t)0) )
        memset( operation, 0, sizeof( *operation ) );
    return( status );
}
static psa_status_t psa_hmac_abort_internal( psa_hmac_internal_data *hmac )
{
    mbedtls_platform_zeroize( hmac->opad, sizeof( hmac->opad ) );
    return( psa_hash_abort( &hmac->hash_ctx ) );
}
psa_status_t psa_mac_abort( psa_mac_operation_t *operation )
{
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)0) );
    }
    else
    if( (((operation->alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00c00000))) == ((psa_algorithm_t)0x02800000)) )
    {
        psa_hmac_abort_internal( &operation->ctx.hmac );
    }
    else
    {
        goto bad_state;
    }
    operation->alg = 0;
    operation->key_set = 0;
    operation->iv_set = 0;
    operation->iv_required = 0;
    operation->has_input = 0;
    operation->is_sign = 0;
    return( ((psa_status_t)0) );
bad_state:
    memset( operation, 0, sizeof( *operation ) );
    return( ((psa_status_t)-137) );
}
static psa_status_t psa_hmac_setup_internal( psa_hmac_internal_data *hmac,
                                             const uint8_t *key,
                                             size_t key_length,
                                             psa_algorithm_t hash_alg )
{
    uint8_t ipad[128];
    size_t i;
    size_t hash_size = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
    size_t block_size = psa_get_hash_block_size( hash_alg );
    psa_status_t status;
    if( block_size > sizeof( ipad ) )
        return( ((psa_status_t)-134) );
    if( block_size > sizeof( hmac->opad ) )
        return( ((psa_status_t)-134) );
    if( block_size < hash_size )
        return( ((psa_status_t)-134) );
    if( key_length > block_size )
    {
        status = psa_hash_compute( hash_alg, key, key_length,
                                   ipad, sizeof( ipad ), &key_length );
        if( status != ((psa_status_t)0) )
            goto cleanup;
    }
    else if( key_length != 0 )
        memcpy( ipad, key, key_length );
    for( i = 0; i < key_length; i++ )
        ipad[i] ^= 0x36;
    memset( ipad + key_length, 0x36, block_size - key_length );
    for( i = 0; i < key_length; i++ )
        hmac->opad[i] = ipad[i] ^ 0x36 ^ 0x5C;
    memset( hmac->opad + key_length, 0x5C, block_size - key_length );
    status = psa_hash_setup( &hmac->hash_ctx, hash_alg );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_update( &hmac->hash_ctx, ipad, block_size );
cleanup:
    mbedtls_platform_zeroize( ipad, sizeof( ipad ) );
    return( status );
}
static psa_status_t psa_mac_setup( psa_mac_operation_t *operation,
                                   psa_key_handle_t handle,
                                   psa_algorithm_t alg,
                                   int is_sign )
{
    psa_status_t status;
    psa_key_slot_t *slot;
    size_t key_bits;
    psa_key_usage_t usage =
        is_sign ? ((psa_key_usage_t)0x00000400) : ((psa_key_usage_t)0x00000800);
    uint8_t truncated = (((alg) & ((psa_algorithm_t)0x00003f00)) >> 8);
    psa_algorithm_t full_length_alg = ((alg) & ~((psa_algorithm_t)0x00003f00));
    if( operation->alg != 0 )
    {
        return( ((psa_status_t)-137) );
    }
    status = psa_mac_init( operation, full_length_alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( is_sign )
        operation->is_sign = 1;
    status = psa_get_key_from_slot( handle, &slot, usage, alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    key_bits = psa_get_key_slot_bits( slot );
    if( (((full_length_alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00c00000))) == ((psa_algorithm_t)0x02800000)) )
    {
        psa_algorithm_t hash_alg = (((psa_algorithm_t)0x01000000) | ((alg) & ((psa_algorithm_t)0x000000ff)));
        if( hash_alg == 0 )
        {
            status = ((psa_status_t)-134);
            goto exit;
        }
        operation->mac_size = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
        if( operation->mac_size == 0 ||
            operation->mac_size > sizeof( operation->ctx.hmac.opad ) )
        {
            status = ((psa_status_t)-134);
            goto exit;
        }
        if( slot->attr.type != ((psa_key_type_t)0x1100) )
        {
            status = ((psa_status_t)-135);
            goto exit;
        }
        status = psa_hmac_setup_internal( &operation->ctx.hmac,
                                          slot->data.key.data,
                                          slot->data.key.bytes,
                                          hash_alg );
    }
    else
    {
        (void) key_bits;
        status = ((psa_status_t)-134);
    }
    if( truncated == 0 )
    {
    }
    else if( truncated < 4 )
    {
        status = ((psa_status_t)-134);
    }
    else if( truncated > operation->mac_size )
    {
        status = ((psa_status_t)-135);
    }
    else
        operation->mac_size = truncated;
exit:
    if( status != ((psa_status_t)0) )
    {
        psa_mac_abort( operation );
    }
    else
    {
        operation->key_set = 1;
    }
    return( status );
}
psa_status_t psa_mac_sign_setup( psa_mac_operation_t *operation,
                                 psa_key_handle_t handle,
                                 psa_algorithm_t alg )
{
    return( psa_mac_setup( operation, handle, alg, 1 ) );
}
psa_status_t psa_mac_verify_setup( psa_mac_operation_t *operation,
                                   psa_key_handle_t handle,
                                   psa_algorithm_t alg )
{
    return( psa_mac_setup( operation, handle, alg, 0 ) );
}
psa_status_t psa_mac_update( psa_mac_operation_t *operation,
                             const uint8_t *input,
                             size_t input_length )
{
    psa_status_t status = ((psa_status_t)-137);
    if( ! operation->key_set )
        return( ((psa_status_t)-137) );
    if( operation->iv_required && ! operation->iv_set )
        return( ((psa_status_t)-137) );
    operation->has_input = 1;
    if( (((operation->alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00c00000))) == ((psa_algorithm_t)0x02800000)) )
    {
        status = psa_hash_update( &operation->ctx.hmac.hash_ctx, input,
                                  input_length );
    }
    else
    {
        return( ((psa_status_t)-137) );
    }
    if( status != ((psa_status_t)0) )
        psa_mac_abort( operation );
    return( status );
}
static psa_status_t psa_hmac_finish_internal( psa_hmac_internal_data *hmac,
                                              uint8_t *mac,
                                              size_t mac_size )
{
    uint8_t tmp[64];
    psa_algorithm_t hash_alg = hmac->hash_ctx.alg;
    size_t hash_size = 0;
    size_t block_size = psa_get_hash_block_size( hash_alg );
    psa_status_t status;
    status = psa_hash_finish( &hmac->hash_ctx, tmp, sizeof( tmp ), &hash_size );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_hash_setup( &hmac->hash_ctx, hash_alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_update( &hmac->hash_ctx, hmac->opad, block_size );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_update( &hmac->hash_ctx, tmp, hash_size );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_hash_finish( &hmac->hash_ctx, tmp, sizeof( tmp ), &hash_size );
    if( status != ((psa_status_t)0) )
        goto exit;
    memcpy( mac, tmp, mac_size );
exit:
    mbedtls_platform_zeroize( tmp, hash_size );
    return( status );
}
static psa_status_t psa_mac_finish_internal( psa_mac_operation_t *operation,
                                             uint8_t *mac,
                                             size_t mac_size )
{
    if( ! operation->key_set )
        return( ((psa_status_t)-137) );
    if( operation->iv_required && ! operation->iv_set )
        return( ((psa_status_t)-137) );
    if( mac_size < operation->mac_size )
        return( ((psa_status_t)-138) );
    if( (((operation->alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00c00000))) == ((psa_algorithm_t)0x02800000)) )
    {
        return( psa_hmac_finish_internal( &operation->ctx.hmac,
                                          mac, operation->mac_size ) );
    }
    else
    {
        return( ((psa_status_t)-137) );
    }
}
psa_status_t psa_mac_sign_finish( psa_mac_operation_t *operation,
                                  uint8_t *mac,
                                  size_t mac_size,
                                  size_t *mac_length )
{
    psa_status_t status;
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)-137) );
    }
    *mac_length = mac_size;
    if( mac_size != 0 )
        memset( mac, '!', mac_size );
    if( ! operation->is_sign )
    {
        return( ((psa_status_t)-137) );
    }
    status = psa_mac_finish_internal( operation, mac, mac_size );
    if( status == ((psa_status_t)0) )
    {
        status = psa_mac_abort( operation );
        if( status == ((psa_status_t)0) )
            *mac_length = operation->mac_size;
        else
            memset( mac, '!', mac_size );
    }
    else
        psa_mac_abort( operation );
    return( status );
}
psa_status_t psa_mac_verify_finish( psa_mac_operation_t *operation,
                                    const uint8_t *mac,
                                    size_t mac_length )
{
    uint8_t actual_mac[64];
    psa_status_t status;
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)-137) );
    }
    if( operation->is_sign )
    {
        return( ((psa_status_t)-137) );
    }
    if( operation->mac_size != mac_length )
    {
        status = ((psa_status_t)-149);
        goto cleanup;
    }
    status = psa_mac_finish_internal( operation,
                                      actual_mac, sizeof( actual_mac ) );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    if( safer_memcmp( mac, actual_mac, mac_length ) != 0 )
        status = ((psa_status_t)-149);
cleanup:
    if( status == ((psa_status_t)0) )
        status = psa_mac_abort( operation );
    else
        psa_mac_abort( operation );
    mbedtls_platform_zeroize( actual_mac, sizeof( actual_mac ) );
    return( status );
}
static psa_status_t psa_rsa_decode_md_type( psa_algorithm_t alg,
                                            size_t hash_length,
                                            mbedtls_md_type_t *md_alg )
{
    psa_algorithm_t hash_alg = (((((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) ? ((alg) & ((psa_algorithm_t)0x000000ff)) == 0 ? 0 : ((alg) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0);
    const mbedtls_md_info_t *md_info = mbedtls_md_info_from_psa( hash_alg );
    *md_alg = mbedtls_md_get_type( md_info );
    if( hash_length > (2147483647 *2U +1U) )
        return( ((psa_status_t)-135) );
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) &&
        alg != ((psa_algorithm_t)0x10020000) )
    {
        if( md_info == ((void*)0) )
            return( ((psa_status_t)-134) );
        if( mbedtls_md_get_size( md_info ) != hash_length )
            return( ((psa_status_t)-135) );
    }
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) )
    {
        if( md_info == ((void*)0) )
            return( ((psa_status_t)-134) );
    }
    return( ((psa_status_t)0) );
}
static psa_status_t psa_rsa_sign( mbedtls_rsa_context *rsa,
                                  psa_algorithm_t alg,
                                  const uint8_t *hash,
                                  size_t hash_length,
                                  uint8_t *signature,
                                  size_t signature_size,
                                  size_t *signature_length )
{
    psa_status_t status;
    int ret = -0x006E;
    mbedtls_md_type_t md_alg;
    status = psa_rsa_decode_md_type( alg, hash_length, &md_alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( signature_size < mbedtls_rsa_get_len( rsa ) )
        return( ((psa_status_t)-138) );
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) )
    {
        mbedtls_rsa_set_padding( rsa, 0,
                                 MBEDTLS_MD_NONE );
        ret = mbedtls_rsa_pkcs1_sign( rsa,
                                      mbedtls_ctr_drbg_random,
                                      &global_data.ctr_drbg,
                                      1,
                                      md_alg,
                                      (unsigned int) hash_length,
                                      hash,
                                      signature );
    }
    else
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) )
    {
        mbedtls_rsa_set_padding( rsa, 1, md_alg );
        ret = mbedtls_rsa_rsassa_pss_sign( rsa,
                                           mbedtls_ctr_drbg_random,
                                           &global_data.ctr_drbg,
                                           1,
                                           MBEDTLS_MD_NONE,
                                           (unsigned int) hash_length,
                                           hash,
                                           signature );
    }
    else
    {
        return( ((psa_status_t)-135) );
    }
    if( ret == 0 )
        *signature_length = mbedtls_rsa_get_len( rsa );
    return( mbedtls_to_psa_error( ret ) );
}
static psa_status_t psa_rsa_verify( mbedtls_rsa_context *rsa,
                                    psa_algorithm_t alg,
                                    const uint8_t *hash,
                                    size_t hash_length,
                                    const uint8_t *signature,
                                    size_t signature_length )
{
    psa_status_t status;
    int ret = -0x006E;
    mbedtls_md_type_t md_alg;
    status = psa_rsa_decode_md_type( alg, hash_length, &md_alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( signature_length != mbedtls_rsa_get_len( rsa ) )
        return( ((psa_status_t)-149) );
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) )
    {
        mbedtls_rsa_set_padding( rsa, 0,
                                 MBEDTLS_MD_NONE );
        ret = mbedtls_rsa_pkcs1_verify( rsa,
                                        mbedtls_ctr_drbg_random,
                                        &global_data.ctr_drbg,
                                        0,
                                        md_alg,
                                        (unsigned int) hash_length,
                                        hash,
                                        signature );
    }
    else
    if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) )
    {
        mbedtls_rsa_set_padding( rsa, 1, md_alg );
        ret = mbedtls_rsa_rsassa_pss_verify( rsa,
                                             mbedtls_ctr_drbg_random,
                                             &global_data.ctr_drbg,
                                             0,
                                             MBEDTLS_MD_NONE,
                                             (unsigned int) hash_length,
                                             hash,
                                             signature );
    }
    else
    {
        return( ((psa_status_t)-135) );
    }
    if( ret == -0x4100 )
        return( ((psa_status_t)-149) );
    return( mbedtls_to_psa_error( ret ) );
}
static psa_status_t psa_ecdsa_sign( mbedtls_ecp_keypair *ecp,
                                    psa_algorithm_t alg,
                                    const uint8_t *hash,
                                    size_t hash_length,
                                    uint8_t *signature,
                                    size_t signature_size,
                                    size_t *signature_length )
{
    int ret = -0x006E;
    mbedtls_mpi r, s;
    size_t curve_bytes = (((ecp->grp.pbits) + 7) / 8);
    mbedtls_mpi_init( &r );
    mbedtls_mpi_init( &s );
    if( signature_size < 2 * curve_bytes )
    {
        ret = -0x4F00;
        goto cleanup;
    }
    if( (((alg) & ((psa_algorithm_t)0x00010000)) != 0) )
    {
        psa_algorithm_t hash_alg = (((((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10030000)) || (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x10020000)) || (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10040000)) || (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))) ? ((alg) & ((psa_algorithm_t)0x000000ff)) == 0 ? 0 : ((alg) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0);
        const mbedtls_md_info_t *md_info = mbedtls_md_info_from_psa( hash_alg );
        mbedtls_md_type_t md_alg = mbedtls_md_get_type( md_info );
        do { if( ( ret = (mbedtls_ecdsa_sign_det_ext( &ecp->grp, &r, &s, &ecp->d, hash, hash_length, md_alg, mbedtls_ctr_drbg_random, &global_data.ctr_drbg )) ) != 0 ) goto cleanup; } while( 0 );
    }
    else
    {
        (void) alg;
        do { if( ( ret = (mbedtls_ecdsa_sign( &ecp->grp, &r, &s, &ecp->d, hash, hash_length, mbedtls_ctr_drbg_random, &global_data.ctr_drbg )) ) != 0 ) goto cleanup; } while( 0 );
    }
    do { if( ( ret = (mbedtls_mpi_write_binary( &r, signature, curve_bytes )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_write_binary( &s, signature + curve_bytes, curve_bytes )) ) != 0 ) goto cleanup; } while( 0 );
cleanup:
    mbedtls_mpi_free( &r );
    mbedtls_mpi_free( &s );
    if( ret == 0 )
        *signature_length = 2 * curve_bytes;
    return( mbedtls_to_psa_error( ret ) );
}
static psa_status_t psa_ecdsa_verify( mbedtls_ecp_keypair *ecp,
                                      const uint8_t *hash,
                                      size_t hash_length,
                                      const uint8_t *signature,
                                      size_t signature_length )
{
    int ret = -0x006E;
    mbedtls_mpi r, s;
    size_t curve_bytes = (((ecp->grp.pbits) + 7) / 8);
    mbedtls_mpi_init( &r );
    mbedtls_mpi_init( &s );
    if( signature_length != 2 * curve_bytes )
        return( ((psa_status_t)-149) );
    do { if( ( ret = (mbedtls_mpi_read_binary( &r, signature, curve_bytes )) ) != 0 ) goto cleanup; } while( 0 );
    do { if( ( ret = (mbedtls_mpi_read_binary( &s, signature + curve_bytes, curve_bytes )) ) != 0 ) goto cleanup; } while( 0 );
    if( mbedtls_ecp_is_zero( &ecp->Q ) )
    {
        do { if( ( ret = (mbedtls_ecp_mul( &ecp->grp, &ecp->Q, &ecp->d, &ecp->grp.G, mbedtls_ctr_drbg_random, &global_data.ctr_drbg )) ) != 0 ) goto cleanup; } while( 0 );
    }
    ret = mbedtls_ecdsa_verify( &ecp->grp, hash, hash_length,
                                &ecp->Q, &r, &s );
cleanup:
    mbedtls_mpi_free( &r );
    mbedtls_mpi_free( &s );
    return( mbedtls_to_psa_error( ret ) );
}
psa_status_t psa_sign_hash( psa_key_handle_t handle,
                            psa_algorithm_t alg,
                            const uint8_t *hash,
                            size_t hash_length,
                            uint8_t *signature,
                            size_t signature_size,
                            size_t *signature_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    *signature_length = signature_size;
    if( signature_size == 0 )
        return( ((psa_status_t)-138) );
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00000400), alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( ! (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) )
    {
        status = ((psa_status_t)-135);
        goto exit;
    }
    if( slot->attr.type == ((psa_key_type_t)0x7001) )
    {
        mbedtls_rsa_context *rsa = ((void*)0);
        status = psa_load_rsa_representation( slot->attr.type,
                                              slot->data.key.data,
                                              slot->data.key.bytes,
                                              &rsa );
        if( status != ((psa_status_t)0) )
            goto exit;
        status = psa_rsa_sign( rsa,
                               alg,
                               hash, hash_length,
                               signature, signature_size,
                               signature_length );
        mbedtls_rsa_free( rsa );
        free( rsa );
    }
    else
    if( ((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) )
    {
        if(
            (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000))
            )
        {
            mbedtls_ecp_keypair *ecp = ((void*)0);
            status = psa_load_ecp_representation( slot->attr.type,
                                                  slot->data.key.data,
                                                  slot->data.key.bytes,
                                                  &ecp );
            if( status != ((psa_status_t)0) )
                goto exit;
            status = psa_ecdsa_sign( ecp,
                                     alg,
                                     hash, hash_length,
                                     signature, signature_size,
                                     signature_length );
            mbedtls_ecp_keypair_free( ecp );
            free( ecp );
        }
        else
        {
            status = ((psa_status_t)-135);
        }
    }
    else
    {
        status = ((psa_status_t)-134);
    }
exit:
    if( status == ((psa_status_t)0) )
        memset( signature + *signature_length, '!',
                signature_size - *signature_length );
    else
        memset( signature, '!', signature_size );
    return( status );
}
psa_status_t psa_verify_hash( psa_key_handle_t handle,
                              psa_algorithm_t alg,
                              const uint8_t *hash,
                              size_t hash_length,
                              const uint8_t *signature,
                              size_t signature_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00000800), alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) )
    {
        mbedtls_rsa_context *rsa = ((void*)0);
        status = psa_load_rsa_representation( slot->attr.type,
                                              slot->data.key.data,
                                              slot->data.key.bytes,
                                              &rsa );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_rsa_verify( rsa,
                                 alg,
                                 hash, hash_length,
                                 signature, signature_length );
        mbedtls_rsa_free( rsa );
        free( rsa );
        return( status );
    }
    else
    if( ((((slot->attr.type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) )
    {
        if( (((alg) & ~((psa_algorithm_t)0x000000ff) & ~((psa_algorithm_t)0x00010000)) == ((psa_algorithm_t)0x10060000)) )
        {
            mbedtls_ecp_keypair *ecp = ((void*)0);
            status = psa_load_ecp_representation( slot->attr.type,
                                                  slot->data.key.data,
                                                  slot->data.key.bytes,
                                                  &ecp );
            if( status != ((psa_status_t)0) )
                return( status );
            status = psa_ecdsa_verify( ecp,
                                       hash, hash_length,
                                       signature, signature_length );
            mbedtls_ecp_keypair_free( ecp );
            free( ecp );
            return( status );
        }
        else
        {
            return( ((psa_status_t)-135) );
        }
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
}
static void psa_rsa_oaep_set_padding_mode( psa_algorithm_t alg,
                                           mbedtls_rsa_context *rsa )
{
    psa_algorithm_t hash_alg = ((((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x12030000)) ? ((alg) & ((psa_algorithm_t)0x000000ff)) | ((psa_algorithm_t)0x01000000) : 0);
    const mbedtls_md_info_t *md_info = mbedtls_md_info_from_psa( hash_alg );
    mbedtls_md_type_t md_alg = mbedtls_md_get_type( md_info );
    mbedtls_rsa_set_padding( rsa, 1, md_alg );
}
psa_status_t psa_asymmetric_encrypt( psa_key_handle_t handle,
                                     psa_algorithm_t alg,
                                     const uint8_t *input,
                                     size_t input_length,
                                     const uint8_t *salt,
                                     size_t salt_length,
                                     uint8_t *output,
                                     size_t output_size,
                                     size_t *output_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    (void) input;
    (void) input_length;
    (void) salt;
    (void) output;
    (void) output_size;
    *output_length = 0;
    if( ! (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x12030000)) && salt_length != 0 )
        return( ((psa_status_t)-135) );
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00000100), alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( ! ( (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x4000)) ||
            (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) ) )
        return( ((psa_status_t)-135) );
    if( (((slot->attr.type) & ~((psa_key_type_t)0x3000)) == ((psa_key_type_t)0x4001)) )
    {
        mbedtls_rsa_context *rsa = ((void*)0);
        status = psa_load_rsa_representation( slot->attr.type,
                                              slot->data.key.data,
                                              slot->data.key.bytes,
                                              &rsa );
        if( status != ((psa_status_t)0) )
            goto rsa_exit;
        if( output_size < mbedtls_rsa_get_len( rsa ) )
        {
            status = ((psa_status_t)-138);
            goto rsa_exit;
        }
        if( alg == ((psa_algorithm_t)0x12020000) )
        {
            status = mbedtls_to_psa_error(
                    mbedtls_rsa_pkcs1_encrypt( rsa,
                                               mbedtls_ctr_drbg_random,
                                               &global_data.ctr_drbg,
                                               0,
                                               input_length,
                                               input,
                                               output ) );
        }
        else
        if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x12030000)) )
        {
            psa_rsa_oaep_set_padding_mode( alg, rsa );
            status = mbedtls_to_psa_error(
                mbedtls_rsa_rsaes_oaep_encrypt( rsa,
                                                mbedtls_ctr_drbg_random,
                                                &global_data.ctr_drbg,
                                                0,
                                                salt, salt_length,
                                                input_length,
                                                input,
                                                output ) );
        }
        else
        {
            status = ((psa_status_t)-135);
            goto rsa_exit;
        }
rsa_exit:
        if( status == ((psa_status_t)0) )
            *output_length = mbedtls_rsa_get_len( rsa );
        mbedtls_rsa_free( rsa );
        free( rsa );
        return( status );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
}
psa_status_t psa_asymmetric_decrypt( psa_key_handle_t handle,
                                     psa_algorithm_t alg,
                                     const uint8_t *input,
                                     size_t input_length,
                                     const uint8_t *salt,
                                     size_t salt_length,
                                     uint8_t *output,
                                     size_t output_size,
                                     size_t *output_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    (void) input;
    (void) input_length;
    (void) salt;
    (void) output;
    (void) output_size;
    *output_length = 0;
    if( ! (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x12030000)) && salt_length != 0 )
        return( ((psa_status_t)-135) );
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00000200), alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( ! (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) )
        return( ((psa_status_t)-135) );
    if( slot->attr.type == ((psa_key_type_t)0x7001) )
    {
        mbedtls_rsa_context *rsa = ((void*)0);
        status = psa_load_rsa_representation( slot->attr.type,
                                              slot->data.key.data,
                                              slot->data.key.bytes,
                                              &rsa );
        if( status != ((psa_status_t)0) )
            return( status );
        if( input_length != mbedtls_rsa_get_len( rsa ) )
        {
            status = ((psa_status_t)-135);
            goto rsa_exit;
        }
        if( alg == ((psa_algorithm_t)0x12020000) )
        {
            status = mbedtls_to_psa_error(
                mbedtls_rsa_pkcs1_decrypt( rsa,
                                           mbedtls_ctr_drbg_random,
                                           &global_data.ctr_drbg,
                                           1,
                                           output_length,
                                           input,
                                           output,
                                           output_size ) );
        }
        else
        if( (((alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x12030000)) )
        {
            psa_rsa_oaep_set_padding_mode( alg, rsa );
            status = mbedtls_to_psa_error(
                mbedtls_rsa_rsaes_oaep_decrypt( rsa,
                                                mbedtls_ctr_drbg_random,
                                                &global_data.ctr_drbg,
                                                1,
                                                salt, salt_length,
                                                output_length,
                                                input,
                                                output,
                                                output_size ) );
        }
        else
        {
            status = ((psa_status_t)-135);
        }
rsa_exit:
        mbedtls_rsa_free( rsa );
        free( rsa );
        return( status );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
}
static psa_status_t psa_cipher_init( psa_cipher_operation_t *operation,
                                     psa_algorithm_t alg )
{
    if( ! (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x04000000)) )
    {
        memset( operation, 0, sizeof( *operation ) );
        return( ((psa_status_t)-135) );
    }
    operation->alg = alg;
    operation->key_set = 0;
    operation->iv_set = 0;
    operation->iv_required = 1;
    operation->iv_size = 0;
    operation->block_size = 0;
    mbedtls_cipher_init( &operation->ctx.cipher );
    return( ((psa_status_t)0) );
}
static psa_status_t psa_cipher_setup( psa_cipher_operation_t *operation,
                                      psa_key_handle_t handle,
                                      psa_algorithm_t alg,
                                      mbedtls_operation_t cipher_operation )
{
    int ret = 0;
    psa_status_t status = ((psa_status_t)-132);
    psa_key_slot_t *slot;
    size_t key_bits;
    const mbedtls_cipher_info_t *cipher_info = ((void*)0);
    psa_key_usage_t usage = ( cipher_operation == MBEDTLS_ENCRYPT ?
                              ((psa_key_usage_t)0x00000100) :
                              ((psa_key_usage_t)0x00000200) );
    if( operation->alg != 0 )
    {
        return( ((psa_status_t)-137) );
    }
    status = psa_cipher_init( operation, alg );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_get_key_from_slot( handle, &slot, usage, alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    key_bits = psa_get_key_slot_bits( slot );
    cipher_info = mbedtls_cipher_info_from_psa( alg, slot->attr.type, key_bits, ((void*)0) );
    if( cipher_info == ((void*)0) )
    {
        status = ((psa_status_t)-134);
        goto exit;
    }
    ret = mbedtls_cipher_setup( &operation->ctx.cipher, cipher_info );
    if( ret != 0 )
        goto exit;
    if( slot->attr.type == ((psa_key_type_t)0x2301) && key_bits == 128 )
    {
        uint8_t keys[24];
        memcpy( keys, slot->data.key.data, 16 );
        memcpy( keys + 16, slot->data.key.data, 8 );
        ret = mbedtls_cipher_setkey( &operation->ctx.cipher,
                                     keys,
                                     192, cipher_operation );
    }
    else
    {
        ret = mbedtls_cipher_setkey( &operation->ctx.cipher,
                                     slot->data.key.data,
                                     (int) key_bits, cipher_operation );
    }
    if( ret != 0 )
        goto exit;
    switch( alg )
    {
        case ((psa_algorithm_t)0x04600100):
            ret = mbedtls_cipher_set_padding_mode( &operation->ctx.cipher,
                                                   MBEDTLS_PADDING_NONE );
            break;
        case ((psa_algorithm_t)0x04600101):
            ret = mbedtls_cipher_set_padding_mode( &operation->ctx.cipher,
                                                   MBEDTLS_PADDING_PKCS7 );
            break;
        default:
            ret = 0;
            break;
    }
    if( ret != 0 )
        goto exit;
    operation->key_set = 1;
    operation->block_size = ( (((alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00800000))) == (((psa_algorithm_t)0x04000000) | ((psa_algorithm_t)0x00800000))) ? 1 :
                              (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000) ? 1u << (((slot->attr.type) >> 8) & 7) : 0u) );
    if( alg & ((psa_algorithm_t)0x00400000) )
    {
        operation->iv_size = (((slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000) ? 1u << (((slot->attr.type) >> 8) & 7) : 0u);
    }
    else
    if( alg == ((psa_algorithm_t)0x04800005) )
        operation->iv_size = 12;
exit:
    if( status == 0 )
        status = mbedtls_to_psa_error( ret );
    if( status != 0 )
        psa_cipher_abort( operation );
    return( status );
}
psa_status_t psa_cipher_encrypt_setup( psa_cipher_operation_t *operation,
                                       psa_key_handle_t handle,
                                       psa_algorithm_t alg )
{
    return( psa_cipher_setup( operation, handle, alg, MBEDTLS_ENCRYPT ) );
}
psa_status_t psa_cipher_decrypt_setup( psa_cipher_operation_t *operation,
                                       psa_key_handle_t handle,
                                       psa_algorithm_t alg )
{
    return( psa_cipher_setup( operation, handle, alg, MBEDTLS_DECRYPT ) );
}
psa_status_t psa_cipher_generate_iv( psa_cipher_operation_t *operation,
                                     uint8_t *iv,
                                     size_t iv_size,
                                     size_t *iv_length )
{
    psa_status_t status;
    int ret = -0x006E;
    if( operation->iv_set || ! operation->iv_required )
    {
        return( ((psa_status_t)-137) );
    }
    if( iv_size < operation->iv_size )
    {
        status = ((psa_status_t)-138);
        goto exit;
    }
    ret = mbedtls_ctr_drbg_random( &global_data.ctr_drbg,
                                   iv, operation->iv_size );
    if( ret != 0 )
    {
        status = mbedtls_to_psa_error( ret );
        goto exit;
    }
    *iv_length = operation->iv_size;
    status = psa_cipher_set_iv( operation, iv, *iv_length );
exit:
    if( status != ((psa_status_t)0) )
        psa_cipher_abort( operation );
    return( status );
}
psa_status_t psa_cipher_set_iv( psa_cipher_operation_t *operation,
                                const uint8_t *iv,
                                size_t iv_length )
{
    psa_status_t status;
    int ret = -0x006E;
    if( operation->iv_set || ! operation->iv_required )
    {
        return( ((psa_status_t)-137) );
    }
    if( iv_length != operation->iv_size )
    {
        status = ((psa_status_t)-135);
        goto exit;
    }
    ret = mbedtls_cipher_set_iv( &operation->ctx.cipher, iv, iv_length );
    status = mbedtls_to_psa_error( ret );
exit:
    if( status == ((psa_status_t)0) )
        operation->iv_set = 1;
    else
        psa_cipher_abort( operation );
    return( status );
}
psa_status_t psa_cipher_update( psa_cipher_operation_t *operation,
                                const uint8_t *input,
                                size_t input_length,
                                uint8_t *output,
                                size_t output_size,
                                size_t *output_length )
{
    psa_status_t status;
    int ret = -0x006E;
    size_t expected_output_size;
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)-137) );
    }
    if( ! (((operation->alg) & (((psa_algorithm_t)0x7f000000) | ((psa_algorithm_t)0x00800000))) == (((psa_algorithm_t)0x04000000) | ((psa_algorithm_t)0x00800000))) )
    {
        expected_output_size =
            ( operation->ctx.cipher.unprocessed_len + input_length )
            / operation->block_size * operation->block_size;
    }
    else
    {
        expected_output_size = input_length;
    }
    if( output_size < expected_output_size )
    {
        status = ((psa_status_t)-138);
        goto exit;
    }
    ret = mbedtls_cipher_update( &operation->ctx.cipher, input,
                                 input_length, output, output_length );
    status = mbedtls_to_psa_error( ret );
exit:
    if( status != ((psa_status_t)0) )
        psa_cipher_abort( operation );
    return( status );
}
psa_status_t psa_cipher_finish( psa_cipher_operation_t *operation,
                                uint8_t *output,
                                size_t output_size,
                                size_t *output_length )
{
    psa_status_t status = ((psa_status_t)-132);
    int cipher_ret = -0x6080;
    uint8_t temp_output_buffer[16];
    if( ! operation->key_set )
    {
        return( ((psa_status_t)-137) );
    }
    if( operation->iv_required && ! operation->iv_set )
    {
        return( ((psa_status_t)-137) );
    }
    if( operation->ctx.cipher.operation == MBEDTLS_ENCRYPT &&
        operation->alg == ((psa_algorithm_t)0x04600100) &&
        operation->ctx.cipher.unprocessed_len != 0 )
    {
            status = ((psa_status_t)-135);
            goto error;
    }
    cipher_ret = mbedtls_cipher_finish( &operation->ctx.cipher,
                                        temp_output_buffer,
                                        output_length );
    if( cipher_ret != 0 )
    {
        status = mbedtls_to_psa_error( cipher_ret );
        goto error;
    }
    if( *output_length == 0 )
        ;
    else if( output_size >= *output_length )
        memcpy( output, temp_output_buffer, *output_length );
    else
    {
        status = ((psa_status_t)-138);
        goto error;
    }
    mbedtls_platform_zeroize( temp_output_buffer, sizeof( temp_output_buffer ) );
    status = psa_cipher_abort( operation );
    return( status );
error:
    *output_length = 0;
    mbedtls_platform_zeroize( temp_output_buffer, sizeof( temp_output_buffer ) );
    (void) psa_cipher_abort( operation );
    return( status );
}
psa_status_t psa_cipher_abort( psa_cipher_operation_t *operation )
{
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)0) );
    }
    if( ! (((operation->alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x04000000)) )
        return( ((psa_status_t)-137) );
    mbedtls_cipher_free( &operation->ctx.cipher );
    operation->alg = 0;
    operation->key_set = 0;
    operation->iv_set = 0;
    operation->iv_size = 0;
    operation->block_size = 0;
    operation->iv_required = 0;
    return( ((psa_status_t)0) );
}
typedef struct
{
    psa_key_slot_t *slot;
    const mbedtls_cipher_info_t *cipher_info;
    union
    {
        mbedtls_ccm_context ccm;
        mbedtls_gcm_context gcm;
        mbedtls_chachapoly_context chachapoly;
    } ctx;
    psa_algorithm_t core_alg;
    uint8_t full_tag_length;
    uint8_t tag_length;
} aead_operation_t;
static void psa_aead_abort_internal( aead_operation_t *operation )
{
    switch( operation->core_alg )
    {
        case ((psa_algorithm_t)0x06401001):
            mbedtls_ccm_free( &operation->ctx.ccm );
            break;
        case ((psa_algorithm_t)0x06401002):
            mbedtls_gcm_free( &operation->ctx.gcm );
            break;
    }
}
static psa_status_t psa_aead_setup( aead_operation_t *operation,
                                    psa_key_handle_t handle,
                                    psa_key_usage_t usage,
                                    psa_algorithm_t alg )
{
    psa_status_t status;
    size_t key_bits;
    mbedtls_cipher_id_t cipher_id;
    status = psa_get_key_from_slot( handle, &operation->slot, usage, alg );
    if( status != ((psa_status_t)0) )
        return( status );
    key_bits = psa_get_key_slot_bits( operation->slot );
    operation->cipher_info =
        mbedtls_cipher_info_from_psa( alg, operation->slot->attr.type, key_bits,
                                      &cipher_id );
    if( operation->cipher_info == ((void*)0) )
        return( ((psa_status_t)-134) );
    switch( (((alg) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))) )
    {
        case (((((psa_algorithm_t)0x06401001)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
            operation->core_alg = ((psa_algorithm_t)0x06401001);
            operation->full_tag_length = 16;
            if( (((operation->slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000) ? 1u << (((operation->slot->attr.type) >> 8) & 7) : 0u) != 16 )
                return( ((psa_status_t)-135) );
            mbedtls_ccm_init( &operation->ctx.ccm );
            status = mbedtls_to_psa_error(
                mbedtls_ccm_setkey( &operation->ctx.ccm, cipher_id,
                                    operation->slot->data.key.data,
                                    (unsigned int) key_bits ) );
            if( status != 0 )
                goto cleanup;
            break;
        case (((((psa_algorithm_t)0x06401002)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
            operation->core_alg = ((psa_algorithm_t)0x06401002);
            operation->full_tag_length = 16;
            if( (((operation->slot->attr.type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x2000) ? 1u << (((operation->slot->attr.type) >> 8) & 7) : 0u) != 16 )
                return( ((psa_status_t)-135) );
            mbedtls_gcm_init( &operation->ctx.gcm );
            status = mbedtls_to_psa_error(
                mbedtls_gcm_setkey( &operation->ctx.gcm, cipher_id,
                                    operation->slot->data.key.data,
                                    (unsigned int) key_bits ) );
            if( status != 0 )
                goto cleanup;
            break;
        case (((((psa_algorithm_t)0x06001005)) & ~((psa_algorithm_t)0x00003f00)) | ((0) << 8 & ((psa_algorithm_t)0x00003f00))):
            operation->core_alg = ((psa_algorithm_t)0x06001005);
            operation->full_tag_length = 16;
            if( alg != ((psa_algorithm_t)0x06001005) )
                return( ((psa_status_t)-134) );
            mbedtls_chachapoly_init( &operation->ctx.chachapoly );
            status = mbedtls_to_psa_error(
                mbedtls_chachapoly_setkey( &operation->ctx.chachapoly,
                                           operation->slot->data.key.data ) );
            if( status != 0 )
                goto cleanup;
            break;
        default:
            return( ((psa_status_t)-134) );
    }
    if( ((((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x06000000)) ? (((alg) & ((psa_algorithm_t)0x00003f00)) >> 8) : 0) > operation->full_tag_length )
    {
        status = ((psa_status_t)-135);
        goto cleanup;
    }
    operation->tag_length = ((((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x06000000)) ? (((alg) & ((psa_algorithm_t)0x00003f00)) >> 8) : 0);
    return( ((psa_status_t)0) );
cleanup:
    psa_aead_abort_internal( operation );
    return( status );
}
psa_status_t psa_aead_encrypt( psa_key_handle_t handle,
                               psa_algorithm_t alg,
                               const uint8_t *nonce,
                               size_t nonce_length,
                               const uint8_t *additional_data,
                               size_t additional_data_length,
                               const uint8_t *plaintext,
                               size_t plaintext_length,
                               uint8_t *ciphertext,
                               size_t ciphertext_size,
                               size_t *ciphertext_length )
{
    psa_status_t status;
    aead_operation_t operation;
    uint8_t *tag;
    *ciphertext_length = 0;
    status = psa_aead_setup( &operation, handle, ((psa_key_usage_t)0x00000100), alg );
    if( status != ((psa_status_t)0) )
        return( status );
    if( ciphertext_size < ( plaintext_length + operation.tag_length ) )
    {
        status = ((psa_status_t)-138);
        goto exit;
    }
    tag = ciphertext + plaintext_length;
    if( operation.core_alg == ((psa_algorithm_t)0x06401002) )
    {
        status = mbedtls_to_psa_error(
            mbedtls_gcm_crypt_and_tag( &operation.ctx.gcm,
                                       1,
                                       plaintext_length,
                                       nonce, nonce_length,
                                       additional_data, additional_data_length,
                                       plaintext, ciphertext,
                                       operation.tag_length, tag ) );
    }
    else
    if( operation.core_alg == ((psa_algorithm_t)0x06401001) )
    {
        status = mbedtls_to_psa_error(
            mbedtls_ccm_encrypt_and_tag( &operation.ctx.ccm,
                                         plaintext_length,
                                         nonce, nonce_length,
                                         additional_data,
                                         additional_data_length,
                                         plaintext, ciphertext,
                                         tag, operation.tag_length ) );
    }
    else
    if( operation.core_alg == ((psa_algorithm_t)0x06001005) )
    {
        if( nonce_length != 12 || operation.tag_length != 16 )
        {
            status = ((psa_status_t)-134);
            goto exit;
        }
        status = mbedtls_to_psa_error(
            mbedtls_chachapoly_encrypt_and_tag( &operation.ctx.chachapoly,
                                                plaintext_length,
                                                nonce,
                                                additional_data,
                                                additional_data_length,
                                                plaintext,
                                                ciphertext,
                                                tag ) );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
    if( status != ((psa_status_t)0) && ciphertext_size != 0 )
        memset( ciphertext, 0, ciphertext_size );
exit:
    psa_aead_abort_internal( &operation );
    if( status == ((psa_status_t)0) )
        *ciphertext_length = plaintext_length + operation.tag_length;
    return( status );
}
static psa_status_t psa_aead_unpadded_locate_tag( size_t tag_length,
                                                  const uint8_t *ciphertext,
                                                  size_t ciphertext_length,
                                                  size_t plaintext_size,
                                                  const uint8_t **p_tag )
{
    size_t payload_length;
    if( tag_length > ciphertext_length )
        return( ((psa_status_t)-135) );
    payload_length = ciphertext_length - tag_length;
    if( payload_length > plaintext_size )
        return( ((psa_status_t)-138) );
    *p_tag = ciphertext + payload_length;
    return( ((psa_status_t)0) );
}
psa_status_t psa_aead_decrypt( psa_key_handle_t handle,
                               psa_algorithm_t alg,
                               const uint8_t *nonce,
                               size_t nonce_length,
                               const uint8_t *additional_data,
                               size_t additional_data_length,
                               const uint8_t *ciphertext,
                               size_t ciphertext_length,
                               uint8_t *plaintext,
                               size_t plaintext_size,
                               size_t *plaintext_length )
{
    psa_status_t status;
    aead_operation_t operation;
    const uint8_t *tag = ((void*)0);
    *plaintext_length = 0;
    status = psa_aead_setup( &operation, handle, ((psa_key_usage_t)0x00000200), alg );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_aead_unpadded_locate_tag( operation.tag_length,
                                           ciphertext, ciphertext_length,
                                           plaintext_size, &tag );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( operation.core_alg == ((psa_algorithm_t)0x06401002) )
    {
        status = mbedtls_to_psa_error(
            mbedtls_gcm_auth_decrypt( &operation.ctx.gcm,
                                      ciphertext_length - operation.tag_length,
                                      nonce, nonce_length,
                                      additional_data,
                                      additional_data_length,
                                      tag, operation.tag_length,
                                      ciphertext, plaintext ) );
    }
    else
    if( operation.core_alg == ((psa_algorithm_t)0x06401001) )
    {
        status = mbedtls_to_psa_error(
            mbedtls_ccm_auth_decrypt( &operation.ctx.ccm,
                                      ciphertext_length - operation.tag_length,
                                      nonce, nonce_length,
                                      additional_data,
                                      additional_data_length,
                                      ciphertext, plaintext,
                                      tag, operation.tag_length ) );
    }
    else
    if( operation.core_alg == ((psa_algorithm_t)0x06001005) )
    {
        if( nonce_length != 12 || operation.tag_length != 16 )
        {
            status = ((psa_status_t)-134);
            goto exit;
        }
        status = mbedtls_to_psa_error(
            mbedtls_chachapoly_auth_decrypt( &operation.ctx.chachapoly,
                                             ciphertext_length - operation.tag_length,
                                             nonce,
                                             additional_data,
                                             additional_data_length,
                                             tag,
                                             ciphertext,
                                             plaintext ) );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
    if( status != ((psa_status_t)0) && plaintext_size != 0 )
        memset( plaintext, 0, plaintext_size );
exit:
    psa_aead_abort_internal( &operation );
    if( status == ((psa_status_t)0) )
        *plaintext_length = ciphertext_length - operation.tag_length;
    return( status );
}
static psa_algorithm_t psa_key_derivation_get_kdf_alg(
    const psa_key_derivation_operation_t *operation )
{
    if ( (((operation->alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x30000000)) )
        return( (((operation->alg) & ((psa_algorithm_t)0x0803ffff)) | ((psa_algorithm_t)0x20000000)) );
    else
        return( operation->alg );
}
psa_status_t psa_key_derivation_abort( psa_key_derivation_operation_t *operation )
{
    psa_status_t status = ((psa_status_t)0);
    psa_algorithm_t kdf_alg = psa_key_derivation_get_kdf_alg( operation );
    if( kdf_alg == 0 )
    {
    }
    else
    if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000100)) )
    {
        free( operation->ctx.hkdf.info );
        status = psa_hmac_abort_internal( &operation->ctx.hkdf.hmac );
    }
    else if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000200)) ||
             (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000300)) )
    {
        if( operation->ctx.tls12_prf.seed != ((void*)0) )
        {
            mbedtls_platform_zeroize( operation->ctx.tls12_prf.seed,
                                      operation->ctx.tls12_prf.seed_length );
            free( operation->ctx.tls12_prf.seed );
        }
        if( operation->ctx.tls12_prf.label != ((void*)0) )
        {
            mbedtls_platform_zeroize( operation->ctx.tls12_prf.label,
                                      operation->ctx.tls12_prf.label_length );
            free( operation->ctx.tls12_prf.label );
        }
        status = psa_hmac_abort_internal( &operation->ctx.tls12_prf.hmac );
    }
    else
    {
        status = ((psa_status_t)-137);
    }
    mbedtls_platform_zeroize( operation, sizeof( *operation ) );
    return( status );
}
psa_status_t psa_key_derivation_get_capacity(const psa_key_derivation_operation_t *operation,
                                        size_t *capacity)
{
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)-137) );
    }
    *capacity = operation->capacity;
    return( ((psa_status_t)0) );
}
psa_status_t psa_key_derivation_set_capacity( psa_key_derivation_operation_t *operation,
                                         size_t capacity )
{
    if( operation->alg == 0 )
        return( ((psa_status_t)-137) );
    if( capacity > operation->capacity )
        return( ((psa_status_t)-135) );
    operation->capacity = capacity;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_key_derivation_hkdf_read( psa_hkdf_key_derivation_t *hkdf,
                                             psa_algorithm_t hash_alg,
                                             uint8_t *output,
                                             size_t output_length )
{
    uint8_t hash_length = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
    psa_status_t status;
    if( hkdf->state < 2 || ! hkdf->info_set )
        return( ((psa_status_t)-137) );
    hkdf->state = 3;
    while( output_length != 0 )
    {
        uint8_t n = hash_length - hkdf->offset_in_block;
        if( n > output_length )
            n = (uint8_t) output_length;
        memcpy( output, hkdf->output_block + hkdf->offset_in_block, n );
        output += n;
        output_length -= n;
        hkdf->offset_in_block += n;
        if( output_length == 0 )
            break;
        if( hkdf->block_number == 0xff )
            return( ((psa_status_t)-137) );
        ++hkdf->block_number;
        hkdf->offset_in_block = 0;
        status = psa_hmac_setup_internal( &hkdf->hmac,
                                          hkdf->prk, hash_length,
                                          hash_alg );
        if( status != ((psa_status_t)0) )
            return( status );
        if( hkdf->block_number != 1 )
        {
            status = psa_hash_update( &hkdf->hmac.hash_ctx,
                                      hkdf->output_block,
                                      hash_length );
            if( status != ((psa_status_t)0) )
                return( status );
        }
        status = psa_hash_update( &hkdf->hmac.hash_ctx,
                                  hkdf->info,
                                  hkdf->info_length );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_hash_update( &hkdf->hmac.hash_ctx,
                                  &hkdf->block_number, 1 );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_hmac_finish_internal( &hkdf->hmac,
                                           hkdf->output_block,
                                           sizeof( hkdf->output_block ) );
        if( status != ((psa_status_t)0) )
            return( status );
    }
    return( ((psa_status_t)0) );
}
static psa_status_t psa_key_derivation_tls12_prf_generate_next_block(
    psa_tls12_prf_key_derivation_t *tls12_prf,
    psa_algorithm_t alg )
{
    psa_algorithm_t hash_alg = (((psa_algorithm_t)0x01000000) | ((alg) & ((psa_algorithm_t)0x000000ff)));
    uint8_t hash_length = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
    psa_hash_operation_t backup = {0, {0}};
    psa_status_t status, cleanup_status;
    if( tls12_prf->block_number == 0xff )
        return( ((psa_status_t)-151) );
    ++tls12_prf->block_number;
    tls12_prf->left_in_block = hash_length;
    status = psa_hash_clone( &tls12_prf->hmac.hash_ctx, &backup );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    if( tls12_prf->block_number == 1 )
    {
        status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                                  tls12_prf->label, tls12_prf->label_length );
        if( status != ((psa_status_t)0) )
            goto cleanup;
        status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                                  tls12_prf->seed, tls12_prf->seed_length );
        if( status != ((psa_status_t)0) )
            goto cleanup;
    }
    else
    {
        status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                                  tls12_prf->Ai, hash_length );
        if( status != ((psa_status_t)0) )
            goto cleanup;
    }
    status = psa_hmac_finish_internal( &tls12_prf->hmac,
                                       tls12_prf->Ai, hash_length );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_clone( &backup, &tls12_prf->hmac.hash_ctx );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                              tls12_prf->Ai, hash_length );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                              tls12_prf->label, tls12_prf->label_length );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_update( &tls12_prf->hmac.hash_ctx,
                              tls12_prf->seed, tls12_prf->seed_length );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hmac_finish_internal( &tls12_prf->hmac,
                                       tls12_prf->output_block, hash_length );
    if( status != ((psa_status_t)0) )
        goto cleanup;
    status = psa_hash_clone( &backup, &tls12_prf->hmac.hash_ctx );
    if( status != ((psa_status_t)0) )
        goto cleanup;
cleanup:
    cleanup_status = psa_hash_abort( &backup );
    if( status == ((psa_status_t)0) && cleanup_status != ((psa_status_t)0) )
        status = cleanup_status;
    return( status );
}
static psa_status_t psa_key_derivation_tls12_prf_read(
    psa_tls12_prf_key_derivation_t *tls12_prf,
    psa_algorithm_t alg,
    uint8_t *output,
    size_t output_length )
{
    psa_algorithm_t hash_alg = (((psa_algorithm_t)0x01000000) | ((alg) & ((psa_algorithm_t)0x000000ff)));
    uint8_t hash_length = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
    psa_status_t status;
    uint8_t offset, length;
    while( output_length != 0 )
    {
        if( tls12_prf->left_in_block == 0 )
        {
            status = psa_key_derivation_tls12_prf_generate_next_block( tls12_prf,
                                                                       alg );
            if( status != ((psa_status_t)0) )
                return( status );
            continue;
        }
        if( tls12_prf->left_in_block > output_length )
            length = (uint8_t) output_length;
        else
            length = tls12_prf->left_in_block;
        offset = hash_length - tls12_prf->left_in_block;
        memcpy( output, tls12_prf->output_block + offset, length );
        output += length;
        output_length -= length;
        tls12_prf->left_in_block -= length;
    }
    return( ((psa_status_t)0) );
}
psa_status_t psa_key_derivation_output_bytes(
    psa_key_derivation_operation_t *operation,
    uint8_t *output,
    size_t output_length )
{
    psa_status_t status;
    psa_algorithm_t kdf_alg = psa_key_derivation_get_kdf_alg( operation );
    if( operation->alg == 0 )
    {
        return( ((psa_status_t)-137) );
    }
    if( output_length > operation->capacity )
    {
        operation->capacity = 0;
        status = ((psa_status_t)-143);
        goto exit;
    }
    if( output_length == 0 && operation->capacity == 0 )
    {
        return( ((psa_status_t)-143) );
    }
    operation->capacity -= output_length;
    if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000100)) )
    {
        psa_algorithm_t hash_alg = (((psa_algorithm_t)0x01000000) | ((kdf_alg) & ((psa_algorithm_t)0x000000ff)));
        status = psa_key_derivation_hkdf_read( &operation->ctx.hkdf, hash_alg,
                                          output, output_length );
    }
    else
    if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000200)) ||
             (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000300)) )
    {
        status = psa_key_derivation_tls12_prf_read( &operation->ctx.tls12_prf,
                                               kdf_alg, output,
                                               output_length );
    }
    else
    {
        return( ((psa_status_t)-137) );
    }
exit:
    if( status != ((psa_status_t)0) )
    {
        psa_algorithm_t alg = operation->alg;
        psa_key_derivation_abort( operation );
        operation->alg = alg;
        memset( output, '!', output_length );
    }
    return( status );
}
static void psa_des_set_key_parity( uint8_t *data, size_t data_size )
{
    if( data_size >= 8 )
        mbedtls_des_key_set_parity( data );
    if( data_size >= 16 )
        mbedtls_des_key_set_parity( data + 8 );
    if( data_size >= 24 )
        mbedtls_des_key_set_parity( data + 16 );
}
static psa_status_t psa_generate_derived_key_internal(
    psa_key_slot_t *slot,
    size_t bits,
    psa_key_derivation_operation_t *operation )
{
    uint8_t *data = ((void*)0);
    size_t bytes = (((bits) + 7) / 8);
    psa_status_t status;
    if( ! key_type_is_raw_bytes( slot->attr.type ) )
        return( ((psa_status_t)-135) );
    if( bits % 8 != 0 )
        return( ((psa_status_t)-135) );
    data = calloc( 1, bytes );
    if( data == ((void*)0) )
        return( ((psa_status_t)-141) );
    status = psa_key_derivation_output_bytes( operation, data, bytes );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( slot->attr.type == ((psa_key_type_t)0x2301) )
        psa_des_set_key_parity( data, bytes );
    status = psa_import_key_into_slot( slot, data, bytes );
exit:
    free( data );
    return( status );
}
psa_status_t psa_key_derivation_output_key( const psa_key_attributes_t *attributes,
                                       psa_key_derivation_operation_t *operation,
                                       psa_key_handle_t *handle )
{
    psa_status_t status;
    psa_key_slot_t *slot = ((void*)0);
    psa_se_drv_table_entry_t *driver = ((void*)0);
    if( psa_get_key_bits( attributes ) == 0 )
        return( ((psa_status_t)-135) );
    if( ! operation->can_output_key )
        return( ((psa_status_t)-133) );
    status = psa_start_key_creation( PSA_KEY_CREATION_DERIVE,
                                     attributes, handle, &slot, &driver );
    if( status == ((psa_status_t)0) )
    {
        status = psa_generate_derived_key_internal( slot,
                                                    attributes->core.bits,
                                                    operation );
    }
    if( status == ((psa_status_t)0) )
        status = psa_finish_key_creation( slot, driver );
    if( status != ((psa_status_t)0) )
    {
        psa_fail_key_creation( slot, driver );
        *handle = 0;
    }
    return( status );
}
static psa_status_t psa_key_derivation_setup_kdf(
    psa_key_derivation_operation_t *operation,
    psa_algorithm_t kdf_alg )
{
    memset( &operation->ctx, 0, sizeof( operation->ctx ) );
    if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000100)) ||
        (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000200)) ||
        (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000300)) )
    {
        psa_algorithm_t hash_alg = (((psa_algorithm_t)0x01000000) | ((kdf_alg) & ((psa_algorithm_t)0x000000ff)));
        size_t hash_size = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
        if( hash_size == 0 )
            return( ((psa_status_t)-134) );
        if( ( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000200)) ||
              (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000300)) ) &&
            ! ( hash_alg == ((psa_algorithm_t)0x01000009) || hash_alg == ((psa_algorithm_t)0x0100000a) ) )
        {
            return( ((psa_status_t)-134) );
        }
        operation->capacity = 255 * hash_size;
        return( ((psa_status_t)0) );
    }
    else
        return( ((psa_status_t)-134) );
}
psa_status_t psa_key_derivation_setup( psa_key_derivation_operation_t *operation,
                                       psa_algorithm_t alg )
{
    psa_status_t status;
    if( operation->alg != 0 )
        return( ((psa_status_t)-137) );
    if( ((((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x30000000)) && (((alg) & ((psa_algorithm_t)0x0803ffff)) | ((psa_algorithm_t)0x20000000)) == ((psa_algorithm_t)0x20000000)) )
        return( ((psa_status_t)-135) );
    else if( (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x30000000)) )
    {
        psa_algorithm_t kdf_alg = (((alg) & ((psa_algorithm_t)0x0803ffff)) | ((psa_algorithm_t)0x20000000));
        status = psa_key_derivation_setup_kdf( operation, kdf_alg );
    }
    else if( (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x20000000)) )
    {
        status = psa_key_derivation_setup_kdf( operation, alg );
    }
    else
        return( ((psa_status_t)-135) );
    if( status == ((psa_status_t)0) )
        operation->alg = alg;
    return( status );
}
static psa_status_t psa_hkdf_input( psa_hkdf_key_derivation_t *hkdf,
                                    psa_algorithm_t hash_alg,
                                    psa_key_derivation_step_t step,
                                    const uint8_t *data,
                                    size_t data_length )
{
    psa_status_t status;
    switch( step )
    {
        case ((psa_key_derivation_step_t)0x0202):
            if( hkdf->state != 0 )
                return( ((psa_status_t)-137) );
            status = psa_hmac_setup_internal( &hkdf->hmac,
                                              data, data_length,
                                              hash_alg );
            if( status != ((psa_status_t)0) )
                return( status );
            hkdf->state = 1;
            return( ((psa_status_t)0) );
        case ((psa_key_derivation_step_t)0x0101):
            if( hkdf->state == 0 )
            {
                status = psa_hmac_setup_internal( &hkdf->hmac,
                                                  ((void*)0), 0,
                                                  hash_alg );
                if( status != ((psa_status_t)0) )
                    return( status );
                hkdf->state = 1;
            }
            if( hkdf->state != 1 )
                return( ((psa_status_t)-137) );
            status = psa_hash_update( &hkdf->hmac.hash_ctx,
                                      data, data_length );
            if( status != ((psa_status_t)0) )
                return( status );
            status = psa_hmac_finish_internal( &hkdf->hmac,
                                               hkdf->prk,
                                               sizeof( hkdf->prk ) );
            if( status != ((psa_status_t)0) )
                return( status );
            hkdf->offset_in_block = ( (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000001) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000002) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000003) ? 16 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000004) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000005) ? 20 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000008) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000009) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000a) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000b) ? 64 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000c) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x0100000d) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000010) ? 28 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000011) ? 32 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000012) ? 48 : (((psa_algorithm_t)0x01000000) | ((hash_alg) & ((psa_algorithm_t)0x000000ff))) == ((psa_algorithm_t)0x01000013) ? 64 : 0);
            hkdf->block_number = 0;
            hkdf->state = 2;
            return( ((psa_status_t)0) );
        case ((psa_key_derivation_step_t)0x0203):
            if( hkdf->state == 3 )
                return( ((psa_status_t)-137) );
            if( hkdf->info_set )
                return( ((psa_status_t)-137) );
            hkdf->info_length = data_length;
            if( data_length != 0 )
            {
                hkdf->info = calloc( 1, data_length );
                if( hkdf->info == ((void*)0) )
                    return( ((psa_status_t)-141) );
                memcpy( hkdf->info, data, data_length );
            }
            hkdf->info_set = 1;
            return( ((psa_status_t)0) );
        default:
            return( ((psa_status_t)-135) );
    }
}
static psa_status_t psa_tls12_prf_set_seed( psa_tls12_prf_key_derivation_t *prf,
                                            const uint8_t *data,
                                            size_t data_length )
{
    if( prf->state != TLS12_PRF_STATE_INIT )
        return( ((psa_status_t)-137) );
    if( data_length != 0 )
    {
        prf->seed = calloc( 1, data_length );
        if( prf->seed == ((void*)0) )
            return( ((psa_status_t)-141) );
        memcpy( prf->seed, data, data_length );
        prf->seed_length = data_length;
    }
    prf->state = TLS12_PRF_STATE_SEED_SET;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_tls12_prf_set_key( psa_tls12_prf_key_derivation_t *prf,
                                           psa_algorithm_t hash_alg,
                                           const uint8_t *data,
                                           size_t data_length )
{
    psa_status_t status;
    if( prf->state != TLS12_PRF_STATE_SEED_SET )
        return( ((psa_status_t)-137) );
    status = psa_hmac_setup_internal( &prf->hmac, data, data_length, hash_alg );
    if( status != ((psa_status_t)0) )
        return( status );
    prf->state = TLS12_PRF_STATE_KEY_SET;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_tls12_prf_psk_to_ms_set_key(
    psa_tls12_prf_key_derivation_t *prf,
    psa_algorithm_t hash_alg,
    const uint8_t *data,
    size_t data_length )
{
    psa_status_t status;
    uint8_t pms[ 4 + 2 * 128 ];
    uint8_t *cur = pms;
    if( data_length > 128 )
        return( ((psa_status_t)-135) );
    *cur++ = ( data_length >> 8 ) & 0xff;
    *cur++ = ( data_length >> 0 ) & 0xff;
    memset( cur, 0, data_length );
    cur += data_length;
    *cur++ = pms[0];
    *cur++ = pms[1];
    memcpy( cur, data, data_length );
    cur += data_length;
    status = psa_tls12_prf_set_key( prf, hash_alg, pms, cur - pms );
    mbedtls_platform_zeroize( pms, sizeof( pms ) );
    return( status );
}
static psa_status_t psa_tls12_prf_set_label( psa_tls12_prf_key_derivation_t *prf,
                                             const uint8_t *data,
                                             size_t data_length )
{
    if( prf->state != TLS12_PRF_STATE_KEY_SET )
        return( ((psa_status_t)-137) );
    if( data_length != 0 )
    {
        prf->label = calloc( 1, data_length );
        if( prf->label == ((void*)0) )
            return( ((psa_status_t)-141) );
        memcpy( prf->label, data, data_length );
        prf->label_length = data_length;
    }
    prf->state = TLS12_PRF_STATE_LABEL_SET;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_tls12_prf_input( psa_tls12_prf_key_derivation_t *prf,
                                         psa_algorithm_t hash_alg,
                                         psa_key_derivation_step_t step,
                                         const uint8_t *data,
                                         size_t data_length )
{
    switch( step )
    {
        case ((psa_key_derivation_step_t)0x0204):
            return( psa_tls12_prf_set_seed( prf, data, data_length ) );
        case ((psa_key_derivation_step_t)0x0101):
            return( psa_tls12_prf_set_key( prf, hash_alg, data, data_length ) );
        case ((psa_key_derivation_step_t)0x0201):
            return( psa_tls12_prf_set_label( prf, data, data_length ) );
        default:
            return( ((psa_status_t)-135) );
    }
}
static psa_status_t psa_tls12_prf_psk_to_ms_input(
    psa_tls12_prf_key_derivation_t *prf,
    psa_algorithm_t hash_alg,
    psa_key_derivation_step_t step,
    const uint8_t *data,
    size_t data_length )
{
    if( step == ((psa_key_derivation_step_t)0x0101) )
    {
        return( psa_tls12_prf_psk_to_ms_set_key( prf, hash_alg,
                                                 data, data_length ) );
    }
    return( psa_tls12_prf_input( prf, hash_alg, step, data, data_length ) );
}
static int psa_key_derivation_check_input_type(
    psa_key_derivation_step_t step,
    psa_key_type_t key_type )
{
    switch( step )
    {
        case ((psa_key_derivation_step_t)0x0101):
            if( key_type == ((psa_key_type_t)0x1200) )
                return( ((psa_status_t)0) );
            if( key_type == ((psa_key_type_t)0x0000) )
                return( ((psa_status_t)0) );
            break;
        case ((psa_key_derivation_step_t)0x0201):
        case ((psa_key_derivation_step_t)0x0202):
        case ((psa_key_derivation_step_t)0x0203):
        case ((psa_key_derivation_step_t)0x0204):
            if( key_type == ((psa_key_type_t)0x1001) )
                return( ((psa_status_t)0) );
            if( key_type == ((psa_key_type_t)0x0000) )
                return( ((psa_status_t)0) );
            break;
    }
    return( ((psa_status_t)-135) );
}
static psa_status_t psa_key_derivation_input_internal(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    psa_key_type_t key_type,
    const uint8_t *data,
    size_t data_length )
{
    psa_status_t status;
    psa_algorithm_t kdf_alg = psa_key_derivation_get_kdf_alg( operation );
    status = psa_key_derivation_check_input_type( step, key_type );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000100)) )
    {
        status = psa_hkdf_input( &operation->ctx.hkdf,
                                 (((psa_algorithm_t)0x01000000) | ((kdf_alg) & ((psa_algorithm_t)0x000000ff))),
                                 step, data, data_length );
    }
    else if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000200)) )
    {
        status = psa_tls12_prf_input( &operation->ctx.tls12_prf,
                                      (((psa_algorithm_t)0x01000000) | ((kdf_alg) & ((psa_algorithm_t)0x000000ff))),
                                      step, data, data_length );
    }
    else if( (((kdf_alg) & ~((psa_algorithm_t)0x000000ff)) == ((psa_algorithm_t)0x20000300)) )
    {
        status = psa_tls12_prf_psk_to_ms_input( &operation->ctx.tls12_prf,
                                                (((psa_algorithm_t)0x01000000) | ((kdf_alg) & ((psa_algorithm_t)0x000000ff))),
                                                step, data, data_length );
    }
    else
    {
        return( ((psa_status_t)-137) );
    }
exit:
    if( status != ((psa_status_t)0) )
        psa_key_derivation_abort( operation );
    return( status );
}
psa_status_t psa_key_derivation_input_bytes(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    const uint8_t *data,
    size_t data_length )
{
    return( psa_key_derivation_input_internal( operation, step,
                                               ((psa_key_type_t)0x0000),
                                               data, data_length ) );
}
psa_status_t psa_key_derivation_input_key(
    psa_key_derivation_operation_t *operation,
    psa_key_derivation_step_t step,
    psa_key_handle_t handle )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    status = psa_get_key_from_slot( handle, &slot, ((psa_key_usage_t)0x00001000), operation->alg );
    if( status != ((psa_status_t)0) )
    {
        psa_key_derivation_abort( operation );
        return( status );
    }
    if( step == ((psa_key_derivation_step_t)0x0101) )
        operation->can_output_key = 1;
    return( psa_key_derivation_input_internal( operation,
                                               step, slot->attr.type,
                                               slot->data.key.data,
                                               slot->data.key.bytes ) );
}
static psa_status_t psa_key_agreement_ecdh( const uint8_t *peer_key,
                                            size_t peer_key_length,
                                            const mbedtls_ecp_keypair *our_key,
                                            uint8_t *shared_secret,
                                            size_t shared_secret_size,
                                            size_t *shared_secret_length )
{
    mbedtls_ecp_keypair *their_key = ((void*)0);
    mbedtls_ecdh_context ecdh;
    psa_status_t status;
    size_t bits = 0;
    psa_ecc_family_t curve = mbedtls_ecc_group_to_psa( our_key->grp.id, &bits );
    mbedtls_ecdh_init( &ecdh );
    status = psa_load_ecp_representation( (((psa_key_type_t)0x4100) | (curve)),
                                          peer_key,
                                          peer_key_length,
                                          &their_key );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = mbedtls_to_psa_error(
        mbedtls_ecdh_get_params( &ecdh, their_key, MBEDTLS_ECDH_THEIRS ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = mbedtls_to_psa_error(
        mbedtls_ecdh_get_params( &ecdh, our_key, MBEDTLS_ECDH_OURS ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = mbedtls_to_psa_error(
        mbedtls_ecdh_calc_secret( &ecdh,
                                  shared_secret_length,
                                  shared_secret, shared_secret_size,
                                  mbedtls_ctr_drbg_random,
                                  &global_data.ctr_drbg ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    if( (((bits) + 7) / 8) != *shared_secret_length )
        status = ((psa_status_t)-151);
exit:
    if( status != ((psa_status_t)0) )
        mbedtls_platform_zeroize( shared_secret, shared_secret_size );
    mbedtls_ecdh_free( &ecdh );
    mbedtls_ecp_keypair_free( their_key );
    free( their_key );
    return( status );
}
static psa_status_t psa_key_agreement_raw_internal( psa_algorithm_t alg,
                                                    psa_key_slot_t *private_key,
                                                    const uint8_t *peer_key,
                                                    size_t peer_key_length,
                                                    uint8_t *shared_secret,
                                                    size_t shared_secret_size,
                                                    size_t *shared_secret_length )
{
    switch( alg )
    {
        case ((psa_algorithm_t)0x30200000):
            if( ! (((private_key->attr.type) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x7100)) )
                return( ((psa_status_t)-135) );
            mbedtls_ecp_keypair *ecp = ((void*)0);
            psa_status_t status = psa_load_ecp_representation(
                                    private_key->attr.type,
                                    private_key->data.key.data,
                                    private_key->data.key.bytes,
                                    &ecp );
            if( status != ((psa_status_t)0) )
                return( status );
            status = psa_key_agreement_ecdh( peer_key, peer_key_length,
                                             ecp,
                                             shared_secret, shared_secret_size,
                                             shared_secret_length );
            mbedtls_ecp_keypair_free( ecp );
            free( ecp );
            return( status );
        default:
            (void) private_key;
            (void) peer_key;
            (void) peer_key_length;
            (void) shared_secret;
            (void) shared_secret_size;
            (void) shared_secret_length;
            return( ((psa_status_t)-134) );
    }
}
static psa_status_t psa_key_agreement_internal( psa_key_derivation_operation_t *operation,
                                                psa_key_derivation_step_t step,
                                                psa_key_slot_t *private_key,
                                                const uint8_t *peer_key,
                                                size_t peer_key_length )
{
    psa_status_t status;
    uint8_t shared_secret[( ( 521 + 7 ) / 8 )];
    size_t shared_secret_length = 0;
    psa_algorithm_t ka_alg = (((operation->alg) & ((psa_algorithm_t)0x10fc0000)) | ((psa_algorithm_t)0x30000000));
    status = psa_key_agreement_raw_internal( ka_alg,
                                             private_key,
                                             peer_key, peer_key_length,
                                             shared_secret,
                                             sizeof( shared_secret ),
                                             &shared_secret_length );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_key_derivation_input_internal( operation, step,
                                                ((psa_key_type_t)0x1200),
                                                shared_secret,
                                                shared_secret_length );
exit:
    mbedtls_platform_zeroize( shared_secret, shared_secret_length );
    return( status );
}
psa_status_t psa_key_derivation_key_agreement( psa_key_derivation_operation_t *operation,
                                               psa_key_derivation_step_t step,
                                               psa_key_handle_t private_key,
                                               const uint8_t *peer_key,
                                               size_t peer_key_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    if( ! (((operation->alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x30000000)) )
        return( ((psa_status_t)-135) );
    status = psa_get_key_from_slot( private_key, &slot, ((psa_key_usage_t)0x00001000), operation->alg );
    if( status != ((psa_status_t)0) )
        return( status );
    status = psa_key_agreement_internal( operation, step,
                                         slot,
                                         peer_key, peer_key_length );
    if( status != ((psa_status_t)0) )
        psa_key_derivation_abort( operation );
    return( status );
}
psa_status_t psa_raw_key_agreement( psa_algorithm_t alg,
                                    psa_key_handle_t private_key,
                                    const uint8_t *peer_key,
                                    size_t peer_key_length,
                                    uint8_t *output,
                                    size_t output_size,
                                    size_t *output_length )
{
    psa_key_slot_t *slot;
    psa_status_t status;
    if( ! (((alg) & ((psa_algorithm_t)0x7f000000)) == ((psa_algorithm_t)0x30000000)) )
    {
        status = ((psa_status_t)-135);
        goto exit;
    }
    status = psa_get_key_from_slot( private_key, &slot, ((psa_key_usage_t)0x00001000), alg );
    if( status != ((psa_status_t)0) )
        goto exit;
    status = psa_key_agreement_raw_internal( alg, slot,
                                             peer_key, peer_key_length,
                                             output, output_size,
                                             output_length );
exit:
    if( status != ((psa_status_t)0) )
    {
        psa_generate_random( output, output_size );
        *output_length = output_size;
    }
    return( status );
}
psa_status_t psa_generate_random( uint8_t *output,
                                  size_t output_size )
{
    int ret = -0x006E;
    if( global_data.initialized == 0 ) return( ((psa_status_t)-137) );;
    while( output_size > 1024 )
    {
        ret = mbedtls_ctr_drbg_random( &global_data.ctr_drbg,
                                       output,
                                       1024 );
        if( ret != 0 )
            return( mbedtls_to_psa_error( ret ) );
        output += 1024;
        output_size -= 1024;
    }
    ret = mbedtls_ctr_drbg_random( &global_data.ctr_drbg, output, output_size );
    return( mbedtls_to_psa_error( ret ) );
}
static psa_status_t psa_read_rsa_exponent( const uint8_t *domain_parameters,
                                           size_t domain_parameters_size,
                                           int *exponent )
{
    size_t i;
    uint32_t acc = 0;
    if( domain_parameters_size == 0 )
    {
        *exponent = 65537;
        return( ((psa_status_t)0) );
    }
    if( domain_parameters_size > sizeof( acc ) )
        return( ((psa_status_t)-134) );
    for( i = 0; i < domain_parameters_size; i++ )
        acc = ( acc << 8 ) | domain_parameters[i];
    if( acc > 2147483647 )
        return( ((psa_status_t)-134) );
    *exponent = acc;
    return( ((psa_status_t)0) );
}
static psa_status_t psa_generate_key_internal(
    psa_key_slot_t *slot, size_t bits,
    const uint8_t *domain_parameters, size_t domain_parameters_size )
{
    psa_key_type_t type = slot->attr.type;
    if( domain_parameters == ((void*)0) && domain_parameters_size != 0 )
        return( ((psa_status_t)-135) );
    if( key_type_is_raw_bytes( type ) )
    {
        psa_status_t status;
        status = validate_unstructured_key_bit_size( slot->attr.type, bits );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_allocate_buffer_to_slot( slot, (((bits) + 7) / 8) );
        if( status != ((psa_status_t)0) )
            return( status );
        status = psa_generate_random( slot->data.key.data,
                                      slot->data.key.bytes );
        if( status != ((psa_status_t)0) )
            return( status );
        slot->attr.bits = (psa_key_bits_t) bits;
        if( type == ((psa_key_type_t)0x2301) )
            psa_des_set_key_parity( slot->data.key.data,
                                    slot->data.key.bytes );
    }
    else
    if ( type == ((psa_key_type_t)0x7001) )
    {
        mbedtls_rsa_context rsa;
        int ret = -0x006E;
        int exponent;
        psa_status_t status;
        if( bits > 4096 )
            return( ((psa_status_t)-134) );
        if( bits % 8 != 0 )
            return( ((psa_status_t)-134) );
        status = psa_read_rsa_exponent( domain_parameters,
                                        domain_parameters_size,
                                        &exponent );
        if( status != ((psa_status_t)0) )
            return( status );
        mbedtls_rsa_init( &rsa, 0, MBEDTLS_MD_NONE );
        ret = mbedtls_rsa_gen_key( &rsa,
                                   mbedtls_ctr_drbg_random,
                                   &global_data.ctr_drbg,
                                   (unsigned int) bits,
                                   exponent );
        if( ret != 0 )
            return( mbedtls_to_psa_error( ret ) );
        size_t bytes = (9 * (((bits) / 2 + 1) / 8 + 5) + 14);
        status = psa_allocate_buffer_to_slot( slot, bytes );
        if( status != ((psa_status_t)0) )
        {
            mbedtls_rsa_free( &rsa );
            return( status );
        }
        status = psa_export_rsa_key( type,
                                     &rsa,
                                     slot->data.key.data,
                                     bytes,
                                     &slot->data.key.bytes );
        mbedtls_rsa_free( &rsa );
        if( status != ((psa_status_t)0) )
            psa_remove_key_data_from_memory( slot );
        return( status );
    }
    else
    if ( ((((type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) && (((type) & ((psa_key_type_t)0x7000)) == ((psa_key_type_t)0x7000)) )
    {
        psa_ecc_family_t curve = ((psa_ecc_family_t) (((((type) & ~((psa_key_type_t)0x3000)) & ~((psa_key_type_t)0x00ff)) == ((psa_key_type_t)0x4100)) ? ((type) & ((psa_key_type_t)0x00ff)) : 0));
        mbedtls_ecp_group_id grp_id =
            mbedtls_ecc_group_of_psa( curve, (((bits) + 7) / 8) );
        const mbedtls_ecp_curve_info *curve_info =
            mbedtls_ecp_curve_info_from_grp_id( grp_id );
        mbedtls_ecp_keypair ecp;
        int ret = -0x006E;
        if( domain_parameters_size != 0 )
            return( ((psa_status_t)-134) );
        if( grp_id == MBEDTLS_ECP_DP_NONE || curve_info == ((void*)0) )
            return( ((psa_status_t)-134) );
        if( curve_info->bit_size != bits )
            return( ((psa_status_t)-135) );
        mbedtls_ecp_keypair_init( &ecp );
        ret = mbedtls_ecp_gen_key( grp_id, &ecp,
                                   mbedtls_ctr_drbg_random,
                                   &global_data.ctr_drbg );
        if( ret != 0 )
        {
            mbedtls_ecp_keypair_free( &ecp );
            return( mbedtls_to_psa_error( ret ) );
        }
        size_t bytes = (((bits) + 7) / 8);
        psa_status_t status = psa_allocate_buffer_to_slot( slot, bytes );
        if( status != ((psa_status_t)0) )
        {
            mbedtls_ecp_keypair_free( &ecp );
            return( status );
        }
        status = mbedtls_to_psa_error(
            mbedtls_ecp_write_key( &ecp, slot->data.key.data, bytes ) );
        mbedtls_ecp_keypair_free( &ecp );
        if( status != ((psa_status_t)0) ) {
            memset( slot->data.key.data, 0, bytes );
            psa_remove_key_data_from_memory( slot );
        }
        return( status );
    }
    else
    {
        return( ((psa_status_t)-134) );
    }
    return( ((psa_status_t)0) );
}
psa_status_t psa_generate_key( const psa_key_attributes_t *attributes,
                               psa_key_handle_t *handle )
{
    psa_status_t status;
    psa_key_slot_t *slot = ((void*)0);
    psa_se_drv_table_entry_t *driver = ((void*)0);
    if( psa_get_key_bits( attributes ) == 0 )
        return( ((psa_status_t)-135) );
    status = psa_start_key_creation( PSA_KEY_CREATION_GENERATE,
                                     attributes, handle, &slot, &driver );
    if( status != ((psa_status_t)0) )
        goto exit;
    {
        status = psa_generate_key_internal(
            slot, attributes->core.bits,
            attributes->domain_parameters, attributes->domain_parameters_size );
    }
exit:
    if( status == ((psa_status_t)0) )
        status = psa_finish_key_creation( slot, driver );
    if( status != ((psa_status_t)0) )
    {
        psa_fail_key_creation( slot, driver );
        *handle = 0;
    }
    return( status );
}
psa_status_t mbedtls_psa_crypto_configure_entropy_sources(
    void (* entropy_init )( mbedtls_entropy_context *ctx ),
    void (* entropy_free )( mbedtls_entropy_context *ctx ) )
{
    if( global_data.rng_state != 0 )
        return( ((psa_status_t)-137) );
    global_data.entropy_init = entropy_init;
    global_data.entropy_free = entropy_free;
    return( ((psa_status_t)0) );
}
void mbedtls_psa_crypto_free( void )
{
    psa_wipe_all_key_slots( );
    if( global_data.rng_state != 0 )
    {
        mbedtls_ctr_drbg_free( &global_data.ctr_drbg );
        global_data.entropy_free( &global_data.entropy );
    }
    mbedtls_platform_zeroize( &global_data, sizeof( global_data ) );
}
psa_status_t psa_crypto_init( void )
{
    psa_status_t status;
    const unsigned char drbg_seed[] = "PSA";
    if( global_data.initialized != 0 )
        return( ((psa_status_t)0) );
    if( global_data.entropy_init == ((void*)0) )
        global_data.entropy_init = mbedtls_entropy_init;
    if( global_data.entropy_free == ((void*)0) )
        global_data.entropy_free = mbedtls_entropy_free;
    global_data.entropy_init( &global_data.entropy );
    mbedtls_ctr_drbg_init( &global_data.ctr_drbg );
    global_data.rng_state = 1;
    status = mbedtls_to_psa_error(
        mbedtls_ctr_drbg_seed( &global_data.ctr_drbg,
                               mbedtls_entropy_func,
                               &global_data.entropy,
                               drbg_seed, sizeof( drbg_seed ) - 1 ) );
    if( status != ((psa_status_t)0) )
        goto exit;
    global_data.rng_state = 2;
    status = psa_initialize_key_slots( );
    if( status != ((psa_status_t)0) )
        goto exit;
    global_data.initialized = 1;
exit:
    if( status != ((psa_status_t)0) )
        mbedtls_psa_crypto_free( );
    return( status );
}
