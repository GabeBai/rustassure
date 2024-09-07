extern crate libc;

use libc::{c_char, c_uchar, c_ushort, c_uint, c_ulong, c_int, c_long, c_ulonglong, c_void, size_t};

extern "C" {
    static mut program_invocation_name: *mut c_char;
    static mut program_invocation_short_name: *mut c_char;

    type __u_char = c_uchar;
    type __u_short = c_ushort;
    type __u_int = c_uint;
    type __u_long = c_ulong;
    type __int8_t = c_int;
    type __uint8_t = c_uchar;
    type __int16_t = c_int;
    type __uint16_t = c_ushort;
    type __int32_t = c_int;
    type __uint32_t = c_uint;
    type __int64_t = c_long;
    type __uint64_t = c_ulong;
    type __quad_t = c_long;
    type __u_quad_t = c_ulong;
    type __dev_t = c_ulong;
    type __uid_t = c_uint;
    type __gid_t = c_uint;
    type __ino_t = c_ulong;
    type __ino64_t = c_ulong;
    type __mode_t = c_uint;
    type __nlink_t = c_ulong;
    type __off_t = c_long;
    type __off64_t = c_long;
    type __pid_t = c_int;
    type __fsid_t = [c_int; 2];
    type __clock_t = c_long;
    type __id_t = c_uint;
    type __time_t = c_long;
    type __useconds_t = c_uint;
    type __suseconds_t = c_long;
    type __daddr_t = c_int;
    type __key_t = c_int;
    type __clockid_t = c_int;
    type __timer_t = *mut c_void;
    type __ssize_t = c_long;
    type __syscall_slong_t = c_long;
    type __loff_t = c_long;
    type __caddr_t = *mut c_char;
    type time_t = c_long;

    #[repr(C)]
    struct timespec {
        tv_sec: __time_t,
        tv_nsec: __syscall_slong_t,
    }

    type pid_t = __pid_t;

    #[repr(C)]
    struct sched_param {
        sched_priority: c_int,
    }

    type __cpu_mask = c_ulong;
    
    #[repr(C)]
    struct cpu_set_t {
        __bits: [__cpu_mask; 16],
    }

    #[repr(C)]
    struct timeval {
        tv_sec: __time_t,
        tv_usec: __suseconds_t,
    }

    #[repr(C)]
    struct timex {
        modes: c_uint,
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
    }

    type clock_t = __clock_t;

    #[repr(C)]
    struct tm {
        tm_sec: c_int,
        tm_min: c_int,
        tm_hour: c_int,
        tm_mday: c_int,
        tm_mon: c_int,
        tm_year: c_int,
        tm_wday: c_int,
        tm_yday: c_int,
        tm_isdst: c_int,
        tm_gmtoff: c_long,
        tm_zone: *const c_char,
    }

    type clockid_t = __clockid_t;
    type timer_t = __timer_t;

    #[repr(C)]
    struct itimerspec {
        it_interval: timespec,
        it_value: timespec,
    }

    struct sigevent;

    #[repr(C)]
    struct __locale_struct {
        __locales: [*mut __locale_data; 13],
        __ctype_b: *const c_ushort,
        __ctype_tolower: *const c_int,
        __ctype_toupper: *const c_int,
        __names: [*const c_char; 13],
    }

    type __locale_t = *mut __locale_struct;
    type locale_t = __locale_t;

    static mut __tzname: [*mut c_char; 2];
    static mut __daylight: c_int;
    static mut __timezone: c_long;
    static mut tzname: [*mut c_char; 2];
    static mut daylight: c_int;
    static mut timezone: c_long;
    static mut getdate_err: c_int;

    #[repr(C)]
    union __atomic_wide_counter {
        __value64: c_ulonglong,
        __value32: __atomic_wide_counter__value32,
    }

    #[repr(C)]
    struct __pthread_internal_list {
        __prev: *mut __pthread_internal_list,
        __next: *mut __pthread_internal_list,
    }

    #[repr(C)]
    struct __pthread_mutex_s {
        __lock: c_int,
        __count: c_uint,
        __owner: c_int,
        __nusers: c_uint,
        __kind: c_int,
        __spins: c_short,
        __elision: c_short,
        __list: __pthread_list_t,
    }

    #[repr(C)]
    struct __pthread_rwlock_arch_t {
        __readers: c_uint,
        __writers: c_uint,
        __wrphase_futex: c_uint,
        __writers_futex: c_uint,
        __pad3: c_uint,
        __pad4: c_uint,
        __cur_writer: c_int,
        __shared: c_int,
        __rwelision: c_char,
        __pad1: [c_uchar; 7],
        __pad2: c_ulong,
        __flags: c_uint,
    }

    #[repr(C)]
    struct __pthread_cond_s {
        __wseq: __atomic_wide_counter,
        __g1_start: __atomic_wide_counter,
        __g_refs: [c_uint; 2],
        __g_size: [c_uint; 2],
        __g1_orig_size: c_uint,
        __wrefs: c_uint,
        __g_signals: [c_uint; 2],
    }

    type pthread_t = c_ulong;

    #[repr(C)]
    union pthread_mutexattr_t {
        __size: [c_char; 4],
        __align: c_int,
    }

    #[repr(C)]
    union pthread_condattr_t {
        __size: [c_char; 4],
        __align: c_int,
    }

    type pthread_key_t = c_uint;
    type pthread_once_t = c_int;

    #[repr(C)]
    union pthread_attr_t {
        __size: [c_char; 56],
        __align: c_long,
    }

    #[repr(C)]
    union pthread_mutex_t {
        __data: __pthread_mutex_s,
        __size: [c_char; 40],
        __align: c_long,
    }

    #[repr(C)]
    union pthread_cond_t {
        __data: __pthread_cond_s,
        __size: [c_char; 48],
        __align: c_longlong,
    }

    #[repr(C)]
    union pthread_rwlock_t {
        __data: __pthread_rwlock_arch_t,
        __size: [c_char; 56],
        __align: c_long,
    }

    #[repr(C)]
    union pthread_rwlockattr_t {
        __size: [c_char; 8],
        __align: c_long,
    }

    type pthread_spinlock_t = c_int;

    #[repr(C)]
    union pthread_barrier_t {
        __size: [c_char; 32],
        __align: c_long,
    }

    #[repr(C)]
    union pthread_barrierattr_t {
        __size: [c_char; 4],
        __align: c_int,
    }

    type __jmp_buf = [c_long; 8];

    #[repr(C)]
    struct __sigset_t {
        __val: [c_ulong; 16],
    }

    #[repr(C)]
    struct __jmp_buf_tag {
        __jmpbuf: __jmp_buf,
        __mask_was_saved: c_int,
        __saved_mask: __sigset_t,
    }

    enum PTHREAD_CREATE {
        PTHREAD_CREATE_JOINABLE,
        PTHREAD_CREATE_DETACHED,
    }

    enum PTHREAD_MUTEX {
        PTHREAD_MUTEX_TIMED_NP,
        PTHREAD_MUTEX_RECURSIVE_NP,
        PTHREAD_MUTEX_ERRORCHECK_NP,
        PTHREAD_MUTEX_ADAPTIVE_NP,
        PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
        PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
        PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
        PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL,
        PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP,
    }

    enum PTHREAD_MUTEX {
        PTHREAD_MUTEX_STALLED,
        PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
        PTHREAD_MUTEX_ROBUST,
        PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST,
    }

    enum PTHREAD_PRIO {
        PTHREAD_PRIO_NONE,
        PTHREAD_PRIO_INHERIT,
        PTHREAD_PRIO_PROTECT,
    }

    enum PTHREAD_RWLOCK {
        PTHREAD_RWLOCK_PREFER_READER_NP,
        PTHREAD_RWLOCK_PREFER_WRITER_NP,
        PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
        PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP,
    }

    enum PTHREAD {
        PTHREAD_INHERIT_SCHED,
        PTHREAD_EXPLICIT_SCHED,
    }

    enum PTHREAD {
        PTHREAD_SCOPE_SYSTEM,
        PTHREAD_SCOPE_PROCESS,
    }

    enum PTHREAD {
        PTHREAD_PROCESS_PRIVATE,
        PTHREAD_PROCESS_SHARED,
    }

    #[repr(C)]
    struct _pthread_cleanup_buffer {
        __routine: extern fn(*mut c_void),
        __arg: *mut c_void,
        __canceltype: c_int,
        __prev: *mut _pthread_cleanup_buffer,
    }

    enum PTHREAD_CANCEL {
        PTHREAD_CANCEL_ENABLE,
        PTHREAD_CANCEL_DISABLE,
    }

    enum PTHREAD_CANCEL {
        PTHREAD_CANCEL_DEFERRED,
        PTHREAD_CANCEL_ASYNCHRONOUS,
    }

    #[repr(C)]
    struct __cancel_jmp_buf_tag {
        __cancel_jmp_buf: __jmp_buf,
        __mask_was_saved: c_int,
    }

    #[repr(C)]
    struct __pthread_unwind_buf_t {
        __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
        __pad: [*mut c_void; 4],
    }

    #[repr(C)]
    struct __pthread_cleanup_frame {
        __cancel_routine: extern fn(*mut c_void),
        __cancel_arg: *mut c_void,
        __do_it: c_int,
        __cancel_type: c_int,
    }

    type __gnuc_va_list = __builtin_va_list;

    #[repr(C)]
    struct __mbstate_t {
        __count: c_int,
        __value: __mbstate_t__value,
    }

    #[repr(C)]
    struct _G_fpos_t {
        __pos: __off_t,
        __state: __mbstate_t,
    }

    #[repr(C)]
    struct _G_fpos64_t {
        __pos: __off64_t,
        __state: __mbstate_t,
    }

    type _IO_FILE = libc::_IO_FILE;
    type FILE = *mut _IO_FILE;

    type cookie_read_function_t = extern fn(*mut c_void, *mut c_char, size_t) -> __ssize_t;
    type cookie_write_function_t = extern fn(*mut c_void, *const c_char, size_t) -> __ssize_t;
    type cookie_seek_function_t = extern fn(*mut c_void, *mut __off64_t, c_int) -> c_int;
    type cookie_close_function_t = extern fn(*mut c_void) -> c_int;

    #[repr(C)]
    struct _IO_cookie_io_functions_t {
        read: cookie_read_function_t,
        write: cookie_write_function_t,
        seek: cookie_seek_function_t,
        close: cookie_close_function_t,
    }

    type fpos_t = _G_fpos_t;
    type fpos64_t = _G_fpos64_t;

    static mut stdin: FILE;
    static mut stdout: FILE;
    static mut stderr: FILE;

    type _Float32 = f32;
    type _Float64 = f64;
    type _Float32x = f64;
    type _Float64x = f64;

    fn __bswap_16(__bsx: c_ushort) -> c_ushort;
}
