use std::io::{Seek, SeekFrom};
use std::fs::File;
use std::os::unix::io::AsRawFd;

fn osys_fseeko(stream: &mut File, offset: osys_foffset_t, whence: i32) -> i32 {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64),
        1 => SeekFrom::Current(offset as i64),
        2 => SeekFrom::End(offset as i64),
        _ => return -1,
    };

    match stream.seek(seek_from) {
        Ok(_) => 0,
        Err(_) => -1,
    }
}

type osys_foffset_t = u64;
