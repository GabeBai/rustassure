use std::io::{self, Read, Write};
use std::mem;
use std::ptr;

type size_t = usize;
type c_void = std::ffi::c_void;

#[repr(C)]
struct gzFile_s {
    have: u32,
    next: *mut u8,
    pos: i64,
}

#[repr(C)]
struct z_stream {
    next_in: *mut u8,
    avail_in: u32,
    total_in: u64,
    next_out: *mut u8,
    avail_out: u32,
    total_out: u64,
    msg: *mut i8,
    state: *mut c_void,
    zalloc: Option<extern "C" fn(*mut c_void, u32, u32) -> *mut c_void>,
    zfree: Option<extern "C" fn(*mut c_void, *mut c_void)>,
    opaque: *mut c_void,
    data_type: i32,
    adler: u64,
    reserved: u64,
}

#[repr(C)]
struct gz_state {
    x: gzFile_s,
    mode: i32,
    fd: i32,
    path: *mut i8,
    size: u32,
    want: u32,
    in_: *mut u8,
    out: *mut u8,
    direct: i32,
    how: i32,
    start: i64,
    eof: i32,
    past: i32,
    level: i32,
    strategy: i32,
    reset: i32,
    skip: i64,
    seek: i32,
    err: i32,
    msg: *mut i8,
    strm: z_stream,
}

type gz_statep = *mut gz_state;

extern "C" {
    fn gz_error(state: gz_statep, err: i32, msg: *const i8);
    fn gz_intmax() -> u32;
    fn gz_init(state: gz_statep) -> i32;
    fn gz_zero(state: gz_statep, skip: i64) -> i32;
    fn gz_comp(state: gz_statep, flush: i32) -> i32;
}

unsafe fn gz_write(state: gz_statep, buf: *const c_void, len: size_t) -> size_t {
    let mut put = len;
    if len == 0 {
        return 0;
    }
    if (*state).size == 0 && gz_init(state) == -1 {
        return 0;
    }
    if (*state).seek != 0 {
        (*state).seek = 0;
        if gz_zero(state, (*state).skip) == -1 {
            return 0;
        }
    }
    if len < (*state).size as size_t {
        loop {
            let mut have: u32;
            let mut copy: u32;
            if (*state).strm.avail_in == 0 {
                (*state).strm.next_in = (*state).in_;
            }
            have = ((*state).strm.next_in.add((*state).strm.avail_in as usize) as usize - (*state).in_ as usize) as u32;
            copy = (*state).size - have;
            if copy as size_t > len {
                copy = len as u32;
            }
            ptr::copy_nonoverlapping(buf as *const u8, (*state).in_.add(have as usize), copy as usize);
            (*state).strm.avail_in += copy;
            (*state).x.pos += copy as i64;
            buf = (buf as *const u8).add(copy as usize) as *const c_void;
            len -= copy as size_t;
            if len != 0 && gz_comp(state, 0) == -1 {
                return 0;
            }
            if len == 0 {
                break;
            }
        }
    } else {
        if (*state).strm.avail_in != 0 && gz_comp(state, 0) == -1 {
            return 0;
        }
        (*state).strm.next_in = buf as *mut u8;
        loop {
            let mut n = u32::MAX;
            if n as size_t > len {
                n = len as u32;
            }
            (*state).strm.avail_in = n;
            (*state).x.pos += n as i64;
            if gz_comp(state, 0) == -1 {
                return 0;
            }
            len -= n as size_t;
            if len == 0 {
                break;
            }
        }
    }
    put
}