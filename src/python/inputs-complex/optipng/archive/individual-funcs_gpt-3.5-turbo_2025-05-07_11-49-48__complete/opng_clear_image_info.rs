use std::mem;

#[repr(C)]
#[derive(Debug, Default)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [i64; 16],
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
    unknowns: *mut png_unknown_chunk_t,
    num_unknowns: i32,
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

unsafe fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) {
    let mut ptr = s as *mut u8;
    for _ in 0..n {
        *ptr = c as u8;
        ptr = ptr.offset(1);
    }
}

fn opng_clear_image_info() {
    unsafe {
        memset(&mut image as *mut _ as *mut std::ffi::c_void, 0, mem::size_of_val(&image));
    }
}

fn main() {
    opng_clear_image_info();
}
