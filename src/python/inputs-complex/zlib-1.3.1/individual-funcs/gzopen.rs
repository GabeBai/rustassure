rust
use std::fs::File;
use std::io::prelude::*;
use std::os::unix::ffi::OsStringExt;

fn gzopen(path: &str, mode: &str) -> File {
    let path = OsString::from(path);
    let mode = OsString::from(mode);
    File::open(path).unwrap()
}