pub type ptrdiff_t = i64;
pub type size_t = u64;
pub type wchar_t = i32;

#[repr(C)]
pub struct max_align_t {
    __clang_max_align_nonce1: i64,
    __clang_max_align_nonce2: f64,
}

pub type z_size_t = size_t;
pub type Byte = u8;
pub type uInt = u32;
pub type uLong = u64;
pub type Bytef = Byte;
pub type charf = i8;
pub type intf = i32;
pub type uIntf = uInt;
pub type uLongf = uLong;
pub type voidpc = *const std::ffi::c_void;
pub type voidpf = *mut std::ffi::c_void;
pub type voidp = *mut std::ffi::c_void;
pub type z_crc_t = u32;
pub type __u_char = u8;
pub type __u_short = u16;
pub type __u_int = u32;
pub type __u_long = u64;
pub type __int8_t = i8;
pub type __uint8_t = u8;
pub type __int16_t = i16;
pub type __uint16_t = u16;
pub type __int32_t = i32;
pub type __uint32_t = u32;
pub type __int64_t = i64;
pub type __uint64_t = u64;
pub type __int_least8_t = __int8_t;
pub type __uint_least8_t = __uint8_t;
pub type __int_least16_t = __int16_t;
pub type __uint_least16_t = __uint16_t;
pub type __int_least32_t = __int32_t;
pub type __uint_least32_t = __uint32_t;
pub type __int_least64_t = __int64_t;
pub type __uint_least64_t = __uint64_t;
pub type __quad_t = i64;
pub type __u_quad_t = u64;
pub type __intmax_t = i64;
pub type __uintmax_t = u64;
pub type __dev_t = u64;
pub type __uid_t = u32;
pub type __gid_t = u32;
pub type __ino_t = u64;
pub type __ino64_t = u64;
pub type __mode_t = u32;
pub type __nlink_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __pid_t = i32;
pub type __fsid_t = [i32; 2];
pub type __clock_t = i64;
pub type __rlim_t = u64;
pub type __rlim64_t = u64;
pub type __id_t = u32;
pub type __time_t = i64;
pub type __useconds_t = u32;
pub type __suseconds_t = i64;
pub type __suseconds64_t = i64;
pub type __daddr_t = i32;
pub type __key_t = i32;
pub type __clockid_t = i32;
pub type __timer_t = *mut std::ffi::c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __blkcnt64_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsblkcnt64_t = u64;
pub type __fsfilcnt_t = u64;
pub type __fsfilcnt64_t = u64;
pub type __fsword_t = i64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __syscall_ulong_t = u64;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut i8;
pub type __intptr_t = i64;
pub type __socklen_t = u32;
pub type __sig_atomic_t = i32;
pub type u_char = __u_char;
pub type u_short = __u_short;
pub type u_int = __u_int;
pub type u_long = __u_long;
pub type quad_t = __quad_t;
pub type u_quad_t = __u_quad_t;
pub type fsid_t = __fsid_t;
pub type loff_t = __loff_t;
pub type ino_t = __ino_t;
pub type ino64_t = __ino64_t;
pub type dev_t = __dev_t;
pub type gid_t = __gid_t;
pub type mode_t = __mode_t;
pub type nlink_t = __nlink_t;
pub type uid_t = __uid_t;
pub type off_t = __off_t;
pub type off64_t = __off64_t;
pub type pid_t = __pid_t;
pub type id_t = __id_t;
pub type ssize_t = __ssize_t;
pub type daddr_t = __daddr_t;
pub type caddr_t = __caddr_t;
pub type key_t = __key_t;
pub type clock_t = __clock_t;
pub type clockid_t = __clockid_t;
pub type time_t = __time_t;
pub type timer_t = __timer_t;
pub type ulong = u64;
pub type ushort = u16;
pub type uint = u32;
pub type int8_t = __int8_t;
pub type int16_t = __int16_t;
pub type int32_t = __int32_t;
pub type int64_t = __int64_t;
pub type u_int8_t = __uint8_t;
pub type u_int16_t = __uint16_t;
pub type u_int32_t = __uint32_t;
pub type u_int64_t = __uint64_t;
pub type register_t = i64;

