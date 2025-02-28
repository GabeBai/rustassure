use std::mem;

static mut image: opng_image_struct = opng_image_struct {
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

unsafe fn opng_clear_image_info() {
    mem::zeroed::<opng_image_struct>();
}