use std::fs::File;
use std::io::{Read, Seek, SeekFrom};

#[derive(Default)]
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

enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

fn bmp_header_read(header: &mut bmp_header, img_file: &mut File) -> bmp_error {
    if img_file.metadata().is_err() {
        return bmp_error::BMP_FILE_NOT_OPENED;
    }

    let mut magic = [0u8; 2];
    if img_file.read_exact(&mut magic).is_err() || u16::from_le_bytes(magic) != 19778 {
        return bmp_error::BMP_INVALID_FILE;
    }

    if img_file.read_exact(unsafe { std::mem::transmute::<&mut bmp_header, &mut [u8; std::mem::size_of::<bmp_header>()]>(header) }).is_err() {
        return bmp_error::BMP_ERROR;
    }

    bmp_error::BMP_OK
}

fn main() {
    let mut header: bmp_header = Default::default();
    let mut img_file = File::open("example.bmp").expect("Failed to open file");

    match bmp_header_read(&mut header, &mut img_file) {
        bmp_error::BMP_OK => {
            println!("Header read successfully: {:?}", header);
        },
        err => {
            println!("Error reading header: {:?}", err);
        }
    }
}
