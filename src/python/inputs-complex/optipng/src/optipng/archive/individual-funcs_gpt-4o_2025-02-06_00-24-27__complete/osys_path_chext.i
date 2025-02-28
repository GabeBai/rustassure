typedef int __int32_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __darwin_size_t size_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
char *
osys_path_chext(char *buffer, size_t bufsize,
                const char *old_path, const char *new_extname);
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
typedef struct fd_set {
 __int32_t fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;
struct timespec
{
 __darwin_time_t tv_sec;
 long tv_nsec;
};
struct fssearchblock;
struct searchstate;
#pragma pack(4)
#pragma pack()
struct _filesec;
char *
osys_path_chext(char *buffer, size_t bufsize,
                const char *old_path, const char *new_extname)
{
    size_t i, pos;
    if (new_extname[0] != '.')
        return ((void *)0);
    for (i = 0, pos = (size_t)(-1); old_path[i] != 0; ++i)
    {
        if (i >= bufsize)
            return ((void *)0);
        if ((buffer[i] = old_path[i]) == '.')
            pos = i;
    }
    if (i > pos)
        i = pos;
    for ( ; ; ++i, ++new_extname)
    {
        if (i >= bufsize)
            return ((void *)0);
        if ((buffer[i] = *new_extname) == 0)
            return buffer;
    }
}
