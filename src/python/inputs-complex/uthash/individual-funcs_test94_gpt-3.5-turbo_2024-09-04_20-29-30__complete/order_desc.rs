use std::os::raw::{c_long, c_ulong};

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = ();

#[repr(C)]
struct _IO_FILE {
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
    _chain: *mut _IO_FILE,
    _fileno: i32,
    _flags2: i32,
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [u8; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: c_ulong,
    _mode: i32,
    _unused2: [i32; 15],
}

static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
static mut stderr: *mut _IO_FILE = std::ptr::null_mut();

struct El {
    id: i32,
    score: i32,
    next: Option<Box<El>>,
    prev: Option<Box<El>>,
    next_list2: Option<Box<El>>,
    prev_list2: Option<Box<El>>,
}

fn order_desc(a: &El, b: &El) -> i32 {
    if a.score > b.score {
        -1
    } else if a.score < b.score {
        1
    } else {
        0
    }
}
