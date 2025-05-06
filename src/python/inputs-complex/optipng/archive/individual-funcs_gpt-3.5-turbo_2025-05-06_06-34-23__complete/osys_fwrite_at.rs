use std::fs::File;
use std::io::{Seek, SeekFrom, Write};

type OsysFoffsetT = i64;

fn osys_fwrite_at(stream: &mut File, offset: OsysFoffsetT, whence: i32, block: &[u8]) -> usize {
    let pos = match stream.seek(SeekFrom::Current(0)) {
        Ok(pos) => pos,
        Err(_) => return 0,
    };

    if let Err(_) = stream.flush() {
        return 0;
    }

    if let Err(_) = stream.seek(SeekFrom::Start(offset as u64)) {
        return 0;
    }

    let result = match stream.write(block) {
        Ok(bytes_written) => bytes_written,
        Err(_) => return 0,
    };

    if let Err(_) = stream.flush() {
        return 0;
    }

    if let Err(_) = stream.seek(SeekFrom::Start(pos)) {
        return 0;
    }

    result
}
