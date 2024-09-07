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
type __int_least8_t = __int8_t;
type __uint_least8_t = __uint8_t;
type __int_least16_t = __int16_t;
type __uint_least16_t = __uint16_t;
type __int_least32_t = __int32_t;
type __uint_least32_t = __uint32_t;
type __int_least64_t = __int64_t;
type __uint_least64_t = __uint64_t;
type __quad_t = i64;
type __u_quad_t = u64;
type __intmax_t = i64;
type __uintmax_t = u64;
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
type __fsid_t = libc::fsid_t;
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut libc::c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __blkcnt64_t = i64;
type __fsblkcnt_t = u64;
type __fsblkcnt64_t = u64;
type __fsfilcnt_t = u64;
type __fsfilcnt64_t = u64;
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
    __locales: [*mut libc::c_void; 13],
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
    __list: __pthread_internal_list,
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

type pthread_spinlock_t = libc::c_int;

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

enum {
    PTHREAD_CREATE_JOINABLE,
    PTHREAD_CREATE_DETACHED,
}

enum {
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

enum {
    PTHREAD_MUTEX_STALLED,
    PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
    PTHREAD_MUTEX_ROBUST,
    PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST,
}

enum {
    PTHREAD_PRIO_NONE,
    PTHREAD_PRIO_INHERIT,
    PTHREAD_PRIO_PROTECT,
}

enum {
    PTHREAD_RWLOCK_PREFER_READER_NP,
    PTHREAD_RWLOCK_PREFER_WRITER_NP,
    PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
    PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP,
}

enum {
    PTHREAD_INHERIT_SCHED,
    PTHREAD_EXPLICIT_SCHED,
}

enum {
    PTHREAD_SCOPE_SYSTEM,
    PTHREAD_SCOPE_PROCESS,
}

enum {
    PTHREAD_PROCESS_PRIVATE,
    PTHREAD_PROCESS_SHARED,
}

#[repr(C)]
struct _pthread_cleanup_buffer {
    __routine: Option<unsafe extern "C" fn(*mut libc::c_void)>,
    __arg: *mut libc::c_void,
    __canceltype: i32,
    __prev: *mut _pthread_cleanup_buffer,
}

enum {
    PTHREAD_CANCEL_ENABLE,
    PTHREAD_CANCEL_DISABLE,
}

enum {
    PTHREAD_CANCEL_DEFERRED,
    PTHREAD_CANCEL_ASYNCHRONOUS,
}

#[repr(C)]
struct __cancel_jmp_buf_tag {
    __cancel_jmp_buf: __jmp_buf,
    __mask_was_saved: i32,
}

#[repr(C)]
struct __pthread_unwind_buf_t {
    __cancel_jmp_buf: [__cancel_jmp_buf_tag; 1],
    __pad: [*mut libc::c_void; 4],
}

#[repr(C)]
struct __pthread_cleanup_frame {
    __cancel_routine: Option<unsafe extern "C" fn(*mut libc::c_void)>,
    __cancel_arg: *mut libc::c_void,
    __do_it: i32,
    __cancel_type: i32,
}

extern "C" {
    fn pthread_rwlock_init(__rwlock: *mut pthread_rwlock_t, __attr: *const pthread_rwlockattr_t) -> i32;
}

type wchar_t = i32;
type _Float32 = f32;
type _Float64 = f64;
type _Float32x = f64;
type _Float64x = f64;

#[repr(C)]
struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct lldiv_t {
    quot: i64,
    rem: i64,
}

type int32_t = i32;

type __fd_mask = i64;

#[repr(C)]
struct fd_set {
    fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

#[repr(C)]
struct random_data {
    fptr: *mut i32,
    rptr: *mut i32,
    state: *mut i32,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut i32,
}

#[repr(C)]
struct drand48_data {
    __x: [u16; 3],
    __old_x: [u16; 3],
    __c: u16,
    __init: u16,
    __a: u64,
}

extern "C" {
    fn malloc(__size: size_t) -> *mut libc::c_void;
    fn free(__ptr: *mut libc::c_void);
}

type __compar_fn_t = Option<unsafe extern "C" fn(*const libc::c_void, *const libc::c_void) -> i32>;
type __compar_d_fn_t = Option<unsafe extern "C" fn(*const libc::c_void, *const libc::c_void, *mut libc::c_void) -> i32>;

struct foo_cache;

extern "C" {
    fn foo_cache_create(dst: *mut *mut foo_cache, capacity: size_t, free_cb: Option<unsafe extern "C" fn(*mut libc::c_void)>) -> i32;
}

type ptrdiff_t = isize;
type uint32_t = u32;

#[repr(C)]
struct UT_hash_bucket {
    hh_head: *mut UT_hash_handle,
    count: u32,
    expand_mult: u32,
}

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut libc::c_void,
    next: *mut libc::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const libc::c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
struct foo_cache_entry {
    key: *mut libc::c_char,
    data: *mut libc::c_void,
    hh: UT_hash_handle,
}

#[repr(C)]
struct foo_cache {
    max_entries: size_t,
    cache_lock: pthread_rwlock_t,
    entries: *mut foo_cache_entry,
    free_cb: Option<unsafe extern "C" fn(*mut libc::c_void)>,
}

impl foo_cache {
    fn new(capacity: size_t, free_cb: Option<unsafe extern "C" fn(*mut libc::c_void)>) -> Result<Self, i32> {
        let mut cache: *mut Self = std::ptr::null_mut();
        let result = unsafe { foo_cache_create(&mut cache, capacity, free_cb) };
        if result != 0 {
            Err(result)
        } else {
            Ok(unsafe { *Box::from_raw(cache) })
        }
    }
}
