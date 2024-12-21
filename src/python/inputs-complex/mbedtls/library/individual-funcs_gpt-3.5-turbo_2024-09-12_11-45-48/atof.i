







































































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
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
 ;
 ;
__extension__  ;
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));




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


extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ )) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void*)0));
}
