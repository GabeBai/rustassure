use std::io::{self, Write, Seek, SeekFrom};

pub fn osys_fwrite_at<W: Write + Seek>(stream: &mut W, offset: i64, whence: SeekFrom, block: &[u8]) -> usize {
    let pos = stream.stream_position().unwrap_or(0);
    let result;

    if stream.flush().is_err() {
        return 0;
    }

    if stream.seek(whence).is_ok() {
        result = stream.write(block).unwrap_or(0);
    } else {
        return 0;
    }

    if stream.flush().is_err() {
        return 0;
    }

    if stream.seek(SeekFrom::Start(pos)).is_err() {
        return 0;
    }

    result
}
