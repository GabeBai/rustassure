
pub type size_t = u64;
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
    pub _unused2: [i8; 56],
}
extern "C" {
    pub static mut stdin: *mut FILE;
    pub static mut stdout: *mut FILE;
    pub static mut stderr: *mut FILE;
    pub fn strcpy(__dest: *mut i8, __src: *const i8) -> *mut i8;
    pub fn strlen(__s: *const i8) -> size_t;
    fn malloc(__size: size_t) -> *mut ::std::os::raw::c_void;
    fn exit(__status: i32) -> !;
}
#[repr(C)]
pub union pthread_attr_t {
    pub __size: [i8; 56],
    pub __align: i64,
}
pub unsafe fn utarray_str_cpy(dst: *mut ::std::os::raw::c_void, src: *const ::std::os::raw::c_void) {
    let srcc = src as *const *const i8;
    let dstc = dst as *mut *mut i8;
    if *srcc == std::ptr::null() {
        *dstc = std::ptr::null_mut();
    } else {
        *dstc = malloc(strlen(*srcc) + 1);
        if *dstc == std::ptr::null_mut() {
            exit(-1);
        } else {
            strcpy(*dstc, *srcc);
        }
    }
}

