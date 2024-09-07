use std::os::raw::{c_char, c_int, c_long, c_void};
use std::mem;

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = c_void;

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
    _old_offset: c_long,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: c_long,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * mem::size_of::<c_int>() - 4 * mem::size_of::<*mut c_void>() - mem::size_of::<usize>()],
}

static mut stdin: *mut _IO_FILE = std::ptr::null_mut();
static mut stdout: *mut _IO_FILE = std::ptr::null_mut();
static mut stderr: *mut _IO_FILE = std::ptr::null_mut();

#[link(name = "c")]
extern "C" {
    fn printf(format: *const c_char, ...) -> c_int;
}

struct netq_t {
    next: *mut netq_t,
    t: c_int,
}

fn dump_queue(queue: *mut netq_t) {
    let mut p = queue;
    let mut i = 0;
    unsafe {
        if p.is_null() {
            printf("(null)\n".as_ptr() as *const c_char);
        } else {
            while !p.is_null() {
                printf("node #%d, timeout: %d\n".as_ptr() as *const c_char, i, (*p).t);
                i += 1;
                p = (*p).next;
            }
        }
    }
}
