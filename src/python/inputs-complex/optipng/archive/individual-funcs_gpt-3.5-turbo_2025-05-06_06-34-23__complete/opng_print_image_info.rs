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

type opng_bitset_t = c_uint;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as opng_bitset_t;

type png_byte = u8;
type png_uint_16 = u16;
type png_uint_32 = u32;
type png_size_t = usize;
type png_bytep = *mut png_byte;
type png_uint_16p = *mut png_uint_16;
type png_const_charp = *const c_char;
type png_bytepp = *mut png_bytep;

struct png_struct;
type png_structp = *mut png_struct;

#[repr(C)]
struct png_color {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
}

type png_colorp = *mut png_color;

#[repr(C)]
struct png_color_16 {
    index: png_byte,
    red: png_uint_16,
    green: png_uint_16,
    blue: png_uint_16,
    gray: png_uint_16,
}

type png_color_16p = *mut png_color_16;

#[repr(C)]
struct png_color_8 {
    red: png_byte,
    green: png_byte,
    blue: png_byte,
    gray: png_byte,
    alpha: png_byte,
}

type png_color_8p = *mut png_color_8;

#[repr(C)]
struct png_unknown_chunk_t {
    name: [png_byte; 5],
    data: png_bytep,
    size: png_size_t,
    location: png_byte,
}

type png_unknown_chunk = png_unknown_chunk_t;
type png_unknown_chunkp = *mut png_unknown_chunk;

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

unsafe extern "C" fn usr_printf(fmt: *const c_char, ...) {
    // Implementation of usr_printf goes here
}

fn opng_print_image_info(show_dim: c_int, show_depth: c_int, show_type: c_int, show_interlaced: c_int) {
    const TYPE_CHANNELS: [c_int; 8] = [1, 0, 3, 1, 2, 0, 4, 0];
    let mut printed = 0;

    if show_dim != 0 {
        printed = 1;
        unsafe {
            usr_printf("%lux%lu pixels\0".as_ptr(), image.width, image.height);
        }
    }

    if show_depth != 0 {
        if printed != 0 {
            unsafe {
                usr_printf(", \0".as_ptr());
            }
        }
        printed = 1;
        let channels = TYPE_CHANNELS[(image.color_type & 7) as usize];
        if channels != 1 {
            unsafe {
                usr_printf("%dx%d bits/pixel\0".as_ptr(), channels, image.bit_depth);
            }
        } else if image.bit_depth != 1 {
            unsafe {
                usr_printf("%d bits/pixel\0".as_ptr(), image.bit_depth);
            }
        } else {
            unsafe {
                usr_printf("1 bit/pixel\0".as_ptr());
            }
        }
    }

    if show_type != 0 {
        if printed != 0 {
            unsafe {
                usr_printf(", \0".as_ptr());
            }
        }
        printed = 1;
        if (image.color_type & 1) != 0 {
            unsafe {
                if image.num_palette == 1 {
                    usr_printf("1 color\0".as_ptr());
                } else {
                    usr_printf("%d colors\0".as_ptr(), image.num_palette);
                }
                if image.num_trans > 0 {
                    usr_printf(" (%d transparent)\0".as_ptr(), image.num_trans);
                }
                usr_printf(" in palette\0".as_ptr());
            }
        } else {
            unsafe {
                usr_printf(if (image.color_type & 2) != 0 { "RGB\0" } else { "grayscale\0" }.as_ptr());
                if (image.color_type & 4) != 0 {
                    usr_printf("+alpha\0".as_ptr());
                } else if image.trans_color_ptr != std::ptr::null_mut() {
                    usr_printf("+transparency\0".as_ptr());
                }
            }
        }
    }

    if show_interlaced != 0 {
        if image.interlace_type != 0 {
            if printed != 0 {
                unsafe {
                    usr_printf(", \0".as_ptr());
                }
            }
            unsafe {
                usr_printf("interlaced\0".as_ptr());
            }
        }
    }
}
