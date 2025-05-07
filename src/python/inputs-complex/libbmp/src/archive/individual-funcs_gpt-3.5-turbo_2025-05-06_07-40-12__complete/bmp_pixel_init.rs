#[repr(C)]
pub struct bmp_pixel {
    blue: u8,
    green: u8,
    red: u8,
}

impl bmp_pixel {
    fn init(&mut self, red: u8, green: u8, blue: u8) {
        self.red = red;
        self.green = green;
        self.blue = blue;
    }
}
