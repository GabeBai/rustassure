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
typedef struct
{
    psa_key_slot_t key_slots[32];
    unsigned key_slots_initialized : 1;
} psa_global_data_t;
static psa_global_data_t global_data;
psa_status_t psa_get_key_slot( psa_key_handle_t handle,
                               psa_key_slot_t **p_slot )
{
    psa_key_slot_t *slot = ((void*)0);
    if( ! global_data.key_slots_initialized )
        return( ((psa_status_t)-137) );
    if( handle == 0 || handle > ( sizeof( global_data.key_slots ) / sizeof( *( global_data.key_slots ) ) ) )
        return( ((psa_status_t)-136) );
    slot = &global_data.key_slots[handle - 1];
    if( ! psa_is_key_slot_occupied( slot ) )
        return( ((psa_status_t)-136) );
    *p_slot = slot;
    return( ((psa_status_t)0) );
}
psa_status_t psa_initialize_key_slots( void )
{
    global_data.key_slots_initialized = 1;
    return( ((psa_status_t)0) );
}
void psa_wipe_all_key_slots( void )
{
    psa_key_handle_t key;
    for( key = 1; key <= 32; key++ )
    {
        psa_key_slot_t *slot = &global_data.key_slots[key - 1];
        (void) psa_wipe_key_slot( slot );
    }
    global_data.key_slots_initialized = 0;
}
psa_status_t psa_get_empty_key_slot( psa_key_handle_t *handle,
                                             psa_key_slot_t **p_slot )
{
    if( ! global_data.key_slots_initialized )
        return( ((psa_status_t)-137) );
    for( *handle = 32; *handle != 0; --( *handle ) )
    {
        *p_slot = &global_data.key_slots[*handle - 1];
        if( ! psa_is_key_slot_occupied( *p_slot ) )
            return( ((psa_status_t)0) );
    }
    *p_slot = ((void*)0);
    return( ((psa_status_t)-141) );
}
static psa_status_t psa_load_persistent_key_into_slot( psa_key_slot_t *slot )
{
    psa_status_t status = ((psa_status_t)0);
    uint8_t *key_data = ((void*)0);
    size_t key_data_length = 0;
    status = psa_load_persistent_key( &slot->attr,
                                      &key_data, &key_data_length );
    if( status != ((psa_status_t)0) )
        goto exit;
    {
        status = psa_import_key_into_slot( slot, key_data, key_data_length );
    }
exit:
    psa_free_persistent_key_data( key_data, key_data_length );
    return( status );
}
static int psa_is_key_id_valid( psa_key_file_id_t file_id,
                                int vendor_ok )
{
    psa_app_key_id_t key_id = ( file_id );
    if( ((psa_app_key_id_t)0x00000001) <= key_id && key_id <= ((psa_app_key_id_t)0x3fffffff) )
        return( 1 );
    else if( vendor_ok &&
             ((psa_app_key_id_t)0x40000000) <= key_id &&
             key_id <= ((psa_app_key_id_t)0x7fffffff) )
        return( 1 );
    else
        return( 0 );
}
psa_status_t psa_validate_key_location( psa_key_lifetime_t lifetime,
                                        psa_se_drv_table_entry_t **p_drv )
{
    if ( psa_key_lifetime_is_external( lifetime ) )
    {
        (void) p_drv;
        return( ((psa_status_t)-135) );
    }
    else
        return( ((psa_status_t)0) );
}
psa_status_t psa_validate_key_persistence( psa_key_lifetime_t lifetime,
                                           psa_key_id_t key_id )
{
    if ( (((psa_key_persistence_t)((lifetime) & 0x000000ff)) == ((psa_key_persistence_t)0x00)) )
    {
        return( ((psa_status_t)0) );
    }
    else
    {
        if( psa_is_key_id_valid( key_id,
                                 psa_key_lifetime_is_external( lifetime ) ) )
            return( ((psa_status_t)0) );
        else
            return( ((psa_status_t)-135) );
    }
}
psa_status_t psa_open_key( psa_key_file_id_t id, psa_key_handle_t *handle )
{
    psa_status_t status;
    psa_key_slot_t *slot;
    *handle = 0;
    if( ! psa_is_key_id_valid( id, 1 ) )
        return( ((psa_status_t)-135) );
    status = psa_get_empty_key_slot( handle, &slot );
    if( status != ((psa_status_t)0) )
        return( status );
    slot->attr.lifetime = ((psa_key_lifetime_t)0x00000001);
    slot->attr.id = id;
    status = psa_load_persistent_key_into_slot( slot );
    if( status != ((psa_status_t)0) )
    {
        psa_wipe_key_slot( slot );
        *handle = 0;
    }
    return( status );
}
psa_status_t psa_close_key( psa_key_handle_t handle )
{
    psa_status_t status;
    psa_key_slot_t *slot;
    if( handle == 0 )
        return( ((psa_status_t)0) );
    status = psa_get_key_slot( handle, &slot );
    if( status != ((psa_status_t)0) )
        return( status );
    return( psa_wipe_key_slot( slot ) );
}
void mbedtls_psa_get_stats( mbedtls_psa_stats_t *stats )
{
    psa_key_handle_t key;
    memset( stats, 0, sizeof( *stats ) );
    for( key = 1; key <= 32; key++ )
    {
        const psa_key_slot_t *slot = &global_data.key_slots[key - 1];
        if( ! psa_is_key_slot_occupied( slot ) )
        {
            ++stats->empty_slots;
            continue;
        }
        if( slot->attr.lifetime == ((psa_key_lifetime_t)0x00000000) )
            ++stats->volatile_slots;
        else if( slot->attr.lifetime == ((psa_key_lifetime_t)0x00000001) )
        {
            psa_app_key_id_t id = ( slot->attr.id );
            ++stats->persistent_slots;
            if( id > stats->max_open_internal_key_id )
                stats->max_open_internal_key_id = id;
        }
        else
        {
            psa_app_key_id_t id = ( slot->attr.id );
            ++stats->external_slots;
            if( id > stats->max_open_external_key_id )
                stats->max_open_external_key_id = id;
        }
    }
}
