#![allow(unaligned_references)]
use std::io::{self, Write};
use std::mem;

#[repr(C)]
pub struct BmpHeader {
    pub bfSize: u32,
    pub bfReserved: u32,
    pub bfOffBits: u32,
    pub biSize: u32,
    pub biWidth: i32,
    pub biHeight: i32,
    pub biPlanes: u16,
    pub biBitCount: u16,
    pub biCompression: u32,
    pub biSizeImage: u32,
    pub biXPelsPerMeter: i32,
    pub biYPelsPerMeter: i32,
    pub biClrUsed: u32,
    pub biClrImportant: u32,
}

#[derive(Debug, PartialEq)]
pub enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

#[no_mangle]
#[no_mangle]
pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: Option<&mut dyn Write>) -> BmpError {
    if header.is_none() {
        return BmpError::BmpHeaderNotInitialized;
    } else if img_file.is_none() {
        return BmpError::BmpFileNotOpened;
    }

    let header = header.unwrap();
    let img_file = img_file.unwrap();

    let magic: u16 = 19778;
    if img_file.write_all(&magic.to_le_bytes()).is_err() {
        return BmpError::BmpError;
    }
    if img_file.write_all(unsafe { 
        std::slice::from_raw_parts(
            (header as *const BmpHeader) as *const u8, 
            mem::size_of::<BmpHeader>()
        )
    }).is_err() {
        return BmpError::BmpError;
    }

    BmpError::BmpOk
}
