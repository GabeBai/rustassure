use std::fs::File;
use std::io::{self, Seek, SeekFrom};

fn osys_fseeko(file: &mut File, offset: i64, whence: i32) -> io::Result<u64> {
    let seek_from = match whence {
        0 => SeekFrom::Start(offset as u64), // SEEK_SET
        1 => SeekFrom::Current(offset),      // SEEK_CUR
        2 => SeekFrom::End(offset),          // SEEK_END
        _ => return Err(io::Error::new(io::ErrorKind::InvalidInput, "Invalid whence value")),
    };

    file.seek(seek_from)
}

fn main() {
    // Example usage
    let mut file = File::open("example.txt").expect("Failed to open file");
    osys_fseeko(&mut file, 10, 0).expect("Failed to seek");
}
