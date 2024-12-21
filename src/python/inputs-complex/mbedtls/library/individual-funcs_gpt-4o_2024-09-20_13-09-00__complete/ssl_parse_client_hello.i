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
mbedtls_pk_type_t mbedtls_ssl_get_ciphersuite_sig_alg( const mbedtls_ssl_ciphersuite_t *info );
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
typedef struct mbedtls_dhm_context
{
    size_t len;
    mbedtls_mpi P;
    mbedtls_mpi G;
    mbedtls_mpi X;
    mbedtls_mpi GX;
    mbedtls_mpi GY;
    mbedtls_mpi K;
    mbedtls_mpi RP;
    mbedtls_mpi Vi;
    mbedtls_mpi Vf;
    mbedtls_mpi pX;
}
mbedtls_dhm_context;
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
typedef struct mbedtls_ssl_sig_hash_set_t mbedtls_ssl_sig_hash_set_t;
typedef struct mbedtls_ssl_key_cert mbedtls_ssl_key_cert;
typedef struct mbedtls_ssl_flight_item mbedtls_ssl_flight_item;
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
int mbedtls_ssl_send_alert_message( mbedtls_ssl_context *ssl,
                            unsigned char level,
                            unsigned char message );
typedef struct mbedtls_md5_context
{
    uint32_t total[2];
    uint32_t state[4];
    unsigned char buffer[64];
}
mbedtls_md5_context;
typedef struct mbedtls_sha1_context
{
    uint32_t total[2];
    uint32_t state[5];
    unsigned char buffer[64];
}
mbedtls_sha1_context;
typedef struct mbedtls_sha256_context
{
    uint32_t total[2];
    uint32_t state[8];
    unsigned char buffer[64];
    int is224;
}
mbedtls_sha256_context;
typedef struct mbedtls_sha512_context
{
    uint64_t total[2];
    uint64_t state[8];
    unsigned char buffer[128];
    int is384;
}
mbedtls_sha512_context;
struct mbedtls_ssl_sig_hash_set_t
{
    mbedtls_md_type_t rsa;
    mbedtls_md_type_t ecdsa;
};
typedef int mbedtls_ssl_tls_prf_cb( const unsigned char *secret, size_t slen,
                                     const char *label,
                                     const unsigned char *random, size_t rlen,
                                     unsigned char *dstbuf, size_t dlen );
