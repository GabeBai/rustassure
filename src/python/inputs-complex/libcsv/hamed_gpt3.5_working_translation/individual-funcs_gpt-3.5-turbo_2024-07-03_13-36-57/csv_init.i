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
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ )) __attribute__ ((__warn_unused_result__));
extern void free (void *__ptr) __attribute__ ((__nothrow__ ));
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
int csv_init(struct csv_parser *p, unsigned char options);
static const char *csv_errors[] = {"success",
                             "error parsing data while strict checking enabled",
                             "memory exhausted while increasing buffer size",
                             "data size too large",
                             "invalid status code"};
int
csv_init(struct csv_parser *p, unsigned char options)
{
  if (p == ((void*)0))
    return -1;
  p->entry_buf = ((void*)0);
  p->pstate = 0;
  p->quoted = 0;
  p->spaces = 0;
  p->entry_pos = 0;
  p->entry_size = 0;
  p->status = 0;
  p->options = options;
  p->quote_char = 0x22;
  p->delim_char = 0x2c;
  p->is_space = ((void*)0);
  p->is_term = ((void*)0);
  p->blk_size = 128;
  p->malloc_func = ((void*)0);
  p->realloc_func = realloc;
  p->free_func = free;
  return 0;
}
