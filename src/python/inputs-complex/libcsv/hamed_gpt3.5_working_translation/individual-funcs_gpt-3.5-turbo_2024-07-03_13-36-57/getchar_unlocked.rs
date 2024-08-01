use std::os::raw::{c_long, c_void};

type __off_t = c_long;
type __off64_t = c_long;
type size_t = usize;

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

#[repr(C)]
struct _IO_marker {
    _pos: *mut c_void,
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
    _lock: *mut c_void,
    _offset: __off64_t,
    __pad1: *mut c_void,
    __pad2: *mut c_void,
    __pad3: *mut c_void,
    __pad4: *mut c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i8; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<size_t>()],
}

#[repr(C)]
struct _IO_FILE_plus;

extern {
    static mut _IO_2_1_stdin_: _IO_FILE_plus;
    static mut _IO_2_1_stdout_: _IO_FILE_plus;
    static mut _IO_2_1_stderr_: _IO_FILE_plus;
    fn __uflow(file: *mut _IO_FILE) -> i32;
    static mut stdin: *mut _IO_FILE;
    static mut stdout: *mut _IO_FILE;
    static mut stderr: *mut _IO_FILE;
    static sys_nerr: i32;
    static sys_errlist: *const *const i8;

    #[inline(always)]
    fn getchar_unlocked() -> i32;
}

#[inline(always)]
fn getchar_unlocked_rust() -> i32 {
    unsafe {
        if (*stdin)._IO_read_ptr >= (*stdin)._IO_read_end {
            __uflow(stdin)
        } else {
            let value = *(*stdin)._IO_read_ptr as u8;
            (*stdin)._IO_read_ptr = (*stdin)._IO_read_ptr.offset(1);
            value as i32
        }
    }
}

fn main() {
    let c = getchar_unlocked_rust();
    println!("{}", c as u8 as char);
}
