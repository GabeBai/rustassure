







































































struct sigevent;















































struct _IO_FILE;

struct _IO_FILE;
typedef struct _IO_FILE FILE;
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




extern int getc_unlocked (FILE *__stream);











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

extern int __uflow (FILE *);


extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
