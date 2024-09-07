extern crate libc;

use libc::{c_char, c_int, size_t, pthread_rwlock_t};

#[repr(C)]
pub struct timespec {
    tv_sec: time_t,
    tv_nsec: __syscall_slong_t,
}

pub type time_t = __time_t;
pub type __syscall_slong_t = libc::c_long;

#[repr(C)]
pub struct timeval {
    tv_sec: time_t,
    tv_usec: __suseconds_t,
}

pub type __suseconds_t = libc::c_long;

#[repr(C)]
pub struct timex {
    modes: u32,
    offset: __syscall_slong_t,
    freq: __syscall_slong_t,
    maxerror: __syscall_slong_t,
    esterror: __syscall_slong_t,
    status: c_int,
    constant: __syscall_slong_t,
    precision: __syscall_slong_t,
    tolerance: __syscall_slong_t,
    time: timeval,
    tick: __syscall_slong_t,
    ppsfreq: __syscall_slong_t,
    jitter: __syscall_slong_t,
    shift: c_int,
    stabil: __syscall_slong_t,
    jitcnt: __syscall_slong_t,
    calcnt: __syscall_slong_t,
    errcnt: __syscall_slong_t,
    stbcnt: __syscall_slong_t,
    tai: c_int,
    _pad: [c_int; 16],
}

pub type clock_t = __clock_t;

#[repr(C)]
pub struct tm {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: libc::c_long,
    tm_zone: *const c_char,
}

pub type clockid_t = __clockid_t;
pub type timer_t = __timer_t;

#[repr(C)]
pub struct itimerspec {
    it_interval: timespec,
    it_value: timespec,
}

#[repr(C)]
pub struct sched_param {
    sched_priority: c_int,
}

pub type cpu_set_t = __cpu_mask;

#[repr(C)]
pub struct cpu_set_t {
    __bits: [__cpu_mask; 16],
}

pub type pid_t = __pid_t;

#[repr(C)]
pub struct sigevent;

#[repr(C)]
pub struct __locale_struct {
    __locales: [*mut __locale_data; 13],
    __ctype_b: *const libc::c_ushort,
    __ctype_tolower: *const c_int,
    __ctype_toupper: *const c_int,
    __names: [*const c_char; 13],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

extern {
    static mut __tzname: [*mut c_char; 2];
    static mut __daylight: c_int;
    static mut __timezone: libc::c_long;
    static mut tzname: [*mut c_char; 2];
    static mut daylight: c_int;
    static mut timezone: libc::c_long;
    static mut getdate_err: c_int;
}

#[repr(C)]
pub union __atomic_wide_counter {
    __value64: libc::c_ulonglong,
    __value32: __value32,
}

#[repr(C)]
pub struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    __lock: c_int,
    __count: libc::c_uint,
    __owner: c_int,
    __nusers: libc::c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    __readers: libc::c_uint,
    __writers: libc::c_uint,
    __wrphase_futex: libc::c_uint,
    __writers_futex: libc::c_uint,
    __pad3: libc::c_uint,
    __pad4: libc::c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: c_schar,
    __pad1: [c_uchar; 7],
    __pad2: libc::c_ulong,
    __flags: libc::c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [libc::c_uint; 2],
    __g_size: [libc::c_uint; 2],
    __g1_orig_size: libc::c_uint,
    __wrefs: libc::c_uint,
    __g_signals: [libc::c_uint; 2],
}

pub type pthread_t = libc::c_ulong;

#[repr(C)]
pub union pthread_mutexattr_t {
    __size: [c_char; 4],
    __align: c_int,
}

#[repr(C)]
pub union pthread_condattr_t {
    __size: [c_char; 4],
    __align: c_int,
}

pub type pthread_key_t = libc::c_uint;
pub type pthread_once_t = c_int;

