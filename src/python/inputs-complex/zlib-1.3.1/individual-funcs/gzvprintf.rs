```rust
use std::ffi::CString;
use std::io::Write;
use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};
use std::ptr;
use std::slice;
use std::time::{Duration, SystemTime, UNIX_EPOCH};

type size_t = usize;
type ssize_t = isize;
type off_t = c_long;
type off64_t = c_long;
type pid_t = c_int;
type uid_t = c_uint;
type gid_t = c_uint;
type mode_t = c_uint;
type dev_t = c_ulong;
type ino_t = c_ulong;
type nlink_t = c_ulong;
type blksize_t = c_long;
type blkcnt_t = c_long;
type blkcnt64_t = c_long;
type fsblkcnt_t = c_ulong;
type fsblkcnt64_t = c_ulong;
type fsfilcnt_t = c_ulong;
type fsfilcnt64_t = c_ulong;
type clock_t = c_long;
type time_t = c_long;
type suseconds_t = c_long;
type suseconds64_t = c_long;
type daddr_t = c_int;
type key_t = c_int;
type clockid_t = c_int;
type timer_t = *mut c_void;
type intptr_t = c_long;
type socklen_t = c_uint;
type useconds_t = c_uint;
type __gnuc_va_list = *mut c_void;

#[repr(C)]
struct __fsid_t {
    __val: [c_int; 2],
}

#[repr(C)]
struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t__value,
}

#[repr(C)]
union __mbstate_t__value {
    __wch: c_uint,
    __wchb: [c_char; 4],
}

#[repr(C)]
struct _G_fpos_t {
    __pos: off_t,
    __state: __mbstate_t,
}

#[repr(C)]
struct _G_fpos64_t {
    __pos: off64_t,
    __state: __mbstate_t,
}

#[repr(C)]
struct _IO_FILE {
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
    _old_offset: off_t,
    _cur_column: c_ushort,
    _vtable_offset: c_schar,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = c_void;
type FILE = _IO_FILE;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn remove(__filename: *const c_char) -> c_int;
    fn rename(__old: *const c_char, __new: *const c_char) -> c_int;
    fn renameat(__oldfd: c_int, __old: *const c_char, __newfd: c_int, __new: *const c_char) -> c_int;
    fn fclose(__stream: *mut FILE) -> c_int;
    fn tmpfile() -> *mut FILE;
    fn tmpfile64() -> *mut FILE;
    fn tmpnam(__s: *mut c_char) -> *mut c_char;
    fn tmpnam_r(__s: *mut c_char) -> *mut c_char;
    fn tempnam(__dir: *const c_char, __pfx: *const c_char) -> *mut c_char;
    fn fflush(__stream: *mut FILE) -> c_int;
    fn fflush_unlocked(__stream: *mut FILE) -> c_int;
    fn fopen(__filename: *const c_char, __modes: *const c_char) -> *mut FILE;
    fn freopen(__filename: *const c_char, __modes: *const c_char, __stream: *mut FILE) -> *mut FILE;
    fn fopen64(__filename: *const c_char, __modes: *const c_char) -> *mut FILE;
    fn freopen64(__filename: *const c_char, __modes: *const c_char, __stream: *mut FILE) -> *mut FILE;
    fn fdopen(__fd: c_int, __modes: *const c_char) -> *mut FILE;
    fn fmemopen(__s: *mut c_void, __len: size_t, __modes: *const c_char) -> *mut FILE;
    fn open_memstream(__bufloc: *mut *mut c_char, __sizeloc: *mut size_t) -> *mut FILE;
    fn setbuf(__stream: *mut FILE, __buf: *mut c_char);
    fn setvbuf(__stream: *mut FILE, __buf: *mut c_char, __modes: c_int, __n: size_t) -> c_int;
    fn setbuffer(__stream: *mut FILE, __buf: *mut c_char, __size: size_t);
    fn setlinebuf(__stream: *mut FILE);
    fn fprintf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    fn printf(__format: *const c_char, ...) -> c_int;
    fn sprintf(__s: *mut c_char, __format: *const c_char, ...) -> c_int;
    fn vfprintf(__s: *mut FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vprintf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    fn fscanf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    fn scanf(__format: *const c_char, ...) -> c_int;
    fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    fn vfscanf(__s: *mut FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vscanf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn fgetc(__stream: *mut FILE) -> c_int;
    fn getc(__stream: *mut FILE) -> c_int;
    fn getchar() -> c_int;
    fn getc_unlocked(__stream: *mut FILE) -> c_int;
    fn getchar_unlocked() -> c_int;
    fn fgetc_unlocked(__stream: *mut FILE) -> c_int;
    fn fputc(__c: c_int, __stream: *mut FILE) -> c_int;
    fn putc(__c: c_int, __stream: *mut FILE) -> c_int;
    fn putchar(__c: c_int) -> c_int;
    fn fputc_unlocked(__c: c_int, __stream: *mut FILE) -> c_int;
    fn putc_unlocked(__c: c_int, __stream: *mut FILE) -> c_int;
    fn putchar_unlocked(__c: c_int) -> c_int;
    fn getw(__stream: *mut FILE) -> c_int;
    fn putw(__w: c_int, __stream: *mut FILE) -> c_int;
    fn fgets(__s: *mut c_char, __n: c_int, __stream: *mut FILE) -> *mut c_char;
    fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> ssize_t;
    fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> ssize_t;
    fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut FILE) -> ssize_t;
    fn fputs(__s: *const c_char, __stream: *mut FILE) -> c_int;
    fn puts(__s: *const c_char) -> c_int;
    fn ungetc(__c: c_int, __stream: *mut FILE) -> c_int;
    fn fread(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite(__ptr: *const c_void, __size: size_t, __n: size_t, __s: *mut FILE) -> size_t;
    fn fread_unlocked(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite_unlocked(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fseek(__stream: *mut FILE, __off: c_long, __whence: c_int) -> c_int;
    fn ftell(__stream: *mut FILE) -> c_long;
    fn rewind(__stream: *mut FILE);
    fn fseeko(__stream: *mut FILE, __off: off_t, __whence: c_int) -> c_int;
    fn ftello(__stream: *mut FILE) -> off_t;
    fn fgetpos(__stream: *mut FILE, __pos: *mut fpos_t) -> c_int;
    fn fsetpos(__stream: *mut FILE, __pos: *const fpos_t) -> c_int;
    fn fseeko64(__stream: *mut FILE, __off: off64_t, __whence: c_int) -> c_int;
    fn ftello64(__stream: *mut FILE) -> off64_t;
    fn fgetpos64(__stream: *mut FILE, __pos: *mut fpos64_t) -> c_int;
    fn fsetpos64(__stream: *mut FILE, __pos: *const fpos64_t) -> c_int;
    fn clearerr(__stream: *mut FILE);
    fn feof(__stream: *mut FILE) -> c_int;
    fn ferror(__stream: *mut FILE) -> c_int;
    fn clearerr_unlocked(__stream: *mut FILE);
    fn feof_unlocked(__stream: *mut FILE) -> c_int;
    fn ferror_unlocked(__stream: *mut FILE) -> c_int;
    fn perror(__s: *const c_char);
    fn fileno(__stream: *mut FILE) -> c_int;
    fn fileno_unlocked(__stream: *mut FILE) -> c_int;
    fn pclose(__stream: *mut FILE) -> c_int;
    fn popen(__command: *const c_char, __modes: *const c_char) -> *mut FILE;
    fn ctermid(__s: *mut c_char) -> *mut c_char;
    fn flockfile(__stream: *mut FILE);
    fn ftrylockfile(__stream: *mut FILE) -> c_int;
    fn funlockfile(__stream: *mut FILE);
    fn __uflow(__stream: *mut FILE) -> c_int;
    fn __overflow(__stream: *mut FILE, __c: c_int) -> c_int;
}

#[repr(C)]
struct timeval {
    tv_sec: time_t,
    tv_usec: suseconds_t,
}

#[repr(C)]
struct timespec {
    tv_sec: time_t,
    tv_nsec: c_long,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [c_long; 1024 / (8 * std::mem::size_of::<c_long>())],
}

extern "C" {
    fn select(__nfds: c_int, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *mut timeval) -> c_int;
    fn pselect(__nfds: c_int, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *const timespec, __sigmask: *const sigset_t) -> c_int;
}

#[repr(C)]
struct __pthread_internal_list {
    __prev: *mut __pthread_internal_list,
    __next: *mut __pthread_internal_list,
}

#[repr(C)]
struct __pthread_internal_slist {
    __next: *mut __pthread_internal_slist,
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

extern "C" {
    fn access(__name: *const c_char, __type: c_int) -> c_int;
    fn faccessat(__fd: c_int, __file: *const c_char, __type: c_int, __flag: c_int) -> c_int;
    fn lseek(__fd: c_int, __offset: off_t, __whence: c_int) -> off_t;
    fn lseek64(__fd: c_int, __offset: off64_t, __whence: c_int) -> off64_t;
    fn close(__fd: c_int) -> c_int;
    fn closefrom(__lowfd: c_int);
    fn read(__fd: c_int, __buf: *mut c_void, __nbytes: size_t) -> ssize_t;
    fn write(__fd: c_int, __buf: *const c_void, __n: size_t) -> ssize_t;
    fn pread(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: off_t) -> ssize_t;
    fn pwrite(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: off_t) -> ssize_t;
    fn pread64(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: off64_t) -> ssize_t;
    fn pwrite64(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: off64_t) -> ssize_t;
    fn pipe(__pipedes: *mut c_int) -> c_int;
    fn alarm(__seconds: c_uint) -> c_uint;
    fn sleep(__seconds: c_uint) -> c_uint;
    fn ualarm(__value: useconds_t, __interval: useconds_t) -> useconds_t;
    fn usleep(__useconds: useconds_t) -> c_int;
    fn pause() -> c_int;
    fn ch