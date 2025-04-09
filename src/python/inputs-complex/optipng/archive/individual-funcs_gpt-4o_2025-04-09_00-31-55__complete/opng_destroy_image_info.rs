use std::ptr;
use std::mem;

#[repr(C)]
struct PngColor {
    red: u8,
    green: u8,
    blue: u8,
}

#[repr(C)]
struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[repr(C)]
struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[repr(C)]
struct PngUnknownChunk {
    name: [u8; 5],
    data: Vec<u8>,
    size: usize,
    location: u8,
}

#[repr(C)]
struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: Option<Vec<Vec<u8>>>,
    palette: Option<Vec<PngColor>>,
    num_palette: i32,
    background_ptr: Option<Box<PngColor16>>,
    background: PngColor16,
    hist: Option<Vec<u16>>,
    sig_bit_ptr: Option<Box<PngColor8>>,
    sig_bit: PngColor8,
    trans_alpha: Option<Vec<u8>>,
    num_trans: i32,
    trans_color_ptr: Option<Box<PngColor16>>,
    trans_color: PngColor16,
    unknowns: Option<Vec<PngUnknownChunk>>,
    num_unknowns: i32,
}

impl OpngImageStruct {
    fn new() -> Self {
        OpngImageStruct {
            width: 0,
            height: 0,
            bit_depth: 0,
            color_type: 0,
            compression_type: 0,
            filter_type: 0,
            interlace_type: 0,
            row_pointers: None,
            palette: None,
            num_palette: 0,
            background_ptr: None,
            background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
            hist: None,
            sig_bit_ptr: None,
            sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
            trans_alpha: None,
            num_trans: 0,
            trans_color_ptr: None,
            trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
            unknowns: None,
            num_unknowns: 0,
        }
    }

    fn destroy_image_info(&mut self) {
        if let Some(row_pointers) = &self.row_pointers {
            for row in row_pointers {
                // In Rust, Vec will automatically deallocate memory when it goes out of scope
            }
        }
        self.row_pointers = None;
        self.palette = None;
        self.trans_alpha = None;
        self.hist = None;
        if let Some(unknowns) = &self.unknowns {
            for unknown in unknowns {
                // Vec will handle deallocation
            }
        }
        self.unknowns = None;
        // Reset the struct to its default state
        *self = OpngImageStruct::new();
    }
}

fn main() {
    let mut image = OpngImageStruct::new();
    image.destroy_image_info();
}
