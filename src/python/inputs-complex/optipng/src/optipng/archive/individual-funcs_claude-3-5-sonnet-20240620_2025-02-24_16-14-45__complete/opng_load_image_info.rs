use std::mem;

struct OpngImageStruct {
    width: u32,
    height: u32,
    bit_depth: i32,
    color_type: i32,
    compression_type: i32,
    filter_type: i32,
    interlace_type: i32,
    row_pointers: *mut *mut u8,
    palette: *mut png_color,
    num_palette: i32,
    background_ptr: *mut png_color_16,
    background: png_color_16,
    hist: *mut u16,
    sig_bit_ptr: *mut png_color_8,
    sig_bit: png_color_8,
    trans_alpha: *mut u8,
    num_trans: i32,
    trans_color_ptr: *mut png_color_16,
    trans_color: png_color_16,
    unknowns: *mut png_unknown_chunk,
    num_unknowns: i32,
}

static mut image: OpngImageStruct = OpngImageStruct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
    interlace_type: 0,
    row_pointers: std::ptr::null_mut(),
    palette: std::ptr::null_mut(),
    num_palette: 0,
    background_ptr: std::ptr::null_mut(),
    background: png_color_16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: png_color_8 { red: 0, green: 0, blue: 0, gray: 0, alpha: 0 },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: png_color_16 { index: 0, red: 0, green: 0, blue: 0, gray: 0 },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

unsafe fn opng_load_image_info(png_ptr: *const png_struct, info_ptr: *mut png_info, load_meta: i32) {
    mem::zeroed::<OpngImageStruct>();

    png_get_IHDR(png_ptr, info_ptr,
        &mut image.width, &mut image.height, &mut image.bit_depth, &mut image.color_type,
        &mut image.interlace_type, &mut image.compression_type, &mut image.filter_type);
    image.row_pointers = png_get_rows(png_ptr, info_ptr);
    png_get_PLTE(png_ptr, info_ptr, &mut image.palette, &mut image.num_palette);
    if png_get_tRNS(png_ptr, info_ptr,
        &mut image.trans_alpha, &mut image.num_trans, &mut image.trans_color_ptr) != 0
    {
        if !image.trans_color_ptr.is_null() {
            image.trans_color = *image.trans_color_ptr;
            image.trans_color_ptr = &mut image.trans_color;
        }
    }
    if load_meta == 0 {
        return;
    }
    if png_get_bKGD(png_ptr, info_ptr, &mut image.background_ptr) != 0 {
        image.background = *image.background_ptr;
        image.background_ptr = &mut image.background;
    }
    png_get_hIST(png_ptr, info_ptr, &mut image.hist);
    if png_get_sBIT(png_ptr, info_ptr, &mut image.sig_bit_ptr) != 0 {
        image.sig_bit = *image.sig_bit_ptr;
        image.sig_bit_ptr = &mut image.sig_bit;
    }
    image.num_unknowns =
        png_get_unknown_chunks(png_ptr, info_ptr, &mut image.unknowns);
}