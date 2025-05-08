#[derive(Clone)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Clone)]
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

struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
    fn init_df(width: i32, height: i32) -> Self {
        let img_pixels = vec![vec![BmpPixel { blue: 0, green: 0, red: 0 }; width as usize]; height as usize];
        let img_header = BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 54, // Assuming a standard BMP header size
            bi_size: 40, // DIB header size
            bi_width: width,
            bi_height: height,
            bi_planes: 1,
            bi_bit_count: 24,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        };
        BmpImg { img_header, img_pixels }
    }

    fn write(&self, filename: &str) {
        // Implement BMP writing logic here
        // This is a placeholder for the actual implementation
    }
}

fn bmp_pixel_init(pixel: &mut BmpPixel, blue: u8, green: u8, red: u8) {
    pixel.blue = blue;
    pixel.green = green;
    pixel.red = red;
}

fn main() {
    let mut img = BmpImg::init_df(512, 512);
    for y in 0..512 {
        for x in 0..512 {
            if (y % 128 < 64 && x % 128 < 64) || (y % 128 >= 64 && x % 128 >= 64) {
                bmp_pixel_init(&mut img.img_pixels[y as usize][x as usize], 250, 250, 250);
            } else {
                bmp_pixel_init(&mut img.img_pixels[y as usize][x as usize], 0, 0, 0);
            }
        }
    }
    img.write("test.bmp");
}
