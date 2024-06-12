```rust
use std::ffi::CStr;
use std::os::raw::{c_char, c_int, c_ulong, c_void};

type size_t = c_ulong;
type va_list = *mut c_void;

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
type __int_least8_t = i8;
type __uint_least8_t = u8;
type __int_least16_t = i16;
type __uint_least16_t = u16;
type __int_least32_t = i32;
type __uint_least32_t = u32;
type __int_least64_t = i64;
type __uint_least64_t = u64;
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
    __count: c_int,
    __value: __mbstate_t_value,
}

#[repr(C)]
union __mbstate_t_value {
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
struct _IO_FILE;

type __FILE = _IO_FILE;
type FILE = _IO_FILE;

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

type _IO_marker = c_void;
type _IO_codecvt = c_void;
type _IO_wide_data = c_void;
type _IO_lock_t = c_void;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn remove(__filename: *const c_char) -> c_int;
    fn rename(__old: *const c_char, __new: *const c_char) -> c_int;
    fn renameat(__oldfd: c_int, __old: *const c_char, __newfd: c_int, __new: *const c_char) -> c_int;
    fn fclose(__stream: *mut FILE) -> c_int;
    fn tmpfile() -> *mut FILE;
    fn tmpnam(__s: *mut c_char) -> *mut c_char;
    fn tmpnam_r(__s: *mut c_char) -> *mut c_char;
    fn tempnam(__dir: *const c_char, __pfx: *const c_char) -> *mut c_char;
    fn fflush(__stream: *mut FILE) -> c_int;
    fn fflush_unlocked(__stream: *mut FILE) -> c_int;
    fn fopen(__filename: *const c_char, __modes: *const c_char) -> *mut FILE;
    fn freopen(__filename: *const c_char, __modes: *const c_char, __stream: *mut FILE) -> *mut FILE;
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
    fn vfprintf(__s: *mut FILE, __format: *const c_char, __arg: va_list) -> c_int;
    fn vprintf(__format: *const c_char, __arg: va_list) -> c_int;
    fn vsprintf(__s: *mut c_char, __format: *const c_char, __arg: va_list) -> c_int;
    fn snprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, ...) -> c_int;
    fn vsnprintf(__s: *mut c_char, __maxlen: size_t, __format: *const c_char, __arg: va_list) -> c_int;
    fn vdprintf(__fd: c_int, __fmt: *const c_char, __arg: va_list) -> c_int;
    fn dprintf(__fd: c_int, __fmt: *const c_char, ...) -> c_int;
    fn fscanf(__stream: *mut FILE, __format: *const c_char, ...) -> c_int;
    fn scanf(__format: *const c_char, ...) -> c_int;
    fn sscanf(__s: *const c_char, __format: *const c_char, ...) -> c_int;
    fn vfscanf(__s: *mut FILE, __format: *const c_char, __arg: va_list) -> c_int;
    fn vscanf(__format: *const c_char, __arg: va_list) -> c_int;
    fn vsscanf(__s: *const c_char, __format: *const c_char, __arg: va_list) -> c_int;
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
    fn __getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> __ssize_t;
    fn getdelim(__lineptr: *mut *mut c_char, __n: *mut size_t, __delimiter: c_int, __stream: *mut FILE) -> __ssize_t;
    fn getline(__lineptr: *mut *mut c_char, __n: *mut size_t, __stream: *mut FILE) -> __ssize_t;
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
    fn fseeko(__stream: *mut FILE, __off: __off_t, __whence: c_int) -> c_int;
    fn ftello(__stream: *mut FILE) -> __off_t;
    fn fgetpos(__stream: *mut FILE, __pos: *mut fpos_t) -> c_int;
    fn fsetpos(__stream: *mut FILE, __pos: *const fpos_t) -> c_int;
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
    fn memcpy(__dest: *mut c_void, __src: *const c_void, __n: size_t) -> *mut c_void;
    fn memmove(__dest: *mut c_void, __src: *const c_void, __n: size_t) -> *mut c_void;
    fn memccpy(__dest: *mut c_void, __src: *const c_void, __c: c_int, __n: size_t) -> *mut c_void;
    fn memset(__s: *mut c_void, __c: c_int, __n: size_t) -> *mut c_void;
    fn memcmp(__s1: *const c_void, __s2: *const c_void, __n: size_t) -> c_int;
    fn __memcmpeq(__s1: *const c_void, __s2: *const c_void, __n: size_t) -> c_int;
    fn memchr(__s: *const c_void, __c: c_int, __n: size_t) -> *mut c_void;
    fn strcpy(__dest: *mut c_char, __src: *const c_char) -> *mut c_char;
    fn strncpy(__dest: *mut c_char, __src: *const c_char, __n: size_t) -> *mut c_char;
    fn strcat(__dest: *mut c_char, __src: *const c_char) -> *mut c_char;
    fn strncat(__dest: *mut c_char, __src: *const c_char, __n: size_t) -> *mut c_char;
    fn strcmp(__s1: *const c_char, __s2: *const c_char) -> c_int;
    fn strncmp(__s1: *const c_char, __s2: *const c_char, __n: size_t) -> c_int;
    fn strcoll(__s1: *const c_char, __s2: *const c_char) -> c_int;
    fn strxfrm(__dest: *mut c_char, __src: *const c_char, __n: size_t) -> size_t;
    fn strdup(__s: *const c_char) -> *mut c_char;
    fn strndup(__string: *const c_char, __n: size_t) -> *mut c_char;
    fn strchr(__s: *const c_char, __c: c_int) -> *mut c_char;
    fn strrchr(__s: *const c_char, __c: c_int) -> *mut c_char;
    fn strcspn(__s: *const c_char, __reject: *const c_char) -> size_t;
    fn strspn(__s: *const c_char, __accept: *const c_char) -> size_t;
    fn strpbrk(__s: *const c_char, __accept: *const c_char) -> *mut c_char;
    fn strstr(__haystack: *const c_char, __needle: *const c_char) -> *mut c_char;
    fn strtok(__s: *mut c_char, __delim: *const c_char) -> *mut c_char;
    fn __strtok_r(__s: *mut c_char, __delim: *const c_char, __save_ptr: *mut *mut c_char) -> *mut c_char;
    fn strtok_r(__s: *mut c_char, __delim: *const c_char, __save_ptr: *mut *mut c_char) -> *mut c_char;
    fn strlen(__s: *const c_char) -> size_t;
    fn strnlen(__string: *const c_char, __maxlen: size_t) -> size_t;
    fn strerror(__errnum: c_int) -> *mut c_char;
    fn strerror_r(__errnum: c_int, __buf: *mut c_char, __buflen: size_t) -> c_int;
    fn strerror_l(__errnum: c_int, __l: locale_t) -> *mut c_char;
    fn bcmp(__s1: *const c_void, __s2: *const c_void, __n: size_t) -> c_int;
    fn bcopy(__src: *const c_void, __dest: *mut c_void, __n: size_t);
    fn bzero(__s: *mut c_void, __n: size_t);
    fn index(__s: *const c_char, __c: c_int) -> *mut c_char;
    fn rindex(__s: *const c_char, __c: c_int) -> *mut c_char;
    fn ffs(__i: c_int) -> c_int;
    fn ffsl(__l: c_long) -> c_int;
    fn ffsll(__ll: c_longlong) -> c_int;
    fn strcasecmp(__s1: *const c_char, __s2: *const c_char) -> c_int;
    fn strncasecmp(__s1: *const c_char, __s2: