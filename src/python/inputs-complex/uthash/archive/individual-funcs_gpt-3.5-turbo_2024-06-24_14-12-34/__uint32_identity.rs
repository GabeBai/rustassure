extern crate libc;

use libc::{c_char, c_uchar, c_ushort, c_uint, c_ulong, c_schar, c_uchar, c_short, c_ushort, c_int, c_uint, c_long, c_ulong, c_longlong, c_ulonglong, c_quad_t, c_u_quad_t, c_dev_t, c_uid_t, c_gid_t, c_ino_t, c_ino64_t, c_mode_t, c_nlink_t, c_off_t, c_off64_t, c_pid_t, timeval, timespec, c_clock_t, c_id_t, c_time_t, c_useconds_t, c_suseconds_t, c_daddr_t, c_key_t, c_clockid_t, c_timer_t, c_ssize_t, c_syscall_slong_t, c_loff_t, c_caddr_t, size_t, time_t, pid_t, sched_param, cpu_set_t, timex, clock_t, tm, clockid_t, timer_t, itimerspec, sigevent, locale_t, pthread_t, pthread_mutexattr_t, pthread_condattr_t, pthread_key_t, pthread_once_t, pthread_attr_t, pthread_mutex_t, pthread_cond_t, pthread_rwlock_t, pthread_rwlockattr_t, pthread_spinlock_t, pthread_barrier_t, pthread_barrierattr_t, __jmp_buf, __sigset_t, pthread_attr_t, pthread_cleanup_buffer, pthread_canceltype, pthread_rwlock_np, pthread_prio, pthread_scope, pthread_process, pthread_cleanup_frame, va_list, mbstate_t, fpos_t, fpos64_t, FILE, cookie_io_functions_t, Float32, Float64, Float32x, Float64x, obstack};

extern "C" {
    static mut program_invocation_name: *mut c_char;
    static mut program_invocation_short_name: *mut c_char;
}

#[repr(C)]
pub struct timespec {
    tv_sec: time_t,
    tv_nsec: c_syscall_slong_t,
}

#[repr(C)]
pub struct sched_param {
    sched_priority: c_int,
}

#[repr(C)]
pub struct cpu_set_t {
    __bits: [__cpu_mask; 1024 / (8 * std::mem::size_of::<__cpu_mask>())],
}

#[repr(C)]
pub struct timeval {
    tv_sec: time_t,
    tv_usec: c_suseconds_t,
}

#[repr(C)]
pub struct timex {
    modes: c_uint,
    offset: c_syscall_slong_t,
    freq: c_syscall_slong_t,
    maxerror: c_syscall_slong_t,
    esterror: c_syscall_slong_t,
    status: c_int,
    constant: c_syscall_slong_t,
    precision: c_syscall_slong_t,
    tolerance: c_syscall_slong_t,
    time: timeval,
    tick: c_syscall_slong_t,
    ppsfreq: c_syscall_slong_t,
    jitter: c_syscall_slong_t,
    shift: c_int,
    stabil: c_syscall_slong_t,
    jitcnt: c_syscall_slong_t,
    calcnt: c_syscall_slong_t,
    errcnt: c_syscall_slong_t,
    stbcnt: c_syscall_slong_t,
    tai: c_int,
    _anon0: [c_int; 16],
}

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
    tm_gmtoff: c_long,
    tm_zone: *const c_char,
}

#[repr(C)]
pub struct itimerspec {
    it_interval: timespec,
    it_value: timespec,
}

#[repr(C)]
pub struct pthread_mutex_s {
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
pub struct pthread_rwlock_arch_t {
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
pub struct pthread_cond_s {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [c_uint; 2],
    __g_size: [c_uint; 2],
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [c_uint; 2],
}

#[repr(C)]
pub struct pthread_cleanup_buffer {
    __routine: Option<extern "C" fn(*mut libc::c_void)>,
    __arg: *mut libc::c_void,
    __canceltype: c_int,
    __prev: *mut pthread_cleanup_buffer,
}

#[repr(C)]
pub struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

#[repr(C)]
pub struct __pthread_cleanup_frame {
    __cancel_routine: Option<extern "C" fn(*mut libc::c_void)>,
    __cancel_arg: *mut libc::c_void,
    __do_it: c_int,
    __cancel_type: c_int,
}

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
pub struct _G_fpos_t {
    __pos: c_off_t,
    __state: mbstate_t,
}

#[repr(C)]
pub struct _G_fpos64_t {
    __pos: c_off64_t,
    __state: mbstate_t,
}

#[repr(C)]
pub struct _IO_FILE {
    _flags: c_int,
    _IO_read_ptr: *mut c_char,
    _IO_read_end: *mut c_char,
    _IO_read_base: *mut c_char,
    _IO_write_base: *mut c_char,
    _IO_write_ptr: *mut c_char,
    _IO_write_end: *mut c_char,
    _IO_buf_base: *mut c_char,
    _IO_buf_end: *mut c_char,
    _IO_save_base: *mut c_char,
    _IO_backup_base: *mut c_char,
    _IO_save_end: *mut c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: c_off_t,
    _cur_column: c_ushort,
    _vtable_offset: c_schar,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut libc::c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut libc::c_void>() - std::mem::size_of::<size_t>()],
}

#[repr(C)]
pub struct _IO_cookie_io_functions_t {
    read: Option<extern "C" fn(*mut libc::c_void, *mut c_char, size_t) -> ssize_t>,
    write: Option<extern "C" fn(*mut libc::c_void, *const c_char, size_t) -> ssize_t>,
    seek: Option<extern "C" fn(*mut libc::c_void, *mut c_off64_t, c_int) -> c_int>,
    close: Option<extern "C" fn(*mut libc::c_void) -> c_int>,
}

extern {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;
}

