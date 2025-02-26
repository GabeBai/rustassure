#[derive(Clone)]
struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

impl BmpPixel {
    fn new(blue: u8, green: u8, red: u8) -> Self {
        BmpPixel { blue, green, red }
    }
}

fn main() {
    let width = 512;
    let height = 512;

    let img_pixels = vec![vec![BmpPixel::new(0, 0, 0); width as usize]; height as usize];

    // Your image processing logic here

    // Example usage
    for y in 0..height {
        for x in 0..width {
            // Access pixel at (x, y)
            let pixel = &img_pixels[y][x];
            println!("Pixel at ({}, {}): R={}, G={}, B={}", x, y, pixel.red, pixel.green, pixel.blue);
        }
    }
}
