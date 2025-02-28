use std::io::{Seek, SeekFrom, Write};
use std::fs::File;

pub fn osys_fwrite_at(
    stream: &mut File,
    offset: i64,
    whence: i32,
    block: &[u8],
    blocksize: usize,
) -> usize {
    let pos = stream.stream_position().unwrap_or(0);
    let mut result = 0;

    if stream.flush().is_ok() {
        let seek_from = match whence {
            0 => SeekFrom::Start(offset as u64),
            1 => SeekFrom::Current(offset),
            2 => SeekFrom::End(offset),
            _ => return 0,
        };

        if stream.seek(seek_from).is_ok() {
            result = stream.write(block).unwrap_or(0);
        }

        if stream.flush().is_err() {
            result = 0;
        }

        if stream.seek(SeekFrom::Start(pos)).is_err() {
            result = 0;
        }
    }

    result
}