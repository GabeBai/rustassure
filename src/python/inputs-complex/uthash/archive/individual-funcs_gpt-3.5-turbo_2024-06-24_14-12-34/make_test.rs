extern "C" {
    fn malloc(size: usize) -> *mut std::ffi::c_void;
}

#[repr(C)]
pub struct div_t {
    quot: std::os::raw::c_int,
    rem: std::os::raw::c_int,
}

#[repr(C)]
pub struct ldiv_t {
    quot: std::os::raw::c_long,
    rem: std::os::raw::c_long,
}

#[repr(C)]
pub struct lldiv_t {
    quot: std::os::raw::c_longlong,
    rem: std::os::raw::c_longlong,
}

pub type size_t = std::os::raw::c_ulong;
pub type wchar_t = std::os::raw::c_int;

pub type __u_char = std::os::raw::c_uchar;
pub type __u_short = std::os::raw::c_ushort;
pub type __u_int = std::os::raw::c_uint;
pub type __u_long = std::os::raw::c_ulong;
pub type __int8_t = std::os::raw::c_schar;
pub type __uint8_t = std::os::raw::c_uchar;
pub type __int16_t = std::os::raw::c_short;
pub type __uint16_t = std::os::raw::c_ushort;
pub type __int32_t = std::os::raw::c_int;
pub type __uint32_t = std::os::raw::c_uint;
pub type __int64_t = std::os::raw::c_long;
pub type __uint64_t = std::os::raw::c_ulong;
pub type __int_least8_t = __int8_t;
pub type __uint_least8_t = __uint8_t;
pub type __int_least16_t = __int16_t;
pub type __uint_least16_t = __uint16_t;
pub type __int_least32_t = __int32_t;
pub type __uint_least32_t = __uint32_t;
pub type __int_least64_t = __int64_t;
pub type __uint_least64_t = __uint64_t;
pub type __quad_t = std::os::raw::c_long;
pub type __u_quad_t = std::os::raw::c_ulong;
pub type __intmax_t = std::os::raw::c_long;
pub type __uintmax_t = std::os::raw::c_ulong;
pub type __dev_t = std::os::raw::c_ulong;
pub type __uid_t = std::os::raw::c_uint;
pub type __gid_t = std::os::raw::c_uint;
pub type __ino_t = std::os::raw::c_ulong;
pub type __mode_t = std::os::raw::c_uint;
pub type __nlink_t = std::os::raw::c_ulong;
pub type __off_t = std::os::raw::c_long;
pub type __off64_t = std::os::raw::c_long;
pub type __pid_t = std::os::raw::c_int;
pub type __fsid_t = [std::os::raw::c_int; 2];
pub type __clock_t = std::os::raw::c_long;
pub type __id_t = std::os::raw::c_uint;
pub type __time_t = std::os::raw::c_long;
pub type __suseconds_t = std::os::raw::c_long;
pub type __daddr_t = std::os::raw::c_int;
pub type __key_t = std::os::raw::c_int;
pub type __clockid_t = std::os::raw::c_int;
pub type __timer_t = *mut std::ffi::c_void;
pub type __blksize_t = std::os::raw::c_long;
pub type __blkcnt_t = std::os::raw::c_long;
pub type __fsblkcnt_t = std::os::raw::c_ulong;
pub type __fsfilcnt_t = std::os::raw::c_ulong;
pub type __ssize_t = std::os::raw::c_long;
pub type __syscall_slong_t = std::os::raw::c_long;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut std::os::raw::c_char;
pub type int32_t = std::os::raw::c_int;

#[repr(C)]
pub struct __sigset_t {
    __val: [std::os::raw::c_ulong; 16],
}

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

#[repr(C)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 32],
}

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: std::os::raw::c_ulonglong,
    __value32: __value32,
}

#[repr(C)]
pub struct __value32 {
    __low: std::os::raw::c_uint,
    __high: std::os::raw::c_uint,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    __lock: std::os::raw::c_int,
    __count: std::os::raw::c_uint,
    __owner: std::os::raw::c_int,
    __nusers: std::os::raw::c_uint,
    __kind: std::os::raw::c_int,
    __spins: std::os::raw::c_short,
    __elision: std::os::raw::c_short,
    __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    __readers: std::os::raw::c_uint,
    __writers: std::os::raw::c_uint,
    __wrphase_futex: std::os::raw::c_uint,
    __writers_futex: std::os::raw::c_uint,
    __pad3: std::os::raw::c_uint,
    __pad4: std::os::raw::c_uint,
    __cur_writer: std::os::raw::c_int,
    __shared: std::os::raw::c_int,
    __rwelision: std::os::raw::c_schar,
    __pad1: [std::os::raw::c_uchar; 7],
    __pad2: std::os::raw::c_ulong,
    __flags: std::os::raw::c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [std::os::raw::c_uint; 2],
    __g_size: [std::os::raw::c_uint; 2],
    __g1_orig_size: std::os::raw::c_uint,
    __wrefs: std::os::raw::c_uint,
    __g_signals: [std::os::raw::c_uint; 2],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [std::os::raw::c_char; 56],
    __align: std::os::raw::c_long,
}

#[repr(C)]
pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: std::os::raw::c_int,
    rand_deg: std::os::raw::c_int,
    rand_sep: std::os::raw::c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    __x: [std::os::raw::c_ushort; 3],
    __old_x: [std::os::raw::c_ushort; 3],
    __c: std::os::raw::c_ushort,
    __init: std::os::raw::c_ushort,
    __a: std::os::raw::c_ulonglong,
}

pub type __fd_mask = std::os::raw::c_long;

#[repr(C)]
pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: std::os::raw::c_uint,
    expand_mult: std::os::raw::c_uint,
}

#[repr(C)]
pub struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: std::os::raw::c_uint,
    hashv: std::os::raw::c_uint,
}

#[repr(C)]
pub struct test_t {
    a: std::os::raw::c_int,
    b: std::os::raw::c_int,
    hh: UT_hash_handle,
}

pub fn make_test(value: std::os::raw::c_int) -> *mut test_t {
    let test = unsafe { malloc(std::mem::size_of::<test_t>()) as *mut test_t };
    assert!(!test.is_null());
    unsafe {
        (*test).a = value;
    }
    test
}
