extern "C" {
    fn __assert_fail(
        __assertion: *const c_char,
        __file: *const c_char,
        __line: c_uint,
        __function: *const c_char,
    ) -> !;
}

use std::os::raw::{c_char, c_int, c_long, c_uint, c_ulong, c_void};

type size_t = c_ulong;
type __gnuc_va_list = *mut c_void;
type __u_char = u8;
type __u_short = u16;
type __u_int = u32;
type __u_long = c_ulong;
type __int8_t = i8;
type __uint8_t = u8;
type __int16_t = i16;
type __uint16_t = u16;
type __int32_t = i32;
type __uint32_t = u32;
type __int64_t = i64;
type __uint64_t = u64;
type __quad_t = i64;
type __u_quad_t = u64;
type __dev_t = u64;
type __uid_t = u32;
type __gid_t = u32;
type __ino_t = u64;
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;

#[repr(C)]
struct __fsid_t {
    __val: [i32; 2],
}

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

#[repr(C)]
struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__value,
}

#[repr(C)]
union __mbstate_t__value {
    __wch: u32,
    __wchb: [c_char; 4],
}

#[repr(C)]
struct _G_fpos_t {
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
    _cur_column: c_ushort,
    _vtable_offset: c_schar,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * size_t::BITS as usize / 8 - 4 * size_t::BITS as usize / 8 - size_t::BITS as usize / 8],
};

type fpos_t = _G_fpos_t;

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

type wchar_t = i32;

#[repr(C)]
struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct lldiv_t {
    quot: i64,
    rem: i64,
}

type int32_t = i32;

#[repr(C)]
struct __sigset_t {
    __val: [u64; 16],
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
    __rwelision: c_schar,
    __pad1: [c_uchar; 7],
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
    __x: [c_ushort; 3],
    __old_x: [c_ushort; 3],
    __c: c_ushort,
    __init: c_ushort,
    __a: u64,
}

type __compar_fn_t = extern "C" fn(*const c_void, *const c_void) -> c_int;

#[repr(C)]
struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;

type clock_time_t = i32;

#[repr(C)]
struct netq_t {
    next: *mut netq_t,
    t: clock_time_t,
}

fn netq_insert_node(queue: &mut *mut netq_t, node: *mut netq_t) -> c_int {
    let mut p = *queue;
    while !p.is_null() && unsafe { (*p).t } <= unsafe { (*node).t } {
        p = unsafe { (*p).next };
    }
    if !p.is_null() {
        unsafe {
            if !p.is_null() {
                assert!(!queue.is_null());
                assert!(!node.is_null());
                (*node).next = p;
                if *queue == p {
                    *queue = node;
                } else {
                    let mut _tmp = *queue;
                    while !_tmp.is_null() && { _tmp = (*_tmp).next; _tmp != p } {}
                    if !_tmp.is_null() {
                        (*_tmp).next = node;
                    }
                }
            } else {
                let mut _tmp = *queue;
                (*node).next = std::ptr::null_mut();
                if !_tmp.is_null() {
                    while { _tmp = (*_tmp).next; !_tmp.is_null() } {}
                    (*_tmp).next = node;
                } else {
                    *queue = node;
                }
            }
        }
    } else {
        unsafe {
            let mut _tmp = *queue;
            (*node).next = std::ptr::null_mut();
            if !_tmp.is_null() {
                while { _tmp = (*_tmp).next; !_tmp.is_null() } {}
                (*_tmp).next = node;
            } else {
                *queue = node;
            }
        }
    }
    1
}
