use std::os::raw::{c_int, c_void};

#[repr(C)]
pub struct png_struct;

#[repr(C)]
pub struct png_info;

pub type png_structp = *mut png_struct;
pub type png_inforp = *mut png_info;
pub type png_const_bytep = *const u8;
pub type png_color = [u8; 3];
pub type png_colorp = *mut png_color;
pub type png_const_colorp = *const png_color;
pub type png_color_16 = [u16; 5];
pub type png_color_16p = *mut png_color_16;
pub type png_const_color_16p = *const png_color_16;

extern "C" {
    pub fn png_set_rows(png_ptr: png_const_structrp, info_ptr: png_inforp, row_pointers: *mut *mut u8);
    pub fn png_set_PLTE(png_ptr: png_structrp, info_ptr: png_inforp, palette: *const png_color, num_palette: c_int);
    pub fn png_set_tRNS(png_ptr: png_structrp, info_ptr: png_inforp, trans_alpha: png_const_bytep, num_trans: c_int, trans_color: *const png_color_16);
    pub fn png_set_bKGD(png_ptr: png_const_structrp, info_ptr: png_inforp, background: png_const_color_16p);
    pub fn png_set_hIST(png_ptr: png_const_structrp, info_ptr: png_inforp, hist: png_const_uint_16p);
    pub fn png_set_IHDR(png_ptr: png_const_structrp, info_ptr: png_inforp, width: u32, height: u32, bit_depth: c_int, color_type: c_int, interlace_method: c_int, compression_method: c_int, filter_method: c_int);
    pub fn png_set_sBIT(png_ptr: png_const_structrp, info_ptr: png_inforp, sig_bit: png_const_color_8p);
    pub fn png_set_unknown_chunks(png_ptr: png_const_structrp, info_ptr: png_inforp, unknowns: *const png_unknown_chunk, num_unknowns: c_int);
    pub fn png_set_unknown_chunk_location(png_ptr: png_const_structrp, info_ptr: png_inforp, chunk: c_int, location: c_int);
}

#[repr(C)]
pub struct png_unknown_chunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

pub type png_unknown_chunkp = *mut png_unknown_chunk;
pub type png_const_unknown_chunkp = *const png_unknown_chunk;

// Define other necessary types and structs here

fn usr_panic(msg: &str) {
    panic!("{}", msg);
}

static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_inforp = std::ptr::null_mut();

static mut image: opng_image_struct = opng_image_struct {
    // Initialize the fields of the image struct here
};

static mut usr_panic: fn(&str) = usr_panic;

static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_inforp = std::ptr::null_mut();

fn opng_store_image_info(png_ptr: png_structp, info_ptr: png_inforp, store_meta: i32) {
    unsafe {
        if image.row_pointers.is_null() {
            usr_panic("No info in image");
        }

        png_set_IHDR(png_ptr, info_ptr, image.width, image.height, image.bit_depth, image.color_type, image.interlace_type, image.compression_type, image.filter_type);
        png_set_rows(write_ptr, write_info_ptr, image.row_pointers);

        if !image.palette.is_null() {
            png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
        }

        if !image.trans_alpha.is_null() || !image.trans_color_ptr.is_null() {
            png_set_tRNS(png_ptr, info_ptr, image.trans_alpha, image.num_trans, image.trans_color_ptr);
        }

        if store_meta == 0 {
            return;
        }

        if !image.background_ptr.is_null() {
            png_set_bKGD(png_ptr, info_ptr, image.background_ptr);
        }

        if !image.hist.is_null() {
            png_set_hIST(png_ptr, info_ptr, image.hist);
        }

        if !image.sig_bit_ptr.is_null() {
            png_set_sBIT(png_ptr, info_ptr, image.sig_bit_ptr);
        }

        if image.num_unknowns != 0 {
            png_set_unknown_chunks(png_ptr, info_ptr, image.unknowns, image.num_unknowns);
            for i in 0..image.num_unknowns {
                png_set_unknown_chunk_location(png_ptr, info_ptr, i, image.unknowns[i].location as i32);
            }
        }
    }
}
