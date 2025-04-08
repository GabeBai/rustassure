use std::io::{Read, Seek, SeekFrom};
use std::fs::File;

fn osys_fread_at(
    stream: &mut File,
    offset: i64,
    whence: SeekFrom,
    block: &mut [u8],
    blocksize: usize,
) -> usize {
    let current_pos = stream.stream_position().ok();
    if stream.seek(whence).is_ok() && stream.seek(SeekFrom::Current(offset)).is_ok() {
        let result = stream.read(&mut block[..blocksize]).unwrap_or(0);
        if let Some(pos) = current_pos {
            if stream.seek(SeekFrom::Start(pos)).is_err() {
                return 0;
            }
        }
        result
    } else {
        0
    }
}
