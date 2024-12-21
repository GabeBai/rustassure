







































































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
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ )) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
 ;
__extension__  ;



extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ )) __attribute__ ((__nonnull__ (1)));

__extension__

__extension__

__extension__

__extension__


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ )) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void*)0), 10);
}
