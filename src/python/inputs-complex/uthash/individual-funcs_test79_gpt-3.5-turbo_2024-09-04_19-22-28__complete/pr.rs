use std::os::raw::c_char;
use std::os::raw::c_void;

#[repr(C)]
pub struct _IO_marker {
    // Define _IO_marker fields here
}

#[repr(C)]
pub struct _IO_codecvt {
    // Define _IO_codecvt fields here
}

#[repr(C)]
pub struct _IO_wide_data {
    // Define _IO_wide_data fields here
}

#[repr(C)]
pub struct _IO_lock_t {
    // Define _IO_lock_t fields here
}

#[repr(C)]
pub struct _IO_FILE {
    _flags: i32,
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
    _fileno: i32,
    _flags2: i32,
    _old_offset: i64,
    _cur_column: u16,
    _vtable_offset: i8,
    _shortbuf: [c_char; 1],
    _lock: *mut _IO_lock_t,
    _offset: i64,
    _codecvt: *mut _IO_codecvt,
    _wide_data: *mut _IO_wide_data,
    _freeres_list: *mut _IO_FILE,
    _freeres_buf: *mut c_void,
    __pad5: usize,
    _mode: i32,
    _unused2: [c_char; 15 * std::mem::size_of::<i32>() - 4 * std::mem::size_of::<*mut c_void>() - std::mem::size_of::<usize>()],
}

extern "C" {
    static stdin: *mut _IO_FILE;
    static stdout: *mut _IO_FILE;
    static stderr: *mut _IO_FILE;

    fn printf(format: *const c_char, ...) -> i32;
}

#[repr(C)]
pub struct UT_hash_handle {
    tbl: *mut UT_hash_table,
    prev: *mut c_void,
    next: *mut c_void,
    hh_prev: *mut UT_hash_handle,
    hh_next: *mut UT_hash_handle,
    key: *const c_void,
    keylen: u32,
    hashv: u32,
}

#[repr(C)]
pub struct hs_t {
    id: i32,
    tag: i32,
    hh: UT_hash_handle,
}

fn pr(hdpp: &mut *mut hs_t) {
    let mut el: *mut hs_t;
    let mut tmp: *mut hs_t;
    let mut hdp = *hdpp;

    unsafe {
        el = hdp;
        tmp = if !hdp.is_null() { (*hdp).hh.next } else { std::ptr::null_mut() };

        while !el.is_null() {
            println!("id {}, tag {}", (*el).id, (*el).tag);
            el = tmp;
            tmp = if !tmp.is_null() { (*tmp).hh.next } else { std::ptr::null_mut() };
        }
    }
}

fn main() {
    // Call pr function with some example data
    let mut hdpp: *mut hs_t = std::ptr::null_mut();
    pr(&mut hdpp);
}
