use std::io::{Seek, SeekFrom};
use std::fs::File;

type OsysFoffsetT = i64;

fn osys_fseeko(stream: &mut File, offset: OsysFoffsetT, whence: i32) -> std::io::Result<u64> {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64),
        1 => SeekFrom::Current(offset),
        2 => SeekFrom::End(offset),
        _ => return Err(std::io::Error::new(std::io::ErrorKind::InvalidInput, "Invalid whence")),
    };
    stream.seek(seek_from)
}
