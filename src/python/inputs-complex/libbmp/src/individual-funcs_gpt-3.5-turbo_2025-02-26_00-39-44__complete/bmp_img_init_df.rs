use std::mem;

#[repr(C, packed)]
struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C, packed)]
struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C, packed)]
struct _OSUnalignedU64 {
    __val: u64,
}

enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

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

struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

fn bmp_header_init_df(bmp_header: &mut BmpHeader, width: i32, height: i32) {
    bmp_header.bfSize = 0; // Initialize as needed
    bmp_header.bfReserved = 0; // Initialize as needed
    bmp_header.bfOffBits = 0; // Initialize as needed
    bmp_header.biSize = 0; // Initialize as needed
    bmp_header.biWidth = width;
    bmp_header.biHeight = height;
    bmp_header.biPlanes = 0; // Initialize as needed
    bmp_header.biBitCount = 0; // Initialize as needed
    bmp_header.biCompression = 0; // Initialize as needed
    bmp_header.biSizeImage = 0; // Initialize as needed
    bmp_header.biXPelsPerMeter = 0; // Initialize as needed
    bmp_header.biYPelsPerMeter = 0; // Initialize as needed
    bmp_header.biClrUsed = 0; // Initialize as needed
    bmp_header.biClrImportant = 0; // Initialize as needed
}

fn bmp_img_alloc(bmp_img: &mut BmpImg) {
    bmp_img.img_pixels = Vec::new();
}

fn bmp_img_init_df(bmp_img: &mut BmpImg, width: i32, height: i32) {
    bmp_header_init_df(&mut bmp_img.img_header, width, height);
    bmp_img_alloc(bmp_img);
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
        img_pixels: Vec::new(),
    };

    bmp_img_init_df(&mut img, 100, 100);
}
