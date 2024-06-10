rust
extern crate libc;

use libc::{c_long, c_ulong};

fn gzseek(file: *mut u8, offset: i64, whence: i32) -> i64 {
    let ret: i64 = unsafe { libc::gzseek64(file, offset as u64, whence as u32) };
    if ret == offset as u64 {
        return ret;
    } else {
        return -1;
    }
}