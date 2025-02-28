use std::ffi::c_void;
use std::io::{Read, Seek, SeekFrom};
use std::os::raw::c_int;

type OsysFoffsetT = i64;

pub unsafe fn osys_fread_at(
    stream: *mut libc::FILE,
    offset: OsysFoffsetT,
    whence: c_int,
    block: *mut c_void,
    blocksize: usize,
) -> usize {
    let mut pos = 0i64;
    let mut result;

    if libc::fgetpos(stream, &mut pos as *mut _ as *mut libc::fpos_t) != 0 {
        return 0;
    }

    let seek_from = match whence {
        libc::SEEK_SET => SeekFrom::Start(offset as u64),
        libc::SEEK_CUR => SeekFrom::Current(offset),
        libc::SEEK_END => SeekFrom::End(offset),
        _ => return 0,
    };

    let mut file = std::fs::File::from_raw_fd(libc::fileno(stream));
    if file.seek(seek_from).is_ok() {
        let mut buffer = std::slice::from_raw_parts_mut(block as *mut u8, blocksize);
        result = file.read(&mut buffer).unwrap_or(0);
    } else {
        result = 0;
    }

    std::mem::forget(file);

    if libc::fsetpos(stream, &pos as *const _ as *const libc::fpos_t) != 0 {
        result = 0;
    }

    result
}