use std::mem::size_of;

#[repr(C)]
struct BmpHeader {
    bf_size: u32,
    bf_reserved: u32,
    bf_off_bits: u32,
    bi_size: u32,
    bi_width: i32,
    bi_height: i32,
    bi_planes: u16,
    bi_bit_count: u16,
    bi_compression: u32,
    bi_size_image: u32,
    bi_x_pels_per_meter: i32,
    bi_y_pels_per_meter: i32,
    bi_clr_used: u32,
    bi_clr_important: u32,
}

#[repr(C)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

#[repr(C)]
enum BmpError {
    BmpFileNotOpened = -4,
    BmpHeaderNotInitialized,
    BmpInvalidFile,
    BmpError,
    BmpOk = 0,
}

extern "C" {
    fn bmp_pixel_init(pixel: *mut BmpPixel, red: u8, green: u8, blue: u8);
    fn bmp_img_init_df(img: *mut BmpImg, width: i32, height: i32);
    fn bmp_img_free(img: *mut BmpImg);
    fn bmp_img_write(img: *const BmpImg, filename: *const i8) -> BmpError;
}

fn main() {
    let mut img = BmpImg {
        img_header: unsafe { std::mem::zeroed() },
        img_pixels: Vec::new(),
    };

    unsafe {
        bmp_img_init_df(&mut img, 512, 512);
    }

    for y in 0..512 {
        for x in 0..512 {
            let pixel = if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                BmpPixel { red: 250, green: 250, blue: 250 }
            } else {
                BmpPixel { red: 0, green: 0, blue: 0 }
            };
            
            unsafe {
                bmp_pixel_init(&mut img.img_pixels[y as usize][x as usize], pixel.red, pixel.green, pixel.blue);
            }
        }
    }

    unsafe {
        bmp_img_write(&img, "test.bmp\0".as_ptr() as *const i8);
        bmp_img_free(&mut img);
    }
}