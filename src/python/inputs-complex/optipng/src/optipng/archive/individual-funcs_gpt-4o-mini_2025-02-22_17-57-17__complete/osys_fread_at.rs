use std::io::{self, Read, Seek, SeekFrom};

pub fn osys_fread_at<R: Read + Seek>(stream: &mut R, offset: i64, whence: SeekFrom, block: &mut [u8]) -> usize {
    let pos = stream.stream_position().unwrap_or(0);
    if stream.seek(whence).is_ok() {
        let result = stream.read(block).unwrap_or(0);
        if stream.seek(SeekFrom::Start(pos)).is_err() {
            return 0;
        }
        result
    } else {
        0
    }
}
