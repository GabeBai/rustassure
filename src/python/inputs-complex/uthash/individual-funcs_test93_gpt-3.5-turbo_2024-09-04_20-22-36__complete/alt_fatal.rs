use std::os::raw::{c_char, c_int, c_long};
use std::ptr;
use std::mem;

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

type _IO_lock_t = ();

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
    _freeres_buf: *mut std::ffi::c_void,
    __pad5: usize,
    _mode: c_int,
    _unused2: [c_char; 15 * mem::size_of::<c_int>() - 4 * mem::size_of::<*mut std::ffi::c_void>() - mem::size_of::<usize>()],
}

static mut stdin: *mut _IO_FILE = ptr::null_mut();
static mut stdout: *mut _IO_FILE = ptr::null_mut();
static mut stderr: *mut _IO_FILE = ptr::null_mut();

type jmp_buf = [c_long; 8];

#[repr(C)]
struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut std::ffi::c_void,
    next: *mut std::ffi::c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const std::ffi::c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
struct UT_hash_table;

#[repr(C)]
struct example_user_t {
    id: c_int,
    cookie: c_int,
    hh: UT_hash_handle,
}

static mut malloc_cnt: c_int = 0;
static mut malloc_failed: c_int = 0;
static mut is_fatal: c_int = 0;
static mut j_buf: jmp_buf = [0; 8];
static mut users: *mut example_user_t = ptr::null_mut();
static mut user_id: c_int = 0;

fn alt_fatal(s: &str) {
    let _ = s;
    unsafe {
        is_fatal = 1;
        longjmp(&j_buf as *const c_long, 1);
    }
}

extern "C" {
    fn longjmp(env: *const c_long, val: c_int) -> !;
}
