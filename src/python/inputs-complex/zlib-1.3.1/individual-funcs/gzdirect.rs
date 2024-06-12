use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};
use std::ffi::VaList;

pub type size_t = c_ulong;
pub type va_list = VaList;
pub type __gnuc_va_list = VaList;

pub type __u_char = u8;
pub type __u_short = u16;
pub type __u_int = u32;
pub type __u_long = u64;
pub type __int8_t = i8;
pub type __uint8_t = u8;
pub type __int16_t = i16;
pub type __uint16_t = u16;
pub type __int32_t = i32;
pub type __uint32_t = u32;
pub type __int64_t = i64;
pub type __uint64_t = u64;
pub type __int_least8_t = __int8_t;
pub type __uint_least8_t = __uint8_t;
pub type __int_least16_t = __int16_t;
pub type __uint_least16_t = __uint16_t;
pub type __int_least32_t = __int32_t;
pub type __uint_least32_t = __uint32_t;
pub type __int_least64_t = __int64_t;
pub type __uint_least64_t = __uint64_t;
pub type __quad_t = c_long;
pub type __u_quad_t = c_ulong;
pub type __intmax_t = c_long;
pub type __uintmax_t = c_ulong;
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
#[repr(C)]
pub struct __fsid_t {
    pub __val: [c_int; 2],
}
pub type __clock_t = c_long;
pub type __rlim_t = c_ulong;
pub type __rlim64_t = c_ulong;
pub type __id_t = c_uint;
pub type __time_t = c_long;
pub type __useconds_t = c_uint;
pub type __suseconds_t = c_long;
pub type __suseconds64_t = c_long;
pub type __daddr_t = c_int;
pub type __key_t = c_int;
pub type __clockid_t = c_int;
pub type __timer_t = *mut c_void;
pub type __blksize_t = c_long;
pub type __blkcnt_t = c_long;
pub type __blkcnt64_t = c_long;
pub type __fsblkcnt_t = c_ulong;
pub type __fsblkcnt64_t = c_ulong;
pub type __fsfilcnt_t = c_ulong;
pub type __fsfilcnt64_t = c_ulong;
pub type __fsword_t = c_long;
pub type __ssize_t = c_long;
pub type __syscall_slong_t = c_long;
pub type __syscall_ulong_t = c_ulong;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type __intptr_t = c_long;
pub type __socklen_t = c_uint;
pub type __sig_atomic_t = c_int;

#[repr(C)]
pub struct __mbstate_t {
    pub __count: c_int,
    pub __value: __mbstate_t__value,
}

