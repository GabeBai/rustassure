use std::mem;

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct timespec {
    pub tv_sec: i64,
    pub tv_nsec: i64,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct fd_set {
    pub __fds_bits: [i64; 16],
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct png_color {
    pub red: u8,
    pub green: u8,
    pub blue: u8,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct png_color_16 {
    pub index: u8,
    pub red: u16,
    pub green: u16,
    pub blue: u16,
    pub gray: u16,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct png_color_8 {
    pub red: u8,
    pub green: u8,
    pub blue: u8,
    pub gray: u8,
    pub alpha: u8,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct png_unknown_chunk {
    pub name: [u8; 5],
    pub data: *mut u8,
    pub size: usize,
    pub location: u8,
}

#[repr(C)]
#[derive(Debug, Copy, Clone)]
pub struct opng_image_struct {
    pub width: u32,
    pub height: u32,
    pub bit_depth: i32,
    pub color_type: i32,
    pub compression_type: i32,
    pub filter_type: i32,
    pub interlace_type: i32,
    pub row_pointers: *mut *mut u8,
    pub palette: *mut png_color,
    pub num_palette: i32,
    pub background_ptr: *mut png_color_16,
    pub background: png_color_16,
    pub hist: *mut u16,
    pub sig_bit_ptr: *mut png_color_8,
    pub sig_bit: png_color_8,
    pub trans_alpha: *mut u8,
    pub num_trans: i32,
    pub trans_color_ptr: *mut png_color_16,
    pub trans_color: png_color_16,
    pub unknowns: *mut png_unknown_chunk,
    pub num_unknowns: i32,
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

fn opng_clear_image_info() {
    unsafe {
        let image_ptr = &mut IMAGE as *mut opng_image_struct;
        let size = mem::size_of::<opng_image_struct>();
        libc::memset(image_ptr as *mut libc::c_void, 0, size);
    }
}

fn main() {
    opng_clear_image_info();
}