#[repr(C)]
pub union pthread_attr_t {
    __size: [c_char; 56],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_mutex_t {
    __data: __pthread_mutex_s,
    __size: [c_char; 40],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_cond_t {
    __data: __pthread_cond_s,
    __size: [c_char; 48],
    __align: libc::c_longlong,
}

#[repr(C)]
pub union pthread_rwlock_t {
    __data: __pthread_rwlock_arch_t,
    __size: [c_char; 56],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_rwlockattr_t {
    __size: [c_char; 8],
    __align: libc::c_long,
}

pub type pthread_spinlock_t = libc::c_int;

#[repr(C)]
pub union pthread_barrier_t {
    __size: [c_char; 32],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_barrierattr_t {
    __size: [c_char; 4],
    __align: c_int,
}

pub type __jmp_buf = [libc::c_long; 8];

#[repr(C)]
pub struct __sigset_t {
    __val: [libc::c_ulong; 16],
}

#[repr(C)]
pub struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

pub const PTHREAD_CREATE_JOINABLE: c_int = 0;
pub const PTHREAD_CREATE_DETACHED: c_int = 1;

pub const PTHREAD_MUTEX_TIMED_NP: c_int = 0;
pub const PTHREAD_MUTEX_RECURSIVE_NP: c_int = 1;
pub const PTHREAD_MUTEX_ERRORCHECK_NP: c_int = 2;
pub const PTHREAD_MUTEX_ADAPTIVE_NP: c_int = 3;
pub const PTHREAD_MUTEX_NORMAL: c_int = PTHREAD_MUTEX_TIMED_NP;
pub const PTHREAD_MUTEX_RECURSIVE: c_int = PTHREAD_MUTEX_RECURSIVE_NP;
pub const PTHREAD_MUTEX_ERRORCHECK: c_int = PTHREAD_MUTEX_ERRORCHECK_NP;
pub const PTHREAD_MUTEX_DEFAULT: c_int = PTHREAD_MUTEX_NORMAL;
pub const PTHREAD_MUTEX_FAST_NP: c_int = PTHREAD_MUTEX_TIMED_NP;

pub const PTHREAD_MUTEX_STALLED: c_int = 0;
pub const PTHREAD_MUTEX_STALLED_NP: c_int = PTHREAD_MUTEX_STALLED;
pub const PTHREAD_MUTEX_ROBUST: c_int = 1;
pub const PTHREAD_MUTEX_ROBUST_NP: c_int = PTHREAD_MUTEX_ROBUST;

pub const PTHREAD_PRIO_NONE: c_int = 0;
pub const PTHREAD_PRIO_INHERIT: c_int = 1;
pub const PTHREAD_PRIO_PROTECT: c_int = 2;

pub const PTHREAD_RWLOCK_PREFER_READER_NP: c_int = 0;
pub const PTHREAD_RWLOCK_PREFER_WRITER_NP: c_int = 1;
pub const PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP: c_int = 2;
pub const PTHREAD_RWLOCK_DEFAULT_NP: c_int = PTHREAD_RWLOCK_PREFER_READER_NP;

pub const PTHREAD_INHERIT_SCHED: c_int = 0;
pub const PTHREAD_EXPLICIT_SCHED: c_int = 1;

pub const PTHREAD_SCOPE_SYSTEM: c_int = 0;
pub const PTHREAD_SCOPE_PROCESS: c_int = 1;

pub const PTHREAD_PROCESS_PRIVATE: c_int = 0;
pub const PTHREAD_PROCESS_SHARED: c_int = 1;

#[repr(C)]
pub struct _pthread_cleanup_buffer {
    __routine: extern fn(*mut libc::c_void),
    __arg: *mut libc::c_void,
    __canceltype: c_int,
    __prev: *mut _pthread_cleanup_buffer,
}

pub const PTHREAD_CANCEL_ENABLE: c_int = 0;
pub const PTHREAD_CANCEL_DISABLE: c_int = 1;

pub const PTHREAD_CANCEL_DEFERRED: c_int = 0;
pub const PTHREAD_CANCEL_ASYNCHRONOUS: c_int = 1;

#[repr(C)]
pub struct __cancel_jmp_buf_tag {
    __cancel_jmp_buf: __jmp_buf,
    __mask_was_saved: c_int,
}

#[repr(C)]
pub struct __pthread_unwind_buf_t {
    __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
    __pad: [*mut libc::c_void; 4],
}

#[repr(C)]
pub struct __pthread_cleanup_frame {
    __cancel_routine: extern fn(*mut libc::c_void),
    __cancel_arg: *mut libc::c_void,
    __do_it: c_int,
    __cancel_type: c_int,
}

extern {
    fn pthread_rwlock_destroy(__rwlock: *mut pthread_rwlock_t) -> c_int;
    fn pthread_rwlock_wrlock(__rwlock: *mut pthread_rwlock_t) -> c_int;
    fn pthread_rwlock_unlock(__rwlock: *mut pthread_rwlock_t) -> c_int;
}

pub type wchar_t = c_int;
pub type _Float32 = f32;
pub type _Float64 = f64;
pub type _Float32x = f64;
pub type _Float64x = f64;

#[repr(C)]
pub struct div_t {
    quot: c_int,
    rem: c_int,
}

#[repr(C)]
pub struct ldiv_t {
    quot: libc::c_long,
    rem: libc::c_long,
}

#[repr(C)]
pub struct lldiv_t {
    quot: libc::c_longlong,
    rem: libc::c_longlong,
}

pub type int32_t = __int32_t;

pub type __fd_mask = libc::c_long;

#[repr(C)]
pub struct fd_set {
    fds_bits: [__fd_mask; 16],
}

#[repr(C)]
pub struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: *mut int32_t,
}

#[repr(C)]
pub struct drand48_data {
    __x: [libc::c_ushort; 3],
    __old_x: [libc::c_ushort; 3],
    __c: libc::c_ushort,
    __init: libc::c_ushort,
    __a: libc::c_ulonglong,
}

extern {
    fn free(__ptr: *mut libc::c_void);
}

pub type __compar_fn_t = extern fn(*const libc::c_void, *const libc::c_void) -> c_int;
pub type __compar_d_fn_t = extern fn(*const libc::c_void, *const libc::c_void, *mut libc::c_void) -> c_int;

#[repr(C)]
pub struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: libc::c_uint,
    expand_mult: libc::c_uint,
}

#[repr(C)]
pub struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut libc::c_void,
    next: *mut libc::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const libc::c_void,
    keylen: libc::c_uint,
    hashv: libc::c_uint,
}

#[repr(C)]
pub struct foo_cache_entry {
    key: *mut c_char,
    data: *mut libc::c_void,
    hh: UT_hash_handle,
}

#[repr(C)]
pub struct foo_cache {
    max_entries: size_t,
    cache_lock: pthread_rwlock_t,
    entries: *mut foo_cache_entry,
    free_cb: extern fn(*mut libc::c_void),
}
