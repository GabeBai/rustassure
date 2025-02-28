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
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
int printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
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
void
url_data_inspect (const url_data_t* data);
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
void
url_data_inspect (const url_data_t* data) {
  printf("#url =>\n");
  do{ if(data->protocol) printf("    ." "protocol" ": \"%s\"\n", data->protocol); else printf("    ." "protocol" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->userinfo) printf("    ." "userinfo" ": \"%s\"\n", data->userinfo); else printf("    ." "userinfo" ": (NULL)\n"); }while(0);
  do{ if(data->host) printf("    ." "host" ": \"%s\"\n", data->host); else printf("    ." "host" ": (NULL)\n"); }while(0);
  do{ if(data->port) printf("    ." "port" ": \"%s\"\n", data->port); else printf("    ." "port" ": (NULL)\n"); }while(0);
  do{ if(data->path) printf("    ." "path" ": \"%s\"\n", data->path); else printf("    ." "path" ": (NULL)\n"); }while(0);
  if(data->query)
  {
     for(unsigned nr=0; data->query[nr].key; ++nr)
     {
        printf("    .query[%u]: \"%s\" -> ", nr, data->query[nr].key);
        if(data->query[nr].value)
          printf("\"%s\"\n", data->query[nr].value);
        else
          printf("(NULL)\n");
     }
  }
  do{ if(data->fragment) printf("    ." "fragment" ": \"%s\"\n", data->fragment); else printf("    ." "fragment" ": (NULL)\n"); }while(0);
}