#[repr(C)]
pub struct __sigset_t {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

pub type sigset_t = __sigset_t;

#[repr(C)]
pub struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

pub type suseconds_t = __suseconds_t;
pub type __fd_mask = i64;

#[repr(C)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

pub type fd_mask = __fd_mask;

extern "C" {
    pub fn select(
        __nfds: i32,
        __readfds: *mut fd_set,
        __writefds: *mut fd_set,
        __exceptfds: *mut fd_set,
        __timeout: *mut timeval,
    ) -> i32;
    pub fn pselect(
        __nfds: i32,
        __readfds: *mut fd_set,
        __writefds: *mut fd_set,
        __exceptfds: *mut fd_set,
        __timeout: *const timespec,
        __sigmask: *const __sigset_t,
    ) -> i32;
}

pub type blksize_t = __blksize_t;
pub type blkcnt_t = __blkcnt_t;
pub type fsblkcnt_t = __fsblkcnt_t;
pub type fsfilcnt_t = __fsfilcnt_t;
pub type blkcnt64_t = __blkcnt64_t;
pub type fsblkcnt64_t = __fsblkcnt64_t;
pub type fsfilcnt64_t = __fsfilcnt64_t;

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: u64,
    __value32: __atomic_wide_counter__value32,
}

#[repr(C)]
pub struct __atomic_wide_counter__value32 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

pub type __pthread_list_t = __pthread_internal_list;

#[repr(C)]
pub struct __pthread_internal_slist {
    __next: *mut __pthread_internal_slist,
}

pub type __pthread_slist_t = __pthread_internal_slist;

