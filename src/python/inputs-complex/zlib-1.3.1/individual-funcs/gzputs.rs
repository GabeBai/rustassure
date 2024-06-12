use std::ffi::CString;
use std::io::{self, Write};
use std::os::raw::{c_char, c_int};
use std::ptr;
use std::slice;
use std::str;

type z_size_t = usize;
type gzFile = *mut gz_state;
type gz_statep = *mut gz_state;

#[repr(C)]
struct gz_state {
    x: gzFile_s,
    mode: c_int,
    fd: c_int,
    path: *mut c_char,
    size: c_uint,
    want: c_uint,
    in_: *mut u8,
    out: *mut u8,
    direct: c_int,
    how: c_int,
    start: i64,
    eof: c_int,
    past: c_int,
    level: c_int,
    strategy: c_int,
    reset: c_int,
    skip: i64,
    seek: c_int,
    err: c_int,
    msg: *mut c_char,
    strm: z_stream,
}

#[repr(C)]
struct gzFile_s {
    have: c_uint,
    next: *mut u8,
    pos: i64,
}

#[repr(C)]
struct z_stream {
    next_in: *mut u8,
    avail_in: c_uint,
    total_in: u64,
    next_out: *mut u8,
    avail_out: c_uint,
    total_out: u64,
    msg: *mut c_char,
    state: *mut internal_state,
    zalloc: Option<extern "C" fn(*mut c_void, c_uint, c_uint) -> *mut c_void>,
    zfree: Option<extern "C" fn(*mut c_void, *mut c_void)>,
    opaque: *mut c_void,
    data_type: c_int,
    adler: u64,
    reserved: u64,
}

#[repr(C)]
struct internal_state;

extern "C" {
    fn gz_write(state: gz_statep, buf: *const u8, len: z_size_t) -> z_size_t;
    fn gz_error(state: gz_statep, errnum: c_int, msg: *const c_char);
}

pub unsafe fn gzputs(file: gzFile, s: *const c_char) -> c_int {
    if file.is_null() {
        return -1;
    }
    let state = file as gz_statep;
    if (*state).mode != 31153 || (*state).err != 0 {
        return -1;
    }
    let len = libc::strlen(s);
    if len > c_int::MAX as usize {
        let msg = CString::new("string length does not fit in int").unwrap();
        gz_error(state, -2, msg.as_ptr());
        return -1;
    }
    let put = gz_write(state, s as *const u8, len);
    if put < len {
        -1
    } else {
        len as c_int
    }
}