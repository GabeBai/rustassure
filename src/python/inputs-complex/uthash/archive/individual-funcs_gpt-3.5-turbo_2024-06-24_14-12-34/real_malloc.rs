pub type size_t = u64;

pub struct __locale_struct {
    __locales: [Option<__locale_data>; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;
pub type ptrdiff_t = i64;
pub type wchar_t = i32;

pub struct div_t {
    quot: i32,
    rem: i32,
}

pub struct ldiv_t {
    quot: i64,
    rem: i64,
}

pub struct lldiv_t {
    quot: i64,
    rem: i64,
}

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
pub type __int_least8_t = i8;
pub type __uint_least8_t = u8;
pub type __int_least16_t = i16;
pub type __uint_least16_t = u16;
pub type __int_least32_t = i32;
pub type __uint_least32_t = u32;
pub type __int_least64_t = i64;
pub type __uint_least64_t = u64;
pub type __quad_t = i64;
pub type __u_quad_t = u64;
pub type __intmax_t = i64;
pub type __uintmax_t = u64;
pub type __dev_t = u64;
pub type __uid_t = u32;
pub type __gid_t = u32;
pub type __ino_t = u64;
pub type __mode_t = u32;
pub type __nlink_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __pid_t = i32;
pub struct __fsid_t {
    __val: [i32; 2],
}
pub type __clock_t = i64;
pub type __id_t = u32;
pub type __time_t = i64;
pub type __suseconds_t = i64;
pub type __daddr_t = i32;
pub type __key_t = i32;
pub type __clockid_t = i32;
pub type __timer_t = *mut core::ffi::c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsfilcnt_t = u64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __loff_t = i64;
pub type __caddr_t = *mut i8;
pub type int32_t = i32;

#[repr(C)]
pub struct __sigset_t {
    __val: [u64; 16],
}

pub struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

pub struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

pub type __fd_mask = i64;

pub struct fd_set {
    __fds_bits: [__fd_mask; 16],
}

pub union __atomic_wide_counter {
    __value64: u64,
    __value32: __atomic_wide_counter__value32,
}

pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

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
    __pad1: [u8; 7],
    __pad2: u64,
    __flags: u32,
}

pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
}

pub union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
}

pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
}

pub struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}

pub type __compar_fn_t = extern "C" fn(*const core::ffi::c_void, *const core::ffi::c_void) -> i32;
pub type uint32_t = u32;

pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

pub struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut core::ffi::c_void,
    next: *mut core::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const core::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

pub type __gnuc_va_list = core::ffi::VaList;

pub struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__value,
}

pub struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

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
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut core::ffi::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i8; 56],
}

pub type fpos_t = __fpos_t;

pub static mut stdin: *mut FILE = 0 as *mut FILE;
pub static mut stdout: *mut FILE = 0 as *mut FILE;
pub static mut stderr: *mut FILE = 0 as *mut FILE;

static mut alt_malloc_sizes: [size_t; 10] = [0; 10];
static mut alt_malloc_balance: i32 = 0;
static mut alt_keycmp_count: i32 = 0;
static mut alt_bzero_count: i32 = 0;

fn real_malloc(n: size_t) -> *mut core::ffi::c_void {
    malloc(n)
}
