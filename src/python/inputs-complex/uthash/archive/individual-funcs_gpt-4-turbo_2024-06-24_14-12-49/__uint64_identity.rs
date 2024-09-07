extern crate libc;

extern "C" {
    pub static mut program_invocation_name: *mut libc::c_char;
    pub static mut program_invocation_short_name: *mut libc::c_char;
}

pub type __u_char = libc::c_uchar;
pub type __u_short = libc::c_ushort;
pub type __u_int = libc::c_uint;
pub type __u_long = libc::c_ulong;
pub type __int8_t = libc::int8_t;
pub type __uint8_t = libc::uint8_t;
pub type __int16_t = libc::int16_t;
pub type __uint16_t = libc::uint16_t;
pub type __int32_t = libc::int32_t;
pub type __uint32_t = libc::uint32_t;
pub type __int64_t = libc::int64_t;
pub type __uint64_t = libc::uint64_t;
pub type __quad_t = libc::c_long;
pub type __u_quad_t = libc::c_ulong;
pub type __dev_t = libc::dev_t;
pub type __uid_t = libc::uid_t;
pub type __gid_t = libc::gid_t;
pub type __ino_t = libc::ino_t;
pub type __ino64_t = libc::ino64_t;
pub type __mode_t = libc::mode_t;
pub type __nlink_t = libc::nlink_t;
pub type __off_t = libc::off_t;
pub type __off64_t = libc::off64_t;
pub type __pid_t = libc::pid_t;

#[repr(C)]
pub struct __fsid_t {
    pub __val: [libc::c_int; 2],
}

pub type __clock_t = libc::clock_t;
pub type __id_t = libc::id_t;
pub type __time_t = libc::time_t;
pub type __useconds_t = libc::useconds_t;
pub type __suseconds_t = libc::suseconds_t;
pub type __daddr_t = libc::c_int;
pub type __key_t = libc::key_t;
pub type __clockid_t = libc::clockid_t;
pub type __timer_t = *mut libc::c_void;
pub type __ssize_t = libc::ssize_t;
pub type __syscall_slong_t = libc::c_long;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut libc::c_char;
pub type size_t = libc::size_t;
pub type time_t = __time_t;

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

pub type pid_t = __pid_t;

#[repr(C)]
pub struct sched_param {
    pub sched_priority: libc::c_int,
}

pub type __cpu_mask = libc::c_ulong;

#[repr(C)]
pub struct cpu_set_t {
    pub __bits: [__cpu_mask; 1024 / (8 * std::mem::size_of::<__cpu_mask>())],
}

