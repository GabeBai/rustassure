rust
use std::{io};

pub fn gzdopen(fd: i32, mode: &str) -> Option<Box<dyn io::Read + 'static>> {
    let path = format!("<fd:{}>", fd);
    //let gz = match gz_open(&path, fd, mode) {
    let gz = gz_open(&path, fd, mode).ok()?;
    Some(Box::new(gz))
}