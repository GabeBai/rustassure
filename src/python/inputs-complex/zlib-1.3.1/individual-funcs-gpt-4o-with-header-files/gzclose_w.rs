use std::ffi::CString;
use std::ptr;
use std::os::raw::{c_char, c_int, c_void};
use std::os::unix::io::RawFd;
use libc::{close, free, malloc, size_t, ssize_t};

type z_stream = c_void;
type gzFile = *mut gz_state;
type gz_statep = *mut gz_state;

#[repr(C)]
struct gz_state {
    x: gzFile_s,
    mode: c_int,
    fd: RawFd,
    path: *mut c_char,
    size: c_uint,
    want: c_uint,
    in_: *mut u8,
    out: *mut u8,
    direct: c_int,
    how: c_int,
    start: off64_t,
    eof: c_int,
    past: c_int,
    level: c_int,
    strategy: c_int,
    reset: c_int,
    skip: off64_t,
    seek: c_int,
    err: c_int,
    msg: *mut c_char,
    strm: z_stream,
}

#[repr(C)]
struct gzFile_s {
    have: c_uint,
    next: *mut u8,
    pos: off64_t,
}

extern "C" {
    fn deflateEnd(strm: *mut z_stream) -> c_int;
    fn gz_zero(state: gz_statep, skip: off64_t) -> c_int;
    fn gz_comp(state: gz_statep, flush: c_int) -> c_int;
    fn gz_error(state: gz_statep, err: c_int, msg: *const c_char);
}

#[no_mangle]
pub extern "C" fn gzclose_w(file: gzFile) -> c_int {
    let mut ret = 0;
    if file.is_null() {
        return -2;
    }
    let state = file as gz_statep;
    if unsafe { (*state).mode } != 31153 {
        return -2;
    }
    if unsafe { (*state).seek } != 0 {
        unsafe { (*state).seek = 0 };
        if unsafe { gz_zero(state, (*state).skip) } == -1 {
            ret = unsafe { (*state).err };
        }
    }
    if unsafe { gz_comp(state, 4) } == -1 {
        ret = unsafe { (*state).err };
    }
    if unsafe { (*state).size } != 0 {
        if unsafe { (*state).direct } == 0 {
            unsafe { deflateEnd(&mut (*state).strm) };
            unsafe { free((*state).out as *mut c_void) };
        }
        unsafe { free((*state).in_ as *mut c_void) };
    }
    unsafe { gz_error(state, 0, ptr::null()) };
    unsafe { free((*state).path as *mut c_void) };
    if unsafe { close((*state).fd) } == -1 {
        ret = -1;
    }
    unsafe { free(state as *mut c_void) };
    ret
}