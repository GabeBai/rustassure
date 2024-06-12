```rust
use std::ffi::CString;
use std::os::raw::{c_char, c_int, c_void};
use std::ptr;
use std::slice;
use std::str;

type size_t = usize;
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
type __clock_t = i64;
type __rlim_t = u64;
type __rlim64_t = u64;
type __id_t = u32;
type __time_t = i64;
type __useconds_t = u32;
type __suseconds_t = i64;
type __suseconds64_t = i64;
type __daddr_t = i32;
type __key_t = i32;
type __clockid_t = i32;
type __timer_t = *mut c_void;
type __blksize_t = i64;
type __blkcnt_t = i64;
type __blkcnt64_t = i64;
type __fsblkcnt_t = u64;
type __fsblkcnt64_t = u64;
type __fsfilcnt_t = u64;
type __fsfilcnt64_t = u64;
type __fsword_t = i64;
type __ssize_t = i64;
type __syscall_slong_t = i64;
type __syscall_ulong_t = u64;
type __loff_t = __off64_t;
type __caddr_t = *mut c_char;
type __intptr_t = i64;
type __socklen_t = u32;
type __sig_atomic_t = i32;

#[repr(C)]
struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__value,
}

#[repr(C)]
union __mbstate_t__value {
    __wch: u32,
    __wchb: [c_char; 4],
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

#[repr(C)]
struct _IO_FILE {
    _flags: i32,
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
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [c_char; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

type __gnuc_va_list = *mut c_void;
type va_list = __gnuc_va_list;
type off_t = __off_t;
type off64_t = __off64_t;
type ssize_t = __ssize_t;
type fpos_t = __fpos_t;
type fpos64_t = __fpos64_t;

extern "C" {
    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;

    fn remove(__filename: *const c_char) -> c_int;
    fn rename(__old: *const c_char, __new: *const c_char) -> c_int;
    fn renameat(__oldfd: c_int, __old: *const c_char, __newfd: c_int, __new: *const c_char) -> c_int;
    fn fclose(__stream: *mut _IO_FILE) -> c_int;
    fn tmpfile() -> *mut _IO_FILE;
    fn tmpfile64() -> *mut _IO_FILE;
    fn tmpnam(__s: *mut c_char) -> *mut c_char;
    fn tmpnam_r(__s: *mut c_char) -> *mut c_char;
    fn tempnam(__dir: *const c_char, __pfx: *const c_char) -> *mut c_char;
    fn fflush(__stream: *mut _IO_FILE) -> c_int;
    fn fflush_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn fopen(__filename: *const c_char, __modes: *const c_char) -> *mut _IO_FILE;
    fn freopen(__filename: *const c_char, __modes: *const c_char, __stream: *mut _IO_FILE) -> *mut _IO_FILE;
    fn fopen64(__filename: *const c_char, __modes: *const c_char) -> *mut _IO_FILE;
    fn freopen64(__filename: *const c_char, __modes: *const c_char, __stream: *mut _IO_FILE) -> *mut _IO_FILE;
    fn fdopen(__fd: c_int, __modes: *const c_char) -> *mut _IO_FILE;
    fn fmemopen(__s: *mut c_void, __len: size_t, __modes: *const c_char) -> *mut _IO_FILE;
    fn open_memstream(__bufloc: *mut *mut c_char, __sizeloc: *mut size_t) -> *mut _IO_FILE;
    fn setbuf(__stream: *mut _IO_FILE, __buf: *mut c_char);
    fn setvbuf(__stream: *mut _IO_FILE, __buf: *mut c_char, __modes: c_int, __n: size_t) -> c_int;
    fn setbuffer(__stream: *mut _IO_FILE, __buf: *mut c_char, __size: size_t);
    fn setlinebuf(__stream: *mut _IO_FILE);
    fn fprintf(__stream: *mut _IO_FILE, __format: *const c_char, ...) -> c_int;
    fn printf(__format: *const c_char, ...) -> c_int;
    fn sprintf(__s: *mut c_char, __format: *const c_char, ...) -> c_int;
    fn vfprintf(__s: *mut _IO_FILE, __format: *const c_char, __arg: va_list) -> c_int;
    fn vprintf(__format: *const c_char, __arg: va_list) -> c_int;
    fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: va_list) -> c_int;
    fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: va_list) -> c_int;
    fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: va_list) -> c_int;
    fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    fn fscanf(__stream: *mut _IO_FILE, __format: *const c_char, ...) -> c_int;
    fn scanf(__format: *const c_char, ...) -> c_int;
    fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    fn vfscanf(__s: *mut _IO_FILE, __format: *const c_char, __arg: va_list) -> c_int;
    fn vscanf(__format: *const c_char, __arg: va_list) -> c_int;
    fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: va_list) -> c_int;
    fn fgetc(__stream: *mut _IO_FILE) -> c_int;
    fn getc(__stream: *mut _IO_FILE) -> c_int;
    fn getchar() -> c_int;
    fn getc_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn getchar_unlocked() -> c_int;
    fn fgetc_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn fputc(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn putc(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn putchar(__c: c_int) -> c_int;
    fn fputc_unlocked(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn putc_unlocked(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn putchar_unlocked(__c: c_int) -> c_int;
    fn getw(__stream: *mut _IO_FILE) -> c_int;
    fn putw(__w: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn fgets(__s: *mut c_char, __n: c_int, __stream: *mut _IO_FILE) -> *mut c_char;
    fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut _IO_FILE) -> ssize_t;
    fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut _IO_FILE) -> ssize_t;
    fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut _IO_FILE) -> ssize_t;
    fn fputs(__s: *const c_char, __stream: *mut _IO_FILE) -> c_int;
    fn puts(__s: *const c_char) -> c_int;
    fn ungetc(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn fread(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fwrite(__ptr: *const c_void, __size: size_t, __n: size_t, __s: *mut _IO_FILE) -> size_t;
    fn fread_unlocked(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fwrite_unlocked(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fseek(__stream: *mut _IO_FILE, __off: i64, __whence: c_int) -> c_int;
    fn ftell(__stream: *mut _IO_FILE) -> i64;
    fn rewind(__stream: *mut _IO_FILE);
    fn fseeko(__stream: *mut _IO_FILE, __off: __off_t, __whence: c_int) -> c_int;
    fn ftello(__stream: *mut _IO_FILE) -> __off_t;
    fn fgetpos(__stream: *mut _IO_FILE, __pos: *mut fpos_t) -> c_int;
    fn fsetpos(__stream: *mut _IO_FILE, __pos: *const fpos_t) -> c_int;
    fn fseeko64(__stream: *mut _IO_FILE, __off: __off64_t, __whence: c_int) -> c_int;
    fn ftello64(__stream: *mut _IO_FILE) -> __off64_t;
    fn fgetpos64(__stream: *mut _IO_FILE, __pos: *mut fpos64_t) -> c_int;
    fn fsetpos64(__stream: *mut _IO_FILE, __pos: *const fpos64_t) -> c_int;
    fn clearerr(__stream: *mut _IO_FILE);
    fn feof(__stream: *mut _IO_FILE) -> c_int;
    fn ferror(__stream: *mut _IO_FILE) -> c_int;
    fn clearerr_unlocked(__stream: *mut _IO_FILE);
    fn feof_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn ferror_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn perror(__s: *const c_char);
    fn fileno(__stream: *mut _IO_FILE) -> c_int;
    fn fileno_unlocked(__stream: *mut _IO_FILE) -> c_int;
    fn pclose(__stream: *mut _IO_FILE) -> c_int;
    fn popen(__command: *const c_char, __modes: *const c_char) -> *mut _IO_FILE;
    fn ctermid(__s: *mut c_char) -> *mut c_char;
    fn flockfile(__stream: *mut _IO_FILE);
    fn ftrylockfile(__stream: *mut _IO_FILE) -> c_int;
    fn funlockfile(__stream: *mut _IO_FILE);
    fn __uflow(__stream: *mut _IO_FILE) -> c_int;
    fn __overflow(__stream: *mut _IO_FILE, __c: c_int) -> c_int;
}

type ptrdiff_t = isize;
type wchar_t = i32;

#[repr(C)]
struct max_align_t {
    __clang_max_align_nonce1: i64,
    __clang_max_align_nonce2: f64,
}

type z_size_t = size_t;
type Byte = u8;
type uInt = u32;
type uLong = u64;
type Bytef = Byte;
type charf = c_char;
type intf = c_int;
type uIntf = uInt;
type uLongf = uLong;
type voidpc = *const c_void;
type voidpf = *mut c_void;
type voidp = *mut c_void;
type z_crc_t = u32;
type u_char = __u_char;
type u_short = __u_short;
type u_int = __u_int;
type u_long = __u_long;
type quad_t = __quad_t;
type u_quad_t = __u_quad_t;
type fsid_t = __fsid_t;
type loff_t = __loff_t;
type ino_t = __ino_t;
type ino64_t = __ino64_t;
type dev_t = __dev_t;
type gid_t = __gid_t;
type mode_t = __mode_t;
type nlink_t = __nlink_t;
type uid_t = __uid_t;
type pid_t = __pid_t;
type id_t = __id_t;
type daddr_t = __daddr_t;
type caddr_t = __caddr_t;
type key_t = __key_t;
type clock_t = __clock_t;
type clockid_t = __clockid_t;
type time_t = __time_t;
type timer_t = __timer_t;
type ulong = u64;
type ushort = u16;
type uint = u32;
type int8_t = __int8_t;
type int16_t = __int16_t;
type int32_t = __int32_t;
type int64_t = __int64_t;
type u_int8_t = __uint8_t;
type u_int16_t = __uint16_t;
type u_int32_t = __uint32_t;
type u_int64_t = __uint64_t;
type register_t = i32;

#[repr(C)]
struct __sigset_t {
    __val: [u64; 1024 / (8 * std::mem::size_of::<u64>())],
}

type sigset_t = __sigset_t;

#[repr(C)]
struct timeval {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
}

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

type suseconds_t = __suseconds_t;
type __fd_mask = i64;

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

type fd_mask = __fd_mask;

extern "C" {
    fn select(__nfds: c_int, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *mut timeval) -> c_int;
    fn pselect(__nfds: c_int, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *const timespec, __sig