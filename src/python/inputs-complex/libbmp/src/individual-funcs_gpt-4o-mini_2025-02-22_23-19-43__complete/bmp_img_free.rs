use std::alloc::{self, Layout};
use std::ptr;

#[repr(C)]
#[derive(Debug)]
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

#[repr(C)]
#[derive(Debug)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
#[derive(Debug)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: *mut *mut BmpPixel, // Pointer to an array of pointers to BmpPixel
}

fn bmp_img_free(img: &mut BmpImg) {
    let height = img.img_header.bi_height.abs() as usize; // Get the absolute height
    for y in 0..height {
        unsafe {
            let pixel_row = *img.img_pixels.add(y); // Get the pointer to the row of pixels
            if !pixel_row.is_null() {
                alloc::dealloc(pixel_row as *mut u8, Layout::array::<BmpPixel>(img.img_header.bi_width as usize).unwrap());
            }
        }
    }
    unsafe {
        alloc::dealloc(img.img_pixels as *mut u8, Layout::array::<*mut BmpPixel>(height).unwrap());
    }
}
