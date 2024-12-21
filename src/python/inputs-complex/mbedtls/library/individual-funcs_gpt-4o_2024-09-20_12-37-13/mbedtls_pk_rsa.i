typedef long unsigned int size_t;
typedef unsigned long int __uint64_t;
struct sigevent;
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
typedef __uint64_t uint64_t;
        typedef uint64_t mbedtls_mpi_uint;
typedef struct mbedtls_mpi
{
    int s;
    size_t n;
    mbedtls_mpi_uint *p;
}
mbedtls_mpi;
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
typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;
typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;
  mbedtls_rsa_context *mbedtls_pk_rsa( const mbedtls_pk_context pk )
{
    return( (mbedtls_rsa_context *) (pk).pk_ctx );
}
