extern crate libc;

use libc::{c_char, c_int, c_long, c_short, c_uint, c_ulong, c_ushort};

pub type __u_char = c_uchar;
pub type __u_short = c_ushort;
pub type __u_int = c_uint;
pub type __u_long = c_ulong;
pub type __int8_t = c_char;
pub type __uint8_t = c_uchar;
pub type __int16_t = c_short;
pub type __uint16_t = c_ushort;
pub type __int32_t = c_int;
pub type __uint32_t = c_uint;
pub type __int64_t = c_long;
pub type __uint64_t = c_ulong;
pub type __quad_t = c_long;
pub type __u_quad_t = c_ulong;
pub type __dev_t = c_ulong;
pub type __uid_t = c_uint;
pub type __gid_t = c_uint;
pub type __ino_t = c_ulong;
pub type __ino64_t = c_ulong;
pub type __mode_t = c_uint;
pub type __nlink_t = c_ulong;
pub type __off_t = c_long;
pub type __off64_t = c_long;
pub type __pid_t = c_int;
pub type __fsid_t = [c_int; 2];
pub type __clock_t = c_long;
pub type __id_t = c_uint;
pub type __time_t = c_long;
pub type __useconds_t = c_uint;
pub type __suseconds_t = c_long;
pub type __daddr_t = c_int;
pub type __key_t = c_int;
pub type __clockid_t = c_int;
pub type __timer_t = *mut std::ffi::c_void;
pub type __ssize_t = c_long;
pub type __syscall_slong_t = c_long;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type size_t = c_ulong;
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

pub type __cpu_mask = c_ulong;

#[repr(C)]
pub struct cpu_set_t {
    pub __bits: [__cpu_mask; 16],
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

pub type pthread_t = c_ulong;

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

pub type pthread_mutexattr_t = [c_char; 4];
pub type pthread_condattr_t = [c_char; 4];
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

pub type pthread_rwlockattr_t = [c_char; 8];
pub type pthread_spinlock_t = c_int;
pub type pthread_barrier_t = [c_char; 32];
pub type pthread_barrierattr_t = [c_char; 4];
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
    pub __routine: extern "C" fn(*mut std::ffi::c_void),
    pub __arg: *mut std::ffi::c_void,
    pub __canceltype: c_int,
    pub __prev: *mut _pthread_cleanup_buffer,
}

pub const PTHREAD_CANCEL_ENABLE: c_int = 0;
pub const PTHREAD_CANCEL_DISABLE: c_int = 1;

pub const PTHREAD_CANCEL_DEFERRED: c_int = 0;
pub const PTHREAD_CANCEL_ASYNCHRONOUS: c_int = 1;

#[repr(C)]
pub struct __cancel_jmp_buf_tag {
    pub __cancel_jmp_buf: __jmp_buf,
    pub __mask_was_saved: c_int,
}

#[repr(C)]
pub struct __pthread_unwind_buf_t {
    pub __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
    pub __pad: [*mut std::ffi::c_void; 4],
}

#[repr(C)]
pub struct __pthread_cleanup_frame {
    pub __cancel_routine: extern "C" fn(*mut std::ffi::c_void),
    pub __cancel_arg: *mut std::ffi::c_void,
    pub __do_it: c_int,
    pub __cancel_type: c_int,
}

pub type __gnuc_va_list = std::ffi::VaList;

#[repr(C)]
pub struct __mbstate_t {
    pub __count: c_int,
    pub __value: __mbstate_t_value,
}

#[repr(C)]
pub struct _G_fpos_t {
    pub __pos: __off_t,
    pub __state: __mbstate_t,
}

#[repr(C)]
pub struct _G_fpos64_t {
    pub __pos: __off64_t,
    pub __state: __mbstate_t,
}

pub type FILE = _IO_FILE;

#[repr(C)]
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
    pub _vtable_offset: c_char,
    pub _shortbuf: [c_char; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut std::ffi::c_void,
    pub __pad5: size_t,
    pub _mode: c_int,
    pub _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<size_t>()],
}

pub type cookie_read_function_t = extern "C" fn(*mut std::ffi::c_void, *mut c_char, size_t) -> __ssize_t;
pub type cookie_write_function_t = extern "C" fn(*mut std::ffi::c_void, *const c_char, size_t) -> __ssize_t;
pub type cookie_seek_function_t = extern "C" fn(*mut std::ffi::c_void, *mut __off64_t, c_int) -> c_int;
pub type cookie_close_function_t = extern "C" fn(*mut std::ffi::c_void) -> c_int;

#[repr(C)]
pub struct _IO_cookie_io_functions_t {
    pub read: cookie_read_function_t,
    pub write: cookie_write_function_t,
    pub seek: cookie_seek_function_t,
    pub close: cookie_close_function_t,
}

pub type fpos_t = _G_fpos_t;
pub type fpos64_t = _G_fpos64_t;

extern "C" {
    pub static stdin: *mut FILE;
    pub static stdout: *mut FILE;
    pub static stderr: *mut FILE;
}

pub type _Float32 = f32;
pub type _Float64 = f64;
pub type _Float32x = f64;
pub type _Float64x = f64;

#[inline]
pub fn __uint64_identity(__x: u64) -> u64 {
    __x
}
