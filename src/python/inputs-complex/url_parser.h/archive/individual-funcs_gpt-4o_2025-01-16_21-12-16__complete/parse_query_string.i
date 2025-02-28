typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
union sigval {
 int sival_int;
 void *sival_ptr;
};
union __sigaction_u {
 void (*__sa_handler)(int);
 void (*__sa_sigaction)(int, struct __siginfo *,
     void *);
};
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
struct _OSUnalignedU16 {
 volatile uint16_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU32 {
 volatile uint32_t __val;
} __attribute__((__packed__));
struct _OSUnalignedU64 {
 volatile uint64_t __val;
} __attribute__((__packed__));
union wait {
 int w_status;
 struct {
  unsigned int w_Termsig:7,
      w_Coredump:1,
      w_Retcode:8,
      w_Filler:16;
 } w_T;
 struct {
  unsigned int w_Stopval:8,
      w_Stopsig:8,
      w_Filler:16;
 } w_S;
};
void *calloc(size_t __count, size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1,2))) ;
void free(void * );
typedef __darwin_off_t fpos_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef struct __sFILE {
 unsigned char *_p;
 int _r;
 int _w;
 short _flags;
 short _file;
 struct __sbuf _bf;
 int _lbfsize;
 void *_cookie;
 int (* _Nullable _close)(void *);
 int (* _Nullable _read) (void *, char *, int);
 fpos_t (* _Nullable _seek) (void *, fpos_t, int);
 int (* _Nullable _write)(void *, const char *, int);
 struct __sbuf _ub;
 struct __sFILEX *_extra;
 int _ur;
 unsigned char _ubuf[3];
 unsigned char _nbuf[1];
 struct __sbuf _lb;
 int _blksize;
 fpos_t _offset;
} FILE;
extern FILE *__stderrp;
int fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
struct url_key_value;
enum Category
{
  Scheme = 0x01,
  Unreserved = 0x02,
  GenDelim = 0x04,
  SubDelim = 0x08,
  PCharSlash = 0x10,
  HexDigit = 0x20,
  Query = 0x40,
  Fragment = 0x40,
  Userinfo = 0x80,
  IPv6Char = 0x100,
};
struct url_key_value
{
  const char* key;
  const char* value;
};
static
struct url_key_value* parse_query_string(char* begin, char* end)
{
  unsigned elements = 1;
  for(const char* p = begin; p!=end; ++p)
  {
    if(*p=='&' || *p==';')
      ++elements;
  }
  struct url_key_value* kv = calloc(elements+1, sizeof(struct url_key_value));
  if(!kv)
    return ((void *)0);
  char* p = begin;
  for(unsigned element=0; (element<=elements) && (p<end); ++element)
  {
    char* key = p;
    char* kv_end = scan_part(p, Query, '&', ';');
    if(!kv_end)
      do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 153 , p); goto error; }while(0);
    *kv_end = '\0';
    char* key_end = scan_part(p, Query, '=', '\0');
    const _Bool has_value = (*key_end == '=');
    *key_end = '\0';
    kv[element].key = decode_percent(key);
    if(has_value)
    {
      char* value = key_end+1;
      kv[element].value = decode_percent(value);
    }else{
      kv[element].value = key_end;
    }
    p = kv_end+1;
  }
  return kv;
error:
  free(kv);
  return ((void *)0);
}
