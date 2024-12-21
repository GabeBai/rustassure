typedef long unsigned int size_t;
typedef unsigned char __uint8_t;
typedef unsigned short int __uint16_t;
typedef unsigned int __uint32_t;
typedef unsigned long int __uint64_t;
typedef long int __time_t;
typedef __time_t time_t;
struct sigevent;
typedef time_t mbedtls_time_t;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
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
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
        typedef uint64_t mbedtls_mpi_uint;
typedef struct mbedtls_mpi
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
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
typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;
typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
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
enum {
    MBEDTLS_KEY_LENGTH_NONE = 0,
    MBEDTLS_KEY_LENGTH_DES = 64,
    MBEDTLS_KEY_LENGTH_DES_EDE = 128,
    MBEDTLS_KEY_LENGTH_DES_EDE3 = 192,
};
typedef enum {
    MBEDTLS_KEY_EXCHANGE_NONE = 0,
    MBEDTLS_KEY_EXCHANGE_RSA,
    MBEDTLS_KEY_EXCHANGE_DHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
    MBEDTLS_KEY_EXCHANGE_PSK,
    MBEDTLS_KEY_EXCHANGE_DHE_PSK,
    MBEDTLS_KEY_EXCHANGE_RSA_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
    MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
    MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
    MBEDTLS_KEY_EXCHANGE_ECJPAKE,
} mbedtls_key_exchange_type_t;
typedef struct mbedtls_ssl_ciphersuite_t mbedtls_ssl_ciphersuite_t;
struct mbedtls_ssl_ciphersuite_t
{
    int id;
    const char * name;
    mbedtls_cipher_type_t cipher;
    mbedtls_md_type_t mac;
    mbedtls_key_exchange_type_t key_exchange;
    int min_major_ver;
    int min_minor_ver;
    int max_major_ver;
    int max_minor_ver;
    unsigned char flags;
};
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite_id );
typedef struct mbedtls_asn1_buf
{
    int tag;
    size_t len;
    unsigned char *p;
}
mbedtls_asn1_buf;
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
typedef mbedtls_asn1_buf mbedtls_x509_buf;
typedef mbedtls_asn1_named_data mbedtls_x509_name;
typedef mbedtls_asn1_sequence mbedtls_x509_sequence;
typedef struct mbedtls_x509_time
{
    int year, mon, day;
    int hour, min, sec;
}
mbedtls_x509_time;
typedef struct mbedtls_x509_crl_entry
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf serial;
    mbedtls_x509_time revocation_date;
    mbedtls_x509_buf entry_ext;
    struct mbedtls_x509_crl_entry *next;
}
mbedtls_x509_crl_entry;
typedef struct mbedtls_x509_crl
{
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;
    int version;
    mbedtls_x509_buf sig_oid;
    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_name issuer;
    mbedtls_x509_time this_update;
    mbedtls_x509_time next_update;
    mbedtls_x509_crl_entry entry;
    mbedtls_x509_buf crl_ext;
    mbedtls_x509_buf sig_oid2;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;
    struct mbedtls_x509_crl *next;
}
mbedtls_x509_crl;
typedef struct mbedtls_x509_crt
{
    int own_buffer;
    mbedtls_x509_buf raw;
    mbedtls_x509_buf tbs;
    int version;
    mbedtls_x509_buf serial;
    mbedtls_x509_buf sig_oid;
    mbedtls_x509_buf issuer_raw;
    mbedtls_x509_buf subject_raw;
    mbedtls_x509_name issuer;
    mbedtls_x509_name subject;
    mbedtls_x509_time valid_from;
    mbedtls_x509_time valid_to;
    mbedtls_x509_buf pk_raw;
    mbedtls_pk_context pk;
    mbedtls_x509_buf issuer_id;
    mbedtls_x509_buf subject_id;
    mbedtls_x509_buf v3_ext;
    mbedtls_x509_sequence subject_alt_names;
    mbedtls_x509_sequence certificate_policies;
    int ext_types;
    int ca_istrue;
    int max_pathlen;
    unsigned int key_usage;
    mbedtls_x509_sequence ext_key_usage;
    unsigned char ns_cert_type;
    mbedtls_x509_buf sig;
    mbedtls_md_type_t sig_md;
    mbedtls_pk_type_t sig_pk;
    void *sig_opts;
    struct mbedtls_x509_crt *next;
}
mbedtls_x509_crt;
typedef struct mbedtls_x509_crt_profile
{
    uint32_t allowed_mds;
    uint32_t allowed_pks;
    uint32_t allowed_curves;
    uint32_t rsa_min_bitlen;
}
mbedtls_x509_crt_profile;
union mbedtls_ssl_premaster_secret
{
    unsigned char _pms_rsa[48];
    unsigned char _pms_dhm[1024];
    unsigned char _pms_ecdh[( ( 521 + 7 ) / 8 )];
    unsigned char _pms_psk[4 + 2 * 32];
    unsigned char _pms_dhe_psk[4 + 1024
                                 + 32];
    unsigned char _pms_rsa_psk[52 + 32];
    unsigned char _pms_ecdhe_psk[4 + ( ( 521 + 7 ) / 8 )
                                   + 32];
};
typedef enum
{
   MBEDTLS_SSL_TLS_PRF_NONE,
   MBEDTLS_SSL_TLS_PRF_SSL3,
   MBEDTLS_SSL_TLS_PRF_TLS1,
   MBEDTLS_SSL_TLS_PRF_SHA384,
   MBEDTLS_SSL_TLS_PRF_SHA256
}
mbedtls_tls_prf_types;
typedef int mbedtls_ssl_send_t( void *ctx,
                                const unsigned char *buf,
                                size_t len );
