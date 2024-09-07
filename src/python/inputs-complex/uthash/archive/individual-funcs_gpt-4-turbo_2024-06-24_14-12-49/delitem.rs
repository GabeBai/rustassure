use std::collections::HashMap;
use std::ffi::CString;
use std::os::raw::{c_char, c_int};

type size_t = usize;
type uint8_t = u8;
type int32_t = i32;
type uint32_t = u32;
type uint64_t = u64;
type off_t = i64;
type time_t = i64;
type suseconds_t = i64;

#[repr(C)]
struct mbstate_t {
    count: i32,
    value: mbstate_t__bindgen_ty_1,
}

#[repr(C)]
union mbstate_t__bindgen_ty_1 {
    wch: u32,
    wchb: [u8; 4],
}

#[repr(C)]
struct fpos_t {
    pos: off_t,
    state: mbstate_t,
}

#[repr(C)]
struct FILE {
    flags: i32,
    read_ptr: *mut c_char,
    read_end: *mut c_char,
    read_base: *mut c_char,
    write_base: *mut c_char,
    write_ptr: *mut c_char,
    write_end: *mut c_char,
    buf_base: *mut c_char,
    buf_end: *mut c_char,
    save_base: *mut c_char,
    backup_base: *mut c_char,
    save_end: *mut c_char,
    markers: *mut _IO_marker,
    chain: *mut FILE,
    fileno: i32,
    flags2: i32,
    old_offset: off_t,
    cur_column: u16,
    vtable_offset: i8,
    shortbuf: [c_char; 1],
    lock: *mut _IO_lock_t,
    offset: off64_t,
    codecvt: *mut _IO_codecvt,
    wide_data: *mut _IO_wide_data,
    freeres_list: *mut FILE,
    freeres_buf: *mut c_void,
    pad5: size_t,
    mode: i32,
    unused2: [u8; 20], // Adjust size accordingly
}

extern "C" {
    static stdin: *mut FILE;
    static stdout: *mut FILE;
    static stderr: *mut FILE;
}

extern "C" {
    fn memcmp(s1: *const c_void, s2: *const c_void, n: size_t) -> c_int;
}

extern "C" {
    fn strlen(s: *const c_char) -> size_t;
}

#[repr(C)]
struct div_t {
    quot: i32,
    rem: i32,
}

#[repr(C)]
struct ldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct lldiv_t {
    quot: i64,
    rem: i64,
}

#[repr(C)]
struct timeval {
    tv_sec: time_t,
    tv_usec: suseconds_t,
}

#[repr(C)]
struct timespec {
    tv_sec: time_t,
    tv_nsec: i64,
}

extern "C" {
    fn free(ptr: *mut c_void);
}

type compar_fn_t = Option<unsafe extern "C" fn(a: *const c_void, b: *const c_void) -> c_int>;

#[derive(Debug, Hash, Eq, PartialEq)]
struct HStruct {
    name: String,
    weight: i32,
}

impl HStruct {
    fn new(name: &str, weight: i32) -> Self {
        HStruct {
            name: name.to_string(),
            weight,
        }
    }
}

fn delitem(h_table: &mut HashMap<String, HStruct>, name: &str) {
    h_table.remove(name);
}