struct mbedtls_ssl_handshake_params
{
    mbedtls_ssl_sig_hash_set_t hash_algs;
    mbedtls_dhm_context dhm_ctx;
    mbedtls_ecdh_context ecdh_ctx;
    const mbedtls_ecp_curve_info **curves;
    unsigned char *psk;
    size_t psk_len;
    mbedtls_ssl_key_cert *key_cert;
    int sni_authmode;
    mbedtls_ssl_key_cert *sni_key_cert;
    mbedtls_x509_crt *sni_ca_chain;
    mbedtls_x509_crl *sni_ca_crl;
    unsigned int out_msg_seq;
    unsigned int in_msg_seq;
    unsigned char *verify_cookie;
    unsigned char verify_cookie_len;
    uint32_t retransmit_timeout;
    unsigned char retransmit_state;
    mbedtls_ssl_flight_item *flight;
    mbedtls_ssl_flight_item *cur_msg;
    unsigned char *cur_msg_p;
    unsigned int in_flight_start_seq;
    mbedtls_ssl_transform *alt_transform_out;
    unsigned char alt_out_ctr[8];
    struct
    {
        size_t total_bytes_buffered;
        uint8_t seen_ccs;
        struct mbedtls_ssl_hs_buffer
        {
            unsigned is_valid : 1;
            unsigned is_fragmented : 1;
            unsigned is_complete : 1;
            unsigned char *data;
            size_t data_len;
        } hs[4];
        struct
        {
            unsigned char *data;
            size_t len;
            unsigned epoch;
        } future_record;
    } buffering;
    uint16_t mtu;
       mbedtls_md5_context fin_md5;
      mbedtls_sha1_context fin_sha1;
    mbedtls_sha256_context fin_sha256;
    mbedtls_sha512_context fin_sha512;
    void (*update_checksum)(mbedtls_ssl_context *, const unsigned char *, size_t);
    void (*calc_verify)(const mbedtls_ssl_context *, unsigned char *, size_t *);
    void (*calc_finished)(mbedtls_ssl_context *, unsigned char *, int);
    mbedtls_ssl_tls_prf_cb *tls_prf;
    mbedtls_ssl_ciphersuite_t const *ciphersuite_info;
    size_t pmslen;
    unsigned char randbytes[64];
    unsigned char premaster[sizeof( union mbedtls_ssl_premaster_secret )];
    int resume;
    int max_major_ver;
    int max_minor_ver;
    int cli_exts;
    int new_session_ticket;
    int extended_ms;
};
struct mbedtls_ssl_transform
{
    size_t minlen;
    size_t ivlen;
    size_t fixed_ivlen;
    size_t maclen;
    size_t taglen;
    unsigned char iv_enc[16];
    unsigned char iv_dec[16];
    mbedtls_md_context_t md_ctx_enc;
    mbedtls_md_context_t md_ctx_dec;
    int encrypt_then_mac;
    mbedtls_cipher_context_t cipher_ctx_enc;
    mbedtls_cipher_context_t cipher_ctx_dec;
    int minor_ver;
    unsigned char randbytes[64];
};
struct mbedtls_ssl_key_cert
{
    mbedtls_x509_crt *cert;
    mbedtls_pk_context *key;
    mbedtls_ssl_key_cert *next;
};
struct mbedtls_ssl_flight_item
{
    unsigned char *p;
    size_t len;
    unsigned char type;
    mbedtls_ssl_flight_item *next;
};
mbedtls_md_type_t mbedtls_ssl_sig_hash_set_find( mbedtls_ssl_sig_hash_set_t *set,
                                                 mbedtls_pk_type_t sig_alg );
void mbedtls_ssl_sig_hash_set_const_hash( mbedtls_ssl_sig_hash_set_t *set,
                                          mbedtls_md_type_t md_alg );
int mbedtls_ssl_fetch_input( mbedtls_ssl_context *ssl, size_t nb_want );
unsigned char mbedtls_ssl_hash_from_md_alg( int md );
int mbedtls_ssl_check_sig_hash( const mbedtls_ssl_context *ssl,
                                mbedtls_md_type_t md );
void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] );
void mbedtls_ssl_recv_flight_completed( mbedtls_ssl_context *ssl );
int mbedtls_ssl_dtls_replay_check( mbedtls_ssl_context const *ssl );
void mbedtls_ssl_dtls_replay_update( mbedtls_ssl_context *ssl );
void mbedtls_debug_print_msg( const mbedtls_ssl_context *ssl, int level,
                              const char *file, int line,
                              const char *format, ... );
void mbedtls_debug_print_ret( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line,
                      const char *text, int ret );
void mbedtls_debug_print_buf( const mbedtls_ssl_context *ssl, int level,
                      const char *file, int line, const char *text,
                      const unsigned char *buf, size_t len );
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1, 2)));
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
 int ssl_parse_client_hello( mbedtls_ssl_context *ssl )
{
    int ret, got_common_suite;
    size_t i, j;
    size_t ciph_offset, comp_offset, ext_offset;
    size_t msg_len, ciph_len, sess_len, comp_len, ext_len;
    size_t cookie_offset, cookie_len;
    unsigned char *buf, *p, *ext;
    int renegotiation_info_seen = 0;
    int handshake_failure = 0;
    const int *ciphersuites;
    const mbedtls_ssl_ciphersuite_t *ciphersuite_info;
    int major, minor;
    int sig_hash_alg_ext_present = 0;
    mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 1320, "=> parse client hello" );
