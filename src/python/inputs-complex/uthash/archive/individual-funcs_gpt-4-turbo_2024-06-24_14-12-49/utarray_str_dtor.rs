type size_t = usize;
type __gnuc_va_list = ();
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
type __fsid_t = (i32, i32);
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut ();
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = __off64_t;
type __caddr_t = *mut i8;
type __mbstate_t = (__mbstate_t_inner, [u8; 4]);
#[repr(C)]
struct __mbstate_t_inner {
    __count: i32,
    __wch: u32,
}
type __fpos_t = (__off_t, __mbstate_t);
type FILE = _IO_FILE;
#[repr(C)]
struct _IO_FILE {
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
    _shortbuf: [i8; 1],
    _lock: *mut (),
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut (),
    __pad5: size_t,
    _mode: i32,
    _unused2: [u8; 15 * 4 - 4 * 8 - 8],
}
type fpos_t = __fpos_t;
static mut stdin: *mut FILE = 0 as *mut FILE;
static mut stdout: *mut FILE = 0 as *mut FILE;
static mut stderr: *mut FILE = 0 as *mut FILE;
type wchar_t = i32;
#[repr(C)]
struct __locale_struct {
    __locales: [*mut (); 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
}
type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type div_t = (i32, i32);
type ldiv_t = (i64, i64);
type lldiv_t = (i64, i64);
type int32_t = i32;
type __sigset_t = [u64; 16];
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
    __value32: (__u_int, __u_int),
}
#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}
#[repr(C)]
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
#[repr(C)]
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
#[repr(C)]
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}
#[repr(C)]
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}
#[repr(C)]
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
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
extern "C" {
    fn free(__ptr: *mut ());
}
type __compar_fn_t = extern "C" fn(*const (), *const ()) -> i32;
type ctor_f = extern "C" fn(*mut (), *const ());
type dtor_f = extern "C" fn(*mut ());
type init_f = extern "C" fn(*mut ());
#[repr(C)]
struct UT_icd {
    sz: size_t,
    init: Option<init_f>,
    copy: Option<ctor_f>,
    dtor: Option<dtor_f>,
}

extern "C" fn utarray_str_dtor(elt: *mut ()) {
    let eltc = elt as *mut *mut i8;
    if !(*eltc).is_null() {
        free(*eltc as *mut ());
    }
}
