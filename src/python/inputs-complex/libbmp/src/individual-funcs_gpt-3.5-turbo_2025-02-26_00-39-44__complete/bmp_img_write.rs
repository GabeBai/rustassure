use std::fs::File;
use std::io::{Error, Write};

#[repr(C)]
pub struct bmp_header {
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

#[repr(C)]
pub struct bmp_pixel {
    blue: u8,
    green: u8,
    red: u8,
}

pub fn bmp_header_write(header: &bmp_header, file: &mut File) -> Result<(), bmp_error> {
    let result = unsafe {
        let header_ptr = header as *const bmp_header;
        let bytes = std::slice::from_raw_parts(header_ptr as *const u8, std::mem::size_of::<bmp_header>());
        file.write_all(bytes)
    };

    match result {
        Ok(_) => Ok(()),
        Err(_) => Err(bmp_error::BMP_ERROR),
    }
}

#[repr(C)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

// Add other functions and implementations as needed

fn main() {
    // Example usage
    let header = bmp_header {
        bfSize: 0,
        bfReserved: 0,
        bfOffBits: 0,
        biSize: 0,
        biWidth: 0,
        biHeight: 0,
        biPlanes: 0,
        biBitCount: 0,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    };

    let mut file = File::create("output.bmp").unwrap();
    let result = bmp_header_write(&header, &mut file);
    match result {
        Ok(_) => println!("Header successfully written"),
        Err(err) => println!("Error writing header: {:?}", err),
    }
}
