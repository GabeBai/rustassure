use std::ffi::CString;
use std::io::{self, Read, Write};
use std::mem;
use std::os::raw::{c_char, c_int, c_long, c_uchar, c_uint, c_ulong, c_void};
use std::os::unix::io::RawFd;
use std::ptr;

type size_t = c_ulong;
type va_list = *mut c_void;
type __gnuc_va_list = *mut c_void;

type __u_char = c_uchar;
type __u_short = u16;
type __u_int = c_uint;
type __u_long = c_ulong;
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
    _unused2: [c_char; 15 * mem::size_of::<c_int>() - 4 * mem::size_of::<*mut c_void>() - mem::size_of::<size_t>()],
}

type FILE = _IO_FILE;
type fpos_t = __fpos_t;
type fpos64_t = __fpos64_t;
type off_t = __off_t;
type off64_t = __off64_t;
type ssize_t = __ssize_t;

extern "C" {
    static mut stdin: *mut FILE;
    static mut stdout: *mut FILE;
    static mut stderr: *mut FILE;

    fn remove(filename: *const c_char) -> c_int;
    fn rename(old: *const c_char, new: *const c_char) -> c_int;
    fn renameat(oldfd: c_int, old: *const c_char, newfd: c_int, new: *const c_char) -> c_int;
    fn fclose(stream: *mut FILE) -> c_int;
    fn tmpfile() -> *mut FILE;
    fn tmpfile64() -> *mut FILE;
    fn tmpnam(s: *mut c_char) -> *mut c_char;
    fn tmpnam_r(s: *mut c_char) -> *mut c_char;
    fn tempnam(dir: *const c_char, pfx: *const c_char) -> *mut c_char;
    fn fflush(stream: *mut FILE) -> c_int;
    fn fflush_unlocked(stream: *mut FILE) -> c_int;
    fn fopen(filename: *const c_char, modes: *const c_char) -> *mut FILE;
    fn freopen(filename: *const c_char, modes: *const c_char, stream: *mut FILE) -> *mut FILE;
    fn fopen64(filename: *const c_char, modes: *const c_char) -> *mut FILE;
    fn freopen64(filename: *const c_char, modes: *const c_char, stream: *mut FILE) -> *mut FILE;
    fn fdopen(fd: c_int, modes: *const c_char) -> *mut FILE;
    fn fmemopen(s: *mut c_void, len: size_t, modes: *const c_char) -> *mut FILE;
    fn open_memstream(bufloc: *mut *mut c_char, sizeloc: *mut size_t) -> *mut FILE;
    fn setbuf(stream: *mut FILE, buf: *mut c_char);
    fn setvbuf(stream: *mut FILE, buf: *mut c_char, modes: c_int, n: size_t) -> c_int;
    fn setbuffer(stream: *mut FILE, buf: *mut c_char, size: size_t);
    fn setlinebuf(stream: *mut FILE);
    fn fprintf(stream: *mut FILE, format: *const c_char, ...) -> c_int;
    fn printf(format: *const c_char, ...) -> c_int;
    fn sprintf(s: *mut c_char, format: *const c_char, ...) -> c_int;
    fn vfprintf(s: *mut FILE, format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn vprintf(format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn vsprintf(s: *mut c_char, format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn snprintf(s: *mut c_char, maxlen: size_t, format: *const c_char, ...) -> c_int;
    fn vsnprintf(s: *mut c_char, maxlen: size_t, format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn vdprintf(fd: c_int, fmt: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn dprintf(fd: c_int, fmt: *const c_char, ...) -> c_int;
    fn fscanf(stream: *mut FILE, format: *const c_char, ...) -> c_int;
    fn scanf(format: *const c_char, ...) -> c_int;
    fn sscanf(s: *const c_char, format: *const c_char, ...) -> c_int;
    fn vfscanf(s: *mut FILE, format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn vscanf(format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn vsscanf(s: *const c_char, format: *const c_char, arg: __gnuc_va_list) -> c_int;
    fn fgetc(stream: *mut FILE) -> c_int;
    fn getc(stream: *mut FILE) -> c_int;
    fn getchar() -> c_int;
    fn getc_unlocked(stream: *mut FILE) -> c_int;
    fn getchar_unlocked() -> c_int;
    fn fgetc_unlocked(stream: *mut FILE) -> c_int;
    fn fputc(c: c_int, stream: *mut FILE) -> c_int;
    fn putc(c: c_int, stream: *mut FILE) -> c_int;
    fn putchar(c: c_int) -> c_int;
    fn fputc_unlocked(c: c_int, stream: *mut FILE) -> c_int;
    fn putc_unlocked(c: c_int, stream: *mut FILE) -> c_int;
    fn putchar_unlocked(c: c_int) -> c_int;
    fn getw(stream: *mut FILE) -> c_int;
    fn putw(w: c_int, stream: *mut FILE) -> c_int;
    fn fgets(s: *mut c_char, n: c_int, stream: *mut FILE) -> *mut c_char;
    fn __getdelim(lineptr: *mut *mut c_char, n: *mut size_t, delimiter: c_int, stream: *mut FILE) -> ssize_t;
    fn getdelim(lineptr: *mut *mut c_char, n: *mut size_t, delimiter: c_int, stream: *mut FILE) -> ssize_t;
    fn getline(lineptr: *mut *mut c_char, n: *mut size_t, stream: *mut FILE) -> ssize_t;
    fn fputs(s: *const c_char, stream: *mut FILE) -> c_int;
    fn puts(s: *const c_char) -> c_int;
    fn ungetc(c: c_int, stream: *mut FILE) -> c_int;
    fn fread(ptr: *mut c_void, size: size_t, n: size_t, stream: *mut FILE) -> size_t;
    fn fwrite(ptr: *const c_void, size: size_t, n: size_t, s: *mut FILE) -> size_t;
    fn fread_unlocked(ptr: *mut c_void, size: size_t, n: size_t, stream: *mut FILE) -> size_t;
    fn fwrite_unlocked(ptr: *const c_void, size: size_t, n: size_t, stream: *mut FILE) -> size_t;
    fn fseek(stream: *mut FILE, off: c_long, whence: c_int) -> c_int;
    fn ftell(stream: *mut FILE) -> c_long;
    fn rewind(stream: *mut FILE);
    fn fseeko(stream: *mut FILE, off: __off_t, whence: c_int) -> c_int;
    fn ftello(stream: *mut FILE) -> __off_t;
    fn fgetpos(stream: *mut FILE, pos: *mut fpos_t) -> c_int;
    fn fsetpos(stream: *mut FILE, pos: *const fpos_t) -> c_int;
    fn fseeko64(stream: *mut FILE, off: __off64_t, whence: c_int) -> c_int;
    fn ftello64(stream: *mut FILE) -> __off64_t;
    fn fgetpos64(stream: *mut FILE, pos: *mut fpos64_t) -> c_int;
    fn fsetpos64(stream: *mut FILE, pos: *const fpos64_t) -> c_int;
    fn clearerr(stream: *mut FILE);
    fn feof(stream: *mut FILE) -> c_int;
    fn ferror(stream: *mut FILE) -> c_int;
    fn clearerr_unlocked(stream: *mut FILE);
    fn feof_unlocked(stream: *mut FILE) -> c_int;
    fn ferror_unlocked(stream: *mut FILE) -> c_int;
    fn perror(s: *const c_char);
    fn fileno(stream: *mut FILE) -> c_int;
    fn fileno_unlocked(stream: *mut FILE) -> c_int;
    fn pclose(stream: *mut FILE) -> c_int;
    fn popen(command: *const c_char, modes: *const c_char) -> *mut FILE;
    fn ctermid(s: *mut c_char) -> *mut c_char;
    fn flockfile(stream: *mut FILE);
    fn ftrylockfile(stream: *mut FILE) -> c_int;
    fn funlockfile(stream: *mut FILE);
    fn __uflow(file: *mut FILE) -> c_int;
    fn __overflow(file: *mut FILE, c: c_int) -> c_int;
}

#[repr(C)]
struct gzFile_s {
    have: c_uint,
    next: *mut c_uchar,
    pos: off64_t,
}

type gzFile = *mut gzFile_s;

#[repr(C)]
struct gz_state {
    x: gzFile_s,
    mode: c_int,
    fd: c_int,
    path: *mut c_char,
    size: c_uint,
    want: c_uint,
    in_: *mut c_uchar,
    out: *mut c_uchar,
    direct: c_int,
    how: c_int,
    start: off64_t,
    eof: c_int,
    past: c_int,
    level: c_int,
    strategy: c_int,
    reset: c_int,
    skip: off64_t,
    seek: c_int,
    err: c_int,
    msg: *mut c_char,
    strm: z_stream,
}

type gz_statep = *mut gz_state;

#[repr(C)]
struct z_stream {
    next_in: *mut c_uchar,
    avail_in: c_uint,
    total_in: c_ulong,
    next_out: *mut c_uchar,
    avail_out: c_uint,
    total_out: c_ulong,
    msg: *mut c_char,
    state: *mut c_void,
    zalloc: alloc_func,
    zfree: free_func,
    opaque: *mut c_void,
    data_type: c_int,
    adler: c_ulong,
    reserved: c_ulong,
}

type z_streamp = *mut z_stream;
type alloc_func = Option<unsafe extern "C" fn(*mut c_void, c_uint, c_uint) -> *mut c_void>;
type free_func = Option<unsafe extern "C" fn(*mut c_void, *mut c_void)>;

extern "C" {
    fn inflateEnd(strm: *mut z_stream) -> c_int;
    fn free(ptr: *mut c_void);
    fn close(fd: c_int) -> c_int;
}

unsafe extern "C" fn gzclose_r(file: gzFile) -> c_int {
    let mut ret: c_int;
    let mut err: c_int;
    let state: gz_statep;

    if file.is_null() {
        return -2;
    }
    state = file as gz_statep;
    if (*state).mode != 7247 {
        return -2;
    }
    if (*state).size != 0 {
        inflateEnd(&mut (*state).strm);
        free((*state).out as *mut c_void);
        free((*state).in_ as *mut c_void);
    }
    err = if (*state).err == -5 { -5 } else { 0 };
    gz_error(state, 0, ptr::null());
    free((*state).path as *mut c_void);
    ret = close((*state).fd);
    free(state as *mut c_void);
    if ret != 0 {
        -1
    } else {
        err
    }
}

extern "C" {
    fn gz_error(state: gz_statep, err: c_int, msg: *const c_char);
}