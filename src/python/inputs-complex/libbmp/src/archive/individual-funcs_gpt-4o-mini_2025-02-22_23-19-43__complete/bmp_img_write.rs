#[derive(Debug)]
pub enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

use std::fs::File;
use std::io::{self, Write};

#[derive(Debug)]
pub enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

#[derive(Debug)]
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

#[derive(Debug)]
pub struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Debug)]
pub struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

pub fn bmp_header_write(header: &BmpHeader, file: &mut File) -> BmpError {
    // Implement the header writing logic here
    // For now, we will return Ok for simplicity
    BmpError::Ok
}

pub fn bmp_img_write(img: &BmpImg, filename: &str) -> BmpError {
    let img_file = File::create(filename).map_err(|_| BmpError::FileNotOpened)?;
    
    if let Err(_) = bmp_header_write(&img.img_header, &mut img_file) {
        return BmpError::HeaderNotInitialized;
    }

    let h = img.img_header.bi_height.abs() as usize;
    let offset = if img.img_header.bi_height > 0 { h - 1 } else { 0 };
    let padding = [0u8; 3];

    for y in 0..h {
        let row = &img.img_pixels[(offset - y) as usize];
        img_file.write_all(bytemuck::cast_slice(row)).unwrap();
        img_file.write_all(&padding[..(img.img_header.bi_width as usize % 4)]).unwrap();
    }

    BmpError::Ok
}
