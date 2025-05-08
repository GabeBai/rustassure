use std::fs::File;
use std::io::{self, Write};
use std::mem;
use bytemuck::{Pod, Zeroable};

#[derive(Debug, Pod, Zeroable)]
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

#[derive(Debug, Pod, Zeroable)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Debug)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>, // Using Vec<Vec<BmpPixel>> for dynamic allocation
}

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_write(header: &BmpHeader, file: &mut File) -> BmpError {
    // Implement the header writing logic here
    // This is a placeholder; you need to write the actual BMP header to the file
    BmpError::Ok
}

fn bmp_img_write(img: &BmpImg, filename: &str) -> BmpError {
    let img_file = File::create(filename).map_err(|_| BmpError::FileNotOpened)?;
    
    let err = bmp_header_write(&img.img_header, &mut img_file);
    if err != BmpError::Ok {
        return err;
    }

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding = [0u8; 3];

    for y in 0..h {
        let pixel_row = &img.img_pixels[(offset - y) as usize];
        img_file.write_all(bytemuck::cast_slice(pixel_row)).unwrap();
        img_file.write_all(&padding[..(img.img_header.biWidth as usize % 4)]).unwrap();
    }

    BmpError::Ok
}
