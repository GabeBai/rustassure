use std::{mem, ptr};

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

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: *mut *mut BmpPixel,
}

unsafe fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.biHeight.abs() as usize;
    img.img_pixels = libc::malloc(mem::size_of::<*mut BmpPixel>() * h) as *mut *mut BmpPixel;

    for y in 0..h {
        let row = libc::malloc(mem::size_of::<BmpPixel>() * img.img_header.biWidth as usize) as *mut BmpPixel;
        *img.img_pixels.add(y) = row;
    }
}

fn main() {
    let mut img = BmpImg {
        img_header: BmpHeader {
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
        img_pixels: ptr::null_mut(),
    };

    unsafe {
        bmp_img_alloc(&mut img);
    }
}
