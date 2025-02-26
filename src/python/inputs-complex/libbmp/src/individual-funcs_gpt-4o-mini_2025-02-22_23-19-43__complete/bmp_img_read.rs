#[derive(Clone, Debug, PartialEq)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

img.img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width]; height];

#[derive(Clone, Debug, PartialEq)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Clone, Debug)]
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

#[derive(Clone, Debug)]
struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>, // Change to Vec<Vec<BmpPixel>> for safety
}
