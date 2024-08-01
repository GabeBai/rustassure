typedef long unsigned int size_t;
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
size_t csv_write2(void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote);
static const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
size_t
csv_write2 (void *dest, size_t dest_size, const void *src, size_t src_size, unsigned char quote)
{
  unsigned char *cdest = dest;
  const unsigned char *csrc = src;
  size_t chars = 0;
  if (src == ((void*)0))
    return 0;
  if (dest == ((void*)0))
    dest_size = 0;
  if (dest_size > 0)
    *cdest++ = quote;
  chars++;
  while (src_size) {
    if (*csrc == quote) {
      if (dest_size > chars)
        *cdest++ = quote;
      if (chars < (18446744073709551615UL)) chars++;
    }
    if (dest_size > chars)
      *cdest++ = *csrc;
    if (chars < (18446744073709551615UL)) chars++;
    src_size--;
    csrc++;
  }
  if (dest_size > chars)
    *cdest = quote;
  if (chars < (18446744073709551615UL)) chars++;
  return chars;
}
