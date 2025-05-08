use std::fs::File;
use std::io::{Seek, SeekFrom};

type osys_foffset_t = i64; // Assuming osys_foffset_t is a 64-bit integer in C

fn osys_ftello(stream: &mut File) -> osys_foffset_t {
    stream.seek(SeekFrom::Current(0)).unwrap() as osys_foffset_t
}
