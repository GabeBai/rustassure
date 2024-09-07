use std::os::raw::{c_char, c_int, c_long, c_short, c_uchar, c_uint, c_ulong, c_ushort};

type size_t = c_ulong;
type __gnuc_va_list = ::std::ffi::VaList;
type __u_char = c_uchar;
type __u_short = c_ushort;
type __u_int = c_uint;
type __u_long = c_ulong;
type __int8_t = i8;
type __uint8_t = u8;
type __int16_t = i16;
type __uint16_t = u16;
type __int32_t = i32;
type __uint32_t = u32;
type __int64_t = i64;
type __uint64_t = u64;
type __int_least8_t = i8;
type __uint_least8_t = u8;
type __int_least16_t = i16;
type __uint_least16_t = u16;
type __int_least32_t = i32;
type __uint_least32_t = u32;
type __int_least64_t = i64;
type __uint_least64_t = u64;
type __quad_t = c_long;
type __u_quad_t = c_ulong;
type __intmax_t = c_long;
type __uintmax_t = c_ulong;
type __dev_t = c_ulong;
type __uid_t = c_uint;
type __gid_t = c_uint;
type __ino_t = c_ulong;
type __mode_t = c_uint;
type __nlink_t = c_ulong;
type __off_t = c_long;
type __off64_t = c_long;
type __pid_t = c_int;
type __fsid_t = [c_int; 2];
type __clock_t = c_long;
type __id_t = c_uint;
type __time_t = c_long;
type __suseconds_t = c_long;
type __daddr_t = c_int;
type __key_t = c_int;
type __clockid_t = c_int;
type __timer_t = *mut ::std::ffi::c_void;
type __blksize_t = c_long;
type __blkcnt_t = c_long;
type __fsblkcnt_t = c_ulong;
type __fsfilcnt_t = c_ulong;
type __ssize_t = c_long;
type __syscall_slong_t = c_long;
type __loff_t = __off64_t;
type __caddr_t = *mut c_char;

#[repr(C)]
struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
union __mbstate_t__bindgen_ty_1 {
    __wch: c_uint,
    __wchb: [c_char; 4usize],
}

#[repr(C)]
struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

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
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1usize],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut ::std::ffi::c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15usize * ::std::mem::size_of::<c_int>() - 4 * ::std::mem::size_of::<*mut ::std::ffi::c_void>() - ::std::mem::size_of::<size_t>()],
}

type fpos_t = __fpos_t;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;
}

type wchar_t = c_int;

#[repr(C)]
struct div_t {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
struct ldiv_t {
    quot: c_long,
    rem: c_long,
}

#[repr(C)]
struct lldiv_t {
    quot: c_longlong,
    rem: c_longlong,
}

type int32_t = i32;

#[repr(C)]
struct __sigset_t {
    __val: [c_ulong; 128usize],
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

type __fd_mask = c_long;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 32usize],
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: c_ulonglong,
    __value32: __atomic_wide_counter__bindgen_ty_1,
}

#[repr(C)]
struct __atomic_wide_counter__bindgen_ty_1 {
    __low: c_uint,
    __high: c_uint,
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
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
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
    __pad1: [u8; 7usize],
    __pad2: c_ulong,
    __flags: c_uint,
}

#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2usize],
    __g_size: [c_uint; 2usize],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2usize],
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56usize],
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
    __x: [c_ushort; 3usize],
    __old_x: [c_ushort; 3usize],
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
}

type __compar_fn_t = extern "C" fn(*const ::std::ffi::c_void, *const ::std::ffi::c_void) -> c_int;

#[repr(C)]
struct __locale_struct {
    __locales: [*mut __locale_data; 13usize],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13usize],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;

type ptrdiff_t = c_long;
type uint32_t = c_uint;

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: c_uint,
    expand_mult: c_uint,
}

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut ::std::ffi::c_void,
    next: *mut ::std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const ::std::ffi::c_void,
    keylen: c_uint,
    hashv: c_uint,
}

#[repr(C)]
struct clockface {
    time: c_int,
    hh: UT_hash_handle,
}

extern "C" {
    fn clockface_hash(time: c_int) -> c_int;
}
