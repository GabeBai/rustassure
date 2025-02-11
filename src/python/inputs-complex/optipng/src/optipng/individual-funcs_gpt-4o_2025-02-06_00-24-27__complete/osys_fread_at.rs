#![allow(unaligned_references)]
use std::io::{Read, Seek, SeekFrom};
use std::fs::File;
use std::os::unix::io::AsRawFd;

type OsysFoffsetT = i64;

#[no_mangle]
#[no_mangle]
fn osys_fread_at(
    stream: &mut File,
    offset: OsysFoffsetT,
    whence: SeekFrom,
    block: &mut [u8],
    blocksize: usize,
) -> usize {
    let pos = stream.stream_position().ok();
    let result = if stream.seek(whence).is_ok() {
        stream.read(&mut block[..blocksize]).unwrap_or(0)
    } else {
        0
    };
    if let Some(pos) = pos {
        if stream.seek(SeekFrom::Start(pos)).is_err() {
            return 0;
        }
    }
    result
}
