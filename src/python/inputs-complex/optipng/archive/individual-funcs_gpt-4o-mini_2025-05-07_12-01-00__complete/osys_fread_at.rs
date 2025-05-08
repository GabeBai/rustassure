use std::io::{self, Read, Seek, SeekFrom};

fn osys_fread_at<R: Read + Seek>(stream: &mut R, offset: u64, whence: SeekFrom, block: &mut [u8]) -> usize {
    let current_pos = stream.stream_position().unwrap();
    let result;

    if stream.seek(whence).is_ok() {
        result = stream.read(block).unwrap();
    } else {
        return 0;
    }

    if stream.seek(SeekFrom::Start(current_pos)).is_err() {
        return 0;
    }

    result
}
