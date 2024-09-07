extern crate libc;

use libc::{c_char, c_uchar, c_ushort, c_uint, c_ulong, c_schar, c_ushort, c_int, c_ulong, c_long, c_uint, c_mode_t, c_nlink_t, c_off_t, c_pid_t, c_fsid_t, c_clock_t, c_id_t, c_time_t, c_suseconds_t, c_daddr_t, c_key_t, c_clockid_t, c_timer_t, c_ssize_t, c_longlong, c_void, size_t, timeval, timespec};

extern "C" {
    static mut program_invocation_name: *mut c_char;
    static mut program_invocation_short_name: *mut c_char;

    type __u_char = c_uchar;
    type __u_short = c_ushort;
    type __u_int = c_uint;
    type __u_long = c_ulong;
    type __int8_t = c_schar;
    type __uint8_t = c_uchar;
    type __int16_t = c_short;
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
    type __mode_t = c_mode_t;
    type __nlink_t = c_nlink_t;
    type __off_t = c_off_t;
    type __off64_t = c_off_t;
    type __pid_t = c_pid_t;
    type __fsid_t = c_fsid_t;
    type __clock_t = c_clock_t;
    type __id_t = c_id_t;
    type __time_t = c_time_t;
    type __useconds_t = c_uint;
    type __suseconds_t = c_suseconds_t;
    type __daddr_t = c_daddr_t;
    type __key_t = c_key_t;
    type __clockid_t = c_clockid_t;
    type __timer_t = c_timer_t;
    type __ssize_t = c_ssize_t;
    type __syscall_slong_t = c_long;
    type __loff_t = c_off64_t;
    type __caddr_t = *mut c_char;
    type size_t = size_t;
    type time_t = c_time_t;

    #[repr(C)]
    struct timespec {
        tv_sec: __time_t,
        tv_nsec: __syscall_slong_t,
    }

    type pid_t = c_pid_t;

    #[repr(C)]
    struct sched_param {
        sched_priority: c_int,
    }

    type __cpu_mask = c_ulong;

    #[repr(C)]
    struct cpu_set_t {
        __bits: [__cpu_mask; 1024 / (8 * std::mem::size_of::<__cpu_mask>())],
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

    type clock_t = c_clock_t;

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

    type clockid_t = c_clockid_t;
    type timer_t = c_timer_t;

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
        __value32: {
            __low: c_uint,
            __high: c_uint,
        },
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
        __rwelision: c_schar,
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

    type pthread_attr_t = pthread_attr_t;

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
        __val: [c_ulong; (1024 / (8 * std::mem::size_of::<c_ulong>()) )],
    }

    #[repr(C)]
    struct __jmp_buf_tag {
        __jmpbuf: __jmp_buf,
        __mask_was_saved: c_int,
        __saved_mask: __sigset_t,
    }

    const PTHREAD_CREATE_JOINABLE: c_int = 0;
    const PTHREAD_CREATE_DETACHED: c_int = 1;

    const PTHREAD_MUTEX_TIMED_NP: c_int = 0;
    const PTHREAD_MUTEX_RECURSIVE_NP: c_int = 1;
    const PTHREAD_MUTEX_ERRORCHECK_NP: c_int = 2;
    const PTHREAD_MUTEX_ADAPTIVE_NP: c_int = 3;
    const PTHREAD_MUTEX_NORMAL: c_int = PTHREAD_MUTEX_TIMED_NP;
    const PTHREAD_MUTEX_RECURSIVE: c_int = PTHREAD_MUTEX_RECURSIVE_NP;
    const PTHREAD_MUTEX_ERRORCHECK: c_int = PTHREAD_MUTEX_ERRORCHECK_NP;
    const PTHREAD_MUTEX_DEFAULT: c_int = PTHREAD_MUTEX_NORMAL;
    const PTHREAD_MUTEX_FAST_NP: c_int = PTHREAD_MUTEX_TIMED_NP;

    const PTHREAD_MUTEX_STALLED: c_int = 0;
    const PTHREAD_MUTEX_STALLED_NP: c_int = PTHREAD_MUTEX_STALLED;
    const PTHREAD_MUTEX_ROBUST: c_int = 1;
    const PTHREAD_MUTEX_ROBUST_NP: c_int = PTHREAD_MUTEX_ROBUST;

    const PTHREAD_PRIO_NONE: c_int = 0;
    const PTHREAD_PRIO_INHERIT: c_int = 1;
    const PTHREAD_PRIO_PROTECT: c_int = 2;

    const PTHREAD_RWLOCK_PREFER_READER_NP: c_int = 0;
    const PTHREAD_RWLOCK_PREFER_WRITER_NP: c_int = 1;
    const PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP: c_int = 2;
    const PTHREAD_RWLOCK_DEFAULT_NP: c_int = PTHREAD_RWLOCK_PREFER_READER_NP;

    const PTHREAD_INHERIT_SCHED: c_int = 0;
    const PTHREAD_EXPLICIT_SCHED: c_int = 1;

    const PTHREAD_SCOPE_SYSTEM: c_int = 0;
    const PTHREAD_SCOPE_PROCESS: c_int = 1;

    const PTHREAD_PROCESS_PRIVATE: c_int = 0;
    const PTHREAD_PROCESS_SHARED: c_int = 1;

    #[repr(C)]
    struct _pthread_cleanup_buffer {
        __routine: extern fn(*mut c_void),
        __arg: *mut c_void,
        __canceltype: c_int,
        __prev: *mut _pthread_cleanup_buffer,
    }

    const PTHREAD_CANCEL_ENABLE: c_int = 0;
    const PTHREAD_CANCEL_DISABLE: c_int = 1;

    const PTHREAD_CANCEL_DEFERRED: c_int = 0;
    const PTHREAD_CANCEL_ASYNCHRONOUS: c_int = 1;

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
        __value: {
            __wch: c_uint,
            __wchb: [c_char; 4],
        },
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

    type FILE = _IO_FILE;

    extern {
        static mut stdin: *mut FILE;
        static mut stdout: *mut FILE;
        static mut stderr: *mut FILE;
    }

    type _Float32 = f32;
    type _Float64 = f64;
    type _Float32x = f64;
    type _Float64x = f64;

    #[inline]
    fn __bswap_64(__bsx: c_ulonglong) -> c_ulonglong;
}
