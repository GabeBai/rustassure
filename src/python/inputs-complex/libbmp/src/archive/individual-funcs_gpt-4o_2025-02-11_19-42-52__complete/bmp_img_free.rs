#![allow(unaligned_references)]
#[derive(Clone)]
#[repr(C, packed)]struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[repr(C, packed)]struct BmpHeader {
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

#[repr(C, packed)]struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
#[no_mangle]
#[no_mangle]
    fn new(width: usize, height: usize) -> Self {
        let pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width]; height];
        BmpImg {
            img_header: BmpHeader {
                bfSize: 0,
                bfReserved: 0,
                bfOffBits: 0,
                biSize: 0,
                biWidth: width as i32,
                biHeight: height as i32,
                biPlanes: 0,
                biBitCount: 0,
                biCompression: 0,
                biSizeImage: 0,
                biXPelsPerMeter: 0,
                biYPelsPerMeter: 0,
                biClrUsed: 0,
                biClrImportant: 0,
            },
            img_pixels: pixels,
        }
    }

#[no_mangle]
#[no_mangle]
    fn free(self) {
        // In Rust, you don't need to manually free memory.
        // The memory will be automatically deallocated when the object goes out of scope.
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let img = BmpImg::new(10, 10);
    // Use the image...
    // No need to call free, Rust will handle it.
}
