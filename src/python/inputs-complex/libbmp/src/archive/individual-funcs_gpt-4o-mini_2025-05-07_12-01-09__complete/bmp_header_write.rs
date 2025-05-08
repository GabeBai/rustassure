use std::io::{self, Write};

#[derive(Debug)]
pub enum BmpError {
    HeaderNotInitialized,
    FileNotOpened,
    Error(io::Error),
    Ok,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
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

pub fn bmp_header_write(header: Option<&BmpHeader>, img_file: &mut dyn Write) -> Result<(), BmpError> {
    if header.is_none() {
        return Err(BmpError::HeaderNotInitialized);
    }

    // Since img_file is a mutable reference to a trait object, we don't check for null.
    let header = header.unwrap(); // Safe to unwrap since we checked above

    let magic: u16 = 19778; // BMP magic number
    img_file.write_all(&magic.to_le_bytes()).map_err(BmpError::Error)?;
    img_file.write_all(unsafe { std::slice::from_raw_parts(header as *const _ as *const u8, std::mem::size_of::<BmpHeader>()) })
        .map_err(BmpError::Error)?;

    Ok(())
}
