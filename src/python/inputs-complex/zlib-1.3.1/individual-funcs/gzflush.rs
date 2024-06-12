type size_t = u64;
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
struct __fsid_t {
    __val: [i32; 2],
}
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
struct __mbstate_t {
    __count: i32,
    __value: __mbstate_t__value,
}
union __mbstate_t__value {
    __wch: u32,
    __wchb: [i8; 4],
}
struct _G_fpos_t {
    __pos: __off_t,
    __state: __mbstate_t,
}
type __fpos_t = _G_fpos_t;
struct _G_fpos64_t {
    __pos: __off64_t,
    __state: __mbstate_t,
}
type __fpos64_t = _G_fpos64_t;
struct _IO_FILE;
type __FILE = _IO_FILE;
struct _IO_FILE;
type FILE = _IO_FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
type _IO_lock_t = std::ffi::c_void;
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
type off_t = __off_t;
type off64_t = __off64_t;
type ssize_t = __ssize_t;
type fpos_t = __fpos_t;
type fpos64_t = __fpos64_t;
extern "C" {
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
    fn vfprintf(__s: *mut FILE, __format: *const i8, __arg: va_list) -> i32;
    fn vprintf(__format: *const i8, __arg: va_list) -> i32;
    fn vsprintf(__s: *mut i8, __format: *const i8, __arg: va_list) -> i32;
    fn snprintf(__s: *mut i8, __maxlen: size_t, __format: *const i8, ...) -> i32;
    fn vsnprintf(__s: *mut i8, __maxlen: size_t, __format: *const i8, __arg: va_list) -> i32;
    fn vdprintf(__fd: i32, __fmt: *const i8, __arg: va_list) -> i32;
    fn dprintf(__fd: i32, __fmt: *const i8, ...) -> i32;
    fn fscanf(__stream: *mut FILE, __format: *const i8, ...) -> i32;
    fn scanf(__format: *const i8, ...) -> i32;
    fn sscanf(__s: *const i8, __format: *const i8, ...) -> i32;
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
    fn __getdelim(__lineptr: *mut *mut i8, __n: *mut size_t, __delimiter: i32, __stream: *mut FILE) -> ssize_t;
    fn getdelim(__lineptr: *mut *mut i8, __n: *mut size_t, __delimiter: i32, __stream: *mut FILE) -> ssize_t;
    fn getline(__lineptr: *mut *mut i8, __n: *mut size_t, __stream: *mut FILE) -> ssize_t;
    fn fputs(__s: *const i8, __stream: *mut FILE) -> i32;
    fn puts(__s: *const i8) -> i32;
    fn ungetc(__c: i32, __stream: *mut FILE) -> i32;
    fn fread(__ptr: *mut std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite(__ptr: *const std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fread_unlocked(__ptr: *mut std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fwrite_unlocked(__ptr: *const std::ffi::c_void, __size: size_t, __n: size_t, __stream: *mut FILE) -> size_t;
    fn fseek(__stream: *mut FILE, __off: i64, __whence: i32) -> i32;
    fn ftell(__stream: *mut FILE) -> i64;
    fn rewind(__stream: *mut FILE);
    fn fseeko(__stream: *mut FILE, __off: __off_t, __whence: i32) -> i32;
    fn ftello(__stream: *mut FILE) -> __off_t;
    fn fgetpos(__stream: *mut FILE, __pos: *mut fpos_t) -> i32;
    fn fsetpos(__stream: *mut FILE, __pos: *const fpos_t) -> i32;
    fn fseeko64(__stream: *mut FILE, __off: __off64_t, __whence: i32) -> i32;
    fn ftello64(__stream: *mut FILE) -> __off64_t;
    fn fgetpos64(__stream: *mut FILE, __pos: *mut fpos64_t) -> i32;
    fn fsetpos64(__stream: *mut FILE, __pos: *const fpos64_t) -> i32;
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
    fn access(__name: *const i8, __type: i32) -> i32;
    fn faccessat(__fd: i32, __file: *const i8, __type: i32, __flag: i32) -> i32;
    fn lseek(__fd: i32, __offset: __off_t, __whence: i32) -> __off_t;
    fn lseek64(__fd: i32, __offset: __off64_t, __whence: i32) -> __off64_t;
    fn close(__fd: i32) -> i32;
    fn closefrom(__lowfd: i32);
    fn read(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t) -> ssize_t;
    fn write(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t) -> ssize_t;
    fn pread(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t, __offset: __off_t) -> ssize_t;
    fn pwrite(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t, __offset: __off_t) -> ssize_t;
    fn pread64(__fd: i32, __buf: *mut std::ffi::c_void, __nbytes: size_t, __offset: __off64_t) -> ssize_t;
    fn pwrite64(__fd: i32, __buf: *const std::ffi::c_void, __n: size_t, __offset: __off64_t) -> ssize_t;
    fn pipe(__pipedes: *mut i32) -> i32;
    fn alarm(__seconds: u32) -> u32;
    fn sleep(__seconds: u32) -> u32;
    fn ualarm(__value: __useconds_t, __interval: __useconds_t) -> __useconds_t;
    fn usleep(__useconds: __useconds_t) -> i32;
    fn pause() -> i32;
    fn chown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    fn fchown(__fd: i32, __owner: __uid_t, __group: __gid_t) -> i32;
    fn lchown(__file: *const i8, __owner: __uid_t, __group: __gid_t) -> i32;
    fn fchownat(__fd: i32, __file: *const i8, __owner: __uid_t, __group: __gid_t, __flag: i32) -> i32;
    fn chdir(__path: *const i8) -> i32;
    fn fchdir(__fd: i32) -> i32;
    fn getcwd(__buf: *mut i8, __size: size_t) -> *mut i8;
    fn getwd(__buf: *mut i8) -> *mut i8;
    fn dup(__fd: i32) -> i32;
    fn dup2(__fd: i32, __fd2: i32) -> i32;
    fn execve(__path: *const i8, __argv: *const *const i8, __envp: *const *const i8) -> i32;
    fn fexecve(__fd: i32, __argv: *const *const i8, __envp: *const *const i8) -> i32;
    fn execv(__path: *const i8, __argv: *const *const i8) -> i32;
    fn execle(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execl(__path: *const i8, __arg: *const i8, ...) -> i32;
    fn execvp(__file: *const i8, __argv: *const *const i8) -> i32;
   