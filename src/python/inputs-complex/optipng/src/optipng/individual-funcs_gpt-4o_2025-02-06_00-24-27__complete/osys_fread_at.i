typedef int __int32_t;
typedef long long __int64_t;
typedef long unsigned int __darwin_size_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_off_t;
typedef __darwin_size_t size_t;
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
int fgetpos(FILE * restrict, fpos_t *);
size_t fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
int fsetpos(FILE *, const fpos_t *);
typedef long osys_foffset_t;
int
osys_fseeko(FILE *stream, osys_foffset_t offset, int whence);
size_t
osys_fread_at(FILE *stream, osys_foffset_t offset, int whence,
              void *block, size_t blocksize);
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
size_t
osys_fread_at(FILE *stream, osys_foffset_t offset, int whence,
              void *block, size_t blocksize)
{
    fpos_t pos;
    size_t result;
    if (fgetpos(stream, &pos) != 0)
        return 0;
    if (osys_fseeko(stream, offset, whence) == 0)
        result = fread(block, 1, blocksize, stream);
    else
        result = 0;
    if (fsetpos(stream, &pos) != 0)
        result = 0;
    return result;
}
