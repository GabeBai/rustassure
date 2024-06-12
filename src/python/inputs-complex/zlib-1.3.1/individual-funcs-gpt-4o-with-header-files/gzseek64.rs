use std::os::raw::{c_char, c_int, c_long, c_ulong, c_void};
use std::os::unix::io::RawFd;
use std::ffi::CStr;

type size_t = c_ulong;
type va_list = *mut c_void;
type __gnuc_va_list = *mut c_void;

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
type __quad_t = c_long;
type __u_quad_t = c_ulong;
type __intmax_t = c_long;
type __uintmax_t = c_ulong;
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
type __clock_t = c_long;
type __rlim_t = c_ulong;
type __rlim64_t = c_ulong;
type __id_t = c_uint;
type __time_t = c_long;
type __useconds_t = c_uint;
type __suseconds_t = c_long;
type __suseconds64_t = c_long;
type __daddr_t = c_int;
type __key_t = c_int;
type __clockid_t = c_int;
type __timer_t = *mut c_void;
type __blksize_t = c_long;
type __blkcnt_t = c_long;
type __blkcnt64_t = c_long;
type __fsblkcnt_t = c_ulong;
type __fsblkcnt64_t = c_ulong;
type __fsfilcnt_t = c_ulong;
type __fsfilcnt64_t = c_ulong;
type __fsword_t = c_long;
type __ssize_t = c_long;
type __syscall_slong_t = c_long;
type __syscall_ulong_t = c_ulong;
type __loff_t = __off64_t;
type __caddr_t = *mut c_char;
type __intptr_t = c_long;
type __socklen_t = c_uint;
type __sig_atomic_t = c_int;

#[repr(C)]
struct __fsid_t {
    __val: [c_int; 2],
}

#[repr(C)]
struct __mbstate_t {
    __count: c_int,
    __value: __mbstate_t_value,
}

#[repr(C)]
union __mbstate_t_value {
    __wch: c_uint,
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
    _mode: c_int,
    _unused2: [c_char; 15 * std::mem::size_of::<c_int>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

type __gnuc_va_list = va_list;
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
    fn vfprintf(__s: *mut _IO_FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vprintf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    fn fscanf(__stream: *mut _IO_FILE, __format: *const c_char, ...) -> c_int;
    fn scanf(__format: *const c_char, ...) -> c_int;
    fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    fn vfscanf(__s: *mut _IO_FILE, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vscanf(__format: *const c_char, __arg: __gnuc_va_list) -> c_int;
    fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: __gnuc_va_list) -> c_int;
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
    fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut _IO_FILE) -> __ssize_t;
    fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut _IO_FILE) -> __ssize_t;
    fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut _IO_FILE) -> __ssize_t;
    fn fputs(__s: *const c_char, __stream: *mut _IO_FILE) -> c_int;
    fn puts(__s: *const c_char) -> c_int;
    fn ungetc(__c: c_int, __stream: *mut _IO_FILE) -> c_int;
    fn fread(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fwrite(__ptr: *const c_void, __size: size_t, __n: size_t, __s: *mut _IO_FILE) -> size_t;
    fn fread_unlocked(__ptr: *mut c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fwrite_unlocked(__ptr: *const c_void, __size: size_t, __n: size_t, __stream: *mut _IO_FILE) -> size_t;
    fn fseek(__stream: *mut _IO_FILE, __off: c_long, __whence: c_int) -> c_int;
    fn ftell(__stream: *mut _IO_FILE) -> c_long;
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
    fn access(__name: *const c_char, __type: c_int) -> c_int;
    fn faccessat(__fd: c_int, __file: *const c_char, __type: c_int, __flag: c_int) -> c_int;
    fn lseek(__fd: c_int, __offset: __off_t, __whence: c_int) -> __off_t;
    fn lseek64(__fd: c_int, __offset: __off64_t, __whence: c_int) -> __off64_t;
    fn close(__fd: c_int) -> c_int;
    fn closefrom(__lowfd: c_int);
    fn read(__fd: c_int, __buf: *mut c_void, __nbytes: size_t) -> __ssize_t;
    fn write(__fd: c_int, __buf: *const c_void, __n: size_t) -> __ssize_t;
    fn pread(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: __off_t) -> __ssize_t;
    fn pwrite(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: __off_t) -> __ssize_t;
    fn pread64(__fd: c_int, __buf: *mut c_void, __nbytes: size_t, __offset: __off64_t) -> __ssize_t;
    fn pwrite64(__fd: c_int, __buf: *const c_void, __n: size_t, __offset: __off64_t) -> __ssize_t;
    fn pipe(__pipedes: *mut c_int) -> c_int;
    fn alarm(__seconds: c_uint) -> c_uint;
    fn sleep(__seconds: c_uint) -> c_uint;
    fn ualarm(__value: __useconds_t, __interval: __useconds_t) -> __useconds_t;
    fn usleep(__useconds: __useconds_t) -> c_int;
    fn pause() -> c_int;
    fn chown(__file: *const c_char, __owner: __uid_t, __group: __gid_t) -> c_int;
    fn fchown(__fd: c_int, __owner: __uid_t, __group: __gid_t) -> c_int;
    fn lchown(__file: *const c_char, __owner: __uid_t, __group: __gid_t) -> c_int;
    fn fchownat(__fd: c_int, __file: *const c_char, __owner: __uid_t, __group: __gid_t, __flag: c_int) -> c_int;
    fn chdir(__path: *const c_char) -> c_int;
    fn fchdir(__fd: c_int) -> c_int;
    fn getcwd(__buf: *mut c_char, __size: size_t) -> *mut c_char;
    fn getwd(__buf: *mut c_char) -> *mut c_char;
    fn dup(__fd: c_int) -> c_int;
    fn