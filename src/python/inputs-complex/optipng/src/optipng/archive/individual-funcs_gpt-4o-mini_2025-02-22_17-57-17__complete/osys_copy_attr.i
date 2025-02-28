typedef unsigned short __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
typedef long long __int64_t;
typedef unsigned long long __uint64_t;
typedef long __darwin_time_t;
typedef __int64_t __darwin_blkcnt_t;
typedef __int32_t __darwin_blksize_t;
typedef __int32_t __darwin_dev_t;
typedef __uint32_t __darwin_gid_t;
typedef __uint64_t __darwin_ino64_t;
typedef __uint16_t __darwin_mode_t;
typedef __int64_t __darwin_off_t;
typedef __uint32_t __darwin_uid_t;
struct __sbuf {
 unsigned char *_base;
 int _size;
};
struct __sFILEX;
typedef __darwin_off_t off_t;
int
osys_copy_attr(const char *src_path, const char *dest_path);
typedef __darwin_uid_t uid_t;
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
typedef __darwin_dev_t dev_t;
typedef __darwin_mode_t mode_t;
typedef __darwin_gid_t gid_t;
int chown(const char *, uid_t, gid_t);
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
typedef __darwin_blkcnt_t blkcnt_t;
typedef __darwin_blksize_t blksize_t;
typedef __uint16_t nlink_t;
struct stat { dev_t st_dev; mode_t st_mode; nlink_t st_nlink; __darwin_ino64_t st_ino; uid_t st_uid; gid_t st_gid; dev_t st_rdev; struct timespec st_atimespec; struct timespec st_mtimespec; struct timespec st_ctimespec; struct timespec st_birthtimespec; off_t st_size; blkcnt_t st_blocks; blksize_t st_blksize; __uint32_t st_flags; __uint32_t st_gen; __int32_t st_lspare; __int64_t st_qspare[2]; };
int chmod(const char *, mode_t) __asm("_" "chmod" );
int stat(const char *, struct stat *) __asm("_" "stat" );
int utimensat(int __fd, const char *__path, const struct timespec __times[2],
    int __flag) __attribute__((availability(macos,introduced=10.13))) __attribute__((availability(ios,introduced=11.0))) __attribute__((availability(tvos,introduced=11.0))) __attribute__((availability(watchos,introduced=4.0)));
int
osys_copy_attr(const char *src_path, const char *dest_path)
{
    struct stat sbuf;
    int result;
    if (stat(src_path, &sbuf) != 0)
        return -1;
    result = 0;
    if (chown(dest_path, sbuf.st_uid, sbuf.st_gid) != 0)
    {
    }
    if (chmod(dest_path, sbuf.st_mode) != 0)
        result = -1;
    {
        struct timespec times[2];
            times[0] = sbuf.st_atimespec;
            times[1] = sbuf.st_mtimespec;
        if (utimensat(-2, dest_path, times, 0) != 0)
            result = -1;
    }
    return result;
}
