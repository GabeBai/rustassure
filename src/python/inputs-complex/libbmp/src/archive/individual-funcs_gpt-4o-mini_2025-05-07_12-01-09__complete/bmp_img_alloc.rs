use std::alloc::{alloc, dealloc, Layout};
use std::ptr;

#[repr(C)]
#[derive(Debug)]
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
    let h = img.img_header.bi_height.abs() as usize;
    let layout = Layout::array::<*mut BmpPixel>(h).unwrap();
    
    unsafe {
        img.img_pixels = alloc(layout) as *mut *mut BmpPixel;

        for y in 0..h {
            let pixel_layout = Layout::array::<BmpPixel>(img.img_header.bi_width as usize).unwrap();
            let row_ptr = alloc(pixel_layout) as *mut BmpPixel;
            ptr::write(img.img_pixels.add(y), row_ptr);
        }
    }
}

fn main() {
    // Example usage
    let mut img = BmpImg {
        img_header: BmpHeader {
            bf_size: 0,
            bf_reserved: 0,
            bf_off_bits: 0,
            bi_size: 0,
            bi_width: 0,
            bi_height: 0,
            bi_planes: 0,
            bi_bit_count: 0,
            bi_compression: 0,
            bi_size_image: 0,
            bi_x_pels_per_meter: 0,
            bi_y_pels_per_meter: 0,
            bi_clr_used: 0,
            bi_clr_important: 0,
        },
        img_pixels: ptr::null_mut(),
    };

    // Set some values for img_header for testing
    img.img_header.bi_height = 10; // Example height
    img.img_header.bi_width = 10; // Example width

    bmp_img_alloc(&mut img);

    // Remember to deallocate the memory when done
    unsafe {
        for y in 0..img.img_header.bi_height.abs() as usize {
            let row_ptr = *img.img_pixels.add(y);
            let pixel_layout = Layout::array::<BmpPixel>(img.img_header.bi_width as usize).unwrap();
            dealloc(row_ptr as *mut u8, pixel_layout);
        }
        let layout = Layout::array::<*mut BmpPixel>(img.img_header.bi_height.abs() as usize).unwrap();
        dealloc(img.img_pixels as *mut u8, layout);
    }
}
