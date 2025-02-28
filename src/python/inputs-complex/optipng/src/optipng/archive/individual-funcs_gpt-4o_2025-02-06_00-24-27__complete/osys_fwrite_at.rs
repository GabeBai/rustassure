#![allow(unaligned_references)]
use std::ffi::c_void;
use std::io::{Seek, SeekFrom, Write};
use std::os::raw::c_int;
use std::os::unix::io::AsRawFd;
use std::fs::File;
use std::os::unix::prelude::FileExt;

type osys_foffset_t = i64;

#[no_mangle]
#[no_mangle]
fn osys_fwrite_at(
    stream: &mut File,
    offset: osys_foffset_t,
    whence: c_int,
    block: &[u8],
    blocksize: usize,
) -> usize {
    use std::io::{self, Seek, SeekFrom};

    let pos = match stream.seek(SeekFrom::Current(0)) {
        Ok(pos) => pos,
        Err(_) => return 0,
    };

    if stream.flush().is_err() {
        return 0;
    }

    let seek_result = match whence {
        0 => stream.seek(SeekFrom::Start(offset as u64)),
        1 => stream.seek(SeekFrom::Current(offset)),
        2 => stream.seek(SeekFrom::End(offset)),
        _ => Err(io::Error::new(io::ErrorKind::InvalidInput, "Invalid whence")),
    };

    let result = if seek_result.is_ok() {
        match stream.write_at(block, offset as u64) {
            Ok(bytes_written) => bytes_written,
            Err(_) => 0,
        }
    } else {
        0
    };

    if stream.flush().is_err() {
        return 0;
    }

    if stream.seek(SeekFrom::Start(pos)).is_err() {
        return 0;
    }

    result
}
