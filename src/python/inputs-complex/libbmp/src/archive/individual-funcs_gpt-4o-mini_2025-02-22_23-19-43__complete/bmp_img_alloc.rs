use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

#[repr(C)]
#[derive(Debug)]
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
#[derive(Debug)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C)]
#[derive(Debug)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: *mut *mut BmpPixel,
}

fn bmp_img_alloc(img: &mut BmpImg) {
    let h = img.img_header.biHeight.abs() as usize;
    let layout = Layout::array::<*mut BmpPixel>(h).unwrap();
    
    unsafe {
        img.img_pixels = alloc(layout) as *mut *mut BmpPixel;

        for y in 0..h {
            let pixel_layout = Layout::array::<BmpPixel>(img.img_header.biWidth as usize).unwrap();
            let row_ptr = alloc(pixel_layout) as *mut BmpPixel;
            *img.img_pixels.add(y) = row_ptr;
        }
    }
}

fn main() {
    // Example usage
    let mut img = BmpImg {
        img_header: BmpHeader {
            bfSize: 0,
            bfReserved: 0,
            bfOffBits: 0,
            biSize: 0,
            biWidth: 100, // Example width
            biHeight: 100, // Example height
            biPlanes: 1,
            biBitCount: 24,
            biCompression: 0,
            biSizeImage: 0,
            biXPelsPerMeter: 0,
            biYPelsPerMeter: 0,
            biClrUsed: 0,
            biClrImportant: 0,
        },
        img_pixels: ptr::null_mut(),
    };

    bmp_img_alloc(&mut img);

    // Remember to deallocate the memory when done
    unsafe {
        for y in 0..img.img_header.biHeight.abs() as usize {
            let row_ptr = *img.img_pixels.add(y);
            let pixel_layout = Layout::array::<BmpPixel>(img.img_header.biWidth as usize).unwrap();
            dealloc(row_ptr as *mut u8, pixel_layout);
        }
        let layout = Layout::array::<*mut BmpPixel>(img.img_header.biHeight.abs() as usize).unwrap();
        dealloc(img.img_pixels as *mut u8, layout);
    }
}
