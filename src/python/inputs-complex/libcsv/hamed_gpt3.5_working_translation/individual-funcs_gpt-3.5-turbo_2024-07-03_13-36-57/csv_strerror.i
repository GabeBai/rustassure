 __attribute__ ((__mode__ (__QI__)));
 __attribute__ ((__mode__ (__HI__)));
 __attribute__ ((__mode__ (__SI__)));
 __attribute__ ((__mode__ (__DI__)));
 __attribute__ ((__mode__ (__word__)));
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
struct _IO_FILE;
struct _IO_FILE;
struct _IO_jump_t; struct _IO_FILE;
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;
extern int sys_nerr;
extern const char *const sys_errlist[];
const char * csv_strerror(int error);
static const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
const char *
csv_strerror(int status)
{
  if (status >= 4 || status < 0)
    return csv_errors[4];
  else
    return csv_errors[status];
}
