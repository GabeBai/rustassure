use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_void};
use std::ptr;

type size_t = usize;
type ptrdiff_t = isize;
type wchar_t = i32;

#[repr(C)]
struct LocaleData;

#[repr(C)]
struct __locale_struct {
    __locales: [*mut LocaleData; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const c_char; 13],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;

#[repr(C)]
struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct ldiv_t {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
struct lldiv_t {
    quot: i64,
    rem: i64,
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
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = __off64_t;
type __caddr_t = *mut c_char;
type int32_t = i32;

#[repr(C)]
struct __sigset_t {
    __val: [c_ulong; 16],
}

#[repr(C)]
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __fd_mask = i64;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 16],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: u64,
    __value32: struct {
        __low: u32,
        __high: u32,
    },
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_mutex_s {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: i16,
    __elision: i16,
    __list: __pthread_internal_list,
}

#[repr(C)]
struct __pthread_rwlock_arch_t {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [u8; 7],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

#[repr(C)]
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}

type __compar_fn_t = unsafe extern "C" fn(*const c_void, *const c_void) -> c_int;

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: c_uint,
    expand_mult: c_uint,
}

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const c_void,
    keylen: c_uint,
    hashv: c_uint,
}

type __gnuc_va_list = *mut c_void;

#[repr(C)]
struct __mbstate_t {
    __count: c_int,
    __value: union {
        __wch: c_uint,
        __wchb: [c_char; 4],
    },
}

#[repr(C)]
struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

type FILE = _IO_FILE;

#[repr(C)]
struct _IO_FILE {
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
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 20],
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

#[repr(C)]
struct example_user_t {
    id: c_int,
    cookie: c_int,
    hh: UT_hash_handle,
    alth: UT_hash_handle,
}

extern "C" fn descending_sort(_a: *mut c_void, _b: *mut c_void) -> c_int {
    let a = _a as *mut example_user_t;
    let b = _b as *mut example_user_t;
    unsafe {
        if (*a).id == (*b).id {
            0
        } else if (*a).id < (*b).id {
            1
        } else {
            -1
        }
    }
}
