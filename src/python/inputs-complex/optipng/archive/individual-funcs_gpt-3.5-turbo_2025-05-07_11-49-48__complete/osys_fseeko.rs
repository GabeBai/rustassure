use std::os::raw::{c_long, c_int};
use std::io::SeekFrom;
use std::fs::File;
use std::io::Seek;

type osys_foffset_t = c_long;

fn osys_fseeko(stream: &mut File, offset: osys_foffset_t, whence: c_int) -> c_int {
    stream.seek(SeekFrom::Start(offset as u64)).unwrap();
    0
}