#[repr(C)]
pub union __mbstate_t__value {
    pub __wch: c_uint,
    pub __wchb: [c_char; 4],
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
    pub _vtable_offset: c_schar,
    pub _shortbuf: [c_char; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut c_void,
    pub __pad5: size_t,
    pub _mode: c_int,
    pub _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;

    pub fn remove(__filename: *const c_char) -> c_int;
    pub fn rename(__old: *const c_char, __new: *const c_char) -> c_int;
    pub fn renameat(__oldfd: c_int, __old: *const c_char, __newfd: c_int, __new: *const c_char) -> c_int;
    pub fn fclose(__stream: *mut FILE) -> c_int;
    pub fn tmpfile() -> *mut FILE;
    pub fn tmpfile64() -> *mut FILE;
    pub fn tmpnam(__s: *mut c_char) -> *mut c_char;
    pub fn tmpnam_r(__s: *mut c_char) -> *mut c_char;
    pub fn tempnam(__dir: *const c_char, __pfx: *const c_char) -> *mut c_char;
    pub fn fflush(__stream: *mut FILE) -> c_int;
    pub fn fflush_unlocked(__stream: *mut FILE) -> c_int;
    pub fn fopen(__filename: *const c_char, __modes: *const c_char) -> *mut FILE;
    pub fn freopen(__filename: *const c_char, __modes: *const c_char, __stream: *mut FILE) -> *mut FILE;
    pub fn fopen64(__filename: *const c_char, __modes: *const c_char) -> *mut FILE;
    pub fn freopen64(__filename: *const c_char, __modes: *const c_char, __stream: *mut FILE) -> *mut FILE;
    pub fn fdopen(__fd: c_int, __modes: *const c_char) -> *mut FILE;
    pub fn fmemopen(__s: *mut c_void, __len: size_t, __modes: *const c_char) -> *mut FILE;
    pub fn open_memstream(__bufloc: *mut *mut c_char, __sizeloc: *mut size_t) -> *mut FILE;
    pub fn setbuf(__stream: *mut FILE, __buf: *mut c_char);
    pub fn setvbuf(__stream: *mut FILE, __buf: *mut c_char, __modes: c_int, __n: size_t) -> c_int;
    pub fn setbuffer(__stream: *mut FILE, __buf: *mut c_char, __size: size_t);
    pub fn setlinebuf(__stream: *mut FILE);
    pub fn fprintf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    pub fn printf(__format: *const c_char, ...) -> c_int;
    pub fn sprintf(__s: *mut c_char, __format: *const c_char, ...) -> c_int;
    pub fn vfprintf(__s: *mut FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn vprintf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    pub fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    pub fn fscanf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    pub fn scanf(__format: *const c_char, ...) -> c_int;
    pub fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    pub fn vfscanf(__s: *mut FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn vscanf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    pub fn fgetc(__stream: *mut FILE) -> c_int;
    pub fn getc(__stream: *mut FILE) -> c_int;
    pub fn getchar() -> c_int;
    pub fn getc_unlocked(__stream: *mut FILE) -> c_int;
    pub fn getchar_unlocked() -> c_int;
    pub fn fgetc_unlocked(__stream: *mut FILE) -> c_int;
    pub fn fputc(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn putc(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn putchar(__c: c_int) -> c_int;
    pub fn fputc_unlocked(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn putc_unlocked(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn putchar_unlocked(__c: c_int) -> c_int;
    pub fn getw(__stream: *mut FILE) -> c_int;
    pub fn putw(__w: c_int, __stream: *mut FILE) -> c_int;
    pub fn fgets(__s: *mut c_char, __n: c_int, __stream: *mut FILE) -> *mut c_char;
    pub fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> __ssize_t;
    pub fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> __ssize_t;
    pub fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut FILE) -> __ssize_t;
    pub fn fputs(__s: *const c_char, __stream: *mut FILE) -> c_int;
    pub fn puts(__s: *const c_char) -> c_int;
    pub fn ungetc(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn fread(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fwrite(__ptr: *const c_void, __size: size_t, __n: size_t, __s: *mut FILE) -> size_t;
    pub fn fread_unlocked(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fwrite_unlocked(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fseek(__stream: *mut FILE, __off: c_long, __whence: c_int) -> c_int;
    pub fn ftell(__stream: *mut FILE) -> c_long;
    pub fn rewind(__stream: *mut FILE);
    pub fn fseeko(__stream: *mut FILE, __off: __off_t, __whence: c_int) -> c_int;
    pub fn ftello(__stream: *mut FILE) -> __off_t;
    pub fn fgetpos(__stream: *mut FILE, __pos: *mut __fpos_t) -> c_int;
    pub fn fsetpos(__stream: *mut FILE, __pos: *const __fpos_t) -> c_int;
    pub fn fseeko64(__stream: *mut FILE, __off: __off64_t, __whence: c_int) -> c_int;
    pub fn ftello64(__stream: *mut FILE) -> __off64_t;
    pub fn fgetpos64(__stream: *mut FILE, __pos: *mut __fpos64_t) -> c_int;
    pub fn fsetpos64(__stream: *mut FILE, __pos: *const __fpos64_t) -> c_int;
    pub fn clearerr(__stream: *mut FILE);
    pub fn feof(__stream: *mut FILE) -> c_int;
    pub fn ferror(__stream: *mut FILE) -> c_int;
    pub fn clearerr_unlocked(__stream: *mut FILE);
    pub fn feof_unlocked(__stream: *mut FILE) -> c_int;
    pub fn ferror_unlocked(__stream: *mut FILE) -> c_int;
    pub fn perror(__s: *const c_char);
    pub fn fileno(__stream: *mut FILE) -> c_int;
    pub fn fileno_unlocked(__stream: *mut FILE) -> c_int;
    pub fn pclose(__stream: *mut FILE) -> c_int;
    pub fn popen(__command: *const c_char, __modes: *const c_char) -> *mut FILE;
    pub fn ctermid(__s: *mut c_char) -> *mut c_char;
    pub fn flockfile(__stream: *mut FILE);
    pub fn ftrylockfile(__stream: *mut FILE) -> c_int;
    pub fn funlockfile(__stream: *mut FILE);
    pub fn __uflow(__stream: *mut FILE) -> c_int;
    pub fn __overflow(__stream: *mut FILE, __c: c_int) -> c_int;
}

pub type ptrdiff_t = c_long;
pub type wchar_t = c_int;

#[repr(C)]
pub struct max_align_t {
    pub __clang_max_align_nonce1: c_longlong,
    pub __clang_max_align_nonce2: c_longdouble,
}

pub type z_size_t = size_t;
pub type Byte = u8;
pub type uInt = u32;
pub type uLong = u64;
pub type Bytef = Byte;
pub type charf = c_char;
pub type intf = c_int;
pub type uIntf = uInt;
pub type uLongf = uLong;
pub type voidpc = *const c_void;
pub type voidpf = *mut c_void;
pub type voidp = *mut c_void;
pub type z_crc_t = c_uint;

pub type u_char = __u_char;
pub type u_short = __u_short;
pub type u_int = __u_int;
pub type u_long = __u_long;
pub type quad_t = __quad_t;
pub type u_quad_t = __u_quad_t;
pub type fsid_t = __fsid_t;
pub type loff_t = __loff_t;
pub type ino_t = __ino_t;
pub type ino64_t = __ino64_t;
pub type dev_t = __dev_t;
pub type gid_t = __gid_t;
pub type mode_t = __mode_t;
pub type nlink_t = __nlink_t;
pub type uid_t = __uid_t;
pub type pid_t = __pid_t;
pub type id_t = __id_t;
pub type daddr_t = __daddr_t;
pub type caddr_t = __caddr_t;
pub type key_t = __key_t;
pub type clock_t = __clock_t;
pub type clockid_t = __clockid_t;
pub type time_t = __time_t;
pub type timer_t = __timer_t;
pub type ulong = c_ulong;
pub type ushort = c_ushort;
pub type uint = c_uint;
pub type int8_t = __int8_t;
pub type int16_t = __int16_t;
pub type int32_t = __int32_t;
pub type int64_t = __int64_t;
pub type u_int8_t = __uint8_t;
pub type u_int16_t = __uint16_t;
pub type u_int32_t = __uint32_t;
pub type u_int64_t = __uint64_t;
pub type register_t = c_int;

#[repr(C)]
pub struct __sigset_t {
    pub __val: [c_ulong; 1024 / (8 * std::mem::size_of::<c_ulong>())],
}

pub type sigset_t = __sigset_t;

#[repr(C)]
pub struct timeval {
    pub tv_sec: __time_t,
    pub tv_usec: __suseconds_t,
}

#[repr(C)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

pub type suseconds_t = __suseconds_t;

pub type __fd_mask = c_long;

#[repr(C)]
pub struct fd_set {
    pub __fds_bits