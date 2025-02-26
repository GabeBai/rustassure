use std::fs::File;
use std::io::{Write, Result};

#[derive(Debug, Clone, Copy)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpHeader {
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

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn init_df(width: i32, height: i32) -> Self {
        let img_header = BmpHeader {
            bf_size: 0, // This will be set later
            bf_reserved: 0,
            bf_off_bits: 54, // Header size for BMP
            bi_size: 40, // DIB header size
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

        let img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width as usize]; height as usize];

        BmpImg { img_header, img_pixels }
    }

    fn write(&self, filename: &str) -> Result<()> {
        let mut file = File::create(filename)?;

        // Write BMP header (simplified)
        let header_size = 54; // Size of the BMP header
        let file_size = header_size + (self.img_header.bi_width * self.img_header.bi_height * 3);
        let mut header = vec![0u8; header_size as usize];

        // Fill in the header (this is a simplified version)
        header[0..2].copy_from_slice(b"BM");
        header[2..6].copy_from_slice(&file_size.to_le_bytes());
        header[10..14].copy_from_slice(&(header_size as u32).to_le_bytes());
        header[14..18].copy_from_slice(&(self.img_header.bi_size).to_le_bytes());
        header[18..22].copy_from_slice(&(self.img_header.bi_width).to_le_bytes());
        header[22..26].copy_from_slice(&(self.img_header.bi_height).to_le_bytes());
        header[26..28].copy_from_slice(&(self.img_header.bi_planes).to_le_bytes());
        header[28..30].copy_from_slice(&(self.img_header.bi_bit_count).to_le_bytes());
        header[30..34].copy_from_slice(&(self.img_header.bi_compression).to_le_bytes());
        header[34..38].copy_from_slice(&(self.img_header.bi_size_image).to_le_bytes());
        header[38..42].copy_from_slice(&(self.img_header.bi_x_pels_per_meter).to_le_bytes());
        header[42..46].copy_from_slice(&(self.img_header.bi_y_pels_per_meter).to_le_bytes());
        header[46..50].copy_from_slice(&(self.img_header.bi_clr_used).to_le_bytes());
        header[50..54].copy_from_slice(&(self.img_header.bi_clr_important).to_le_bytes());

        file.write_all(&header)?;

        // Write pixel data
        for row in self.img_pixels.iter().rev() { // BMP stores pixels bottom to top
            for pixel in row {
                file.write_all(&[pixel.blue, pixel.green, pixel.red])?;
            }
        }

        Ok(())
    }
}

fn bmp_pixel_init(pixel: &mut BmpPixel, blue: u8, green: u8, red: u8) {
    pixel.blue = blue;
    pixel.green = green;
    pixel.red = red;
}

fn main() -> Result<()> {
    let width = 512;
    let height = 512;
    let mut img = BmpImg::init_df(width, height);

    for y in 0..height {
        for x in 0..width {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                bmp_pixel_init(&mut img.img_pixels[y as usize][x as usize], 250, 250, 250);
            } else {
                bmp_pixel_init(&mut img.img_pixels[y as usize][x as usize], 0, 0, 0);
            }
        }
    }

    img.write("test.bmp")?;
    Ok(())
}
