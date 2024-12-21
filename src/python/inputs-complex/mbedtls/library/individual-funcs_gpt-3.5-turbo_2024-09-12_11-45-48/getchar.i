







































































struct sigevent;















































struct _IO_FILE;

struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;






extern FILE *stdin;






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


extern int getc (FILE *__stream);
extern int getchar (void);












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




extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}
