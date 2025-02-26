#![allow(unaligned_references)]
#[derive(Default, Clone)]
#[repr(C, packed)]struct BmpPixel {
    blue: u8,
    green: u8,
    red: u8,
}

#[derive(Default)]
#[repr(C, packed)]struct BmpHeader {
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

#[repr(C, packed)]struct BmpImg {
    img_header: BmpHeader,
    img_pixels: Vec<Vec<BmpPixel>>,
}

impl BmpImg {
#[no_mangle]
#[no_mangle]
    fn bmp_header_init_df(&mut self, width: i32, height: i32) {
        self.img_header.bi_width = width;
        self.img_header.bi_height = height;
        // Initialize other header fields as needed
    }

#[no_mangle]
#[no_mangle]
    fn bmp_img_alloc(&mut self) {
        self.img_pixels = vec![
            vec![BmpPixel::default(); self.img_header.bi_width as usize];
            self.img_header.bi_height as usize
        ];
    }

#[no_mangle]
#[no_mangle]
    fn bmp_img_init_df(&mut self, width: i32, height: i32) {
        self.bmp_header_init_df(width, height);
        self.bmp_img_alloc();
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut img = BmpImg {
        img_header: BmpHeader::default(),
        img_pixels: Vec::new(),
    };
    img.bmp_img_init_df(100, 100);
}
