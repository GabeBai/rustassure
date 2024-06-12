type size_t = usize;
type va_list = __builtin_va_list;
type __gnuc_va_list = __builtin_va_list;

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
type __timer_t = *mut std::ffi::c_void;
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
type __caddr_t = *mut i8;
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
    __wchb: [i8; 4],
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
    _IO_read_ptr: *mut i8,
    _IO_read_end: *mut i8,
    _IO_read_base: *mut i8,
    _IO_write_base: *mut i8,
    _IO_write_ptr: *mut i8,
    _IO_write_end: *mut i8,
    _IO_buf_base: *mut i8,
    _IO_buf_end: *mut i8,
    _IO_save_base: *mut i8,
    _IO_backup_base: *mut i8,
    _IO_save_end: *mut i8,
    _markers: *mut _IO_marker,
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [i8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut std::ffi::c_void>() - std::mem::size_of::<size_t>()],
}

type FILE = _IO_FILE;

extern {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn remove(__filename: *const i8) -> i32;
    fn rename(__old: *const i8, __new: *const i8) -> i32;
    fn renameat(__oldfd: i32, __old: *const i8, __newfd: i32, __new: *const i8) -> i32;
    fn fclose(__stream: *mut FILE) -> i32;
    fn tmpfile() -> *mut FILE;
    fn tmpfile64() -> *mut FILE;
    fn tmpnam(__s: *mut i8) -> *mut i8;
    fn tmpnam_r(__s: *mut i8) -> *mut i8;
    fn tempnam(__dir: *const i8, __pfx: *const i8) -> *mut i8;
    fn fflush(__stream: *mut FILE) -> i32;
    fn fflush_unlocked(__stream: *mut FILE) -> i32;
    fn fopen(__filename: *const i8, __modes: *const i8) -> *mut FILE;
    fn freopen(__filename: *const i8, __modes: *const i8, __stream: *mut FILE) -> *mut FILE;
    fn fopen64(__filename: *const i8, __modes: *const i8) -> *mut FILE;
    fn freopen64(__filename: *const i8, __modes: *const i8, __stream: *mut FILE) -> *mut FILE;
    fn fdopen(__fd: i32, __modes: *const i8) -> *mut FILE;
    fn fmemopen(__s: *mut std::ffi::c_void, __len: size_t, __modes: *const i8) -> *mut FILE;
    fn open_memstream(__bufloc: *mut *mut i8, __sizeloc: *mut size_t) -> *mut FILE;
    fn setbuf(__stream: *mut FILE, __buf: *mut i8);
    fn setvbuf(__stream: *mut FILE, __buf: *mut i8, __modes: i32, __n: size_t) -> i32;
    fn setbuffer(__stream: *mut FILE, __buf: *mut i8, __size: size_t);
    fn setlinebuf(__stream: *mut FILE);
    fn fprintf(__stream: *mut FILE, __format: *const i8, ...) -> i32;
    fn printf(__format: *const i8, ...) -> i32;
    fn sprintf(__s: *mut i8, __format: *const i8, ...) -> i32;
    fn vfprintf(__s: *mut FILE, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn vprintf(__format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn vsprintf(__s: *mut i8, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn snprintf(__s: *mut i8, __maxlen: size_t, __format: *const i8, ...) -> i32;
    fn vsnprintf(__s: *mut i8, __maxlen: size_t, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn vdprintf(__fd: i32, __fmt: *const i8, __arg: __gnuc_va_list) -> i32;
    fn dprintf(__fd: i32, __fmt: *const i8, ...) -> i32;
    fn fscanf(__stream: *mut FILE, __format: *const i8, ...) -> i32;
    fn scanf(__format: *const i8, ...) -> i32;
    fn sscanf(__s: *const i8, __format: *const i8, ...) -> i32;
    fn __isoc99_fscanf(__stream: *mut FILE, __format: *const i8, ...) -> i32;
    fn __isoc99_scanf(__format: *const i8, ...) -> i32;
    fn __isoc99_sscanf(__s: *const i8, __format: *const i8, ...) -> i32;
    fn vfscanf(__s: *mut FILE, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn vscanf(__format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn vsscanf(__s: *const i8, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn __isoc99_vfscanf(__s: *mut FILE, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn __isoc99_vscanf(__format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn __isoc99_vsscanf(__s: *const i8, __format: *const i8, __arg: __gnuc_va_list) -> i32;
    fn fgetc(__stream: *mut FILE) -> i32;
    fn getc(__stream: *mut FILE) -> i32;
    fn getchar() -> i32;
    fn getc_unlocked(__stream: *mut FILE) -> i32;
    fn getchar_unlocked() -> i32;
    fn fgetc_unlocked(__stream: *mut FILE) -> i32;
    fn fputc(__c: i32, __stream: *mut FILE) -> i32;
    fn putc(__c: i32, __stream: *mut FILE) -> i32;
    fn putchar(__c: i32) -> i32;
    fn fputc_unlocked(__c: i32, __stream: *mut FILE) -> i32;
    fn putc_unlocked(__c: i32, __stream: *mut FILE) -> i32;
    fn putchar_unlocked(__c: i32) -> i32;
    fn getw(__stream: *mut FILE) -> i32;
    fn putw(__w: i32, __stream: *mut FILE) -> i32;
    fn fgets(__s: *mut i8, __n: i32, __stream: *mut FILE) -> *mut i8;
    fn __getdelim(__lineptr: *mut *mut i8, __n: *mut size_t, __delimiter: i32, __stream: *mut FILE) -> __ssize_t;
    fn getdelim(__lineptr: *mut *mut i8, __n: *mut size_t, __delimiter: i32, __stream: *mut FILE) -> __ssize_t;
    fn getline(__lineptr: *mut *mut i8, __n: *mut size_t, __stream: *mut FILE) -> __ssize_t;
    fn fputs(__s: *const i8, __stream: *mut FILE) -> i32;
    fn puts(__s: *const i8) -> i32;
    fn ungetc(__c: i32, __stream: *mut FILE) -> i32;
    fn fread(__ptr: *mut std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite(__ptr: *const std::ffi::c_void, __size: size_t, __n: size_t, __s: *mut FILE) -> size_t;
    fn fread_unlocked(__ptr: *mut std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite_unlocked(__ptr: *const std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fseek(__stream: *mut FILE, __off: i64, __whence: i32) -> i32;
    fn ftell(__stream: *mut FILE) -> i64;
    fn rewind(__stream: *mut FILE);
    fn fseeko(__stream: *mut FILE, __off: __off_t, __whence: i32) -> i32;
    fn ftello(__stream: *mut FILE) -> __off_t;
    fn fgetpos(__stream: *mut FILE, __pos: *mut __fpos_t) -> i32;
    fn fsetpos(__stream: *mut FILE, __pos: *const __fpos_t) -> i32;
    fn fseeko64(__stream: *mut FILE, __off: __off64_t, __whence: i32) -> i32;
    fn ftello64(__stream: *mut FILE) -> __off64_t;
    fn fgetpos64(__stream: *mut FILE, __pos: *mut __fpos64_t) -> i32;
    fn fsetpos64(__stream: *mut FILE, __pos: *const __fpos64_t) -> i32;
    fn clearerr(__stream: *mut FILE);
    fn feof(__stream: *mut FILE) -> i32;
    fn ferror(__stream: *mut FILE) -> i32;
    fn clearerr_unlocked(__stream: *mut FILE);
    fn feof_unlocked(__stream: *mut FILE) -> i32;
    fn ferror_unlocked(__stream: *mut FILE) -> i32;
    fn perror(__s: *const i8);
    fn fileno(__stream: *mut FILE) -> i32;
    fn fileno_unlocked(__stream: *mut FILE) -> i32;
    fn pclose(__stream: *mut FILE) -> i32;
    fn popen(__command: *const i8, __modes: *const i8) -> *mut FILE;
    fn ctermid(__s: *mut i8) -> *mut i8;
    fn flockfile(__stream: *mut FILE);
    fn ftrylockfile(__stream: *mut FILE) -> i32;
    fn funlockfile(__stream: *mut FILE);
    fn __uflow(__stream: *mut FILE) -> i32;
    fn __overflow(__stream: *mut FILE, __c: i32) -> i32;
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
type charf = i8;
type intf = i32;
type uIntf = uInt;
type uLongf = uLong;
type voidpc = *const std::ffi::c_void;
type voidpf = *mut std::ffi::c_void;
type voidp = *mut std::ffi::c_void;
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

extern {
    fn select(__nfds: i32, __readfds: *mut fd_set, __writefds: *mut fd_set, __exceptfds: *mut fd_set, __timeout: *mut timeval) -> i32;
    fn pselect(__nfds: i32, __readfds: *mut