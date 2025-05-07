use std::os::raw::{c_char, c_int, c_ulong, c_long};
use std::mem;

type __time_t = c_long;
type __syscall_slong_t = c_long;
type __sigset_t = [c_ulong; 128];
type __fd_mask = c_long;
type fd_set = [__fd_mask; 128];
type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

type png_byte = u8;
type png_uint_16 = u16;
type png_uint_32 = u32;
type png_size_t = usize;
type png_bytep = *mut png_byte;
type png_const_bytep = *const png_byte;
type png_uint_16p = *mut png_uint_16;
type png_const_uint_16p = *const png_uint_16;
type png_const_charp = *const c_char;
type png_bytepp = *mut png_bytep;

struct png_struct;
type png_structp = *mut png_struct;
struct png_info;
type png_infop = *mut png_info;
type png_const_structrp = *const png_struct;
type png_inforp = *mut png_info;

#[repr(C)]
struct png_color {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
}

type png_colorp = *mut png_color;
type png_const_colorp = *const png_color;

#[repr(C)]
struct png_color_16 {
    index: png_byte,
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    gray: png_uint_16,
}

type png_color_16p = *mut png_color_16;
type png_const_color_16p = *const png_color_16;

#[repr(C)]
struct png_color_8 {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
    gray: png_byte,
    alpha: png_byte,
}

type png_color_8p = *mut png_color_8;
type png_const_color_8p = *const png_color_8;

#[repr(C)]
struct png_unknown_chunk_t {
    name: [png_byte; 5],
    data: png_bytep,
    size: png_size_t,
    location: png_byte,
}

type png_unknown_chunk = png_unknown_chunk_t;
type png_unknown_chunkp = *mut png_unknown_chunk;
type png_const_unknown_chunkp = *const png_unknown_chunk;

extern "C" {
    fn png_set_rows(png_ptr: png_const_structrp, info_ptr: png_inforp, row_pointers: png_bytepp);
    fn png_set_bKGD(png_ptr: png_const_structrp, info_ptr: png_inforp, background: png_const_color_16p);
    fn png_set_hIST(png_ptr: png_const_structrp, info_ptr: png_inforp, hist: png_const_uint_16p);
    fn png_set_IHDR(png_ptr: png_const_structrp, info_ptr: png_inforp, width: png_uint_32, height: png_uint_32, bit_depth: c_int, color_type: c_int, interlace_method: c_int, compression_method: c_int, filter_method: c_int);
    fn png_set_PLTE(png_ptr: png_structrp, info_ptr: png_inforp, palette: png_const_colorp, num_palette: c_int);
    fn png_set_sBIT(png_ptr: png_const_structrp, info_ptr: png_inforp, sig_bit: png_const_color_8p);
    fn png_set_tRNS(png_ptr: png_structrp, info_ptr: png_inforp, trans_alpha: png_const_bytep, num_trans: c_int, trans_color: png_const_color_16p);
    fn png_set_unknown_chunks(png_ptr: png_const_structrp, info_ptr: png_inforp, unknowns: png_const_unknown_chunkp, num_unknowns: c_int);
    fn png_set_unknown_chunk_location(png_ptr: png_const_structrp, info_ptr: png_inforp, chunk: c_int, location: c_int);
}

struct opng_image_struct {
    width: png_uint_32,
    height: png_uint_32,
    bit_depth: c_int,
    color_type: c_int,
    compression_type: c_int,
    filter_type: c_int,
    row_pointers: png_bytepp,
    palette: png_colorp,
    num_palette: c_int,
    background_ptr: png_color_16p,
    background: png_color_16,
    hist: png_uint_16p,
    sig_bit_ptr: png_color_8p,
    sig_bit: png_color_8,
    trans_alpha: png_bytep,
    num_trans: c_int,
    trans_color_ptr: png_color_16p,
    trans_color: png_color_16,
    unknowns: png_unknown_chunkp,
    num_unknowns: c_int,
}

static mut image: opng_image_struct = opng_image_struct {
    width: 0,
    height: 0,
    bit_depth: 0,
    color_type: 0,
    compression_type: 0,
    filter_type: 0,
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
    panic!("User panic: {:?}", std::ffi::CStr::from_ptr(msg));
}

static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_infop = std::ptr::null_mut();

unsafe fn opng_store_image_info(png_ptr: png_structp, info_ptr: png_infop, store_meta: bool) {
    if image.row_pointers.is_null() {
        usr_panic("No info in image\0".as_ptr() as *const c_char);
    }

    png_set_IHDR(png_ptr, info_ptr, image.width, image.height, image.bit_depth, image.color_type, image.interlace_type, image.compression_type, image.filter_type);
    png_set_rows(write_ptr, write_info_ptr, image.row_pointers);

    if !image.palette.is_null() {
        png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
    }

    if !image.trans_alpha.is_null() || !image.trans_color_ptr.is_null() {
        png_set_tRNS(png_ptr, info_ptr, image.trans_alpha, image.num_trans, image.trans_color_ptr);
    }

    if !store_meta {
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
