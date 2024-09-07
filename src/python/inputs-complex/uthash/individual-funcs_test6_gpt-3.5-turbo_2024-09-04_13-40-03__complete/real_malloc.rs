use std::os::raw::{c_char, c_int, c_void};
use std::mem;

#[repr(C)]
pub struct FILE {
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
    _chain: *mut FILE,
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
    _freeres_list: *mut FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * mem::size_of::<c_int>() - 4 * mem::size_of::<*mut c_void>() - mem::size_of::<usize>()],
}

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = c_void;

pub type size_t = usize;
pub type __off_t = c_int;
pub type __off64_t = c_int;

extern "C" {
    pub fn malloc(size: size_t) -> *mut c_void;
}

pub static mut stdin: *mut FILE = 0 as *mut FILE;
pub static mut stdout: *mut FILE = 0 as *mut FILE;
pub static mut stderr: *mut FILE = 0 as *mut FILE;

static mut alt_malloc_sizes: [size_t; 10] = [0; 10];
static mut alt_malloc_balance: c_int = 0;
static mut alt_keycmp_count: c_int = 0;
static mut alt_bzero_count: c_int = 0;

pub fn real_malloc(n: size_t) -> *mut c_void {
    unsafe { malloc(n) }
}
