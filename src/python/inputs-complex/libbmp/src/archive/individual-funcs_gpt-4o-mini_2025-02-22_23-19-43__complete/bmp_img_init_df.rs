pub struct BmpHeader {
    pub bf_size: u32,
    pub bf_reserved: u32,
    pub bf_off_bits: u32,
    pub bi_size: u32,
    pub bi_width: i32,
    pub bi_height: i32,
    pub bi_planes: u16,
    pub bi_bit_count: u16,
    pub bi_compression: u32,
    pub bi_size_image: u32,
    pub bi_x_pels_per_meter: i32,
    pub bi_y_pels_per_meter: i32,
    pub bi_clr_used: u32,
    pub bi_clr_important: u32,
}

pub struct BmpPixel {
    pub blue: u8,
    pub green: u8,
    pub red: u8,
}

pub struct BmpImg {
    pub img_header: BmpHeader,
    pub img_pixels: Vec<Vec<BmpPixel>>,
}

pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    // Implementation of bmp_header_init_df goes here
}

pub fn bmp_img_alloc(img: &mut BmpImg) {
    // Implementation of bmp_img_alloc goes here
}

pub fn bmp_img_init_df(img: &mut BmpImg, width: i32, height: i32) {
    bmp_header_init_df(&mut img.img_header, width, height);
    bmp_img_alloc(img);
}
