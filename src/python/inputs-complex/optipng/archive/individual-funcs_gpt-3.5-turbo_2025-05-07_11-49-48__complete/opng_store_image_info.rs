use std::os::raw::{c_long, c_ulong, c_int, c_uchar, c_ushort, c_void};

type size_t = c_ulong;
type __time_t = c_long;
type __syscall_slong_t = c_long;

#[repr(C)]
struct _IO_FILE;

#[repr(C)]
struct _IO_marker;

#[repr(C)]
struct _IO_codecvt;

#[repr(C)]
struct _IO_wide_data;

#[repr(C)]
struct timespec {
    tv_sec: __time_t,
    tv_nsec: c_long,
};

#[repr(C)]
struct __sigset_t {
    __val: [c_ulong; 128],
};

#[repr(C)]
struct fd_set {
    __fds_bits: [c_long; 128],
};

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
};

type opng_bitset_t = c_uint;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as c_int;

type png_byte = c_uchar;
type png_uint_16 = c_ushort;
type png_uint_32 = c_uint;
type png_size_t = size_t;
type png_bytep = *mut png_byte;
type png_const_bytep = *const png_byte;
type png_uint_16p = *mut png_uint_16;
type png_const_uint_16p = *const png_uint_16;
type png_const_charp = *const c_char;
type png_bytepp = *mut png_bytep;

#[repr(C)]
struct png_struct;

type png_structp = *mut png_struct;

#[repr(C)]
struct png_info;

type png_infop = *mut png_info;

type png_structrp = *mut png_struct;
type png_const_structrp = *const png_struct;
type png_inforp = *mut png_info;

#[repr(C)]
struct png_color_struct {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
}

type png_color = png_color_struct;
type png_colorp = *mut png_color;
type png_const_colorp = *const png_color;

#[repr(C)]
struct png_color_16_struct {
    index: png_byte,
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    gray: png_uint_16,
}

type png_color_16 = png_color_16_struct;
type png_color_16p = *mut png_color_16;
type png_const_color_16p = *const png_color_16;

#[repr(C)]
struct png_color_8_struct {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
    gray: png_byte,
    alpha: png_byte,
}

type png_color_8 = png_color_8_struct;
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

#[repr(C)]
struct internal_state;

type __jmp_buf = [c_long; 8];

#[repr(C)]
struct __jmp_buf_tag {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

type jmp_buf = [__jmp_buf_tag; 1];

#[repr(C)]
struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

#[repr(C)]
struct ExceptionContextV {
    etmp: *const c_char,
}

const INPUT_IS_PNG_FILE: c_int = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: c_int = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: c_int = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: c_int = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: c_int = 0x0010;
const INPUT_HAS_APNG: c_int = 0x0020;
const INPUT_HAS_STRIPPED_DATA: c_int = 0x0040;
const INPUT_HAS_JUNK: c_int = 0x0080;
const INPUT_HAS_ERRORS: c_int = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: c_int = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: c_int = 0x2000;
const OUTPUT_HAS_ERRORS: c_int = 0x4000;

#[repr(C)]
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

static mut usr_panic: Option<extern "C" fn(*const c_char)> = None;
static mut write_ptr: png_structp = std::ptr::null_mut();
static mut write_info_ptr: png_infop = std::ptr::null_mut();

fn opng_store_image_info(png_ptr: png_structp, info_ptr: png_infop, store_meta: c_int) {
    unsafe {
        if image.row_pointers.is_null() {
            if let Some(panic_fn) = usr_panic {
                panic_fn("No info in image\0".as_ptr() as *const c_char);
            }
        }

        png_set_IHDR(png_ptr, info_ptr,
            image.width, image.height, image.bit_depth, image.color_type,
            image.interlace_type, image.compression_type, image.filter_type);

        png_set_rows(write_ptr, write_info_ptr, image.row_pointers);

        if !image.palette.is_null() {
            png_set_PLTE(png_ptr, info_ptr, image.palette, image.num_palette);
        }

        if !image.trans_alpha.is_null() || !image.trans_color_ptr.is_null() {
            png_set_tRNS(png_ptr, info_ptr,
                image.trans_alpha, image.num_trans, image.trans_color_ptr);
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
            for i in 0..image.num_unknowns {
                png_set_unknown_chunks(png_ptr, info_ptr,
                    image.unknowns, image.num_unknowns);
                png_set_unknown_chunk_location(png_ptr, info_ptr,
                    i, (*image.unknowns.offset(i as isize)).location);
            }
        }
    }
}
