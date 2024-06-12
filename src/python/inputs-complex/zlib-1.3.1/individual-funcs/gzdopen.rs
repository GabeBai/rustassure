use std::ffi::CString;
use std::os::raw::{c_char, c_int};
use std::ptr::null_mut;
use std::fs::File;
use std::os::unix::io::{FromRawFd, RawFd};
use std::io::{self, Read, Write};
use std::mem::size_of;

pub type size_t = usize;
pub type va_list = *mut c_char;
pub type __gnuc_va_list = va_list;

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
pub type __quad_t = i64;
pub type __u_quad_t = u64;
pub type __intmax_t = i64;
pub type __uintmax_t = u64;
pub type __dev_t = u64;
pub type __uid_t = u32;
pub type __gid_t = u32;
pub type __ino_t = u64;
pub type __ino64_t = u64;
pub type __mode_t = u32;
pub type __nlink_t = u64;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __pid_t = i32;
pub type __fsid_t = [i32; 2];
pub type __clock_t = i64;
pub type __rlim_t = u64;
pub type __rlim64_t = u64;
pub type __id_t = u32;
pub type __time_t = i64;
pub type __useconds_t = u32;
pub type __suseconds_t = i64;
pub type __suseconds64_t = i64;
pub type __daddr_t = i32;
pub type __key_t = i32;
pub type __clockid_t = i32;
pub type __timer_t = *mut c_void;
pub type __blksize_t = i64;
pub type __blkcnt_t = i64;
pub type __blkcnt64_t = i64;
pub type __fsblkcnt_t = u64;
pub type __fsblkcnt64_t = u64;
pub type __fsfilcnt_t = u64;
pub type __fsfilcnt64_t = u64;
pub type __fsword_t = i64;
pub type __ssize_t = i64;
pub type __syscall_slong_t = i64;
pub type __syscall_ulong_t = u64;
pub type __loff_t = __off64_t;
pub type __caddr_t = *mut c_char;
pub type __intptr_t = i64;
pub type __socklen_t = u32;
pub type __sig_atomic_t = i32;

#[repr(C)]
pub struct __mbstate_t {
    pub __count: i32,
    pub __value: __mbstate_t__value,
}

#[repr(C)]
pub union __mbstate_t__value {
    pub __wch: u32,
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

#[repr(C)]
pub struct _IO_FILE {
    pub _flags: i32,
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
    pub _fileno: i32,
    pub _flags2: i32,
    pub _old_offset: __off_t,
    pub _cur_column: u16,
    pub _vtable_offset: i8,
    pub _shortbuf: [c_char; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut c_void,
    pub __pad5: size_t,
    pub _mode: i32,
    pub _unused2: [c_char; 15 * size_of::<i32>() - 4 * size_of::<*mut c_void>() - size_of::<size_t>()],
}

pub type FILE = _IO_FILE;
pub type va_list = __gnuc_va_list;
pub type off_t = __off_t;
pub type off64_t = __off64_t;
pub type ssize_t = __ssize_t;
pub type fpos_t = __fpos_t;
pub type fpos64_t = __fpos64_t;

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
    pub fn vfprintf(__s: *mut FILE, __format: *const c_char, __arg: va_list) -> c_int;
    pub fn vprintf(__format: *const c_char, __arg: va_list) -> c_int;
    pub fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: va_list) -> c_int;
    pub fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    pub fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: va_list) -> c_int;
    pub fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: va_list) -> c_int;
    pub fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    pub fn fscanf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    pub fn scanf(__format: *const c_char, ...) -> c_int;
    pub fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    pub fn vfscanf(__s: *mut FILE, __format: *const c_char, __arg: va_list) -> c_int;
    pub fn vscanf(__format: *const c_char, __arg: va_list) -> c_int;
    pub fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: va_list) -> c_int;
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
    pub fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> ssize_t;
    pub fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> ssize_t;
    pub fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut FILE) -> ssize_t;
    pub fn fputs(__s: *const c_char, __stream: *mut FILE) -> c_int;
    pub fn puts(__s: *const c_char) -> c_int;
    pub fn ungetc(__c: c_int, __stream: *mut FILE) -> c_int;
    pub fn fread(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fwrite(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fread_unlocked(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fwrite_unlocked(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    pub fn fseek(__stream: *mut FILE, __off: c_long, __whence: c_int) -> c_int;
    pub fn ftell(__stream: *mut FILE) -> c_long;
    pub fn rewind(__stream: *mut FILE);
    pub fn fseeko(__stream: *mut FILE, __off: __off_t, __whence: c_int) -> c_int;
    pub fn ftello(__stream: *mut FILE) -> __off_t;
    pub fn fgetpos(__stream: *mut FILE, __pos: *mut fpos_t) -> c_int;
    pub fn fsetpos(__stream: *mut FILE, __pos: *const fpos_t) -> c_int;
    pub fn fseeko64(__stream: *mut FILE, __off: __off64_t, __whence: c_int) -> c_int;
    pub fn ftello64(__stream: *mut FILE) -> __off64_t;
    pub fn fgetpos64(__stream: *mut FILE, __pos: *mut fpos64_t) -> c_int;
    pub fn fsetpos64(__stream: *mut FILE, __pos: *const fpos64_t) -> c_int;
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
    pub fn access(__name: *const c_char, __type: c_int) -> c_int;
    pub fn faccessat(__fd: c_int, __file: *const c_char, __type: c_int, __flag: c_int) -> c_int;
    pub fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) -> __off_t;
    pub fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) -> __off64_t;
    pub fn close(__fd: c_int) -> c_int;
    pub fn closefrom(__lowfd: c_int);
    pub fn read(__fd: c_int, __buf: *mut c_void, __nbytes: size_t) -> ssize_t;
    pub fn write(__fd: c_int, __buf: *const c_void, __n: size_t) -> ssize_t;
    pub fn pread(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: __off_t) -> ssize_t;
    pub fn pwrite(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: __off_t) -> ssize_t;
    pub fn pread64(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: __off64_t) -> ssize_t;
    pub fn pwrite64(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: __off64_t) -> ssize_t;
    pub fn pipe(__pipedes: *mut c_int) -> c_int;
    pub fn alarm(__seconds: c_uint) -> c_uint;
    pub fn sleep(__seconds: c_uint) -> c_uint;
    pub fn ualarm(__value: __useconds_t, __interval: __useconds_t) -> __useconds_t;
    pub fn usleep(__useconds: __useconds_t) -> c_int;
    pub fn pause() -> c_int;
    pub fn chown(__file: *const c_char, __owner: __uid_t, __group: __gid_t) -> c_int;
    pub fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) -> c_int;
    pub fn lchown(__file: *const c_char, __owner: __uid_t, __group: __gid_t) -> c_int;
    pub fn fchownat(__fd: c_int, __file: *const c_char, __owner: __uid_t, __group: __gid_t, __flag: c_int) -> c_int;
    pub fn chdir(__path: *const c_char) -> c_int;
    pub fn fchdir(__fd: c_int