#[repr(C)]
pub struct timeval {
    pub tv_sec: __time_t,
    pub tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timex {
    pub modes: libc::c_uint,
    pub offset: __syscall_slong_t,
    pub freq: __syscall_slong_t,
    pub maxerror: __syscall_slong_t,
    pub esterror: __syscall_slong_t,
    pub status: libc::c_int,
    pub constant: __syscall_slong_t,
    pub precision: __syscall_slong_t,
    pub tolerance: __syscall_slong_t,
    pub time: timeval,
    pub tick: __syscall_slong_t,
    pub ppsfreq: __syscall_slong_t,
    pub jitter: __syscall_slong_t,
    pub shift: libc::c_int,
    pub stabil: __syscall_slong_t,
    pub jitcnt: __syscall_slong_t,
    pub calcnt: __syscall_slong_t,
    pub errcnt: __syscall_slong_t,
    pub stbcnt: __syscall_slong_t,
    pub tai: libc::c_int,
}

pub type clock_t = __clock_t;

#[repr(C)]
pub struct tm {
    pub tm_sec: libc::c_int,
    pub tm_min: libc::c_int,
    pub tm_hour: libc::c_int,
    pub tm_mday: libc::c_int,
    pub tm_mon: libc::c_int,
    pub tm_year: libc::c_int,
    pub tm_wday: libc::c_int,
    pub tm_yday: libc::c_int,
    pub tm_isdst: libc::c_int,
    pub tm_gmtoff: libc::c_long,
    pub tm_zone: *const libc::c_char,
}

pub type clockid_t = __clockid_t;
pub type timer_t = __timer_t;

#[repr(C)]
pub struct itimerspec {
    pub it_interval: timespec,
    pub it_value: timespec,
}

pub struct sigevent; // Opaque type, definition needed from system headers

#[repr(C)]
pub struct __locale_struct {
    pub __locales: [*mut __locale_data; 13],
    pub __ctype_b: *const libc::c_ushort,
    pub __ctype_tolower: *const libc::c_int,
    pub __ctype_toupper: *const libc::c_int,
    pub __names: [*const libc::c_char; 13],
}

pub type __locale_t = *mut __locale_struct;
pub type locale_t = __locale_t;

extern "C" {
    pub static mut __tzname: [*mut libc::c_char; 2];
    pub static mut __daylight: libc::c_int;
    pub static mut __timezone: libc::c_long;
    pub static mut tzname: [*mut libc::c_char; 2];
    pub static mut daylight: libc::c_int;
    pub static mut timezone: libc::c_long;
    pub static mut getdate_err: libc::c_int;
}

#[repr(C)]
pub union __atomic_wide_counter {
    pub __value64: libc::c_ulonglong,
    __value32: __AtomicWideCounterValue32,
}

#[repr(C)]
pub struct __AtomicWideCounterValue32 {
    pub __low: libc::c_uint,
    pub __high: libc::c_uint,
}

#[repr(C)]
pub struct __pthread_internal_list {
    pub __prev: *mut __pthread_internal_list,
    pub __next: *mut __pthread_internal_list,
}

#[repr(C)]
pub struct __pthread_mutex_s {
    pub __lock: libc::c_int,
    pub __count: libc::c_uint,
    pub __owner: libc::c_int,
    pub __nusers: libc::c_uint,
    pub __kind: libc::c_int,
    pub __spins: libc::c_short,
    pub __elision: libc::c_short,
    pub __list: __pthread_list_t,
}

#[repr(C)]
pub struct __pthread_rwlock_arch_t {
    pub __readers: libc::c_uint,
    pub __writers: libc::c_uint,
    pub __wrphase_futex: libc::c_uint,
    pub __writers_futex: libc::c_uint,
    pub __pad3: libc::c_uint,
    pub __pad4: libc::c_uint,
    pub __cur_writer: libc::c_int,
    pub __shared: libc::c_int,
    pub __rwelision: libc::c_schar,
    pub __pad1: [libc::c_uchar; 7],
    pub __pad2: libc::c_ulong,
    pub __flags: libc::c_uint,
}

#[repr(C)]
pub struct __pthread_cond_s {
    pub __wseq: __atomic_wide_counter,
    pub __g1_start: __atomic_wide_counter,
    pub __g_refs: [libc::c_uint; 2],
    pub __g_size: [libc::c_uint; 2],
    pub __g1_orig_size: libc::c_uint,
    pub __wrefs: libc::c_uint,
    pub __g_signals: [libc::c_uint; 2],
}

pub type pthread_t = libc::pthread_t;

#[repr(C)]
pub union pthread_mutexattr_t {
    __size: [libc::c_char; 4],
    __align: libc::c_int,
}

#[repr(C)]
pub union pthread_condattr_t {
    __size: [libc::c_char; 4],
    __align: libc::c_int,
}

pub type pthread_key_t = libc::c_uint;
pub type pthread_once_t = libc::c_int;

#[repr(C)]
pub union pthread_attr_t {
    __size: [libc::c_char; 56],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_mutex_t {
    __data: __pthread_mutex_s,
    __size: [libc::c_char; 40],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_cond_t {
    __data: __pthread_cond_s,
    __size: [libc::c_char; 48],
    __align: libc::c_longlong,
}

#[repr(C)]
pub union pthread_rwlock_t {
    __data: __pthread_rwlock_arch_t,
    __size: [libc::c_char; 56],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_rwlockattr_t {
    __size: [libc::c_char; 8],
    __align: libc::c_long,
}

pub type pthread_spinlock_t = libc::c_int;

#[repr(C)]
pub union pthread_barrier_t {
    __size: [libc::c_char; 32],
    __align: libc::c_long,
}

#[repr(C)]
pub union pthread_barrierattr_t {
    __size: [libc::c_char; 4],
    __align: libc::c_int,
}

pub type __jmp_buf = [libc::c_long; 8];

#[repr(C)]
pub struct __sigset_t {
    pub __val: [libc::c_ulong; 1024 / (8 * std::mem::size_of::<libc::c_ulong>())],
}

#[repr(C)]
pub struct __jmp_buf_tag {
    pub __jmpbuf: __jmp_buf,
    pub __mask_was_saved: libc::c_int,
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
    STALLED_NP = STALLED,
    ROBUST_NP = ROBUST,
}

pub enum PTHREAD_PRIO {
    NONE = 0,
    INHERIT = 1,
    PROTECT = 2,
}

pub enum PTHREAD_RWLOCK_PREF {
    PREFER_READER_NP = 0,
    PREFER_WRITER_NP = 1,
    PREFER_WRITER_NONRECURSIVE_NP = 2,
    DEFAULT_NP = PREFER_READER_NP,
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
    pub __routine: Option<extern "C" fn(*mut libc::c_void)>,
    pub __arg: *mut libc::c_void,
    pub __canceltype: libc::c_int,
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
    pub __mask_was_saved: libc::c_int,
}

#[repr(C)]
pub struct __pthread_unwind_buf_t {
    pub __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
    pub __pad: [*mut libc::c_void; 4],
}

#[repr(C)]
pub struct __pthread_cleanup_frame {
    pub __cancel_routine: Option<extern "C" fn(*mut libc::c_void)>,
    pub __cancel_arg: *mut libc::c_void,
    pub __do_it: libc::c_int,
    pub __cancel_type: libc::c_int,
}

pub type __gnuc_va_list = libc::va_list;

#[repr(C)]
pub struct __mbstate_t {
    pub __count: libc::c_int,
    pub __value: __mbstate_t__value,
}

#[repr(C)]
pub union __mbstate_t__value {
    pub __wch: libc::c_uint,
    pub __wchb: [libc::c_char; 4],
}

#[repr(C)]
pub struct __fpos_t {
    pub __pos: __off_t,
    pub __state: __mbstate_t,
}

#[repr(C)]
pub struct __fpos64_t {
    pub __pos: __off64_t,
    pub __state: __mbstate_t,
}

pub struct _IO_FILE; // Opaque type, definition needed from system headers

pub type FILE = _IO_FILE;

pub type cookie_read_function_t = extern "C" fn(*mut libc::c_void, *mut libc::c_char, size_t) -> __ssize_t;
pub type cookie_write_function_t = extern "C" fn(*mut libc::c_void, *const libc::c_char, size_t) -> __ssize_t;
pub type cookie_seek_function_t = extern "C" fn(*mut libc::c_void, *mut __off64_t, libc::c_int) -> libc::c_int;
pub type cookie_close_function_t = extern "C" fn(*mut libc::c_void) -> libc::c_int;

#[repr(C)]
pub struct _IO_cookie_io_functions_t {
    pub read: Option<cookie_read_function_t>,
    pub write: Option<cookie_write_function_t>,
    pub seek: Option<cookie_seek_function_t>,
    pub close: Option<cookie_close_function_t>,
}

pub type fpos_t = __fpos_t;
pub type fpos64_t = __fpos64_t;

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}

pub type _Float32 = f32;
pub type _Float64 = f64;
pub type _Float32x = f64;
pub type _Float64x = f64;

pub struct obstack; // Opaque type, definition needed from system headers

pub fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}
