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
type __quad_t = c_long;
type __u_quad_t = c_ulong;
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
type __timer_t = *mut ::std::os::raw::c_void;
type __blksize_t = c_long;
type __blkcnt_t = c_long;
type __fsblkcnt_t = c_ulong;
type __fsfilcnt_t = c_ulong;
type __ssize_t = c_long;
type __syscall_slong_t = c_long;
type __loff_t = __off64_t;
type __caddr_t = *mut c_char;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __mbstate_t {
    pub __count: c_int,
    pub __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    pub __wch: c_uint,
    pub __wchb: [c_char; 4usize],
    _bindgen_union_align: [u32; 1usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __fpos_t {
    pub __pos: __off_t,
    pub __state: __mbstate_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct _IO_FILE {
    pub _flags: c_int,
    pub _IO_read_ptr: *mut c_char,
    pub _IO_read_end: *mut c_char,
    pub _IO_read_base: *mut c_char,
    pub _IO_write_base: *mut c_char,
    pub _IO_write_ptr: *mut c_char,
    pub _IO_write_end: *mut c_char,
    pub _IO_buf_base: *mut c_char,
    pub _IO_buf_end: *mut c_char,
    pub _IO_save_base: *mut c_char,
    pub _IO_backup_base: *mut c_char,
    pub _IO_save_end: *mut c_char,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: c_int,
    pub _flags2: c_int,
    pub _old_offset: __off_t,
    pub _cur_column: c_ushort,
    pub _vtable_offset: i8,
    pub _shortbuf: [c_char; 1usize],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut ::std::os::raw::c_void,
    pub __pad5: size_t,
    pub _mode: c_int,
    pub _unused2: [c_char; 56usize],
}

type fpos_t = __fpos_t;

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}

type wchar_t = c_int;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct div_t {
    pub quot: c_int,
    pub rem: c_int,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct ldiv_t {
    pub quot: c_long,
    pub rem: c_long,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct lldiv_t {
    pub quot: i64,
    pub rem: i64,
}

type int32_t = i32;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __sigset_t {
    pub __val: [c_ulong; 16usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct timeval {
    pub tv_sec: __time_t,
    pub tv_usec: __suseconds_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

type __fd_mask = c_long;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct fd_set {
    pub __fds_bits: [__fd_mask; 16usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __atomic_wide_counter {
    pub __value64: c_ulonglong,
    pub __value32: __atomic_wide_counter__bindgen_ty_1,
    _bindgen_union_align: [u64; 2usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __atomic_wide_counter__bindgen_ty_1 {
    pub __low: c_uint,
    pub __high: c_uint,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __pthread_internal_list {
    pub __prev: *mut __pthread_internal_list,
    pub __next: *mut __pthread_internal_list,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __pthread_mutex_s {
    pub __lock: c_int,
    pub __count: c_uint,
    pub __owner: c_int,
    pub __nusers: c_uint,
    pub __kind: c_int,
    pub __spins: c_short,
    pub __elision: c_short,
    pub __list: __pthread_list_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __pthread_rwlock_arch_t {
    pub __readers: c_uint,
    pub __writers: c_uint,
    pub __wrphase_futex: c_uint,
    pub __writers_futex: c_uint,
    pub __pad3: c_uint,
    pub __pad4: c_uint,
    pub __cur_writer: c_int,
    pub __shared: c_int,
    pub __rwelision: i8,
    pub __pad1: [u8; 7usize],
    pub __pad2: c_ulong,
    pub __flags: c_uint,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __pthread_cond_s {
    pub __wseq: __atomic_wide_counter,
    pub __g1_start: __atomic_wide_counter,
    pub __g_refs: [c_uint; 2usize],
    pub __g_size: [c_uint; 2usize],
    pub __g1_orig_size: c_uint,
    pub __wrefs: c_uint,
    pub __g_signals: [c_uint; 2usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct pthread_attr_t {
    pub __size: [c_char; 56usize],
    pub __align: c_long,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct random_data {
    pub fptr: *mut int32_t,
    pub rptr: *mut int32_t,
    pub state: *mut int32_t,
    pub rand_type: c_int,
    pub rand_deg: c_int,
    pub rand_sep: c_int,
    pub end_ptr: *mut int32_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct drand48_data {
    pub __x: [c_ushort; 3usize],
    pub __old_x: [c_ushort; 3usize],
    pub __c: c_ushort,
    pub __init: c_ushort,
    pub __a: c_ulonglong,
}

type __compar_fn_t = extern "C" fn(*const ::std::os::raw::c_void, *const ::std::os::raw::c_void) -> c_int;

extern "C" {
    pub fn strcmp(__s1: *const c_char, __s2: *const c_char) -> c_int;
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __locale_struct {
    pub __locales: [*mut __locale_data; 13usize],
    pub __ctype_b: *const c_ushort,
    pub __ctype_tolower: *const c_int,
    pub __ctype_toupper: *const c_int,
    pub __names: [*const c_char; 13usize],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct el {
    pub bname: [c_char; 20usize],
    pub next: *mut el,
    pub prev: *mut el,
}

fn namecmp(_a: *mut ::std::os::raw::c_void, _b: *mut ::std::os::raw::c_void) -> c_int {
    let a: *mut el = _a as *mut el;
    let b: *mut el = _b as *mut el;
    strcmp((*a).bname.as_ptr(), (*b).bname.as_ptr())
}
