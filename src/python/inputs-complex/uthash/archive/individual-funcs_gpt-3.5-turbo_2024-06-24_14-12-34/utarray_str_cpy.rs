pub type size_t = u64;
pub type __gnuc_va_list = ::std::ffi::VaList;
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
pub type __quad_t = i64;
pub type __u_quad_t = u64;
pub type __dev_t = u64;
pub type __uid_t = u32;
pub type __gid_t = u32;
pub type __ino_t = u64;
pub type __mode_t = u32;
pub type __nlink_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __pid_t = i32;
pub type __fsid_t = [i32; 2];
pub type __clock_t = i64;
pub type __id_t = u32;
pub type __time_t = i64;
pub type __suseconds_t = i64;
pub type __daddr_t = i32;
pub type __key_t = i32;
pub type __clockid_t = i32;
pub type __timer_t = *mut ::std::os::raw::c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsfilcnt_t = u64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __loff_t = i64;
pub type __caddr_t = *mut ::std::os::raw::c_char;

#[repr(C)]
pub struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    __wch: u32,
    __wchb: [u8; 4usize],
}

#[repr(C)]
pub struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

#[repr(C)]
pub struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut ::std::os::raw::c_char,
    _IO_read_end: *mut ::std::os::raw::c_char,
    _IO_read_base: *mut ::std::os::raw::c_char,
    _IO_write_base: *mut ::std::os::raw::c_char,
    _IO_write_ptr: *mut ::std::os::raw::c_char,
    _IO_write_end: *mut ::std::os::raw::c_char,
    _IO_buf_base: *mut ::std::os::raw::c_char,
    _IO_buf_end: *mut ::std::os::raw::c_char,
    _IO_save_base: *mut ::std::os::raw::c_char,
    _IO_backup_base: *mut ::std::os::raw::c_char,
    _IO_save_end: *mut ::std::os::raw::c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [::std::os::raw::c_char; 1usize],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut ::std::os::raw::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [::std::os::raw::c_char; 56usize],
}

pub type fpos_t = __fpos_t;

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}

pub type wchar_t = i32;

extern "C" {
    pub fn strcpy(__dest: *mut ::std::os::raw::c_char, __src: *const ::std::os::raw::c_char) -> *mut ::std::os::raw::c_char;
}

#[repr(C)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13usize],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const ::std::os::raw::c_char; 13usize],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

extern "C" {
    pub fn strlen(__s: *const ::std::os::raw::c_char) -> size_t;
}

#[repr(C)]
pub struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
pub struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
pub struct lldiv_t {
    quot: i64,
    rem: i64,
}

pub type int32_t = i32;

#[repr(C)]
pub struct __sigset_t {
    __val: [u64; 16usize],
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

pub type __fd_mask = i64;

#[repr(C)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 16usize],
}

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: u64,
    __value32: __atomic_wide_counter__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __atomic_wide_counter__bindgen_ty_1 {
    __low: u32,
    __high: u32,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

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
    __pad1: [u8; 7usize],
    __pad2: u64,
    __flags: u32,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2usize],
    __g_size: [u32; 2usize],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2usize],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [::std::os::raw::c_char; 56usize],
    __align: i64,
}

#[repr(C)]
pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    __x: [u16; 3usize],
    __old_x: [u16; 3usize],
    __c: u16,
    __init: u16,
    __a: u64,
}

extern "C" {
    pub fn malloc(__size: size_t) -> *mut ::std::os::raw::c_void;
    pub fn exit(__status: i32) -> !;
}

pub type __compar_fn_t = extern "C" fn(*const ::std::os::raw::c_void, *const ::std::os::raw::c_void) -> i32;
pub type ctor_f = extern "C" fn(*mut ::std::os::raw::c_void, *const ::std::os::raw::c_void);
pub type dtor_f = extern "C" fn(*mut ::std::os::raw::c_void);
pub type init_f = extern "C" fn(*mut ::std::os::raw::c_void);

#[repr(C)]
pub struct UT_icd {
    sz: size_t,
    init: init_f,
    copy: ctor_f,
    dtor: dtor_f,
}

pub unsafe fn utarray_str_cpy(dst: *mut ::std::os::raw::c_void, src: *const ::std::os::raw::c_void) {
    let srcc = src as *const *const ::std::os::raw::c_char;
    let dstc = dst as *mut *mut ::std::os::raw::c_char;
    if *srcc == ::std::ptr::null() {
        *dstc = ::std::ptr::null_mut();
    } else {
        *dstc = malloc(strlen(*srcc) + 1) as *mut ::std::os::raw::c_char;
        if *dstc == ::std::ptr::null_mut() {
            exit(-1);
        } else {
            strcpy(*dstc, *srcc);
        }
    }
}
