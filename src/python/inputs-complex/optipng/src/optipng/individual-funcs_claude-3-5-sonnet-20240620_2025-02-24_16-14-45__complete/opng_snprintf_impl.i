typedef long unsigned int size_t;
typedef __builtin_va_list va_list;
typedef __builtin_va_list __darwin_va_list;
typedef __darwin_va_list va_list;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
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
static int
opng_snprintf_impl(char *buffer, size_t buffer_size, const char *format, ...)
{
    va_list arg_ptr;
    int result;
    __builtin_va_start(arg_ptr, format);
    result = __builtin___vsnprintf_chk (buffer, buffer_size, 0, __builtin_object_size (buffer, 2 > 1 ? 1 : 0), format, arg_ptr);
    __builtin_va_end(arg_ptr);
    if (result < 0 || (size_t)result >= buffer_size)
    {
        if (buffer_size > 0)
            buffer[buffer_size - 1] = '\0';
        return -1;
    }
    return result;
}