typedef int mbedtls_ssl_recv_t( void *ctx,
                                unsigned char *buf,
                                size_t len );
typedef int mbedtls_ssl_recv_timeout_t( void *ctx,
                                        unsigned char *buf,
                                        size_t len,
                                        uint32_t timeout );
typedef void mbedtls_ssl_set_timer_t( void * ctx,
                                      uint32_t int_ms,
                                      uint32_t fin_ms );
typedef int mbedtls_ssl_get_timer_t( void * ctx );
typedef struct mbedtls_ssl_session mbedtls_ssl_session;
typedef struct mbedtls_ssl_context mbedtls_ssl_context;
typedef struct mbedtls_ssl_config mbedtls_ssl_config;
typedef struct mbedtls_ssl_transform mbedtls_ssl_transform;
typedef struct mbedtls_ssl_handshake_params mbedtls_ssl_handshake_params;
typedef struct mbedtls_ssl_key_cert mbedtls_ssl_key_cert;
struct mbedtls_ssl_session
{
    mbedtls_time_t start;
    int ciphersuite;
    int compression;
    size_t id_len;
    unsigned char id[32];
    unsigned char master[48];
    mbedtls_x509_crt *peer_cert;
    uint32_t verify_result;
    unsigned char *ticket;
    size_t ticket_len;
    uint32_t ticket_lifetime;
    unsigned char mfl_code;
    int trunc_hmac;
    int encrypt_then_mac;
};
struct mbedtls_ssl_config
{
    const int *ciphersuite_list[4];
    void (*f_dbg)(void *, int, const char *, int, const char *);
    void *p_dbg;
    int (*f_rng)(void *, unsigned char *, size_t);
    void *p_rng;
    int (*f_get_cache)(void *, mbedtls_ssl_session *);
    int (*f_set_cache)(void *, const mbedtls_ssl_session *);
    void *p_cache;
    int (*f_sni)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_sni;
    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
    int (*f_psk)(void *, mbedtls_ssl_context *, const unsigned char *, size_t);
    void *p_psk;
    int (*f_cookie_write)( void *, unsigned char **, unsigned char *,
                           const unsigned char *, size_t );
    int (*f_cookie_check)( void *, const unsigned char *, size_t,
                           const unsigned char *, size_t );
    void *p_cookie;
    int (*f_ticket_write)( void *, const mbedtls_ssl_session *,
            unsigned char *, const unsigned char *, size_t *, uint32_t * );
    int (*f_ticket_parse)( void *, mbedtls_ssl_session *, unsigned char *, size_t);
    void *p_ticket;
    int (*f_export_keys)( void *, const unsigned char *,
            const unsigned char *, size_t, size_t, size_t );
    int (*f_export_keys_ext)( void *, const unsigned char *,
                const unsigned char *, size_t, size_t, size_t,
                const unsigned char[32], const unsigned char[32],
                mbedtls_tls_prf_types );
    void *p_export_keys;
    const mbedtls_x509_crt_profile *cert_profile;
    mbedtls_ssl_key_cert *key_cert;
    mbedtls_x509_crt *ca_chain;
    mbedtls_x509_crl *ca_crl;
    const int *sig_hashes;
    const mbedtls_ecp_group_id *curve_list;
    mbedtls_mpi dhm_P;
    mbedtls_mpi dhm_G;
    unsigned char *psk;
    size_t psk_len;
    unsigned char *psk_identity;
    size_t psk_identity_len;
    const char **alpn_list;
    uint32_t read_timeout;
    uint32_t hs_timeout_min;
    uint32_t hs_timeout_max;
    int renego_max_records;
    unsigned char renego_period[8];
    unsigned int badmac_limit;
    unsigned int dhm_min_bitlen;
    unsigned char max_major_ver;
    unsigned char max_minor_ver;
    unsigned char min_major_ver;
    unsigned char min_minor_ver;
    unsigned int endpoint : 1;
    unsigned int transport : 1;
    unsigned int authmode : 2;
    unsigned int allow_legacy_renegotiation : 2 ;
    unsigned int arc4_disabled : 1;
    unsigned int mfl_code : 3;
    unsigned int encrypt_then_mac : 1 ;
    unsigned int extended_ms : 1;
    unsigned int anti_replay : 1;
    unsigned int cbc_record_splitting : 1;
    unsigned int disable_renegotiation : 1;
    unsigned int trunc_hmac : 1;
    unsigned int session_tickets : 1;
    unsigned int fallback : 1;
    unsigned int cert_req_ca_list : 1;
};
struct mbedtls_ssl_context
{
    const mbedtls_ssl_config *conf;
    int state;
    int renego_status;
    int renego_records_seen;
    int major_ver;
    int minor_ver;
    unsigned badmac_seen;
    int (*f_vrfy)(void *, mbedtls_x509_crt *, int, uint32_t *);
    void *p_vrfy;
    mbedtls_ssl_send_t *f_send;
    mbedtls_ssl_recv_t *f_recv;
    mbedtls_ssl_recv_timeout_t *f_recv_timeout;
    void *p_bio;
    mbedtls_ssl_session *session_in;
    mbedtls_ssl_session *session_out;
    mbedtls_ssl_session *session;
    mbedtls_ssl_session *session_negotiate;
    mbedtls_ssl_handshake_params *handshake;
    mbedtls_ssl_transform *transform_in;
    mbedtls_ssl_transform *transform_out;
    mbedtls_ssl_transform *transform;
    mbedtls_ssl_transform *transform_negotiate;
    void *p_timer;
    mbedtls_ssl_set_timer_t *f_set_timer;
    mbedtls_ssl_get_timer_t *f_get_timer;
    unsigned char *in_buf;
    unsigned char *in_ctr;
    unsigned char *in_hdr;
    unsigned char *in_len;
    unsigned char *in_iv;
    unsigned char *in_msg;
    unsigned char *in_offt;
    int in_msgtype;
    size_t in_msglen;
    size_t in_left;
    uint16_t in_epoch;
    size_t next_record_offset;
    uint64_t in_window_top;
    uint64_t in_window;
    size_t in_hslen;
    int nb_zero;
    int keep_current_message;
    uint8_t disable_datagram_packing;
    unsigned char *out_buf;
    unsigned char *out_ctr;
    unsigned char *out_hdr;
    unsigned char *out_len;
    unsigned char *out_iv;
    unsigned char *out_msg;
    int out_msgtype;
    size_t out_msglen;
    size_t out_left;
    unsigned char cur_out_ctr[8];
    uint16_t mtu;
    signed char split_done;
    int client_auth;
    char *hostname;
    const char *alpn_chosen;
    unsigned char *cli_id;
    size_t cli_id_len;
    int secure_renegotiation;
    size_t verify_data_len;
    char own_verify_data[12];
    char peer_verify_data[12];
};
 const mbedtls_ssl_ciphersuite_t ciphersuite_definitions[] =
{
    { 0xCCA8,
      "TLS-ECDHE-RSA-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xCCA9,
      "TLS-ECDHE-ECDSA-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xCCAA,
      "TLS-DHE-RSA-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xCCAB,
      "TLS-PSK-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xCCAC,
      "TLS-ECDHE-PSK-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xCCAD,
      "TLS-DHE-PSK-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xCCAE,
      "TLS-RSA-PSK-WITH-CHACHA20-POLY1305-SHA256",
      MBEDTLS_CIPHER_CHACHA20_POLY1305, MBEDTLS_MD_SHA256,
      MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC009, "TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC00A, "TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC023, "TLS-ECDHE-ECDSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02B, "TLS-ECDHE-ECDSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC024, "TLS-ECDHE-ECDSA-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02C, "TLS-ECDHE-ECDSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0AD, "TLS-ECDHE-ECDSA-WITH-AES-256-CCM",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0AF, "TLS-ECDHE-ECDSA-WITH-AES-256-CCM-8",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xC0AC, "TLS-ECDHE-ECDSA-WITH-AES-128-CCM",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0AE, "TLS-ECDHE-ECDSA-WITH-AES-128-CCM-8",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xC072, "TLS-ECDHE-ECDSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC073, "TLS-ECDHE-ECDSA-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC086, "TLS-ECDHE-ECDSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC087, "TLS-ECDHE-ECDSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC008, "TLS-ECDHE-ECDSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC007, "TLS-ECDHE-ECDSA-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA,
      3, 1,
      3, 3,
      0x04 },
    { 0xC013, "TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC014, "TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC027, "TLS-ECDHE-RSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02F, "TLS-ECDHE-RSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC028, "TLS-ECDHE-RSA-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC030, "TLS-ECDHE-RSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC076, "TLS-ECDHE-RSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC077, "TLS-ECDHE-RSA-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC08A, "TLS-ECDHE-RSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC08B, "TLS-ECDHE-RSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC012, "TLS-ECDHE-RSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC011, "TLS-ECDHE-RSA-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_RSA,
      3, 1,
      3, 3,
      0x04 },
    { 0x9F, "TLS-DHE-RSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x9E, "TLS-DHE-RSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x67, "TLS-DHE-RSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x6B, "TLS-DHE-RSA-WITH-AES-256-CBC-SHA256",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x33, "TLS-DHE-RSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x39, "TLS-DHE-RSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0xC09F, "TLS-DHE-RSA-WITH-AES-256-CCM",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0A3, "TLS-DHE-RSA-WITH-AES-256-CCM-8",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xC09E, "TLS-DHE-RSA-WITH-AES-128-CCM",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0A2, "TLS-DHE-RSA-WITH-AES-128-CCM-8",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xBE, "TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC4, "TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x45, "TLS-DHE-RSA-WITH-CAMELLIA-128-CBC-SHA",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x88, "TLS-DHE-RSA-WITH-CAMELLIA-256-CBC-SHA",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0xC07C, "TLS-DHE-RSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC07D, "TLS-DHE-RSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x16, "TLS-DHE-RSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x9D, "TLS-RSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x9C, "TLS-RSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x3C, "TLS-RSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x3D, "TLS-RSA-WITH-AES-256-CBC-SHA256",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x2F, "TLS-RSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x35, "TLS-RSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0xC09D, "TLS-RSA-WITH-AES-256-CCM",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0A1, "TLS-RSA-WITH-AES-256-CCM-8",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xC09C, "TLS-RSA-WITH-AES-128-CCM",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0A0, "TLS-RSA-WITH-AES-128-CCM-8",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0x02 },
    { 0xBA, "TLS-RSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC0, "TLS-RSA-WITH-CAMELLIA-256-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x41, "TLS-RSA-WITH-CAMELLIA-128-CBC-SHA",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x84, "TLS-RSA-WITH-CAMELLIA-256-CBC-SHA",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0xC07A, "TLS-RSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC07B, "TLS-RSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 3,
      3, 3,
      0 },
    { 0x0A, "TLS-RSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0 },
    { 0x04, "TLS-RSA-WITH-RC4-128-MD5",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_MD5, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0x04 },
    { 0x05, "TLS-RSA-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA,
      3, 0,
      3, 3,
      0x04 },
    { 0xC00E, "TLS-ECDH-RSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC00F, "TLS-ECDH-RSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC029, "TLS-ECDH-RSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC031, "TLS-ECDH-RSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02A, "TLS-ECDH-RSA-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC032, "TLS-ECDH-RSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC078, "TLS-ECDH-RSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC079, "TLS-ECDH-RSA-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC08C, "TLS-ECDH-RSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC08D, "TLS-ECDH-RSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 3,
      3, 3,
      0 },
    { 0xC00D, "TLS-ECDH-RSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0 },
    { 0xC00C, "TLS-ECDH-RSA-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_RSA,
      3, 1,
      3, 3,
      0x04 },
    { 0xC004, "TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC005, "TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC025, "TLS-ECDH-ECDSA-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02D, "TLS-ECDH-ECDSA-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC026, "TLS-ECDH-ECDSA-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC02E, "TLS-ECDH-ECDSA-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC074, "TLS-ECDH-ECDSA-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC075, "TLS-ECDH-ECDSA-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC088, "TLS-ECDH-ECDSA-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC089, "TLS-ECDH-ECDSA-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 3,
      3, 3,
      0 },
    { 0xC003, "TLS-ECDH-ECDSA-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0 },
    { 0xC002, "TLS-ECDH-ECDSA-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA,
      3, 1,
      3, 3,
      0x04 },
    { 0xA8, "TLS-PSK-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xA9, "TLS-PSK-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xAE, "TLS-PSK-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xAF, "TLS-PSK-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0x8C, "TLS-PSK-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0x8D, "TLS-PSK-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0xC0A5, "TLS-PSK-WITH-AES-256-CCM",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC0A9, "TLS-PSK-WITH-AES-256-CCM-8",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0x02 },
    { 0xC0A4, "TLS-PSK-WITH-AES-128-CCM",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC0A8, "TLS-PSK-WITH-AES-128-CCM-8",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0x02 },
    { 0xC094, "TLS-PSK-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC095, "TLS-PSK-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC08E, "TLS-PSK-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC08F, "TLS-PSK-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0x8B, "TLS-PSK-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0x8A, "TLS-PSK-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_PSK,
      3, 0,
      3, 3,
      0x04 },
    { 0xAA, "TLS-DHE-PSK-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xAB, "TLS-DHE-PSK-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xB2, "TLS-DHE-PSK-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xB3, "TLS-DHE-PSK-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0x90, "TLS-DHE-PSK-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0x91, "TLS-DHE-PSK-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0xC0A7, "TLS-DHE-PSK-WITH-AES-256-CCM",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC0AB, "TLS-DHE-PSK-WITH-AES-256-CCM-8",
      MBEDTLS_CIPHER_AES_256_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0x02 },
    { 0xC0A6, "TLS-DHE-PSK-WITH-AES-128-CCM",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC0AA, "TLS-DHE-PSK-WITH-AES-128-CCM-8",
      MBEDTLS_CIPHER_AES_128_CCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0x02 },
    { 0xC096, "TLS-DHE-PSK-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC097, "TLS-DHE-PSK-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC090, "TLS-DHE-PSK-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC091, "TLS-DHE-PSK-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 3,
      3, 3,
      0 },
    { 0x8F, "TLS-DHE-PSK-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 0,
      3, 3,
      0 },
    { 0x8E, "TLS-DHE-PSK-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_DHE_PSK,
      3, 0,
      3, 3,
      0x04 },
    { 0xC037, "TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC038, "TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC035, "TLS-ECDHE-PSK-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC036, "TLS-ECDHE-PSK-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC09A, "TLS-ECDHE-PSK-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC09B, "TLS-ECDHE-PSK-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC034, "TLS-ECDHE-PSK-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC033, "TLS-ECDHE-PSK-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_ECDHE_PSK,
      3, 1,
      3, 3,
      0x04 },
    { 0xAC, "TLS-RSA-PSK-WITH-AES-128-GCM-SHA256",
      MBEDTLS_CIPHER_AES_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xAD, "TLS-RSA-PSK-WITH-AES-256-GCM-SHA384",
      MBEDTLS_CIPHER_AES_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xB6, "TLS-RSA-PSK-WITH-AES-128-CBC-SHA256",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xB7, "TLS-RSA-PSK-WITH-AES-256-CBC-SHA384",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0x94, "TLS-RSA-PSK-WITH-AES-128-CBC-SHA",
      MBEDTLS_CIPHER_AES_128_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0x95, "TLS-RSA-PSK-WITH-AES-256-CBC-SHA",
      MBEDTLS_CIPHER_AES_256_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC098, "TLS-RSA-PSK-WITH-CAMELLIA-128-CBC-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_CBC, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC099, "TLS-RSA-PSK-WITH-CAMELLIA-256-CBC-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_CBC, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0xC092, "TLS-RSA-PSK-WITH-CAMELLIA-128-GCM-SHA256",
      MBEDTLS_CIPHER_CAMELLIA_128_GCM, MBEDTLS_MD_SHA256, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 3,
      3, 3,
      0 },
    { 0xC093, "TLS-RSA-PSK-WITH-CAMELLIA-256-GCM-SHA384",
      MBEDTLS_CIPHER_CAMELLIA_256_GCM, MBEDTLS_MD_SHA384, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 3,
      3, 3,
      0 },
    { 0x93, "TLS-RSA-PSK-WITH-3DES-EDE-CBC-SHA",
      MBEDTLS_CIPHER_DES_EDE3_CBC, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0 },
    { 0x92, "TLS-RSA-PSK-WITH-RC4-128-SHA",
      MBEDTLS_CIPHER_ARC4_128, MBEDTLS_MD_SHA1, MBEDTLS_KEY_EXCHANGE_RSA_PSK,
      3, 1,
      3, 3,
      0x04 },
    { 0, "",
      MBEDTLS_CIPHER_NONE, MBEDTLS_MD_NONE, MBEDTLS_KEY_EXCHANGE_NONE,
      0, 0, 0, 0, 0 }
};
const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite )
{
    const mbedtls_ssl_ciphersuite_t *cur = ciphersuite_definitions;
    while( cur->id != 0 )
    {
        if( cur->id == ciphersuite )
            return( cur );
        cur++;
    }
    return( ((void*)0) );
}
