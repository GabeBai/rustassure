extern "C" {
    pub static stdin: *mut FILE;
    pub static stdout: *mut FILE;
    pub static stderr: *mut FILE;
    pub fn printf(format: *const i8, ...) -> i32;
}

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
pub type __timer_t = *mut ::std::ffi::c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsfilcnt_t = u64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut i8;

#[repr(C)]
pub struct __mbstate_t {
    pub __count: i32,
    pub __value: __mbstate_t__bindgen_ty_1,
}

#[repr(C)]
#[derive(Copy, Clone)]
pub union __mbstate_t__bindgen_ty_1 {
    pub __wch: u32,
    pub __wchb: [i8; 4usize],
    _bindgen_union_align: [u32; 1usize],
}

#[repr(C)]
pub struct __fpos_t {
    pub __pos: __off_t,
    pub __state: __mbstate_t,
}

#[repr(C)]
pub struct _IO_FILE {
    pub _flags: i32,
    pub _IO_read_ptr: *mut i8,
    pub _IO_read_end: *mut i8,
    pub _IO_read_base: *mut i8,
    pub _IO_write_base: *mut i8,
    pub _IO_write_ptr: *mut i8,
    pub _IO_write_end: *mut i8,
    pub _IO_buf_base: *mut i8,
    pub _IO_buf_end: *mut i8,
    pub _IO_save_base: *mut i8,
    pub _IO_backup_base: *mut i8,
    pub _IO_save_end: *mut i8,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: i32,
    pub _flags2: i32,
    pub _old_offset: __off_t,
    pub _cur_column: u16,
    pub _vtable_offset: i8,
    pub _shortbuf: [i8; 1usize],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut ::std::ffi::c_void,
    pub __pad5: size_t,
    pub _mode: i32,
    pub _unused2: [i8; 56usize],
}

pub type fpos_t = __fpos_t;

#[repr(C)]
pub struct div_t {
    pub quot: i32,
    pub rem: i32,
}

#[repr(C)]
pub struct ldiv_t {
    pub quot: i64,
    pub rem: i64,
}

#[repr(C)]
pub struct lldiv_t {
    pub quot: i64,
    pub rem: i64,
}

pub type int32_t = i32;

#[repr(C)]
pub struct __sigset_t {
    pub __val: [u64; 16usize],
}

#[repr(C)]
pub struct timeval {
    pub tv_sec: __time_t,
    pub tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

pub type __fd_mask = i64;

#[repr(C)]
pub struct fd_set {
    pub __fds_bits: [__fd_mask; 16usize],
}

#[repr(C)]
pub union __atomic_wide_counter {
    pub __value64: u64,
    pub __value32: __atomic_wide_counter__bindgen_ty_1,
    _bindgen_union_align: [u64; 1usize],
}

#[repr(C)]
#[derive(Copy, Clone)]
pub struct __atomic_wide_counter__bindgen_ty_1 {
    pub __low: u32,
    pub __high: u32,
}

#[repr(C)]
pub struct __pthread_internal_list {
    pub __prev: *mut __pthread_internal_list,
    pub __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    pub __lock: i32,
    pub __count: u32,
    pub __owner: i32,
    pub __nusers: u32,
    pub __kind: i32,
    pub __spins: i16,
    pub __elision: i16,
    pub __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    pub __readers: u32,
    pub __writers: u32,
    pub __wrphase_futex: u32,
    pub __writers_futex: u32,
    pub __pad3: u32,
    pub __pad4: u32,
    pub __cur_writer: i32,
    pub __shared: i32,
    pub __rwelision: i8,
    pub __pad1: [u8; 7usize],
    pub __pad2: u64,
    pub __flags: u32,
}

#[repr(C)]
pub struct __pthread_cond_s {
    pub __wseq: __atomic_wide_counter,
    pub __g1_start: __atomic_wide_counter,
    pub __g_refs: [u32; 2usize],
    pub __g_size: [u32; 2usize],
    pub __g1_orig_size: u32,
    pub __wrefs: u32,
    pub __g_signals: [u32; 2usize],
}

#[repr(C)]
pub union pthread_attr_t {
    pub __size: [i8; 56usize],
    pub __align: i64,
}

#[repr(C)]
pub struct random_data {
    pub fptr: *mut int32_t,
    pub rptr: *mut int32_t,
    pub state: *mut int32_t,
    pub rand_type: i32,
    pub rand_deg: i32,
    pub rand_sep: i32,
    pub end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    pub __x: [u16; 3usize],
    pub __old_x: [u16; 3usize],
    pub __c: u16,
    pub __init: u16,
    pub __a: u64,
}

pub type __compar_fn_t = extern "C" fn(*const ::std::ffi::c_void, *const ::std::ffi::c_void) -> i32;

#[repr(C)]
pub struct __locale_struct {
    pub __locales: [*mut __locale_data; 13usize],
    pub __ctype_b: *const u16,
    pub __ctype_tolower: *const i32,
    pub __ctype_toupper: *const i32,
    pub __names: [*const i8; 13usize],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;
pub type clock_time_t = i32;

pub fn dump_queue(queue: *mut netq_t) {
    let mut p: *mut netq_t;
    let mut i: i32 = 0;
    if queue.is_null() != 0 {
        printf(b"(null)\n\0".as_ptr());
    } else {
        p = queue;
        while !p.is_null() {
            printf(b"node #%d, timeout: %d\n\0".as_ptr(), i, (*p).t);
            i += 1;
            p = (*p).next;
        }
    }
}
