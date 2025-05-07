use std::fs::File;
use std::io::{Read, Result};

#[repr(C)]
#[derive(Debug)]
pub struct BmpHeader {
    bfSize: u32,
    bfReserved: u32,
    bfOffBits: u32,
    biSize: u32,
    biWidth: i32,
    biHeight: i32,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: u32,
    biSizeImage: u32,
    biXPelsPerMeter: i32,
    biYPelsPerMeter: i32,
    biClrUsed: u32,
    biClrImportant: u32,
}

#[derive(Debug)]
pub enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_read(header: &mut BmpHeader, img_file: &mut File) -> Result<BmpError> {
    if img_file.metadata().is_err() {
        return Ok(BmpError::FileNotOpened);
    }

    let mut magic = [0u8; 2];
    img_file.read_exact(&mut magic)?;

    if u16::from_le_bytes(magic) != 19778 {
        return Ok(BmpError::InvalidFile);
    }

    let header_bytes = unsafe {
        std::slice::from_raw_parts_mut(
            header as *mut BmpHeader as *mut u8,
            std::mem::size_of::<BmpHeader>(),
        )
    };

    img_file.read_exact(header_bytes)?;

    Ok(BmpError::Ok)
}
