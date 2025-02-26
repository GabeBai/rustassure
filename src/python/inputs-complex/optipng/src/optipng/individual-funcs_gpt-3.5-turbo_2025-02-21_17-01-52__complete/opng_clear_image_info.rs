use std::os::raw::{c_uchar, c_uint, c_int, c_ushort, c_void};

#[repr(C)]
struct png_color {
    red: c_uchar,
    green: c_uchar,
    blue: c_uchar,
}

#[repr(C)]
struct png_color_16 {
    index: c_uchar,
    red: c_ushort,
    green: c_ushort,
    blue: c_ushort,
    gray: c_ushort,
}

#[repr(C)]
struct png_color_8 {
    red: c_uchar,
    green: c_uchar,
    blue: c_uchar,
    gray: c_uchar,
    alpha: c_uchar,
}

#[repr(C)]
struct png_unknown_chunk_t {
    name: [c_uchar; 5],
    data: *mut c_uchar,
    size: usize,
    location: c_uchar,
}

#[repr(C)]
struct opng_image_struct {
    width: c_uint,
    height: c_uint,
    bit_depth: c_int,
    color_type: c_int,
    compression_type: c_int,
    filter_type: c_int,
    interlace_type: c_int,
    row_pointers: *mut *mut c_uchar,
    palette: *mut png_color,
    num_palette: c_int,
    background_ptr: *mut png_color_16,
    background: png_color_16,
    hist: *mut c_ushort,
    sig_bit_ptr: *mut png_color_8,
    sig_bit: png_color_8,
    trans_alpha: *mut c_uchar,
    num_trans: c_int,
    trans_color_ptr: *mut png_color_16,
    trans_color: png_color_16,
    unknowns: *mut png_unknown_chunk_t,
    num_unknowns: c_int,
}

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
    background: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    hist: std::ptr::null_mut(),
    sig_bit_ptr: std::ptr::null_mut(),
    sig_bit: png_color_8 {
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
        alpha: 0,
    },
    trans_alpha: std::ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: std::ptr::null_mut(),
    trans_color: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    unknowns: std::ptr::null_mut(),
    num_unknowns: 0,
};

unsafe fn opng_clear_image_info() {
    std::ptr::write_bytes(&mut image as *mut opng_image_struct, 0, 1);
}
