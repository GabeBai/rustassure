use std::os::raw::{c_void, c_long};
use std::io::{Result, Error, ErrorKind};

extern "C" {
    fn fflush(stream: *mut std::ffi::c_void) -> i32;
    fn fgetpos(stream: *mut std::ffi::c_void, pos: *mut c_long) -> i32;
    fn fsetpos(stream: *mut std::ffi::c_void, pos: *const c_long) -> i32;
    fn fwrite(ptr: *const c_void, size: usize, nitems: usize, stream: *mut std::ffi::c_void) -> usize;
    fn osys_fseeko(stream: *mut std::ffi::c_void, offset: i64, whence: i32) -> i32;
}

fn osys_fwrite_at(stream: *mut std::ffi::c_void, offset: i64, whence: i32, block: *const c_void, blocksize: usize) -> Result<usize> {
    let mut pos: c_long = 0;
    let mut result: usize = 0;

    unsafe {
        if fgetpos(stream, &mut pos) != 0 || fflush(stream) != 0 {
            return Err(Error::new(ErrorKind::Other, "Error flushing stream"));
        }

        if osys_fseeko(stream, offset, whence) == 0 {
            result = fwrite(block, 1, blocksize, stream);
        } else {
            result = 0;
        }

        if fflush(stream) != 0 {
            result = 0;
        }

        if fsetpos(stream, &pos) != 0 {
            result = 0;
        }
    }

    Ok(result)
}
