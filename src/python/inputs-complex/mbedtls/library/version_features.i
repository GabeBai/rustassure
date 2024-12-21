typedef int mbedtls_iso_c_forbids_empty_translation_units;
unsigned int mbedtls_version_get_number( void );
void mbedtls_version_get_string( char *string );
void mbedtls_version_get_string_full( char *string );
int mbedtls_version_check_feature( const char *feature );

typedef long unsigned int size_t;
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

static const char * const features[] = {
    "MBEDTLS_HAVE_ASM",
    "MBEDTLS_HAVE_TIME",
    "MBEDTLS_HAVE_TIME_DATE",
    "MBEDTLS_CIPHER_MODE_CBC",
    "MBEDTLS_CIPHER_MODE_CFB",
    "MBEDTLS_CIPHER_MODE_CTR",
    "MBEDTLS_CIPHER_MODE_OFB",
    "MBEDTLS_CIPHER_MODE_XTS",
    "MBEDTLS_CIPHER_PADDING_PKCS7",
    "MBEDTLS_CIPHER_PADDING_ONE_AND_ZEROS",
    "MBEDTLS_CIPHER_PADDING_ZEROS_AND_LEN",
    "MBEDTLS_CIPHER_PADDING_ZEROS",
    "MBEDTLS_REMOVE_ARC4_CIPHERSUITES",
    "MBEDTLS_REMOVE_3DES_CIPHERSUITES",
    "MBEDTLS_ECP_DP_SECP192R1_ENABLED",
    "MBEDTLS_ECP_DP_SECP224R1_ENABLED",
    "MBEDTLS_ECP_DP_SECP256R1_ENABLED",
    "MBEDTLS_ECP_DP_SECP384R1_ENABLED",
    "MBEDTLS_ECP_DP_SECP521R1_ENABLED",
    "MBEDTLS_ECP_DP_SECP192K1_ENABLED",
    "MBEDTLS_ECP_DP_SECP224K1_ENABLED",
    "MBEDTLS_ECP_DP_SECP256K1_ENABLED",
    "MBEDTLS_ECP_DP_BP256R1_ENABLED",
    "MBEDTLS_ECP_DP_BP384R1_ENABLED",
    "MBEDTLS_ECP_DP_BP512R1_ENABLED",
    "MBEDTLS_ECP_DP_CURVE25519_ENABLED",
    "MBEDTLS_ECP_DP_CURVE448_ENABLED",
    "MBEDTLS_ECP_NIST_OPTIM",
    "MBEDTLS_ECDH_LEGACY_CONTEXT",
    "MBEDTLS_ECDSA_DETERMINISTIC",
    "MBEDTLS_KEY_EXCHANGE_PSK_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_DHE_PSK_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_ECDHE_PSK_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_RSA_PSK_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_RSA_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_DHE_RSA_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_ECDHE_RSA_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA_ENABLED",
    "MBEDTLS_KEY_EXCHANGE_ECDH_RSA_ENABLED",
    "MBEDTLS_PK_PARSE_EC_EXTENDED",
    "MBEDTLS_ERROR_STRERROR_DUMMY",
    "MBEDTLS_GENPRIME",
    "MBEDTLS_FS_IO",
    "MBEDTLS_PK_RSA_ALT_SUPPORT",
    "MBEDTLS_PKCS1_V15",
    "MBEDTLS_PKCS1_V21",
    "MBEDTLS_SELF_TEST",
    "MBEDTLS_SSL_ALL_ALERT_MESSAGES",
    "MBEDTLS_SSL_RECORD_CHECKING",
    "MBEDTLS_SSL_CONTEXT_SERIALIZATION",
    "MBEDTLS_SSL_ENCRYPT_THEN_MAC",
    "MBEDTLS_SSL_EXTENDED_MASTER_SECRET",
    "MBEDTLS_SSL_FALLBACK_SCSV",
    "MBEDTLS_SSL_KEEP_PEER_CERTIFICATE",
    "MBEDTLS_SSL_CBC_RECORD_SPLITTING",
    "MBEDTLS_SSL_RENEGOTIATION",
    "MBEDTLS_SSL_MAX_FRAGMENT_LENGTH",
    "MBEDTLS_SSL_PROTO_TLS1",
    "MBEDTLS_SSL_PROTO_TLS1_1",
    "MBEDTLS_SSL_PROTO_TLS1_2",
    "MBEDTLS_SSL_PROTO_DTLS",
    "MBEDTLS_SSL_ALPN",
    "MBEDTLS_SSL_DTLS_ANTI_REPLAY",
    "MBEDTLS_SSL_DTLS_HELLO_VERIFY",
    "MBEDTLS_SSL_DTLS_CLIENT_PORT_REUSE",
    "MBEDTLS_SSL_DTLS_BADMAC_LIMIT",
    "MBEDTLS_SSL_SESSION_TICKETS",
    "MBEDTLS_SSL_EXPORT_KEYS",
    "MBEDTLS_SSL_SERVER_NAME_INDICATION",
    "MBEDTLS_SSL_TRUNCATED_HMAC",
    "MBEDTLS_VERSION_FEATURES",
    "MBEDTLS_X509_CHECK_KEY_USAGE",
    "MBEDTLS_X509_CHECK_EXTENDED_KEY_USAGE",
    "MBEDTLS_X509_RSASSA_PSS_SUPPORT",
    "MBEDTLS_AESNI_C",
    "MBEDTLS_AES_C",
    "MBEDTLS_ARC4_C",
    "MBEDTLS_ASN1_PARSE_C",
    "MBEDTLS_ASN1_WRITE_C",
    "MBEDTLS_BASE64_C",
    "MBEDTLS_BIGNUM_C",
    "MBEDTLS_BLOWFISH_C",
    "MBEDTLS_CAMELLIA_C",
    "MBEDTLS_CCM_C",
    "MBEDTLS_CERTS_C",
    "MBEDTLS_CHACHA20_C",
    "MBEDTLS_CHACHAPOLY_C",
    "MBEDTLS_CIPHER_C",
    "MBEDTLS_CTR_DRBG_C",
    "MBEDTLS_DEBUG_C",
    "MBEDTLS_DES_C",
    "MBEDTLS_DHM_C",
    "MBEDTLS_ECDH_C",
    "MBEDTLS_ECDSA_C",
    "MBEDTLS_ECP_C",
    "MBEDTLS_ENTROPY_C",
    "MBEDTLS_ERROR_C",
    "MBEDTLS_GCM_C",
    "MBEDTLS_HKDF_C",
    "MBEDTLS_HMAC_DRBG_C",
    "MBEDTLS_MD_C",
    "MBEDTLS_MD5_C",
    "MBEDTLS_NET_C",
    "MBEDTLS_OID_C",
    "MBEDTLS_PADLOCK_C",
    "MBEDTLS_PEM_PARSE_C",
    "MBEDTLS_PEM_WRITE_C",
    "MBEDTLS_PK_C",
    "MBEDTLS_PK_PARSE_C",
    "MBEDTLS_PK_WRITE_C",
    "MBEDTLS_PKCS5_C",
    "MBEDTLS_PKCS12_C",
    "MBEDTLS_PLATFORM_C",
    "MBEDTLS_POLY1305_C",
    "MBEDTLS_PSA_CRYPTO_C",
    "MBEDTLS_PSA_CRYPTO_STORAGE_C",
    "MBEDTLS_PSA_ITS_FILE_C",
    "MBEDTLS_RIPEMD160_C",
    "MBEDTLS_RSA_C",
    "MBEDTLS_SHA1_C",
    "MBEDTLS_SHA256_C",
    "MBEDTLS_SHA512_C",
    "MBEDTLS_SSL_CACHE_C",
    "MBEDTLS_SSL_COOKIE_C",
    "MBEDTLS_SSL_TICKET_C",
    "MBEDTLS_SSL_CLI_C",
    "MBEDTLS_SSL_SRV_C",
    "MBEDTLS_SSL_TLS_C",
    "MBEDTLS_TIMING_C",
    "MBEDTLS_VERSION_C",
    "MBEDTLS_X509_USE_C",
    "MBEDTLS_X509_CRT_PARSE_C",
    "MBEDTLS_X509_CRL_PARSE_C",
    "MBEDTLS_X509_CSR_PARSE_C",
    "MBEDTLS_X509_CREATE_C",
    "MBEDTLS_X509_CRT_WRITE_C",
    "MBEDTLS_X509_CSR_WRITE_C",
    "MBEDTLS_XTEA_C",
    ((void*)0)
};
int mbedtls_version_check_feature( const char *feature )
{
    const char * const *idx = features;
    if( *idx == ((void*)0) )
        return( -2 );
    if( feature == ((void*)0) )
        return( -1 );
    while( *idx != ((void*)0) )
    {
        if( !strcmp( *idx, feature ) )
            return( 0 );
        idx++;
    }
    return( -1 );
}
