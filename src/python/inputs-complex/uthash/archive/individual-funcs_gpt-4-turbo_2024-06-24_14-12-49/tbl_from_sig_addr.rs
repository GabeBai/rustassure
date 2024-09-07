type size_t = usize;
struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
}
type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type wchar_t = i32;
struct div_t {
    quot: i32,
    rem: i32,
}
struct ldiv_t {
    quot: i64,
    rem: i64,
}
struct lldiv_t {
    quot: i128,
    rem: i128,
}
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
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;
struct __fsid_t {
    __val: [i32; 2],
}
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut std::ffi::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = __off64_t;
type __caddr_t = *mut i8;
type __socklen_t = u32;
type __sig_atomic_t = i32;
type mode_t = __mode_t;
type off_t = __off_t;
type ssize_t = __ssize_t;
type int32_t = __int32_t;
struct __sigset_t {
    __val: [u64; 16],
}
type sigset_t = __sigset_t;
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}
type __fd_mask = i64;
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}
union __atomic_wide_counter {
    __value64: u64,
    __value32: struct {
        __low: u32,
        __high: u32,
    },
}
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}
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
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}
type pthread_t = u64;
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
}
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}
type __compar_fn_t = extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> i32;
type __gnuc_va_list = std::ffi::VaList;
struct __mbstate_t {
    __count: i32,
    __value: union {
        __wch: u32,
        __wchb: [i8; 4],
    },
}
struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}
struct _IO_FILE;
type FILE = _IO_FILE;
struct stat {
    st_dev: __dev_t,
    st_ino: __ino_t,
    st_nlink: __nlink_t,
    st_mode: __mode_t,
    st_uid: __uid_t,
    st_gid: __gid_t,
    __pad0: i32,
    st_rdev: __dev_t,
    st_size: __off_t,
    st_blksize: __blksize_t,
    st_blocks: __blkcnt_t,
    st_atim: timespec,
    st_mtim: timespec,
    st_ctim: timespec,
    __glibc_reserved: [__syscall_slong_t; 3],
}
struct flock {
    l_type: i16,
    l_whence: i16,
    l_start: __off_t,
    l_len: __off_t,
    l_pid: __pid_t,
}
type uint8_t = __uint8_t;
type uint32_t = __uint32_t;
type intptr_t = i64;
type intmax_t = __intmax_t;
type uintmax_t = __uintmax_t;
type __gwchar_t = i32;
struct imaxdiv_t {
    quot: i64,
    rem: i64,
}
