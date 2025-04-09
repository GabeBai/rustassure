#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Write};
use std::os::raw::{c_int, c_uchar, c_void};

#[no_mangle]
pub fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: usize, quote: c_uchar) -> c_int {
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
