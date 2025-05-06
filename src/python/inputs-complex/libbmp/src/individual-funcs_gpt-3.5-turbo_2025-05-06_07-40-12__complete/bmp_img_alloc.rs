use std::alloc::{alloc, dealloc, Layout};
use std::mem::size_of;

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [i64; 16],
}

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[repr(C)]
#[derive(Debug)]
enum bmp_error {
    BMP_FILE_NOT_OPENED = -4,
    BMP_HEADER_NOT_INITIALIZED,
    BMP_INVALID_FILE,
    BMP_ERROR,
    BMP_OK = 0,
}

#[repr(C)]
struct bmp_header {
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
struct bmp_pixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
struct bmp_img {
    img_header: bmp_header,
    img_pixels: *mut *mut bmp_pixel,
}

fn bmp_img_alloc(img: &mut bmp_img) {
    let h = img.img_header.biHeight.abs() as usize;
    img.img_pixels = unsafe { alloc(Layout::array::<*mut bmp_pixel>(h).unwrap()) as *mut *mut bmp_pixel };
    for y in 0..h {
        img.img_pixels.add(y).write(unsafe { alloc(Layout::array::<bmp_pixel>(img.img_header.biWidth as usize).unwrap()) as *mut bmp_pixel });
    }
}

fn main() {
    let mut img = bmp_img {
        img_header: bmp_header {
            bfSize: 0,
            bfReserved: 0,
            bfOffBits: 0,
            biSize: 0,
            biWidth: 0,
            biHeight: 0,
            biPlanes: 0,
            biBitCount: 0,
            biCompression: 0,
            biSizeImage: 0,
            biXPelsPerMeter: 0,
            biYPelsPerMeter: 0,
            biClrUsed: 0,
            biClrImportant: 0,
        },
        img_pixels: std::ptr::null_mut(),
    };

    bmp_img_alloc(&mut img);
}
