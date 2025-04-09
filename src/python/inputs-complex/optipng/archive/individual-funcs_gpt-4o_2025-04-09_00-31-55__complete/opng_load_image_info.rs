use std::ptr;
use std::mem;

#[derive(Clone)]
struct PngColor16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[derive(Clone)]
struct PngColor8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut PngColor16,
    num_palette: i32,
    background_ptr: *mut PngColor16,
    background: PngColor16,
    hist: *mut u16,
    sig_bit_ptr: *mut PngColor8,
    sig_bit: PngColor8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut PngColor16,
    trans_color: PngColor16,
    unknowns: *mut u8,
    num_unknowns: i32,
}

static mut IMAGE: OpngImageStruct = OpngImageStruct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: ptr::null_mut(),
    palette: ptr::null_mut(),
    num_palette: 0,
    background_ptr: ptr::null_mut(),
    background: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: ptr::null_mut(),
    sig_bit_ptr: ptr::null_mut(),
    sig_bit: PngColor8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: ptr::null_mut(),
    trans_color: PngColor16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

extern "C" {
    fn png_get_rows(png_ptr: *const u8, info_ptr: *const u8) -> *mut *mut u8;
    fn png_get_bKGD(png_ptr: *const u8, info_ptr: *mut u8, background: *mut *mut PngColor16) -> u32;
    fn png_get_hIST(png_ptr: *const u8, info_ptr: *mut u8, hist: *mut *mut u16) -> u32;
    fn png_get_IHDR(png_ptr: *const u8, info_ptr: *const u8, width: *mut u32, height: *mut u32, bit_depth: *mut i32, color_type: *mut i32, interlace_method: *mut i32, compression_method: *mut i32, filter_method: *mut i32) -> u32;
    fn png_get_PLTE(png_ptr: *const u8, info_ptr: *mut u8, palette: *mut *mut PngColor16, num_palette: *mut i32) -> u32;
    fn png_get_sBIT(png_ptr: *const u8, info_ptr: *mut u8, sig_bit: *mut *mut PngColor8) -> u32;
    fn png_get_tRNS(png_ptr: *const u8, info_ptr: *mut u8, trans_alpha: *mut *mut u8, num_trans: *mut i32, trans_color: *mut *mut PngColor16) -> u32;
    fn png_get_unknown_chunks(png_ptr: *const u8, info_ptr: *mut u8, entries: *mut *mut u8) -> i32;
}

unsafe fn opng_load_image_info(png_ptr: *mut u8, info_ptr: *mut u8, load_meta: i32) {
    ptr::write_bytes(&mut IMAGE as *mut _ as *mut u8, 0, mem::size_of::<OpngImageStruct>());
    png_get_IHDR(png_ptr, info_ptr, &mut IMAGE.width, &mut IMAGE.height, &mut IMAGE.bit_depth, &mut IMAGE.color_type, &mut IMAGE.interlace_type, &mut IMAGE.compression_type, &mut IMAGE.filter_type);
    IMAGE.row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &mut IMAGE.palette, &mut IMAGE.num_palette);
    if png_get_tRNS(png_ptr, info_ptr, &mut IMAGE.trans_alpha, &mut IMAGE.num_trans, &mut IMAGE.trans_color_ptr) != 0 {
        if !IMAGE.trans_color_ptr.is_null() {
            IMAGE.trans_color = (*IMAGE.trans_color_ptr).clone();
            IMAGE.trans_color_ptr = &mut IMAGE.trans_color;
        }
    }
    if load_meta == 0 {
        return;
    }
    if png_get_bKGD(png_ptr, info_ptr, &mut IMAGE.background_ptr) != 0 {
        IMAGE.background = (*IMAGE.background_ptr).clone();
        IMAGE.background_ptr = &mut IMAGE.background;
    }
    png_get_hIST(png_ptr, info_ptr, &mut IMAGE.hist);
    if png_get_sBIT(png_ptr, info_ptr, &mut IMAGE.sig_bit_ptr) != 0 {
        IMAGE.sig_bit = (*IMAGE.sig_bit_ptr).clone();
        IMAGE.sig_bit_ptr = &mut IMAGE.sig_bit;
    }
    IMAGE.num_unknowns = png_get_unknown_chunks(png_ptr, info_ptr, &mut IMAGE.unknowns);
}
