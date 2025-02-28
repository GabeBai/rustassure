use std::fs::File;
use std::io::{self, Read};
use std::mem;

#[repr(C)]
#[derive(Debug)]
struct BmpHeader {
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
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_read(header: &mut BmpHeader, img_file: &mut File) -> BmpError {
    let mut magic: u16 = 0;

    // Read the magic number
    if img_file.read_exact(unsafe { std::slice::from_raw_parts_mut(&mut magic as *mut _ as *mut u8, mem::size_of::<u16>()) }).is_err() || magic != 19778 {
        return BmpError::InvalidFile;
    }

    // Read the BMP header
    if img_file.read_exact(unsafe { std::slice::from_raw_parts_mut(header as *mut _ as *mut u8, mem::size_of::<BmpHeader>()) }).is_err() {
        return BmpError::Error;
    }

    BmpError::Ok
}

fn main() -> io::Result<()> {
    let mut file = File::open("path/to/your/file.bmp")?;
    let mut header = BmpHeader {
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

    match bmp_header_read(&mut header, &mut file) {
        BmpError::Ok => println!("BMP header read successfully: {:?}", header),
        BmpError::InvalidFile => println!("Invalid BMP file"),
        BmpError::Error => println!("Error reading BMP header"),
        _ => println!("File not opened or header not initialized"),
    }

    Ok(())
}
