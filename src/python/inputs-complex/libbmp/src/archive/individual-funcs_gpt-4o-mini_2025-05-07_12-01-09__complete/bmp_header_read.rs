use std::io::{self, Read};
use std::os::raw::{c_int, c_uint};

#[repr(C)]
pub struct BmpHeader {
    bfSize: c_uint,
    bfReserved: c_uint,
    bfOffBits: c_uint,
    biSize: c_uint,
    biWidth: c_int,
    biHeight: c_int,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: c_uint,
    biSizeImage: c_uint,
    biXPelsPerMeter: c_int,
    biYPelsPerMeter: c_int,
    biClrUsed: c_uint,
    biClrImportant: c_uint,
}

#[derive(Debug)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok = 0,
}

pub fn bmp_header_read(header: &mut BmpHeader, img_file: &mut dyn Read) -> BmpError {
    let mut magic: u16 = 0;
    if img_file.read_exact(&mut magic.to_ne_bytes()).is_err() || magic != 19778 {
        return BmpError::InvalidFile;
    }
    if img_file.read_exact(unsafe { std::slice::from_raw_parts_mut(header as *mut _ as *mut u8, std::mem::size_of::<BmpHeader>()) }).is_err() {
        return BmpError::Error;
    }
    BmpError::Ok
}
