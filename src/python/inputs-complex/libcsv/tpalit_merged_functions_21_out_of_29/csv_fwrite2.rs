use std::ffi::c_void;
use std::fs::File;
use std::io::{self, Write};
use std::os::raw::c_int;

fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: usize, quote: u8) -> c_int {
    if src.is_null() {
        return 0;
    }

    let csrc = unsafe { std::slice::from_raw_parts(src as *const u8, src_size) };

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    for &byte in csrc {
        if byte == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[byte]).is_err() {
            return -1;
        }
    }

    if fp.write_all(&[quote]).is_err() {
        return -1;
    }

    0
}
