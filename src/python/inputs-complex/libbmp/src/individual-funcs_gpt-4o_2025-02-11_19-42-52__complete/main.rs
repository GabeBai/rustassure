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

#[derive(Debug, Clone, Copy)]
#[repr(C, packed)]struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

impl BmpPixel {
#[no_mangle]
#[no_mangle]
    fn new(blue: u8, green: u8, red: u8) -> Self {
        BmpPixel { blue, green, red }
    }
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

#[derive(Debug)]
#[repr(C, packed)]struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
#[no_mangle]
#[no_mangle]
    fn new(width: i32, height: i32) -> Self {
        let header = BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 54,
            bi_size: 40,
            bi_width: width,
            bi_height: height,
            bi_planes: 1,
            bi_bit_count: 24,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        };

        let pixels = vec![vec![BmpPixel::new(0, 0, 0); width as usize]; height as usize];

        BmpImg {
            img_header: header,
            img_pixels: pixels,
        }
    }

#[no_mangle]
#[no_mangle]
    fn write(&self, filename: &str) -> Result<(), BmpError> {
        let path = Path::new(filename);
        let mut file = File::create(&path).map_err(|_| BmpError::FileNotOpened)?;

        // Write BMP header
        file.write_all(&self.img_header.bf_size.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bf_reserved.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bf_off_bits.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_size.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_width.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_height.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_planes.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_bit_count.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_compression.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_size_image.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_x_pels_per_meter.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_y_pels_per_meter.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_clr_used.to_le_bytes()).unwrap();
        file.write_all(&self.img_header.bi_clr_important.to_le_bytes()).unwrap();

        // Write pixel data
        for row in &self.img_pixels {
            for pixel in row {
                file.write_all(&[pixel.blue, pixel.green, pixel.red]).unwrap();
            }
        }

        Ok(())
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut img = BmpImg::new(512, 512);

    for y in 0..512 {
        for x in 0..512 {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                img.img_pixels[y as usize][x as usize] = BmpPixel::new(250, 250, 250);
            } else {
                img.img_pixels[y as usize][x as usize] = BmpPixel::new(0, 0, 0);
            }
        }
    }

    match img.write("test.bmp") {
        Ok(_) => println!("Image written successfully."),
        Err(e) => eprintln!("Failed to write image: {:?}", e),
    }
}
