extern "C" {
    static mut program_invocation_name: *mut libc::c_char;
    static mut program_invocation_short_name: *mut libc::c_char;
}

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
type __ino64_t = u64;
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut libc::c_void;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = __off64_t;
type __caddr_t = *mut libc::c_char;
type size_t = usize;
type time_t = __time_t;

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type pid_t = __pid_t;

#[repr(C)]
struct sched_param {
    sched_priority: i32,
}

type __cpu_mask = u64;

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
    modes: u32,
    offset: __syscall_slong_t,
    freq: __syscall_slong_t,
    maxerror: __syscall_slong_t,
    esterror: __syscall_slong_t,
    status: i32,
    constant: __syscall_slong_t,
    precision: __syscall_slong_t,
    tolerance: __syscall_slong_t,
    time: timeval,
    tick: __syscall_slong_t,
    ppsfreq: __syscall_slong_t,
    jitter: __syscall_slong_t,
    shift: i32,
    stabil: __syscall_slong_t,
    jitcnt: __syscall_slong_t,
    calcnt: __syscall_slong_t,
    errcnt: __syscall_slong_t,
    stbcnt: __syscall_slong_t,
    tai: i32,
}

type clock_t = __clock_t;

#[repr(C)]
struct tm {
    tm_sec: i32,
    tm_min: i32,
    tm_hour: i32,
    tm_mday: i32,
    tm_mon: i32,
    tm_year: i32,
    tm_wday: i32,
    tm_yday: i32,
    tm_isdst: i32,
    tm_gmtoff: i64,
    tm_zone: *const libc::c_char,
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
    __ctype_b: *const u16,
    __ctype_tolower: *const i32,
    __ctype_toupper: *const i32,
    __names: [*const libc::c_char; 13],
}

type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;

extern "C" {
    static mut __tzname: [*mut libc::c_char; 2];
    static mut __daylight: i32;
    static mut __timezone: i64;
    static mut tzname: [*mut libc::c_char; 2];
    static mut daylight: i32;
    static mut timezone: i64;
    static mut getdate_err: i32;
}

#[repr(C)]
union __atomic_wide_counter {
    __value64: u64,
    __value32: struct {
        __low: u32,
        __high: u32,
    },
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

type pthread_t = u64;

#[repr(C)]
union pthread_mutexattr_t {
    __size: [libc::c_char; 4],
    __align: i32,
}

#[repr(C)]
union pthread_condattr_t {
    __size: [libc::c_char; 4],
    __align: i32,
}

type pthread_key_t = u32;
type pthread_once_t = i32;

#[repr(C)]
union pthread_attr_t {
    __size: [libc::c_char; 56],
    __align: i64,
}

#[repr(C)]
union pthread_mutex_t {
    __data: __pthread_mutex_s,
    __size: [libc::c_char; 40],
    __align: i64,
}

#[repr(C)]
union pthread_cond_t {
    __data: __pthread_cond_s,
    __size: [libc::c_char; 48],
    __align: i64,
}

#[repr(C)]
union pthread_rwlock_t {
    __data: __pthread_rwlock_arch_t,
    __size: [libc::c_char; 56],
    __align: i64,
}

#[repr(C)]
union pthread_rwlockattr_t {
    __size: [libc::c_char; 8],
    __align: i64,
}

type pthread_spinlock_t = i32;

#[repr(C)]
union pthread_barrier_t {
    __size: [libc::c_char; 32],
    __align: i64,
}

#[repr(C)]
union pthread_barrierattr_t {
    __size: [libc::c_char; 4],
    __align: i32,
}

type __jmp_buf = [i64; 8];

#[repr(C)]
struct __sigset_t {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

#[repr(C)]
struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: i32,
    __saved_mask: __sigset_t,
}

#[repr(C)]
struct _pthread_cleanup_buffer {
    __routine: Option<unsafe extern "C" fn(*mut libc::c_void)>,
    __arg: *mut libc::c_void,
    __canceltype: i32,
    __prev: *mut _pthread_cleanup_buffer,
}

#[repr(C)]
struct __cancel_jmp_buf_tag {
    __cancel_jmp_buf: __jmp_buf,
    __mask_was_saved: i32,
}

#[repr(C)]
struct __pthread_cleanup_frame {
    __cancel_routine: Option<unsafe extern "C" fn(*mut libc::c_void)>,
    __cancel_arg: *mut libc::c_void,
    __do_it: i32,
    __cancel_type: i32,
}

type __gnuc_va_list = *mut libc::c_void;

#[repr(C)]
struct __mbstate_t {
    __count: i32,
    __value: union {
        __wch: u32,
        __wchb: [libc::c_char; 4],
    },
}

#[repr(C)]
struct __fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}

#[repr(C)]
struct __fpos64_t {
    __pos: __off64_t,
    __state: __mbstate_t,
}

struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;

type _IO_lock_t = *mut libc::c_void;

#[repr(C)]
struct _IO_FILE {
    _flags: i32,
    _IO_read_ptr: *mut libc::c_char,
    _IO_read_end: *mut libc::c_char,
    _IO_read_base: *mut libc::c_char,
    _IO_write_base: *mut libc::c_char,
    _IO_write_ptr: *mut libc::c_char,
    _IO_write_end: *mut libc::c_char,
    _IO_buf_base: *mut libc::c_char,
    _IO_buf_end: *mut libc::c_char,
    _IO_save_base: *mut libc::c_char,
    _IO_backup_base: *mut libc::c_char,
    _IO_save_end: *mut libc::c_char,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [libc::c_char; 1],
    _lock: _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut libc::c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [libc::c_char; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut libc::c_void>() - std::mem::size_of::<usize>()],
}

type cookie_read_function_t = unsafe extern "C" fn(*mut libc::c_void, *mut libc::c_char, size_t) -> __ssize_t;
type cookie_write_function_t = unsafe extern "C" fn(*mut libc::c_void, *const libc::c_char, size_t) -> __ssize_t;
type cookie_seek_function_t = unsafe extern "C" fn(*mut libc::c_void, *mut __off64_t, i32) -> i32;
type cookie_close_function_t = unsafe extern "C" fn(*mut libc::c_void) -> i32;

#[repr(C)]
struct _IO_cookie_io_functions_t {
    read: Option<cookie_read_function_t>,
    write: Option<cookie_write_function_t>,
    seek: Option<cookie_seek_function_t>,
    close: Option<cookie_close_function_t>,
}

type fpos_t = __fpos_t;
type fpos64_t = __fpos64_t;

extern "C" {
    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;
}

type _Float32 = f32;
type _Float64 = f64;
type _Float32x = f64;
type _Float64x = f64;

struct obstack;

#[inline(always)]
fn __bswap_64(__bsx: u64) -> u64 {
    ((__bsx & 0xff00000000000000) >> 56)
        | ((__bsx & 0x00ff000000000000) >> 40)
        | ((__bsx & 0x0000ff0000000000) >> 24)
        | ((__bsx & 0x000000ff00000000) >> 8)
        | ((__bsx & 0x00000000ff000000) << 8)
        | ((__bsx & 0x0000000000ff0000) << 24)
        | ((__bsx & 0x000000000000ff00) << 40)
        | ((__bsx & 0x00000000000000ff) << 56)
}
