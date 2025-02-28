use std::os::raw::c_void;

#[repr(C)]
struct BmpHeader {
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
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: *mut *mut BmpPixel,
}

extern "C" {
    fn free(ptr: *mut c_void);
}

fn bmp_img_free(img: *mut BmpImg) {
    unsafe {
        let h = (*img).img_header.biHeight.abs() as usize;
        for y in 0..h {
            free((*(*img).img_pixels.offset(y as isize)) as *mut c_void);
        }
        free((*img).img_pixels as *mut c_void);
    }
}