read_record_header:
    if( ssl->renego_status == 0 )
    {
        if( ( ret = mbedtls_ssl_fetch_input( ssl, 5 ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_srv.c", 1337, "mbedtls_ssl_fetch_input", ret );
            return( ret );
        }
    }
    buf = ssl->in_hdr;
    mbedtls_debug_print_buf( ssl, 4, "ssl_srv.c", 1352, "record header", buf, mbedtls_ssl_in_hdr_len( ssl ) );
    mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1364, "client hello v3, message type: %d", buf[0] );
    if( buf[0] != 22 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1368, "bad client hello message" );
        return( -0x7900 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1373, "client hello v3, message len.: %d", ( ssl->in_len[0] << 8 ) | ssl->in_len[1] );
    mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1376, "client hello v3, protocol version: [%d:%d]", buf[1], buf[2] );
    mbedtls_ssl_read_version( &major, &minor, ssl->conf->transport, buf + 1 );
    if( major < 3 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1386, "bad client hello message" );
        return( -0x7900 );
    }
    if( ssl->conf->transport == 1
        && ssl->renego_status == 0
        )
    {
        if( ssl->in_ctr[0] != 0 || ssl->in_ctr[1] != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1402, "bad client hello message" );
            return( -0x7900 );
        }
        memcpy( ssl->cur_out_ctr + 2, ssl->in_ctr + 2, 6 );
        if( mbedtls_ssl_dtls_replay_check( ssl ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1411, "replayed record, discarding" );
            ssl->next_record_offset = 0;
            ssl->in_left = 0;
            goto read_record_header;
        }
        mbedtls_ssl_dtls_replay_update( ssl );
    }
    msg_len = ( ssl->in_len[0] << 8 ) | ssl->in_len[1];
    if( ssl->renego_status != 0 )
    {
        msg_len = ssl->in_hslen;
    }
    else
    {
        if( msg_len > 16384 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1436, "bad client hello message" );
            return( -0x7900 );
        }
        if( ( ret = mbedtls_ssl_fetch_input( ssl,
                       mbedtls_ssl_in_hdr_len( ssl ) + msg_len ) ) != 0 )
        {
            mbedtls_debug_print_ret( ssl, 1, "ssl_srv.c", 1443, "mbedtls_ssl_fetch_input", ret );
            return( ret );
        }
        if( ssl->conf->transport == 1 )
            ssl->next_record_offset = msg_len + mbedtls_ssl_in_hdr_len( ssl );
        else
            ssl->in_left = 0;
    }
    buf = ssl->in_msg;
    mbedtls_debug_print_buf( ssl, 4, "ssl_srv.c", 1458, "record contents", buf, msg_len );
    ssl->handshake->update_checksum( ssl, buf, msg_len );
    if( msg_len < mbedtls_ssl_hs_hdr_len( ssl ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1472, "bad client hello message" );
        return( -0x7900 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1476, "client hello v3, handshake type: %d", buf[0] );
    if( buf[0] != 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1480, "bad client hello message" );
        return( -0x7900 );
    }
    mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1485, "client hello v3, handshake len.: %d", ( buf[1] << 16 ) | ( buf[2] << 8 ) | buf[3] );
    if( buf[1] != 0 ||
        msg_len != mbedtls_ssl_hs_hdr_len( ssl ) + ( ( buf[2] << 8 ) | buf[3] ) )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1491, "bad client hello message" );
        return( -0x7900 );
    }
    if( ssl->conf->transport == 1 )
    {
        if( ssl->renego_status == 1 )
        {
            unsigned int cli_msg_seq = ( ssl->in_msg[4] << 8 ) |
                                         ssl->in_msg[5];
            if( cli_msg_seq != ssl->handshake->in_msg_seq )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1513, "bad client hello message_seq: " "%d (expected %d)", cli_msg_seq, ssl->handshake->in_msg_seq );
                return( -0x7900 );
            }
            ssl->handshake->in_msg_seq++;
        }
        else
        {
            unsigned int cli_msg_seq = ( ssl->in_msg[4] << 8 ) |
                                         ssl->in_msg[5];
            ssl->handshake->out_msg_seq = cli_msg_seq;
            ssl->handshake->in_msg_seq = cli_msg_seq + 1;
        }
        if( ssl->in_msg[6] != 0 || ssl->in_msg[7] != 0 || ssl->in_msg[8] != 0 ||
            memcmp( ssl->in_msg + 1, ssl->in_msg + 9, 3 ) != 0 )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1535, "ClientHello fragmentation not supported" );
            return( -0x7080 );
        }
    }
    buf += mbedtls_ssl_hs_hdr_len( ssl );
    msg_len -= mbedtls_ssl_hs_hdr_len( ssl );
    if( msg_len < 38 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1567, "bad client hello message" );
        return( -0x7900 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1574, "client hello, version", buf, 2 );
    mbedtls_ssl_read_version( &ssl->major_ver, &ssl->minor_ver,
                      ssl->conf->transport, buf );
    ssl->handshake->max_major_ver = ssl->major_ver;
    ssl->handshake->max_minor_ver = ssl->minor_ver;
    if( ssl->major_ver < ssl->conf->min_major_ver ||
        ssl->minor_ver < ssl->conf->min_minor_ver )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1588, "client only supports ssl smaller than minimum" " [%d:%d] < [%d:%d]", ssl->major_ver, ssl->minor_ver, ssl->conf->min_major_ver, ssl->conf->min_minor_ver );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                     70 );
        return( -0x6E80 );
    }
    if( ssl->major_ver > ssl->conf->max_major_ver )
    {
        ssl->major_ver = ssl->conf->max_major_ver;
        ssl->minor_ver = ssl->conf->max_minor_ver;
    }
    else if( ssl->minor_ver > ssl->conf->max_minor_ver )
        ssl->minor_ver = ssl->conf->max_minor_ver;
    mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1605, "client hello, random bytes", buf + 2, 32 );
    memcpy( ssl->handshake->randbytes, buf + 2, 32 );
    sess_len = buf[34];
    if( sess_len > sizeof( ssl->session_negotiate->id ) ||
        sess_len + 34 + 2 > msg_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1617, "bad client hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7900 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1623, "client hello, session id", buf + 35, sess_len );
    ssl->session_negotiate->id_len = sess_len;
    memset( ssl->session_negotiate->id, 0,
            sizeof( ssl->session_negotiate->id ) );
    memcpy( ssl->session_negotiate->id, buf + 35,
            ssl->session_negotiate->id_len );
    if( ssl->conf->transport == 1 )
    {
        cookie_offset = 35 + sess_len;
        cookie_len = buf[cookie_offset];
        if( cookie_offset + 1 + cookie_len + 2 > msg_len )
        {
            mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1642, "bad client hello message" );
            mbedtls_ssl_send_alert_message( ssl, 2,
                                            70 );
            return( -0x7900 );
        }
        mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1649, "client hello, cookie", buf + cookie_offset + 1, cookie_len );
        if( ssl->conf->f_cookie_check != ((void*)0)
            && ssl->renego_status == 0
            )
        {
            if( ssl->conf->f_cookie_check( ssl->conf->p_cookie,
                                     buf + cookie_offset + 1, cookie_len,
                                     ssl->cli_id, ssl->cli_id_len ) != 0 )
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 1662, "cookie verification failed" );
                ssl->handshake->verify_cookie_len = 1;
            }
            else
            {
                mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 1667, "cookie verification passed" );
                ssl->handshake->verify_cookie_len = 0;
            }
        }
        else
        {
            if( cookie_len != 0 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1678, "bad client hello message" );
                return( -0x7900 );
            }
            mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 1682, "cookie verification skipped" );
        }
        ciph_offset = cookie_offset + 1 + cookie_len;
    }
    else
        ciph_offset = 35 + sess_len;
    ciph_len = ( buf[ciph_offset + 0] << 8 )
             | ( buf[ciph_offset + 1] );
    if( ciph_len < 2 ||
        ciph_len + 2 + ciph_offset + 1 > msg_len ||
        ( ciph_len % 2 ) != 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1701, "bad client hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7900 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1708, "client hello, ciphersuitelist", buf + ciph_offset + 2, ciph_len );
    comp_offset = ciph_offset + 2 + ciph_len;
    comp_len = buf[comp_offset];
    if( comp_len < 1 ||
        comp_len > 16 ||
        comp_len + comp_offset + 1 > msg_len )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1721, "bad client hello message" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        50 );
        return( -0x7900 );
    }
    mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1728, "client hello, compression", buf + comp_offset + 1, comp_len );
    ssl->session_negotiate->compression = 0;
    if( ssl->conf->transport == 1 )
        ssl->session_negotiate->compression = 0;
        ext_offset = comp_offset + 1 + comp_len;
        if( msg_len > ext_offset )
        {
            if( msg_len < ext_offset + 2 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1761, "bad client hello message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                50 );
                return( -0x7900 );
            }
            ext_len = ( buf[ext_offset + 0] << 8 )
                    | ( buf[ext_offset + 1] );
            if( ( ext_len > 0 && ext_len < 4 ) ||
                msg_len != ext_offset + 2 + ext_len )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1773, "bad client hello message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                50 );
                return( -0x7900 );
            }
        }
        else
            ext_len = 0;
        ext = buf + ext_offset + 2;
        mbedtls_debug_print_buf( ssl, 3, "ssl_srv.c", 1783, "client hello extensions", ext, ext_len );
        while( ext_len != 0 )
        {
            unsigned int ext_id;
            unsigned int ext_size;
            if ( ext_len < 4 ) {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1790, "bad client hello message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                               50 );
                return( -0x7900 );
            }
            ext_id = ( ( ext[0] << 8 ) | ( ext[1] ) );
            ext_size = ( ( ext[2] << 8 ) | ( ext[3] ) );
            if( ext_size + 4 > ext_len )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1800, "bad client hello message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                50 );
                return( -0x7900 );
            }
            switch( ext_id )
            {
            case 0:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1809, "found ServerName extension" );
                if( ssl->conf->f_sni == ((void*)0) )
                    break;
                ret = ssl_parse_servername_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 0xFF01:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1820, "found renegotiation extension" );
                renegotiation_info_seen = 1;
                ret = ssl_parse_renegotiation_info( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 13:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1833, "found signature_algorithms extension" );
                ret = ssl_parse_signature_algorithms_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                sig_hash_alg_ext_present = 1;
                break;
            case 10:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1847, "found supported elliptic curves extension" );
                ret = ssl_parse_supported_elliptic_curves( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 11:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1855, "found supported point formats extension" );
                ssl->handshake->cli_exts |= (1 << 0);
                ret = ssl_parse_supported_point_formats( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 1:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1877, "found max fragment length extension" );
                ret = ssl_parse_max_fragment_length_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 4:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1887, "found truncated hmac extension" );
                ret = ssl_parse_truncated_hmac_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 22:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1907, "found encrypt then mac extension" );
                ret = ssl_parse_encrypt_then_mac_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 0x0017:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1917, "found extended master secret extension" );
                ret = ssl_parse_extended_ms_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 35:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1927, "found session ticket extension" );
                ret = ssl_parse_session_ticket_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            case 16:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1937, "found alpn extension" );
                ret = ssl_parse_alpn_ext( ssl, ext + 4, ext_size );
                if( ret != 0 )
                    return( ret );
                break;
            default:
                mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 1947, "unknown extension found: %d (ignoring)", ext_id );
            }
            ext_len -= 4 + ext_size;
            ext += 4 + ext_size;
            if( ext_len > 0 && ext_len < 4 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1955, "bad client hello message" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                50 );
                return( -0x7900 );
            }
        }
    for( i = 0, p = buf + ciph_offset + 2; i < ciph_len; i += 2, p += 2 )
    {
        if( p[0] == (unsigned char)( ( 0x5600 >> 8 ) & 0xff ) &&
            p[1] == (unsigned char)( ( 0x5600 ) & 0xff ) )
        {
            mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 1971, "received FALLBACK_SCSV" );
            if( ssl->minor_ver < ssl->conf->max_minor_ver )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 1975, "inapropriate fallback" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                        86 );
                return( -0x7900 );
            }
            break;
        }
    }
    if( sig_hash_alg_ext_present == 0 )
    {
        mbedtls_md_type_t md_default = MBEDTLS_MD_SHA1;
        if( mbedtls_ssl_check_sig_hash( ssl, md_default ) != 0 )
            md_default = MBEDTLS_MD_NONE;
        mbedtls_ssl_sig_hash_set_const_hash( &ssl->handshake->hash_algs, md_default );
    }
    for( i = 0, p = buf + ciph_offset + 2; i < ciph_len; i += 2, p += 2 )
    {
        if( p[0] == 0 && p[1] == 0xFF )
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 2015, "received TLS_EMPTY_RENEGOTIATION_INFO " );
            if( ssl->renego_status == 1 )
            {
                mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2020, "received RENEGOTIATION SCSV " "during renegotiation" );
                mbedtls_ssl_send_alert_message( ssl, 2,
                                                40 );
                return( -0x7900 );
            }
            ssl->secure_renegotiation = 1;
            break;
        }
    }
    if( ssl->secure_renegotiation != 1 &&
        ssl->conf->allow_legacy_renegotiation == 2 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2037, "legacy renegotiation, breaking off handshake" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 1 &&
             renegotiation_info_seen == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2045, "renegotiation_info extension missing (secure)" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             ssl->conf->allow_legacy_renegotiation == 0 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2052, "legacy renegotiation not allowed" );
        handshake_failure = 1;
    }
    else if( ssl->renego_status == 1 &&
             ssl->secure_renegotiation == 0 &&
             renegotiation_info_seen == 1 )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2059, "renegotiation_info extension present (legacy)" );
        handshake_failure = 1;
    }
    if( handshake_failure == 1 )
    {
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7900 );
    }
    got_common_suite = 0;
    ciphersuites = ssl->conf->ciphersuite_list[ssl->minor_ver];
    ciphersuite_info = ((void*)0);
    for( i = 0; ciphersuites[i] != 0; i++ )
        for( j = 0, p = buf + ciph_offset + 2; j < ciph_len; j += 2, p += 2 )
        {
            if( p[0] != ( ( ciphersuites[i] >> 8 ) & 0xFF ) ||
                p[1] != ( ( ciphersuites[i] ) & 0xFF ) )
                continue;
            got_common_suite = 1;
            if( ( ret = ssl_ciphersuite_match( ssl, ciphersuites[i],
                                               &ciphersuite_info ) ) != 0 )
                return( ret );
            if( ciphersuite_info != ((void*)0) )
                goto have_ciphersuite;
        }
    if( got_common_suite )
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2104, "got ciphersuites in common, " "but none of them usable" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x6980 );
    }
    else
    {
        mbedtls_debug_print_msg( ssl, 1, "ssl_srv.c", 2111, "got no ciphersuites in common" );
        mbedtls_ssl_send_alert_message( ssl, 2,
                                        40 );
        return( -0x7380 );
    }
