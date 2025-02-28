typedef long unsigned int __darwin_size_t;
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
void *malloc(size_t __size) __attribute__((__warn_unused_result__)) __attribute__((alloc_size(1))) ;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
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
char *
strdup (const char *str) {
  const int n = strlen(str) + 1;
  char *dup = (char *) malloc(n);
  if (dup) __builtin___strcpy_chk (dup, str, __builtin_object_size (dup, 2 > 1 ? 1 : 0));
  return dup;
}
