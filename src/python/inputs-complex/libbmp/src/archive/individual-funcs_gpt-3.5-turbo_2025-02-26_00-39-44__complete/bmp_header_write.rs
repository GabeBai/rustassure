use std::fs::File;
use std::io::{Result, Write};

#[repr(packed)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(packed)]
struct _OSUnalignedU64 {
    __val: u64,
}

#[derive(Debug)]
struct bmp_header {
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
enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

fn bmp_header_write(header: &bmp_header, mut img_file: &File) -> Result<()> {
    if header as *const _ == std::ptr::null() {
        return Err(std::io::Error::new(std::io::ErrorKind::Other, "BMP_HEADER_NOT_INITIALIZED"));
    } else if img_file as *const _ == std::ptr::null() {
        return Err(std::io::Error::new(std::io::ErrorKind::Other, "BMP_FILE_NOT_OPENED"));
    }

    const MAGIC: u16 = 19778;
    img_file.write_all(&MAGIC.to_ne_bytes())?;
    img_file.write_all(&unsafe { std::slice::from_raw_parts(header as *const _ as *const u8, std::mem::size_of::<bmp_header>()) })?;

    Ok(())
}
