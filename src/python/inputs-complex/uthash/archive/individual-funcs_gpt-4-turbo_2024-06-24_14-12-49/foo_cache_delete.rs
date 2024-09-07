extern crate libc;

use libc::{c_char, c_int, c_long, c_uint, c_ulong, c_void, size_t, timespec, timeval};

extern "C" {
    pub static mut program_invocation_name: *mut c_char;
    pub static static mut program_invocation_short_name: *mut c_char;
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
pub type __int_least8_t = __int8_t;
pub type __uint_least8_t = __uint8_t;
pub type __int_least16_t = __int16_t;
pub type __uint_least16_t = __uint16_t;
pub type __int_least32_t = __int32_t;
pub type __uint_least32_t = __uint32_t;
pub type __int_least64_t = __int64_t;
pub type __uint_least64_t = __uint64_t;
pub type __quad_t = i64;
pub type __u_quad_t = u64;
pub type __intmax_t = i64;
pub type __uintmax_t = u64;
pub type __dev_t = u64;
pub type __uid_t = u32;
pub type __gid_t = u32;
pub type __ino_t = u64;
pub type __ino64_t = u64;
pub type __mode_t = u32;
pub type __nlink_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __pid_t = i32;
pub type __fsid_t = i32; // Placeholder, struct definition needed
pub type __clock_t = i64;
pub type __id_t = u32;
pub type __time_t = i64;
pub type __useconds_t = u32;
pub type __suseconds_t = i64;
pub type __daddr_t = i32;
pub type __key_t = i32;
pub type __clockid_t = i32;
pub type __timer_t = *mut c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __blkcnt64_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsblkcnt64_t = u64;
pub type __fsfilcnt_t = u64;
pub type __fsfilcnt64_t = u64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type size_t = usize;
pub type time_t = __time_t;

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

pub type pid_t = __pid_t;

#[repr(C)]
pub struct sched_param {
    pub sched_priority: c_int,
}

pub type __cpu_mask = u64;

#[repr(C)]
pub struct cpu_set_t {
    pub __bits: [__cpu_mask; 128],
}

#[repr(C)]
pub struct timeval {
    pub tv_sec: __time_t,
    pub tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timex {
    pub modes: c_uint,
    pub offset: __syscall_slong_t,
    pub freq: __syscall_slong_t,
    pub maxerror: __syscall_slong_t,
    pub esterror: __syscall_slong_t,
    pub status: c_int,
    pub constant: __syscall_slong_t,
    pub precision: __syscall_slong_t,
    pub tolerance: __syscall_slong_t,
    pub time: timeval,
    pub tick: __syscall_slong_t,
    pub ppsfreq: __syscall_slong_t,
    pub jitter: __syscall_slong_t,
    pub shift: c_int,
    pub stabil: __syscall_slong_t,
    pub jitcnt: __syscall_slong_t,
    pub calcnt: __syscall_slong_t,
    pub errcnt: __syscall_slong_t,
    pub stbcnt: __syscall_slong_t,
    pub tai: c_int,
    // Padding fields are omitted
}

pub type clock_t = __clock_t;

#[repr(C)]
pub struct tm {
    pub tm_sec: c_int,
    pub tm_min: c_int,
    pub tm_hour: c_int,
    pub tm_mday: c_int,
    pub tm_mon: c_int,
    pub tm_year: c_int,
    pub tm_wday: c_int,
    pub tm_yday: c_int,
    pub tm_isdst: c_int,
    pub tm_gmtoff: c_long,
    pub tm_zone: *const c_char,
}

pub type clockid_t = __clockid_t;
pub type timer_t = __timer_t;

#[repr(C)]
pub struct itimerspec {
    pub it_interval: timespec,
    pub it_value: timespec,
}

// Placeholder for struct sigevent
pub struct sigevent;

#[repr(C)]
pub struct __locale_struct {
    pub __locales: [*mut c_void; 13],
    pub __ctype_b: *const c_ushort,
    pub __ctype_tolower: *const c_int,
    pub __ctype_toupper: *const c_int,
    pub __names: [*const c_char; 13],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

extern "C" {
    pub static mut __tzname: [*mut c_char; 2];
    pub static mut __daylight: c_int;
    pub static mut __timezone: c_long;
    pub static mut tzname: [*mut c_char; 2];
    pub static mut daylight: c_int;
    pub static mut timezone: c_long;
    pub static mut getdate_err: c_int;
}

#[repr(C)]
pub union __atomic_wide_counter {
    pub __value64: u64,
    pub __value32: __Value32,
}

#[repr(C)]
pub struct __Value32 {
    pub __low: c_uint,
    pub __high: c_uint,
}

#[repr(C)]
pub struct __pthread_internal_list {
    pub __prev: *mut __pthread_internal_list,
    pub __next: *mut __pthread_internal_list,
}

#[repr(C)]
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
pub struct __pthread_rwlock_arch_t {
    pub __readers: c_uint,
    pub __writers: c_uint,
    pub __wrphase_futex: c_uint,
    pub __writers_futex: c_uint,
    pub __pad3: c_uint,
    pub __pad4: c_uint,
    pub __cur_writer: c_int,
    pub __shared: c_int,
    pub __rwelision: c_char,
    pub __pad1: [c_uchar; 7],
    pub __pad2: c_ulong,
    pub __flags: c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    pub __wseq: __atomic_wide_counter,
    pub __g1_start: __atomic_wide_counter,
    pub __g_refs: [c_uint; 2],
    pub __g_size: [c_uint; 2],
    pub __g1_orig_size: c_uint,
    pub __wrefs: c_uint,
    pub __g_signals: [c_uint; 2],
}

pub type pthread_t = u64;

#[repr(C)]
pub union pthread_mutexattr_t {
    pub __size: [c_char; 4],
    pub __align: c_int,
}

#[repr(C)]
pub union pthread_condattr_t {
    pub __size: [c_char; 4],
    pub __align: c_int,
}

pub type pthread_key_t = c_uint;
pub type pthread_once_t = c_int;

#[repr(C)]
pub union pthread_attr_t {
    pub __size: [c_char; 56],
    pub __align: c_long,
}

#[repr(C)]
pub union pthread_mutex_t {
    pub __data: __pthread_mutex_s,
    pub __size: [c_char; 40],
    pub __align: c_long,
}

#[repr(C)]
pub union pthread_cond_t {
    pub __data: __pthread_cond_s,
    pub __size: [c_char; 48],
    pub __align: c_longlong,
}

#[repr(C)]
pub union pthread_rwlock_t {
    pub __data: __pthread_rwlock_arch_t,
    pub __size: [c_char; 56],
    pub __align: c_long,
}

#[repr(C)]
pub union pthread_rwlockattr_t {
    pub __size: [c_char; 8],
    pub __align: c_long,
}

pub type pthread_spinlock_t = c_int;

#[repr(C)]
pub union pthread_barrier_t {
    pub __size: [c_char; 32],
    pub __align: c_long,
}

#[repr(C)]
pub union pthread_barrierattr_t {
    pub __size: [c_char; 4],
    pub __align: c_int,
}

pub type __jmp_buf = [c_long; 8];

#[repr(C)]
pub struct __sigset_t {
    pub __val: [c_ulong; 16],
}

#[repr(C)]
pub struct __jmp_buf_tag {
    pub __jmpbuf: __jmp_buf,
    pub __mask_was_saved: c_int,
    pub __saved_mask: __sigset_t,
}

pub enum PTHREAD_CREATE {
    JOINABLE = 0,
    DETACHED = 1,
}

pub enum PTHREAD_MUTEX_TYPE {
    TIMED_NP = 0,
    RECURSIVE_NP = 1,
    ERRORCHECK_NP = 2,
    ADAPTIVE_NP = 3,
    NORMAL = TIMED_NP,
    RECURSIVE = RECURSIVE_NP,
    ERRORCHECK = ERRORCHECK_NP,
    DEFAULT = NORMAL,
    FAST_NP = TIMED_NP,
}

pub enum PTHREAD_MUTEX_ROBUSTNESS {
    STALLED = 0,
    ROBUST = 1,
}

pub enum PTHREAD_PRIO {
    NONE = 0,
    INHERIT = 1,
    PROTECT = 2,
}

pub enum PTHREAD_RWLOCK_PREFER {
    READER_NP = 0,
    WRITER_NP = 1,
    WRITER_NONRECURSIVE_NP = 2,
    DEFAULT_NP = READER_NP,
}

pub enum PTHREAD_SCHED {
    INHERIT = 0,
    EXPLICIT = 1,
}

pub enum PTHREAD_SCOPE {
    SYSTEM = 0,
    PROCESS = 1,
}

pub enum PTHREAD_PROCESS {
    PRIVATE = 0,
    SHARED = 1,
}

#[repr(C)]
pub struct _pthread_cleanup_buffer {
    pub __routine: Option<unsafe extern "C" fn(*mut c_void)>,
    pub __arg: *mut c_void,
    pub __canceltype: c_int,
    pub __prev: *mut _pthread_cleanup_buffer,
}

pub enum PTHREAD_CANCEL {
    ENABLE = 0,
    DISABLE = 1,
}

pub enum PTHREAD_CANCEL_TYPE {
    DEFERRED = 0,
    ASYNCHRONOUS = 1,
}

#[repr(C)]
pub struct __cancel_jmp_buf_tag {
    pub __cancel_jmp_buf: __jmp_buf,
    pub __mask_was_saved: c_int,
}

#[repr(C)]
pub struct __pthread_unwind_buf_t {
    pub __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
    pub __pad: [*mut c_void; 4],
}

#[repr(C)]
pub struct __pthread_cleanup_frame {
    pub __cancel_routine: Option<unsafe extern "C" fn(*mut c_void)>,
    pub __cancel_arg: *mut c_void,
    pub __do_it: c_int,
    pub __cancel_type: c_int,
}

extern "C" {
    pub fn pthread_rwlock_destroy(__rwlock: *mut pthread_rwlock_t) -> c_int;
    pub fn pthread_rwlock_wrlock(__rwlock: *mut pthread_rwlock_t) -> c_int;
    pub fn pthread_rwlock_unlock(__rwlock: *mut pthread_rwlock_t) -> c_int;
}

pub type wchar_t = c_int;
pub type _Float32 = f32;
pub type _Float64 = f64;
pub type _Float32x = f64;
pub type _Float64x = f64;

#[repr(C)]
pub struct div_t {
    pub quot: c_int,
    pub rem: c_int,
}

#[repr(C)]
pub struct ldiv_t {
    pub quot: c_long,
    pub rem: c_long,
}

#[repr(C)]
pub struct lldiv_t {
    pub quot: i64,
    pub rem: i64,
}

pub type int32_t = i32;

pub type __fd_mask = c_long;

#[repr(C)]
pub struct fd_set {
    pub fds_bits: [__fd_mask; 16],
}

#[repr(C)]
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
pub struct drand48_data {
    pub __x: [c_ushort; 3],
    pub __old_x: [c_ushort; 3],
    pub __c: c_ushort,
    pub __init: c_ushort,
    pub __a: u64,
}

extern "C" {
    pub fn free(__ptr: *mut c_void);
}

pub type __compar_fn_t = Option<unsafe extern "C" fn(*const c_void, *const c_void) -> c_int>;
pub type __compar_d_fn_t = Option<unsafe extern "C" fn(*const c_void, *const c_void, *mut c_void) -> c_int>;

pub struct foo_cache;

extern "C" {
    pub fn foo_cache_delete(cache: *mut foo_cache, keep_data: c_int) -> c_int;
}

pub type ptrdiff_t = isize;
pub type uint32_t = u32;

#[repr(C)]
pub struct UT_hash_bucket {
    pub hh_head: *mut UT_hash_handle,
    pub count: c_uint,
    pub expand_mult: c_uint,
}

#[repr(C)]
pub struct UT_hash_handle {
    pub tbl: *mut UT_hash_table,
    pub prev: *mut c_void,
    pub next: *mut c_void,
    pub hh_prev: *mut UT_hash_handle,
    pub hh_next: *mut UT_hash_handle,
    pub key: *const c_void,
    pub keylen: c_uint,
    pub hashv: c_uint,
}

#[repr(C)]
pub struct foo_cache_entry {
    pub key: *mut c_char,
    pub data: *mut c_void,
    pub hh: UT_hash_handle,
}

#[repr(C)]
pub struct foo_cache {
    pub max_entries: size_t,
    pub cache_lock: pthread_rwlock_t,
    pub entries: *mut foo_cache_entry,
    pub free_cb: Option<unsafe extern "C" fn(*mut c_void)>,
}

pub unsafe fn foo_cache_delete(cache: *mut foo_cache, keep_data: c_int) -> c_int {
    let mut entry: *mut foo_cache_entry;
    let mut tmp: *mut foo_cache_entry;
    let mut rv: c_int;

    if cache.is_null() {
        return 22;
    }

    rv = pthread_rwlock_wrlock(&mut (*cache).cache_lock);
    if rv != 0 {
        return rv;
    }

    if keep_data != 0 {
        if !(*cache).entries.is_null() {
            free((*(*cache).entries).hh.tbl as *mut c_void);
            free((*cache).entries as *mut c_void);
            (*cache).entries = std::ptr::null_mut();
        }
    } else {
        entry = (*cache).entries;
        while !entry.is_null() {
            tmp = (*entry).hh.hh_next as *mut foo_cache_entry;
            if (*cache).free_cb.is_some() {
                (*cache).free_cb.expect("non-null function pointer")((*entry).data);
            }
            free(entry as *mut c_void);
            entry = tmp;
        }
    }

    pthread_rwlock_unlock(&mut (*cache).cache_lock);
    pthread_rwlock_destroy(&mut (*cache).cache_lock);
    free(cache as *mut c_void);
    cache = std::ptr::null_mut();

    0
}
