use std::mem::size_of;

pub enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok = 0,
}

#[repr(C)]
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

#[repr(C)]
pub struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

pub struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

pub fn bmp_img_free(img: &mut BmpImg) {
    let h = img.img_header.bi_height.abs() as usize;
    img.img_pixels.clear();
}