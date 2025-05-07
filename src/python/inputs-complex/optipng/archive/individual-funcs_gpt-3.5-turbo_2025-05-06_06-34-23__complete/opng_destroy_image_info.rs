use std::ptr;

#[repr(C)]
struct png_color {
    red: u8,
    green: u8,
    blue: u8,
}

#[repr(C)]
struct png_color_16 {
    index: u8,
    red: u16,
    green: u16,
    blue: u16,
    gray: u16,
}

#[repr(C)]
struct png_color_8 {
    red: u8,
    green: u8,
    blue: u8,
    gray: u8,
    alpha: u8,
}

#[repr(C)]
struct png_unknown_chunk {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

struct OpngImage {
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

static mut IMAGE: OpngImage = OpngImage {
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
    background: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    hist: ptr::null_mut(),
    sig_bit_ptr: ptr::null_mut(),
    sig_bit: png_color_8 {
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
        alpha: 0,
    },
    trans_alpha: ptr::null_mut(),
    num_trans: 0,
    trans_color_ptr: ptr::null_mut(),
    trans_color: png_color_16 {
        index: 0,
        red: 0,
        green: 0,
        blue: 0,
        gray: 0,
    },
    unknowns: ptr::null_mut(),
    num_unknowns: 0,
};

unsafe fn opng_free(ptr: *mut u8) {
    if !ptr.is_null() {
        libc::free(ptr as *mut std::ffi::c_void);
    }
}

unsafe fn opng_destroy_image_info() {
    let mut i: u32;
    let mut j: i32;
    if IMAGE.row_pointers.is_null() {
        return;
    }
    for i in 0..IMAGE.height {
        opng_free(*IMAGE.row_pointers.offset(i as isize));
    }
    opng_free(IMAGE.row_pointers as *mut u8);
    opng_free(IMAGE.palette as *mut u8);
    opng_free(IMAGE.trans_alpha);
    opng_free(IMAGE.hist as *mut u8);
    for j in 0..IMAGE.num_unknowns {
        opng_free((*IMAGE.unknowns.offset(j as isize)).data);
    }
    opng_free(IMAGE.unknowns as *mut u8);
    std::ptr::write_volatile(&mut IMAGE, OpngImage {
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
        background: png_color_16 {
            index: 0,
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
        },
        hist: ptr::null_mut(),
        sig_bit_ptr: ptr::null_mut(),
        sig_bit: png_color_8 {
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
            alpha: 0,
        },
        trans_alpha: ptr::null_mut(),
        num_trans: 0,
        trans_color_ptr: ptr::null_mut(),
        trans_color: png_color_16 {
            index: 0,
            red: 0,
            green: 0,
            blue: 0,
            gray: 0,
        },
        unknowns: ptr::null_mut(),
        num_unknowns: 0,
    });
}
