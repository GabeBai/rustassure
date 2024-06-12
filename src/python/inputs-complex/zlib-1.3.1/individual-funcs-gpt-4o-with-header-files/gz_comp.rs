use std::io::{self, Read, Write};
use std::ptr;
use std::ffi::CStr;
use libc::{c_char, c_int, c_void, size_t};

type gzFile = *mut gz_state;
type gz_statep = *mut gz_state;

#[repr(C)]
struct gzFile_s {
    have: u32,
    next: *mut u8,
    pos: i64,
}

#[repr(C)]
struct gz_state {
    x: gzFile_s,
    mode: c_int,
    fd: c_int,
    path: *mut c_char,
    size: u32,
    want: u32,
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
struct z_stream {
    next_in: *mut u8,
    avail_in: u32,
    total_in: u64,
    next_out: *mut u8,
    avail_out: u32,
    total_out: u64,
    msg: *mut c_char,
    state: *mut c_void,
    zalloc: Option<extern "C" fn(*mut c_void, u32, u32) -> *mut c_void>,
    zfree: Option<extern "C" fn(*mut c_void, *mut c_void)>,
    opaque: *mut c_void,
    data_type: c_int,
    adler: u64,
    reserved: u64,
}

extern "C" {
    fn gz_error(state: gz_statep, err: c_int, msg: *const c_char);
    fn gz_init(state: gz_statep) -> c_int;
    fn deflate(strm: *mut z_stream, flush: c_int) -> c_int;
    fn deflateReset(strm: *mut z_stream) -> c_int;
    fn write(fd: c_int, buf: *const c_void, count: size_t) -> isize;
    fn strerror(errnum: c_int) -> *const c_char;
    fn __errno_location() -> *mut c_int;
}

const Z_OK: c_int = 0;
const Z_STREAM_ERROR: c_int = -2;
const Z_FINISH: c_int = 4;

unsafe fn gz_comp(state: gz_statep, flush: c_int) -> c_int {
    let mut ret: c_int;
    let mut writ: isize;
    let mut have: u32;
    let mut put: u32;
    let max = (u32::MAX >> 2) + 1;
    let strm = &mut (*state).strm;

    if (*state).size == 0 && gz_init(state) == -1 {
        return -1;
    }

    if (*state).direct != 0 {
        while (*strm).avail_in != 0 {
            put = if (*strm).avail_in > max { max } else { (*strm).avail_in };
            writ = write((*state).fd, (*strm).next_in as *const c_void, put as size_t);
            if writ < 0 {
                gz_error(state, -1, strerror(*__errno_location()));
                return -1;
            }
            (*strm).avail_in -= writ as u32;
            (*strm).next_in = (*strm).next_in.add(writ as usize);
        }
        return 0;
    }

    if (*state).reset != 0 {
        if (*strm).avail_in == 0 {
            return 0;
        }
        deflateReset(strm);
        (*state).reset = 0;
    }

    ret = 0;
    loop {
        if (*strm).avail_out == 0 || (flush != 0 && (flush != Z_FINISH || ret == Z_OK)) {
            while (*strm).next_out > (*state).x.next {
                put = if (*strm).next_out.offset_from((*state).x.next) as u32 > max {
                    max
                } else {
                    (*strm).next_out.offset_from((*state).x.next) as u32
                };
                writ = write((*state).fd, (*state).x.next as *const c_void, put as size_t);
                if writ < 0 {
                    gz_error(state, -1, strerror(*__errno_location()));
                    return -1;
                }
                (*state).x.next = (*state).x.next.add(writ as usize);
            }
            if (*strm).avail_out == 0 {
                (*strm).avail_out = (*state).size;
                (*strm).next_out = (*state).out;
                (*state).x.next = (*state).out;
            }
        }

        have = (*strm).avail_out;
        ret = deflate(strm, flush);
        if ret == Z_STREAM_ERROR {
            gz_error(state, Z_STREAM_ERROR, CStr::from_bytes_with_nul_unchecked(b"internal error: deflate stream corrupt\0").as_ptr());
            return -1;
        }
        have -= (*strm).avail_out;

        if have == 0 {
            break;
        }
    }

    if flush == Z_FINISH {
        (*state).reset = 1;
    }

    0
}