#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Read, Seek, SeekFrom};
use std::path::Path;
use std::cmp::min;

#[derive(Debug, PartialEq)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

#[derive(Debug)]
#[repr(C, packed)]struct BmpHeader {
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

#[derive(Debug, Clone, Copy)]
#[repr(C, packed)]struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Debug)]
#[repr(C, packed)]struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        BmpImg {
            img_header: BmpHeader {
                bf_size: 0,
                bf_reserved: 0,
                bf_off_bits: 0,
                bi_size: 0,
                bi_width: 0,
                bi_height: 0,
                bi_planes: 0,
                bi_bit_count: 0,
                bi_compression: 0,
                bi_size_image: 0,
                bi_x_pels_per_meter: 0,
                bi_y_pels_per_meter: 0,
                bi_clr_used: 0,
                bi_clr_important: 0,
            },
            img_pixels: Vec::new(),
        }
    }

#[no_mangle]
#[no_mangle]
    fn alloc(&mut self) {
        let height = self.img_header.bi_height.abs() as usize;
        let width = self.img_header.bi_width as usize;
        self.img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width]; height];
    }
}

#[no_mangle]
#[no_mangle]
fn bmp_header_read(header: &mut BmpHeader, file: &mut File) -> Result<(), BmpError> {
    // Implement the logic to read the BMP header from the file
    // For now, we'll assume it's successful
    Ok(())
}

#[no_mangle]
#[no_mangle]
fn bmp_img_read(img: &mut BmpImg, filename: &str) -> Result<(), BmpError> {
    let path = Path::new(filename);
    let mut img_file = File::open(&path).map_err(|_| BmpError::FileNotOpened)?;

    bmp_header_read(&mut img.img_header, &mut img_file)?;

    img.alloc();

    let h = img.img_header.bi_height.abs() as usize;
    let offset = if img.img_header.bi_height > 0 { h - 1 } else { 0 };
    let padding = (img.img_header.bi_width as usize) % 4;
    let items = img.img_header.bi_width as usize;

    for y in 0..h {
        let row = &mut img.img_pixels[min(offset, y)];
        let bytes_to_read = items * std::mem::size_of::<BmpPixel>();
        let mut buffer = vec![0u8; bytes_to_read];
        img_file.read_exact(&mut buffer).map_err(|_| BmpError::Error)?;

        for (i, chunk) in buffer.chunks_exact(3).enumerate() {
            row[i] = BmpPixel {
                blue: chunk[0],
                green: chunk[1],
                red: chunk[2],
            };
        }

        img_file.seek(SeekFrom::Current(padding as i64)).map_err(|_| BmpError::Error)?;
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut img = BmpImg::new();
    match bmp_img_read(&mut img, "example.bmp") {
        Ok(_) => println!("Image read successfully!"),
        Err(e) => println!("Failed to read image: {:?}", e),
    }
}
