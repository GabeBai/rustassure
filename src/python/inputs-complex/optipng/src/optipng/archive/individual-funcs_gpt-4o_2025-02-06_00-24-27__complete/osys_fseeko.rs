#![allow(unaligned_references)]
use std::os::raw::c_int;
use std::os::unix::prelude::RawFd;
use std::ffi::c_void;
use std::io::{Seek, SeekFrom};
use std::fs::File;
use std::os::unix::io::FromRawFd;

type osys_foffset_t = i64;

pub unsafe fn osys_fseeko(stream: *mut File, offset: osys_foffset_t, whence: c_int) -> c_int {
    let file = &mut *stream;
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64),
        1 => SeekFrom::Current(offset),
        2 => SeekFrom::End(offset),
        _ => return -1,
    };
    match file.seek(seek_from) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}
