use std::os::raw::{c_char, c_int, c_long, c_ulong};

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [c_ulong; 128],
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

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
struct png_unknown_chunk_t {
    name: [u8; 5],
    data: *mut u8,
    size: usize,
    location: u8,
}

#[link(name = "png")]
extern "C" {
    fn png_set_rows(png_ptr: *const png_struct, info_ptr: *mut png_info, row_pointers: *mut *mut u8);
    fn png_set_bKGD(png_ptr: *const png_struct, info_ptr: *mut png_info, background: *const png_color_16);
    fn png_set_hIST(png_ptr: *const png_struct, info_ptr: *mut png_info, hist: *const u16);
    fn png_set_IHDR(png_ptr: *const png_struct, info_ptr: *mut png_info, width: u32, height: u32, bit_depth: c_int, color_type: c_int, interlace_method: c_int, compression_method: c_int, filter_method: c_int);
    fn png_set_PLTE(png_ptr: *mut png_struct, info_ptr: *mut png_info, palette: *const png_color, num_palette: c_int);
    fn png_set_sBIT(png_ptr: *const png_struct, info_ptr: *mut png_info, sig_bit: *const png_color_8);
    fn png_set_tRNS(png_ptr: *mut png_struct, info_ptr: *mut png_info, trans_alpha: *const u8, num_trans: c_int, trans_color: *const png_color_16);
    fn png_set_unknown_chunks(png_ptr: *const png_struct, info_ptr: *mut png_info, unknowns: *const png_unknown_chunk_t, num_unknowns: c_int);
    fn png_set_unknown_chunk_location(png_ptr: *const png_struct, info_ptr: *mut png_info, chunk: c_int, location: c_int);
}

struct png_struct;
type png_structp = *mut png_struct;
struct png_info;
type png_infop = *mut png_info;

#[repr(C)]
struct opng_image_struct {
    width: u32,
    height: u32,
    bit_depth: c_int,
    color_type: c_int,
    compression_type: c_int,
    filter_type: c_int,
    interlace_type: c_int,
    row_pointers: *mut *mut u8,
    palette: *mut png_color,
    num_palette: c_int,
    background_ptr: *mut png_color_16,
    background: png_color_16,
    hist: *mut u16,
    sig_bit_ptr: *mut png_color_8,
    sig_bit: png_color_8,
    trans_alpha: *mut u8,
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

unsafe fn usr_panic(msg: *const c_char) {
    // Implement your panic logic here
}

static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_infop = std::ptr::null_mut();

unsafe fn opng_store_image_info(png_ptr: png_structp, info_ptr: png_infop, store_meta: c_int) {
    if image.row_pointers.is_null() {
        usr_panic("No info in image\0".as_ptr());
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
            png_set_unknown_chunk_location(png_ptr, info_ptr, i, image.unknowns.offset(i as isize).as_ref().unwrap().location);
        }
    }
}
