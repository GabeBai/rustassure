#[repr(C)]
pub struct FILE {
    _flags: i32,
    _IO_read_ptr: *mut u8,
    _IO_read_end: *mut u8,
    _IO_read_base: *mut u8,
    _IO_write_base: *mut u8,
    _IO_write_ptr: *mut u8,
    _IO_write_end: *mut u8,
    _IO_buf_base: *mut u8,
    _IO_buf_end: *mut u8,
    _IO_save_base: *mut u8,
    _IO_backup_base: *mut u8,
    _IO_save_end: *mut u8,
    _markers: *mut _IO_marker,
    _chain: *mut FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: __off_t,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [u8; 1],
    _lock: *mut _IO_lock_t,
    _offset: __off64_t,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: size_t,
    _mode: i32,
    _unused2: [i32; 15],
}

#[repr(C)]
pub struct _IO_marker;

#[repr(C)]
pub struct _IO_codecvt;

#[repr(C)]
pub struct _IO_wide_data;

pub type _IO_lock_t = std::ffi::c_void;

pub type size_t = usize;
pub type __off_t = i64;
pub type __off64_t = i64;
pub type __uint16_t = u16;

pub const stdin: *mut FILE = std::ptr::null_mut();
pub const stdout: *mut FILE = std::ptr::null_mut();
pub const stderr: *mut FILE = std::ptr::null_mut();

fn __bswap_16(__bsx: __uint16_t) -> __uint16_t {
    ((__bsx >> 8) & 0xff | (__bsx & 0xff) << 8)
}
