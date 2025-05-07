use std::alloc::{dealloc, Layout};
use std::mem::size_of;

#[repr(C)]
pub struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [i64; 16],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[derive(Debug)]
pub enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

#[repr(C)]
pub struct bmp_header {
    bfSize: u32,
    bfReserved: u32,
    bfOffBits: u32,
    biSize: u32,
    biWidth: i32,
    biHeight: i32,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: u32,
    biSizeImage: u32,
    biXPelsPerMeter: i32,
    biYPelsPerMeter: i32,
    biClrUsed: u32,
    biClrImportant: u32,
}

#[repr(C)]
pub struct bmp_pixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
pub struct bmp_img {
    img_header: bmp_header,
    img_pixels: *mut *mut bmp_pixel,
}

unsafe fn bmp_img_free(img: *mut bmp_img) {
    let h = (*img).img_header.biHeight.abs() as usize;
    for y in 0..h {
        dealloc((*(*img).img_pixels.offset(y as isize) as *mut std::ffi::c_void), Layout::array::<bmp_pixel>(1).unwrap());
    }
    dealloc((*img).img_pixels as *mut std::ffi::c_void, Layout::array::<*mut bmp_pixel>(h).unwrap());
}
