use std::mem;
use std::os::raw::{c_char, c_int, c_long, c_ulong};

type __time_t = c_long;
type __syscall_slong_t = c_long;
type timespec = libc::timespec;
type __fd_mask = c_long;
type fd_set = libc::fd_set;
type opng_bitset_t = u32;
const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as i32;
type png_byte = u8;
type png_uint_16 = u16;
type png_uint_32 = u32;
type png_size_t = usize;
type png_bytep = *mut png_byte;
type png_uint_16p = *mut png_uint_16;
type png_const_charp = *const c_char;
type png_bytepp = *mut *mut png_byte;
type png_struct = libc::png_struct_def;
type png_structp = *mut png_struct;
type png_info = libc::png_info_def;
type png_infop = *mut png_info;
type png_const_structrp = *const png_struct;
type png_inforp = *mut png_info;
type png_const_inforp = *const png_info;
type png_color = libc::png_color;
type png_colorp = *mut png_color;
type png_color_16 = libc::png_color_16;
type png_color_16p = *mut png_color_16;
type png_color_8 = libc::png_color_8;
type png_color_8p = *mut png_color_8;
type png_unknown_chunk = libc::png_unknown_chunk_t;
type png_unknown_chunkp = *mut png_unknown_chunk;
type png_unknown_chunkpp = *mut *mut png_unknown_chunk;

struct opng_image_struct {
    width: png_uint_32,
    height: png_uint_32,
    bit_depth: c_int,
    color_type: c_int,
    compression_type: c_int,
    filter_type: c_int,
    interlace_type: c_int,
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

unsafe fn opng_load_image_info(png_ptr: png_structp, info_ptr: png_infop, load_meta: c_int) {
    libc::memset(&mut image as *mut opng_image_struct as *mut libc::c_void, 0, mem::size_of::<opng_image_struct>());
    libc::png_get_IHDR(png_ptr, info_ptr,
        &mut image.width, &mut image.height, &mut image.bit_depth, &mut image.color_type,
        &mut image.interlace_type, &mut image.compression_type, &mut image.filter_type);
    image.row_pointers = libc::png_get_rows(png_ptr, info_ptr);
    libc::png_get_PLTE(png_ptr, info_ptr, &mut image.palette, &mut image.num_palette);
    if libc::png_get_tRNS(png_ptr, info_ptr,
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
    if libc::png_get_bKGD(png_ptr, info_ptr, &mut image.background_ptr) != 0 {
        image.background = *image.background_ptr;
        image.background_ptr = &mut image.background;
    }
    libc::png_get_hIST(png_ptr, info_ptr, &mut image.hist);
    if libc::png_get_sBIT(png_ptr, info_ptr, &mut image.sig_bit_ptr) != 0 {
        image.sig_bit = *image.sig_bit_ptr;
        image.sig_bit_ptr = &mut image.sig_bit;
    }
    image.num_unknowns = libc::png_get_unknown_chunks(png_ptr, info_ptr, &mut image.unknowns);
}
