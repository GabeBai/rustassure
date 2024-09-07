use std::os::raw::{c_char, c_int, c_long, c_ulong};

#[repr(C)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;
pub type ptrdiff_t = c_long;
pub type wchar_t = c_int;

#[repr(C)]
pub struct div_t {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
pub struct ldiv_t {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
pub struct lldiv_t {
    quot: c_longlong,
    rem: c_longlong,
}

pub type __u_char = c_uchar;
pub type __u_short = c_ushort;
pub type __u_int = c_uint;
pub type __u_long = c_ulong;
pub type __int8_t = c_schar;
pub type __uint8_t = c_uchar;
pub type __int16_t = c_short;
pub type __uint16_t = c_ushort;
pub type __int32_t = c_int;
pub type __uint32_t = c_uint;
pub type __int64_t = c_long;
pub type __uint64_t = c_ulong;
pub type __int_least8_t = __int8_t;
pub type __uint_least8_t = __uint8_t;
pub type __int_least16_t = __int16_t;
pub type __uint_least16_t = __uint16_t;
pub type __int_least32_t = __int32_t;
pub type __uint_least32_t = __uint32_t;
pub type __int_least64_t = __int64_t;
pub type __uint_least64_t = __uint64_t;
pub type __quad_t = c_long;
pub type __u_quad_t = c_ulong;
pub type __intmax_t = c_long;
pub type __uintmax_t = c_ulong;
pub type __dev_t = c_ulong;
pub type __uid_t = c_uint;
pub type __gid_t = c_uint;
pub type __ino_t = c_ulong;
pub type __mode_t = c_uint;
pub type __nlink_t = c_ulong;
pub type __off_t = c_long;
pub type __off64_t = c_long;
pub type __pid_t = c_int;
pub type __fsid_t = [c_int; 2];
pub type __clock_t = c_long;
pub type __id_t = c_uint;
pub type __time_t = c_long;
pub type __suseconds_t = c_long;
pub type __daddr_t = c_int;
pub type __key_t = c_int;
pub type __clockid_t = c_int;
pub type __timer_t = *mut std::ffi::c_void;
pub type __blksize_t = c_long;
pub type __blkcnt_t = c_long;
pub type __fsblkcnt_t = c_ulong;
pub type __fsfilcnt_t = c_ulong;
pub type __ssize_t = c_long;
pub type __syscall_slong_t = c_long;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type int32_t = c_int;

#[repr(C)]
pub struct __sigset_t {
    __val: [c_ulong; 16],
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

pub type __fd_mask = c_long;

#[repr(C)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 32],
}

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: c_ulonglong,
    __value32: __atomic_wide_counter__bindgen_ty_1,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: c_schar,
    __pad1: [c_uchar; 7],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

#[repr(C)]
pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    __x: [c_ushort; 3],
    __old_x: [c_ushort; 3],
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
}

pub type __compar_fn_t = Option<extern "C" fn(*const std::ffi::c_void, *const std::ffi::c_void) -> c_int>;
pub type uint32_t = c_uint;

#[repr(C)]
pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: c_uint,
    expand_mult: c_uint,
}

#[repr(C)]
pub struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: c_uint,
    hashv: c_uint,
}

pub type __gnuc_va_list = *mut std::ffi::c_void;

#[repr(C)]
pub struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
pub struct _G_fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

pub type __fpos_t = _G_fpos_t;

#[repr(C)]
pub struct _IO_FILE {
    _flags: c_int,
    _IO_read_ptr: *mut c_char,
    _IO_read_end: *mut c_char,
    _IO_read_base: *mut c_char,
    _IO_write_base: *mut c_char,
    _IO_write_ptr: *mut c_char,
    _IO_write_end: *mut c_char,
    _IO_buf_base: *mut c_char,
    _IO_buf_end: *mut c_char,
    _IO_save_base: *mut c_char,
    _IO_backup_base: *mut c_char,
    _IO_save_end: *mut c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: c_schar,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 56],
}

pub type fpos_t = __fpos_t;

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
    pub fn printf(__format: *const c_char, ...) -> c_int;
}

#[repr(C)]
pub struct example_user_t {
    id: c_int,
    cookie: c_int,
    hh: UT_hash_handle,
}

pub fn rev(_a: *mut std::ffi::c_void, _b: *mut std::ffi::c_void) -> c_int {
    let a = _a as *mut example_user_t;
    let b = _b as *mut example_user_t;
    unsafe {
        printf("called for a:%d, b:%d\n\0".as_ptr(), (*a).id, (*b).id);
    }
    return ((*a).id - (*b).id);
}
