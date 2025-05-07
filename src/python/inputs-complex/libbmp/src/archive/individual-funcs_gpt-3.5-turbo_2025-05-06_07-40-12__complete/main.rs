use std::fs::File;
use std::io::prelude::*;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
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
#[derive(Debug, Copy, Clone)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn new(width: i32, height: i32) -> Self {
        let img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width as usize]; height as usize];
        BmpImg {
            img_header: BmpHeader {
                bfSize: 0,
                bfReserved: 0,
                bfOffBits: 0,
                biSize: 0,
                biWidth: width,
                biHeight: height,
                biPlanes: 1,
                biBitCount: 24,
                biCompression: 0,
                biSizeImage: 0,
                biXPelsPerMeter: 0,
                biYPelsPerMeter: 0,
                biClrUsed: 0,
                biClrImportant: 0,
            },
            img_pixels,
        }
    }

    fn write_to_file(&self, filename: &str) -> std::io::Result<()> {
        let mut file = File::create(filename)?;
        // Write the image data to the file (not implemented in this example)
        Ok(())
    }
}

fn main() {
    let mut img = BmpImg::new(512, 512);
    for y in 0..512 {
        for x in 0..512 {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                img.img_pixels[y as usize][x as usize] = BmpPixel { blue: 250, green: 250, red: 250 };
            } else {
                img.img_pixels[y as usize][x as usize] = BmpPixel { blue: 0, green: 0, red: 0 };
            }
        }
    }
    img.write_to_file("test.bmp").unwrap();
}