#[repr(C)]
pub struct __pthread_mutex_s {
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
pub struct __pthread_rwlock_arch_t {
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
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

pub type __tss_t = u32;
pub type __thrd_t = u64;

#[repr(C)]
pub struct __once_flag {
    __data: i32,
}

pub type pthread_t = u64;

#[repr(C)]
pub union pthread_mutexattr_t {
    __size: [u8; 4],
    __align: i32,
}

#[repr(C)]
pub union pthread_condattr_t {
    __size: [u8; 4],
    __align: i32,
}

pub type pthread_key_t = u32;
pub type pthread_once_t = i32;

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
pub union pthread_mutex_t {
    __data: __pthread_mutex_s,
    __size: [u8; 40],
    __align: i64,
}

#[repr(C)]
pub union pthread_cond_t {
    __data: __pthread_cond_s,
    __size: [u8; 48],
    __align: i64,
}

#[repr(C)]
pub union pthread_rwlock_t {
    __data: __pthread_rwlock_arch_t,
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
pub union pthread_rwlockattr_t {
    __size: [u8; 8],
    __align: i64,
}

pub type pthread_spinlock_t = i32;

#[repr(C)]
pub union pthread_barrier_t {
    __size: [u8; 32],
    __align: i64,
}

#[repr(C)]
pub union pthread_barrierattr_t {
    __size: [u8; 4],
    __align: i32,
}

pub type va_list = __builtin_va_list;
pub type __gnuc_va_list = __builtin_va_list;
pub type useconds_t = __useconds_t;
pub type intptr_t = __intptr_t;
pub type socklen_t = __socklen_t;

extern "C" {
    pub fn access(__name: *const i8, __type: i32) -> i32;
    pub fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    pub fn lseek(__fd: i32, __offset: __off_t, __whence: i32) -> __off_t;
    pub fn lseek64(__fd: i32, __offset: __off64_t, __whence: i32) -> __off64_t;
    pub fn close(__fd: i32) -> i32;
    pub fn closefrom(__lowfd: i32);
    pub fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t) -> ssize_t;
    pub fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t) -> ssize_t;
    pub fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t, __offset: __off_t) -> ssize_t;
    pub fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t, __offset: __off_t) -> ssize_t;
    pub fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t, __offset: __off64_t) -> ssize_t;
    pub fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t, __offset: __off64_t) -> ssize_t;
    pub fn pipe(__pipedes: *mut i32) -> i32;
    pub fn alarm(__seconds: u32) -> u32;
    pub fn sleep(__seconds: u32) -> u32;
    pub fn ualarm(__value: __useconds_t, __interval: __useconds_t) -> __useconds_t;
    pub fn usleep(__useconds: __useconds_t) -> i32;
    pub fn pause() -> i32;
    pub fn chown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    pub fn fchown(__fd: i32, __owner: __uid_t, __group: __gid_t) -> i32;
    pub fn lchown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    pub fn fchownat(__fd: i32, __file: *const i8, __owner: __uid_t, __group: __gid_t, __flag: i32) -> i32;
    pub fn chdir(__path: *const i8) -> i32;
    pub fn fchdir(__fd: i32) -> i32;
    pub fn getcwd(__buf: *mut i8, __size: size_t) -> *mut i8;
    pub fn getwd(__buf: *mut i8) -> *mut i8;
    pub fn dup(__fd: i32) -> i32;
    pub fn dup2(__fd: i32, __fd2: i32) -> i32;
    pub static mut __environ: *mut *mut i8;
    pub fn execve(__path: *const i8, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    pub fn fexecve(__fd: i32, __argv: *const *mut i8, __envp: *const *mut i8) -> i32;
    pub fn execv(__path: *const i8, __argv: *const *mut i8) -> i32;
    pub fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    pub fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    pub fn execvp(__file: *const i8, __argv: *const *mut i8) -> i32;
    pub fn execlp(__file: *const i8, __arg: *const i8, ...) -> i32;
    pub fn nice(__inc: i32) -> i32;
    pub fn _exit(__status: i32);
    pub fn pathconf(__path: *const i8, __name: i32) -> i64;
    pub fn fpathconf(__fd: i32, __name: i32) -> i64;
    pub fn sysconf(__name: i32) -> i64;
    pub fn confstr(__name: i32, __buf: *mut i8, __len: size_t) -> size_t;
    pub fn getpid() -> __pid_t;
    pub fn getppid() -> __pid_t;
    pub fn getpgrp() -> __pid_t;
    pub fn __getpgid(__pid: __pid_t) -> __pid_t;
    pub fn getpgid(__pid: __pid_t) -> __pid_t;
    pub fn setpgid(__pid: __pid_t, __pgid: __pid_t) -> i32;
    pub fn setpgrp() -> i32;
    pub fn setsid() -> __pid_t;
    pub fn getsid(__pid: __pid_t) -> __pid_t;
    pub fn getuid() -> __uid_t;
    pub fn geteuid() -> __uid_t;
    pub fn getgid() -> __gid_t;
    pub fn getegid() -> __gid_t;
    pub fn getgroups(__size: i32, __list: *mut __gid_t) -> i32;
    pub fn setuid(__uid: __uid_t) -> i32;
    pub fn setreuid(__ruid: __uid_t, __euid: __uid_t) -> i32;
    pub fn seteuid(__uid: __uid_t) -> i32;
    pub fn setgid(__gid: __gid_t) -> i32;
    pub fn setregid(__rgid: __gid_t, __egid: __gid_t) -> i32;
    pub fn setegid(__gid: __gid_t) -> i32;
    pub fn fork() -> __pid_t;
    pub fn vfork() -> __pid_t;
    pub fn ttyname(__fd: i32) -> *mut i8;
    pub fn ttyname_r(__fd: i32, __buf: *mut i8, __buflen: size_t) -> i32;
    pub fn isatty(__fd: i32) -> i32;
    pub fn ttyslot() -> i32;
    pub fn link(__from: *const i8, __to: *const i8) -> i32;
    pub fn linkat(__fromfd: i32, __from: *const i8, __tofd: i32, __to: *const i8, __flags: i32) -> i32;
    pub fn symlink(__from: *const i8, __to: *const i8) -> i32;
    pub fn readlink(__path: *const i8, __buf: *mut