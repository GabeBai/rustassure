```rust
type PtrdiffT = isize;
type SizeT = usize;
type WcharT = i32;

#[repr(C)]
struct MaxAlignT {
    __clang_max_align_nonce1: i64,
    __clang_max_align_nonce2: f64,
}

type ZSizeT = SizeT;
type Byte = u8;
type UInt = u32;
type ULong = u64;
type Bytef = Byte;
type Charf = i8;
type Intf = i32;
type UIntf = UInt;
type ULongf = ULong;
type Voidpc = *const core::ffi::c_void;
type Voidpf = *mut core::ffi::c_void;
type Voidp = *mut core::ffi::c_void;
type ZCrcT = u32;
type __u_char = u8;
type __u_short = u16;
type __u_int = u32;
type __u_long = u64;
type __int8_t = i8;
type __uint8_t = u8;
type __int16_t = i16;
type __uint16_t = u16;
type __int32_t = i32;
type __uint32_t = u32;
type __int64_t = i64;
type __uint64_t = u64;
type __int_least8_t = __int8_t;
type __uint_least8_t = __uint8_t;
type __int_least16_t = __int16_t;
type __uint_least16_t = __uint16_t;
type __int_least32_t = __int32_t;
type __uint_least32_t = __uint32_t;
type __int_least64_t = __int64_t;
type __uint_least64_t = __uint64_t;
type __quad_t = i64;
type __u_quad_t = u64;
type __intmax_t = i64;
type __uintmax_t = u64;
type __dev_t = u64;
type __uid_t = u32;
type __gid_t = u32;
type __ino_t = u64;
type __ino64_t = u64;
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;
type __fsid_t = [i32; 2];
type __clock_t = i64;
type __rlim_t = u64;
type __rlim64_t = u64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __suseconds64_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut core::ffi::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __blkcnt64_t = i64;
type __fsblkcnt_t = u64;
type __fsblkcnt64_t = u64;
type __fsfilcnt_t = u64;
type __fsfilcnt64_t = u64;
type __fsword_t = i64;
type __ssize_t = isize;
type __syscall_slong_t = i64;
type __syscall_ulong_t = u64;
type __loff_t = __off64_t;
type __caddr_t = *mut i8;
type __intptr_t = isize;
type __socklen_t = u32;
type __sig_atomic_t = i32;
type UChar = __u_char;
type UShort = __u_short;
type UInt = __u_int;
type ULong = __u_long;
type QuadT = __quad_t;
type UQuadT = __u_quad_t;
type FsidT = __fsid_t;
type LoffT = __loff_t;
type InoT = __ino_t;
type Ino64T = __ino64_t;
type DevT = __dev_t;
type GidT = __gid_t;
type ModeT = __mode_t;
type NlinkT = __nlink_t;
type UidT = __uid_t;
type OffT = __off_t;
type Off64T = __off64_t;
type PidT = __pid_t;
type IdT = __id_t;
type SsizeT = __ssize_t;
type DaddrT = __daddr_t;
type CaddrT = __caddr_t;
type KeyT = __key_t;
type ClockT = __clock_t;
type ClockidT = __clockid_t;
type TimeT = __time_t;
type TimerT = __timer_t;
type ULong = u64;
type UShort = u16;
type UInt = u32;
type Int8T = __int8_t;
type Int16T = __int16_t;
type Int32T = __int32_t;
type Int64T = __int64_t;
type UInt8T = __uint8_t;
type UInt16T = __uint16_t;
type UInt32T = __uint32_t;
type UInt64T = __uint64_t;
type RegisterT = isize;

#[repr(C)]
struct __sigset_t {
    __val: [u64; 1024 / (8 * core::mem::size_of::<u64>())],
}

type SigsetT = __sigset_t;

#[repr(C)]
struct Timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
struct Timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type SusecondsT = __suseconds_t;
type __fd_mask = i64;

#[repr(C)]
struct FdSet {
    __fds_bits: [__fd_mask; 1024 / (8 * core::mem::size_of::<__fd_mask>())],
}

type FdMask = __fd_mask;

extern "C" {
    fn select(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *mut Timeval,
    ) -> i32;
    fn pselect(
        __nfds: i32,
        __readfds: *mut FdSet,
        __writefds: *mut FdSet,
        __exceptfds: *mut FdSet,
        __timeout: *const Timespec,
        __sigmask: *const SigsetT,
    ) -> i32;
}

type BlksizeT = __blksize_t;
type BlkcntT = __blkcnt_t;
type FsblkcntT = __fsblkcnt_t;
type FsfilcntT = __fsfilcnt_t;
type Blkcnt64T = __blkcnt64_t;
type Fsblkcnt64T = __fsblkcnt64_t;
type Fsfilcnt64T = __fsfilcnt64_t;

#[repr(C)]
union __atomic_wide_counter {
    __value64: u64,
    __value32: __atomic_wide_counter__value32,
}

#[repr(C)]
struct __atomic_wide_counter__value32 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

type __pthread_list_t = __pthread_internal_list;

#[repr(C)]
struct __pthread_internal_slist {
    __next: *mut __pthread_internal_slist,
}

type __pthread_slist_t = __pthread_internal_slist;

#[repr(C)]
struct __pthread_mutex_s {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: u32,
    __writers: u32,
    __wrphase_futex: u32,
    __writers_futex: u32,
    __pad3: u32,
    __pad4: u32,
    __cur_writer: i32,
    __shared: i32,
    __rwelision: i8,
    __pad1: [u8; 7],
    __pad2: u64,
    __flags: u32,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

type __tss_t = u32;
type __thrd_t = u64;

#[repr(C)]
struct __once_flag {
    __data: i32,
}

type PthreadT = u64;

#[repr(C)]
union PthreadMutexattrT {
    __size: [u8; 4],
    __align: i32,
}

#[repr(C)]
union PthreadCondattrT {
    __size: [u8; 4],
    __align: i32,
}

type PthreadKeyT = u32;
type PthreadOnceT = i32;

#[repr(C)]
union PthreadAttrT {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadMutexT {
    __data: __pthread_mutex_s,
    __size: [u8; 40],
    __align: i64,
}

#[repr(C)]
union PthreadCondT {
    __data: __pthread_cond_s,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockT {
    __data: __pthread_rwlock_arch_t,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
union PthreadRwlockattrT {
    __size: [u8; 8],
    __align: i64,
}

type PthreadSpinlockT = i32;

#[repr(C)]
union PthreadBarrierT {
    __size: [u8; 32],
    __align: i64,
}

#[repr(C)]
union PthreadBarrierattrT {
    __size: [u8; 4],
    __align: i32,
}

type VaList = core::ffi::VaListImpl;
type __gnuc_va_list = VaList;
type UsecondsT = __useconds_t;
type IntptrT = __intptr_t;
type SocklenT = __socklen_t;

extern "C" {
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: __off_t, __whence: i32) -> __off_t;
    fn lseek64(__fd: i32, __offset: __off64_t, __whence: i32) -> __off64_t;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT) -> SsizeT;
    fn write(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT) -> SsizeT;
    fn pread(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __off_t) -> SsizeT;
    fn pwrite(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __off_t) -> SsizeT;
    fn pread64(__fd: i32, __buf: *mut core::ffi::c_void, __nbytes: SizeT, __offset: __off64_t) -> SsizeT;
    fn pwrite64(__fd: i32, __buf: *const core::ffi::c_void, __n: SizeT, __offset: __off64_t) -> SsizeT;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: UsecondsT, __interval: UsecondsT) -> UsecondsT;
    fn usleep(__useconds: UsecondsT) -> i32;
    fn pause() -> i32;
    fn chown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    fn fchown(__fd: i32, __owner: __uid_t, __group: __gid_t) -> i32;
    fn lchown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    fn fchownat(__fd: i32, __file: *const i8, __owner: __uid_t, __group: __gid_t, __flag: i32) -> i32;
    fn chdir(__path: *const i8) -> i32;
    fn fchdir(__fd: i32) -> i32;
    fn getcwd(__buf: *mut i8, __size: SizeT) -> *mut i8;
    fn getwd(__buf: *mut i8) -> *mut i8;
    fn dup(__fd: i32) -> i32;
    fn dup2(__fd: i32, __fd2: i32) -> i32;
    static mut __environ: *mut *mut i8;
    fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    fn nice(__inc: i32) -> i32;
    fn _exit(__status: i32) -> !;
    fn pathconf(__path: *const i8, __name: i32) -> i64;
    fn fpathconf(__fd: i32, __name: i32) -> i64;
    fn sysconf(__name: i32) -> i64;
    fn confstr(__name: i32, __buf: *mut i8, __len: SizeT) -> SizeT;
    fn getpid() -> __pid_t;
    fn getppid() -> __pid_t;
    fn getpgrp() -> __pid_t;
    fn __getpgid(__pid: __pid_t) -> __pid_t;
    fn getpgid(__pid: __pid_t) -> __pid_t;
    fn setpgid(__pid: __pid_t, __pgid: __pid_t) -> i32;
    fn setpgrp() -> i32;
    fn setsid() -> __pid_t;
    fn getsid(__pid: __pid_t) -> __pid_t;
    fn getuid() -> __uid_t;
    fn geteuid() -> __uid_t;
    fn getgid() -> __gid_t;
    fn getegid() -> __gid_t;
    fn getgroups(__size: i32, __list: *mut __gid_t) -> i32;
    fn setuid(__uid: __uid_t) -> i32;
    fn setreuid(__ruid: __uid_t, __euid: __uid_t) -> i32;
    fn seteuid(__uid: __uid_t) -> i32;
    fn setgid(__gid: __gid_t) -> i32;
    fn setregid(__rgid: __gid_t, __egid: __gid_t) -> i32;
    fn setegid(__gid: __gid_t) -> i32;
    fn fork() -> __pid_t;
    fn vfork() -> __pid_t;
    fn ttyname(__fd: i32) -> *mut i8;
    fn ttyname_r(__fd: i32, __buf: *mut i8, __buflen: SizeT) -> i32;
    fn isatty(__fd: i32) -> i32;
    fn ttyslot() -> i32;
    fn link(__from: *const i8, __to: *const i8) -> i32;
    fn linkat(__fromfd: i32, __from: *const i8, __tofd: i32, __to: *const i8, __flags: i32) -> i32;
    fn symlink(__from: *const i8, __to: *const i8) -> i32;
    fn readlink(__path: *const i8, __buf: *mut i8, __len: SizeT) -> SsizeT;
    fn symlinkat(__from: *const i8, __tofd: i32, __to: *const i8) -> i32;
    fn readlinkat(__fd: i32, __path: *const i8, __buf: *mut i8, __len: SizeT) -> SsizeT;
    fn unlink(__name: *const i8) -> i32;
    fn unlinkat(__fd: i32, __name: *const i8, __flag: i32) -> i32;
    fn rmdir(__path: *const i8) -> i32;
    fn tcgetpgrp(__fd: i32) -> __pid_t;
    fn tcsetpgrp(__fd: i32, __pgrp_id: __pid_t) -> i32;
    fn getlogin() -> *mut i8;
    fn getlogin_r(__name: *mut i