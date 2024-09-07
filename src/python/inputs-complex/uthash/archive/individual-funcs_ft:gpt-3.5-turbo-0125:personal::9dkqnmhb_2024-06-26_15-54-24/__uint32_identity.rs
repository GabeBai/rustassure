
pub type size_t = u64;
pub type __uint32_t = u32;
pub type __off_t = i64;
pub type __off64_t = i64;
pub struct _IO_FILE;
pub struct _IO_FILE;
pub type FILE = _IO_FILE;
pub struct _IO_FILE {
    pub _flags: i32,
    pub _IO_read_ptr: *mut i8,
    pub _IO_read_end: *mut i8,
    pub _IO_read_base: *mut i8,
    pub _IO_write_base: *mut i8,
    pub _IO_write_ptr: *mut i8,
    pub _IO_write_end: *mut i8,
    pub _IO_buf_base: *mut i8,
    pub _IO_buf_end: *mut i8,
    pub _IO_save_base: *mut i8,
    pub _IO_backup_base: *mut i8,
    pub _IO_save_end: *mut i8,
    pub _markers: *mut _IO_marker,
    pub _chain: *mut _IO_FILE,
    pub _fileno: i32,
    pub _flags2: i32,
    pub _old_offset: __off_t,
    pub _cur_column: u16,
    pub _vtable_offset: i8,
    pub _shortbuf: [i8; 1],
    pub _lock: *mut _IO_lock_t,
    pub _offset: __off64_t,
    pub _codecvt: *mut _IO_codecvt,
    pub _wide_data: *mut _IO_wide_data,
    pub _freeres_list: *mut _IO_FILE,
    pub _freeres_buf: *mut ::std::os::raw::c_void,
    pub __pad5: size_t,
    pub _mode: i32,
    pub _unused2: [i8; 15 * ::std::mem::size_of::<i32>() - 4 * ::std::mem::size_of::<*const ::std::os::raw::c_void>() - ::std::mem::size_of::<size_t>()],
}
extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
}
#[doc(hidden)]
#[no_mangle]
#[inline(always)]
pub fn __uint32_identity(__x: __uint32_t) -> __uint32_t {
    __x
}

