use std::mem;

#[repr(C)]
struct png_struct;

#[repr(C)]
struct png_info;

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

#[repr(C)]
struct opng_image_struct {
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

static mut IMAGE: opng_image_struct = opng_image_struct {
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

unsafe fn opng_load_image_info(png_ptr: *mut png_struct, info_ptr: *mut png_info, load_meta: i32) {
    libc::memset(&mut IMAGE as *mut opng_image_struct as *mut libc::c_void, 0, mem::size_of::<opng_image_struct>());
    libc::png_get_IHDR(png_ptr, info_ptr,
        &mut IMAGE.width, &mut IMAGE.height, &mut IMAGE.bit_depth, &mut IMAGE.color_type,
        &mut IMAGE.interlace_type, &mut IMAGE.compression_type, &mut IMAGE.filter_type);
    IMAGE.row_pointers = libc::png_get_rows(png_ptr, info_ptr);
    libc::png_get_PLTE(png_ptr, info_ptr, &mut IMAGE.palette, &mut IMAGE.num_palette);
    if libc::png_get_tRNS(png_ptr, info_ptr,
        &mut IMAGE.trans_alpha, &mut IMAGE.num_trans, &mut IMAGE.trans_color_ptr) != 0
    {
        if !IMAGE.trans_color_ptr.is_null() {
            IMAGE.trans_color = *IMAGE.trans_color_ptr;
            IMAGE.trans_color_ptr = &mut IMAGE.trans_color;
        }
    }
    if load_meta == 0 {
        return;
    }
    if libc::png_get_bKGD(png_ptr, info_ptr, &mut IMAGE.background_ptr) != 0 {
        IMAGE.background = *IMAGE.background_ptr;
        IMAGE.background_ptr = &mut IMAGE.background;
    }
    libc::png_get_hIST(png_ptr, info_ptr, &mut IMAGE.hist);
    if libc::png_get_sBIT(png_ptr, info_ptr, &mut IMAGE.sig_bit_ptr) != 0 {
        IMAGE.sig_bit = *IMAGE.sig_bit_ptr;
        IMAGE.sig_bit_ptr = &mut IMAGE.sig_bit;
    }
    IMAGE.num_unknowns = libc::png_get_unknown_chunks(png_ptr, info_ptr, &mut IMAGE.unknowns);
}
