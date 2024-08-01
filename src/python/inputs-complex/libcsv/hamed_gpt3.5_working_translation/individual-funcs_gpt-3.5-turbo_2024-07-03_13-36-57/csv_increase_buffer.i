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
struct csv_parser {
  int pstate;
  int quoted;
  size_t spaces;
  unsigned char * entry_buf;
  size_t entry_pos;
  size_t entry_size;
  int status;
  unsigned char options;
  unsigned char quote_char;
  unsigned char delim_char;
  int (*is_space)(unsigned char);
  int (*is_term)(unsigned char);
  size_t blk_size;
  void *(*malloc_func)(size_t);
  void *(*realloc_func)(void *, size_t);
  void (*free_func)(void *);
};
static const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
static int
csv_increase_buffer(struct csv_parser *p)
{
  if (p == ((void*)0)) return 0;
  if (p->realloc_func == ((void*)0)) return 0;
  size_t to_add = p->blk_size;
  void *vp;
  if ( p->entry_size >= (18446744073709551615UL) - to_add )
    to_add = (18446744073709551615UL) - p->entry_size;
  if (!to_add) {
    p->status = 3;
    return -1;
  }
  while ((vp = p->realloc_func(p->entry_buf, p->entry_size + to_add)) == ((void*)0)) {
    to_add /= 2;
    if (!to_add) {
      p->status = 2;
      return -1;
    }
  }
  p->entry_buf = vp;
  p->entry_size += to_add;
  return 0;
}
