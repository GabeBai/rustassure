#![allow(unaligned_references)]
#[repr(C)]
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

#[repr(C)]
pub struct BmpPixel {
    pub blue: u8,
    pub green: u8,
    pub red: u8,
}

#[no_mangle]
#[no_mangle]
pub fn bmp_header_init_df(header: &mut BmpHeader, width: i32, height: i32) {
    header.bf_size = (std::mem::size_of::<BmpPixel>() as u32 * width as u32 + (width as u32 % 4))
        * height.unsigned_abs();
    header.bf_reserved = 0;
    header.bf_off_bits = 54;
    header.bi_size = 40;
    header.bi_width = width;
    header.bi_height = height;
    header.bi_planes = 1;
    header.bi_bit_count = 24;
    header.bi_compression = 0;
    header.bi_size_image = 0;
    header.bi_x_pels_per_meter = 0;
    header.bi_y_pels_per_meter = 0;
    header.bi_clr_used = 0;
    header.bi_clr_important = 0;
}
