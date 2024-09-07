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
type __int_least8_t = i8;
type __uint_least8_t = u8;
type __int_least16_t = i16;
type __uint_least16_t = u16;
type __int_least32_t = i32;
type __uint_least32_t = u32;
type __int_least64_t = i64;
type __uint_least64_t = u64;
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
type __fsid_t = [i32; 2];
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut ::std::os::raw::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = i64;
type __caddr_t = *mut i8;
type __mbstate_t = {
    __count: i32,
    __value: [u32; 4],
};
type __fpos_t = {
    __pos: __off_t,
    __state: __mbstate_t,
};
struct _IO_FILE;
type FILE = _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
type _IO_lock_t = ::std::ffi::c_void;
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
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut ::std::ffi::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i8; 15 * ::std::mem::size_of::<i32>() - 4 * ::std::mem::size_of::<*mut ::std::ffi::c_void>() - ::std::mem::size_of::<size_t>()],
};
type fpos_t = __fpos_t;
extern {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}
type __jmp_buf = [i64; 8];
type __sigset_t = {
    __val: [u64; (1024 / (8 * ::std::mem::size_of::<u64>()))],
};
struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: i32,
    __saved_mask: __sigset_t,
};
type jmp_buf = [__jmp_buf_tag; 1];
extern {
    fn longjmp(__env: *mut __jmp_buf_tag, __val: i32) -> !;
}
type sigjmp_buf = [__jmp_buf_tag; 1];
struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const i8; 13],
};
type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type ptrdiff_t = i64;
type wchar_t = i32;
struct div_t {
    quot: i32,
    rem: i32,
};
struct ldiv_t {
    quot: i64,
    rem: i64,
};
struct lldiv_t {
    quot: i64,
    rem: i64,
};
type int32_t = i32;
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
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * ::std::mem::size_of::<__fd_mask>())],
};
union __atomic_wide_counter {
    __value64: u64,
    __value32: {
        __low: u32,
        __high: u32,
    },
};
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
};
struct __pthread_mutex_s {
    __lock: i32,
    __count: u32,
    __owner: i32,
    __nusers: u32,
    __kind: i32,
    __spins: i16,
    __elision: i16,
    __list: __pthread_list_t,
};
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
};
struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [u32; 2],
    __g_size: [u32; 2],
    __g1_orig_size: u32,
    __wrefs: u32,
    __g_signals: [u32; 2],
};
union pthread_attr_t {
    __size: [i8; 56],
    __align: i64,
};
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
};
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
};
type __compar_fn_t = extern "C" fn(*const ::std::os::raw::c_void, *const ::std::os::raw::c_void) -> i32;
type uint8_t = u8;
type uint32_t = u32;
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut ::std::ffi::c_void,
    next: *mut ::std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const ::std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}
struct example_user_t {
    id: i32,
    cookie: i32,
    hh: UT_hash_handle,
}
static mut malloc_cnt: i32 = 0;
static mut malloc_failed: i32 = 0;
static mut is_fatal: i32 = 0;
static mut j_buf: jmp_buf = [__jmp_buf_tag { __jmpbuf: [0; 8], __mask_was_saved: 0, __saved_mask: __sigset_t { __val: [0; 16] } }];
static mut users: *mut example_user_t = 0 as *mut example_user_t;
static mut user_id: i32 = 0;
fn alt_fatal(s: *const i8) {
    unsafe {
        (void)s;
        is_fatal = 1;
        longjmp(&mut j_buf as *mut jmp_buf as *mut __jmp_buf_tag, 1);
    }
}
