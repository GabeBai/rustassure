#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Write};
use std::path::Path;

#[derive(Debug)]
enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

#[repr(C)]
#[derive(Debug)]
#[repr(C, packed)]struct BmpHeader {
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

#[no_mangle]
#[no_mangle]
fn bmp_header_write(header: &BmpHeader, file: &mut File) -> Result<(), BmpError> {
    // Implement the header writing logic here
    // For now, we'll assume it's always successful
    Ok(())
}

#[no_mangle]
#[no_mangle]
fn bmp_img_write(img: &BmpImg, filename: &str) -> Result<(), BmpError> {
    let path = Path::new(filename);
    let mut img_file = File::create(&path).map_err(|_| BmpError::FileNotOpened)?;

    bmp_header_write(&img.img_header, &mut img_file)?;

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding = [0u8; 3];

    for y in 0..h {
        let row_index = (offset as isize - y as isize).abs() as usize;
        let row_slice = &img.img_pixels[row_index];
        img_file.write_all(unsafe {
            std::slice::from_raw_parts(row_slice.as_ptr() as *const u8, row_slice.len() * std::mem::size_of::<BmpPixel>())
        }).map_err(|_| BmpError::Error)?;

        let padding_size = (img.img_header.biWidth as usize) % 4;
        img_file.write_all(&padding[..padding_size]).map_err(|_| BmpError::Error)?;
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let header = BmpHeader {
        bfSize: 0,
        bfReserved: 0,
        bfOffBits: 0,
        biSize: 0,
        biWidth: 2,
        biHeight: 2,
        biPlanes: 1,
        biBitCount: 24,
        biCompression: 0,
        biSizeImage: 0,
        biXPelsPerMeter: 0,
        biYPelsPerMeter: 0,
        biClrUsed: 0,
        biClrImportant: 0,
    };

    let pixels = vec![
        vec![BmpPixel { blue: 255, green: 0, red: 0 }; 2],
        vec![BmpPixel { blue: 0, green: 255, red: 0 }; 2],
    ];

    let img = BmpImg {
        img_header: header,
        img_pixels: pixels,
    };

    match bmp_img_write(&img, "output.bmp") {
        Ok(_) => println!("Image written successfully."),
        Err(e) => println!("Failed to write image: {:?}", e),
    }
}
