use std::fs::File;
use std::io::{Result, Write};

#[repr(C)]
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

#[repr(C)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_write(header: &BmpHeader, file: &mut File) -> Result<()> {
    // Implement the header writing logic here
    Ok(())
}

fn bmp_img_write(img: &BmpImg, filename: &str) -> Result<()> {
    let mut img_file = match File::create(filename) {
        Ok(file) => file,
        Err(_) => return Err(BmpError::FileNotOpened.into()),
    };

    match bmp_header_write(&img.img_header, &mut img_file) {
        Ok(_) => {},
        Err(_) => return Err(BmpError::HeaderNotInitialized.into()),
    }

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding: [u8; 3] = [0, 0, 0];

    for y in 0..h {
        img_file.write_all(&img.img_pixels[offset as usize - y].iter().flat_map(|p| vec![p.blue, p.green, p.red]).collect::<Vec<u8>>())?;
        img_file.write_all(&padding[0..(img.img_header.biWidth % 4) as usize])?;
    }

    Ok(())
}
