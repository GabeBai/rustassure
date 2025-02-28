typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
size_t strlen(const char *__s);
char *strdup(const char *__s1);
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
typedef struct url_data {
  char* whole_url;
  const char* protocol;
  const char* userinfo;
  const char* host;
  const char* port;
  const char* path;
  const struct url_key_value* query;
  const char* fragment;
} url_data_t;
url_data_t *
url_parse (const char* url);
void
url_free (url_data_t* data);
_Bool
url_is_ssh (const char* str);
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
url_data_t*
url_parse (const char* url) {
  url_data_t *data = (url_data_t *) calloc(1, sizeof(url_data_t));
  if (!data) return ((void *)0);
  char* p = strdup(url);
  if(!p)
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 190 , p); goto error; }while(0);
  data->whole_url = p;
  const char* const p_end = p + strlen(p);
  char* protocol_end = scan_part(p, Scheme, ':', '\0');
  if (!protocol_end || *protocol_end=='\0')
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 197 , p); goto error; }while(0);
  *protocol_end = '\0';
  data->protocol = p;
  const _Bool is_ssh = url_is_ssh(data->protocol);
  p = protocol_end + 1;
  if(p>=p_end || *p != '/')
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 205 , p); goto error; }while(0);
  ++p;
  if(p>=p_end || *p != '/')
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 209 , p); goto error; }while(0);
  char* const second_slash = p;
  ++p;
  if(p>=p_end)
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 215 , p); goto error; }while(0);
  char* userinfo_end = scan_part(p, Userinfo, '@', '\0');
  if(userinfo_end && *userinfo_end == '@') {
    *userinfo_end = '\0';
    data->userinfo = p;
    p = userinfo_end + 1;
  }
  if(p>=p_end)
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 225 , p); goto error; }while(0);
  char* hostname_end = ((void *)0);
  if(*p == '[')
  {
    ++p;
    hostname_end = scan_part( p, IPv6Char, ']', '\0' );
    if(!hostname_end)
      do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 234 , p); goto error; }while(0);
    *hostname_end = '\0';
    data->host = p;
    ++hostname_end;
    if(hostname_end < p_end && !is_ssh && *hostname_end==':')
    {
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 247 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }else{
    hostname_end = scan_part( p, Unreserved | SubDelim, ':', '/' );
    if (!hostname_end)
      do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 255 , p); goto error; }while(0);
    data->host = p;
    if(!is_ssh && *hostname_end==':')
    {
      *hostname_end = '\0';
      char* port_end = scan_decimal_number( hostname_end+1 );
      if(port_end)
      {
        data->port = hostname_end+1;
        p = port_end;
      }else{
        do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 267 , p); goto error; }while(0);
      }
    }else{
      p = hostname_end;
    }
  }
  __builtin___memmove_chk (second_slash, second_slash+1, p-second_slash, __builtin_object_size (second_slash, 0));
  if(data->userinfo)
    --(data->userinfo);
  --(data->host);
  if(data->port)
    --(data->port);
  p[-1] = '\0';
  if(is_ssh && *p == ':')
  {
    ++p;
  }
  char* path_end = scan_part( p, PCharSlash, '?', '#' );
  if(!path_end)
    do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 295 , p); goto error; }while(0);
  const _Bool has_query = (*path_end == '?');
  const _Bool has_fragment = (*path_end == '#');
  *path_end = '\0';
  data->path = decode_percent(p);
  p = path_end + 1;
  if(has_query)
  {
    char* query_end = scan_part( p, Query, '#', '\0' );
    if(query_end)
    {
      const _Bool has_fragment = (*query_end == '#');
      *query_end = '\0';
      data->query = parse_query_string(p, query_end);
      if(has_fragment)
      {
        char* fragment_end = scan_part( query_end+1, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(query_end+1);
        }else{
          do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 319 , p); goto error; }while(0);
        }
      }
    }else{
      do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 323 , p); goto error; }while(0);
    }
  }else if(has_fragment)
  {
        char* fragment_end = scan_part( p, Fragment, '\0', '\0' );
        if(fragment_end)
        {
          data->fragment = decode_percent(p);
        }else{
          do{ fprintf(__stderrp, "ERROR %s Line %u! p=«%s»\n", "url.c", 332 , p); goto error; }while(0);
        }
  }
  return data;
error:
  url_free(data);
  return ((void *)0);
}
