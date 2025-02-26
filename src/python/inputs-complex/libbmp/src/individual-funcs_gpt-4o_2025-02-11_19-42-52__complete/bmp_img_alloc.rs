#![allow(unaligned_references)]
use std::alloc::{alloc, Layout};
use std::ptr;
use std::slice;

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

pub struct BmpImg {
    pub img_header: BmpHeader,
    pub img_pixels: *mut *mut BmpPixel,
}

impl BmpImg {
#[no_mangle]
#[no_mangle]
    pub fn bmp_img_alloc(&mut self) {
        let h = self.img_header.bi_height.abs() as usize;
        let width = self.img_header.bi_width as usize;

        unsafe {
            let layout = Layout::array::<*mut BmpPixel>(h).unwrap();
            self.img_pixels = alloc(layout) as *mut *mut BmpPixel;
            if self.img_pixels.is_null() {
                panic!("Memory allocation failed");
            }

            for y in 0..h {
                let layout = Layout::array::<BmpPixel>(width).unwrap();
                let row = alloc(layout) as *mut BmpPixel;
                if row.is_null() {
                    panic!("Memory allocation failed");
                }
                ptr::write(self.img_pixels.add(y), row);
            }
        }
    }
}
