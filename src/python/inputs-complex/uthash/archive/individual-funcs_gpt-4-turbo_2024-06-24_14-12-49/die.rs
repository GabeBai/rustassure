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
type __mode_t = u32;
type __nlink_t = u64;
type __off_t = i64;
type __off64_t = i64;
type __pid_t = i32;
type __fsid_t = (i32, i32);
type __clock_t = i64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut ();
type __blksize_t = i64;
type __blkcnt_t = i64;
type __fsblkcnt_t = u64;
type __fsfilcnt_t = u64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __loff_t = __off64_t;
type __caddr_t = *mut i8;
type __intptr_t = i64;
type __socklen_t = u32;
type mode_t = __mode_t;
type off_t = __off_t;
type ssize_t = __ssize_t;
type size_t = u64;
type int32_t = i32;
type __sigset_t = [u64; 16];
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}
type __fd_mask = i64;
struct fd_set {
    fds_bits: [__fd_mask; 16],
}
union __atomic_wide_counter {
    value64: u64,
    value32: (u32, u32),
}
struct __pthread_internal_list {
    prev: *mut __pthread_internal_list,
    next: *mut __pthread_internal_list,
}
struct __pthread_mutex_s {
    lock: i32,
    count: u32,
    owner: i32,
    nusers: u32,
    kind: i32,
    spins: i16,
    elision: i16,
    list: __pthread_internal_list,
}
struct __pthread_rwlock_arch_t {
    readers: u32,
    writers: u32,
    wrphase_futex: u32,
    writers_futex: u32,
    pad3: u32,
    pad4: u32,
    cur_writer: i32,
    shared: i32,
    rwelision: i8,
    pad1: [u8; 7],
    pad2: u64,
    flags: u32,
}
struct __pthread_cond_s {
    wseq: __atomic_wide_counter,
    g1_start: __atomic_wide_counter,
    g_refs: [u32; 2],
    g_size: [u32; 2],
    g1_orig_size: u32,
    wrefs: u32,
    g_signals: [u32; 2],
}
union pthread_attr_t {
    size: [i8; 56],
    align: i64,
}
struct stat {
    st_dev: __dev_t,
    st_ino: __ino_t,
    st_nlink: __nlink_t,
    st_mode: __mode_t,
    st_uid: __uid_t,
    st_gid: __gid_t,
    pad0: i32,
    st_rdev: __dev_t,
    st_size: __off_t,
    st_blksize: __blksize_t,
    st_blocks: __blkcnt_t,
    st_atim: timespec,
    st_mtim: timespec,
    st_ctim: timespec,
    glibc_reserved: [__syscall_slong_t; 3],
}
struct flock {
    l_type: i16,
    l_whence: i16,
    l_start: __off_t,
    l_len: __off_t,
    l_pid: __pid_t,
}
type wchar_t = i32;
struct div_t {
    quot: i32,
    rem: i32,
}
struct ldiv_t {
    quot: i64,
    rem: i64,
}
struct lldiv_t {
    quot: i128,
    rem: i128,
}
struct random_data {
    fptr: *mut int32_t,
    rptr: *mut int32_t,
    state: *mut int32_t,
    rand_type: i32,
    rand_deg: i32,
    rand_sep: i32,
    end_ptr: *mut int32_t,
}
struct drand48_data {
    x: [u16; 3],
    old_x: [u16; 3],
    c: u16,
    init: u16,
    a: u64,
}
type __compar_fn_t = extern "C" fn(*const (), *const ()) -> i32;
type __gnuc_va_list = *mut ();
struct __mbstate_t {
    count: i32,
    value: (u32, [i8; 4]),
}
struct __fpos_t {
    pos: __off_t,
    state: __mbstate_t,
}
struct _IO_FILE;
type FILE = _IO_FILE;
struct _IO_FILE {
    flags: i32,
    read_ptr: *mut i8,
    read_end: *mut i8,
    read_base: *mut i8,
    write_base: *mut i8,
    write_ptr: *mut i8,
    write_end: *mut i8,
    buf_base: *mut i8,
    buf_end: *mut i8,
    save_base: *mut i8,
    backup_base: *mut i8,
    save_end: *mut i8,
    markers: *mut (),
    chain: *mut _IO_FILE,
    fileno: i32,
    flags2: i32,
    old_offset: __off_t,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [i8; 1],
    lock: *mut (),
    offset: __off64_t,
    codecvt: *mut (),
    wide_data: *mut (),
    freeres_list: *mut _IO_FILE,
    freeres_buf: *mut (),
    pad5: usize,
    mode: i32,
    unused2: [i8; 15 * 4 - 4 * 8 - 8],
}
type fpos_t = __fpos_t;
static mut stdin: *mut FILE = 0 as *mut FILE;
static mut stdout: *mut FILE = 0 as *mut FILE;
static mut stderr: *mut FILE = 0 as *mut FILE;
extern "C" {
    fn fprintf(stream: *mut FILE, format: *const i8, ...) -> i32;
}
type intptr_t = i64;
static mut __environ: *mut *mut i8 = 0 as *mut *mut i8;
struct timezone {
    tz_minuteswest: i32,
    tz_dsttime: i32,
}
enum __itimer_which {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2,
}
struct itimerval {
    it_interval: timeval,
    it_value: timeval,
}
type __itimer_which_t = __itimer_which;
struct __locale_struct {
    locales: [*mut (); 13],
    ctype_b: *const u16,
    ctype_tolower: *const i32,
    ctype_toupper: *const i32,
    names: [*const i8; 13],
}
type __locale_t = *mut __locale_struct;
type locale_t = __locale_t;
type ptrdiff_t = isize;
type uint32_t = u32;
struct UT_hash_bucket {
    hh_head: *mut (),
    count: u32,
    expand_mult: u32,
}
