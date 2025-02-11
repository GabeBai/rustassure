#![allow(unaligned_references)]
use std::ptr;
use std::mem;

#[derive(Default)]
#[repr(C, packed)]struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

#[derive(Default)]
#[repr(C, packed)]struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[derive(Default)]
#[repr(C, packed)]struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[derive(Default)]
#[repr(C, packed)]struct PngUnknownChunk {
    name: [u8; 5],
    data: Vec<u8>,
    size: usize,
    location: u8,
}

#[derive(Default)]
#[repr(C, packed)]struct OpngImage {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: Vec<Vec<u8>>,
    palette: Vec<PngColor>,
    num_palette: i32,
    background_ptr: Option<Box<PngColor16>>,
    background: PngColor16,
    hist: Vec<u16>,
    sig_bit_ptr: Option<Box<PngColor8>>,
    sig_bit: PngColor8,
    trans_alpha: Vec<u8>,
    num_trans: i32,
    trans_color_ptr: Option<Box<PngColor16>>,
    trans_color: PngColor16,
    unknowns: Vec<PngUnknownChunk>,
    num_unknowns: i32,
}

impl OpngImage {
#[no_mangle]
#[no_mangle]
    fn destroy_image_info(&mut self) {
        if self.row_pointers.is_empty() {
            return;
        }
        self.row_pointers.clear();
        self.palette.clear();
        self.trans_alpha.clear();
        self.hist.clear();
        self.unknowns.clear();
        *self = OpngImage::default();
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut image = OpngImage::default();
    // Example usage
    image.destroy_image_info();
}
