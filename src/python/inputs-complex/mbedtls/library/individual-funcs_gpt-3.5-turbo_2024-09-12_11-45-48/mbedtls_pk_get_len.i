
typedef long unsigned int size_t;






































































struct sigevent;















































struct _IO_FILE;

struct _IO_FILE;

struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;













 ;
 ;
 ;
 ;


 ;

       ;
 ;
 ;
 ;














 ;
 ;





 ;
 ;

 ;
 ;

 ;
 ;
















                                                         ;
 ;
 ;
 ;



 ;

 ;


 ;






 ;
 ;

 ;
 ;

 ;
 ;

 ;

                                     ;

 ;






__extension__ 
 ;
 ;
 ;
 ;
__extension__  ;





__extension__

__extension__

__extension__

__extension__

 ;
 ;


























































union pthread_attr_t
{
  char __size[56];
  long int __align;
};








































                                         ;
 ;
 ;


                       ;
 ;


                                         ;
 ;

                                         ;







 ;





 ;
 ;
 ;
 ;
 ;

 ;

 ;
 ;
__extension__  ;
 ;
 ;
__extension__  ;
 ;
 ;
 ;
 ;
 ;
 ;








                                      ;

                                    ;
 ;
 ;































 
        
            













































                   




























































 ;




















































 ;




 ;










typedef struct mbedtls_pk_info_t mbedtls_pk_info_t;
typedef struct mbedtls_pk_context
{
    const mbedtls_pk_info_t * pk_info;
    void * pk_ctx;
} mbedtls_pk_context;









size_t mbedtls_pk_get_bitlen( const mbedtls_pk_context *ctx );

static inline size_t mbedtls_pk_get_len( const mbedtls_pk_context *ctx )
{
    return( ( mbedtls_pk_get_bitlen( ctx ) + 7 ) / 8 );
}