have_ciphersuite:
    mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 2118, "selected ciphersuite: %s", ciphersuite_info->name );
    ssl->session_negotiate->ciphersuite = ciphersuites[i];
    ssl->handshake->ciphersuite_info = ciphersuite_info;
    ssl->state++;
    if( ssl->conf->transport == 1 )
        mbedtls_ssl_recv_flight_completed( ssl );
    if( ssl->minor_ver == 3 )
    {
        mbedtls_pk_type_t sig_alg = mbedtls_ssl_get_ciphersuite_sig_alg( ciphersuite_info );
        if( sig_alg != MBEDTLS_PK_NONE )
        {
            mbedtls_md_type_t md_alg = mbedtls_ssl_sig_hash_set_find( &ssl->handshake->hash_algs,
                                                                  sig_alg );
            mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 2142, "client hello v3, signature_algorithm ext: %d", mbedtls_ssl_hash_from_md_alg( md_alg ) );
        }
        else
        {
            mbedtls_debug_print_msg( ssl, 3, "ssl_srv.c", 2147, "no hash algorithm for signature algorithm " "%d - should not happen", sig_alg );
        }
    }
    mbedtls_debug_print_msg( ssl, 2, "ssl_srv.c", 2152, "<= parse client hello" );
    return( 0 );
}
