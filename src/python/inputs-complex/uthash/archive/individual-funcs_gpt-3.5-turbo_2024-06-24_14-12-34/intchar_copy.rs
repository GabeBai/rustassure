type size_t = u64;
type __gnuc_va_list = ::std::ffi::VaList;
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
type __fsid_t = [i32; 2];
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut ::std::ffi::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = i64;
type __caddr_t = *mut i8;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    __wch: u32,
    __wchb: [i8; 4usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1usize],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut ::std::ffi::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i8; 56usize],
}

type fpos_t = __fpos_t;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;
}

type wchar_t = i32;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct lldiv_t {
    quot: i64,
    rem: i64,
}

type int32_t = i32;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __sigset_t {
    __val: [u64; 16usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type __fd_mask = i64;

#[repr(C)]
#[derive(Copy, Clone)]
pub struct fd_set {
    __fds_bits: [__fd_mask; 16usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
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
#[derive(Copy, Clone)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
#[derive(Copy, Clone)]
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
#[derive(Copy, Clone)]
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
#[derive(Copy, Clone)]
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
#[derive(Copy, Clone)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13usize],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13usize],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;

extern "C" {
    fn strdup(__s: *const i8) -> *mut i8;
}

type ctor_f = extern "C" fn(*mut ::std::ffi::c_void, *const ::std::ffi::c_void);
type dtor_f = extern "C" fn(*mut ::std::ffi::c_void);
type init_f = extern "C" fn(*mut ::std::ffi::c_void);

#[repr(C)]
#[derive(Copy, Clone)]
pub struct UT_icd {
    sz: size_t,
    init: init_f,
    copy: ctor_f,
    dtor: dtor_f,
}

static ut_str_icd: UT_icd = UT_icd {
    sz: 8,
    init: None,
    copy: intchar_copy as ctor_f,
    dtor: None,
};

static ut_int_icd: UT_icd = UT_icd {
    sz: 4,
    init: None,
    copy: None,
    dtor: None,
};

static ut_ptr_icd: UT_icd = UT_icd {
    sz: 8,
    init: None,
    copy: None,
    dtor: None,
};

#[repr(C)]
#[derive(Copy, Clone)]
pub struct intchar_t {
    a: i32,
    s: *mut i8,
}

fn intchar_copy(_dst: *mut ::std::ffi::c_void, _src: *const ::std::ffi::c_void) {
    let dst = _dst as *mut intchar_t;
    let src = _src as *const intchar_t;
    unsafe {
        (*dst).a = (*src).a;
        (*dst).s = if !(*src).s.is_null() { strdup((*src).s) } else { std::ptr::null_mut() };
    }
}
