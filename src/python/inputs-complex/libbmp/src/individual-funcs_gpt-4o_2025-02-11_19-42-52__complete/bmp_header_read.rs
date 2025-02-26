#![allow(unaligned_references)]
use std::io::{self, Read, Seek};
use std::fs::File;
use std::mem;

#[repr(C)]
pub struct BmpHeader {
    bf_size: u32,
    bf_reserved: u32,
    bf_off_bits: u32,
    bi_size: u32,
    bi_width: i32,
    bi_height: i32,
    bi_planes: u16,
    bi_bit_count: u16,
    bi_compression: u32,
    bi_size_image: u32,
    bi_x_pels_per_meter: i32,
    bi_y_pels_per_meter: i32,
    bi_clr_used: u32,
    bi_clr_important: u32,
}

#[derive(Debug, PartialEq)]
pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok = 0,
}

#[no_mangle]
#[no_mangle]
pub fn bmp_header_read(header: &mut BmpHeader, img_file: &mut File) -> BmpError {
    if img_file.metadata().is_err() {
        return BmpError::FileNotOpened;
    }

    let mut magic = [0u8; 2];
    if img_file.read_exact(&mut magic).is_err() || u16::from_le_bytes(magic) != 19778 {
        return BmpError::InvalidFile;
    }

    let header_size = mem::size_of::<BmpHeader>();
    let header_bytes = unsafe {
        std::slice::from_raw_parts_mut(header as *mut _ as *mut u8, header_size)
    };

    if img_file.read_exact(header_bytes).is_err() {
        return BmpError::Error;
    }

    BmpError::Ok
}
