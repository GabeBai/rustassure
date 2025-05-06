use std::fs::File;
use std::io::{Read, Seek, SeekFrom};
use std::mem::size_of;
use std::os::raw::{c_int, c_long};
use std::ptr;

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct bmp_header {
    bfSize: u32,
    bfReserved: u32,
    bfOffBits: u32,
    biSize: u32,
    biWidth: c_int,
    biHeight: c_int,
    biPlanes: u16,
    biBitCount: u16,
    biCompression: u32,
    biSizeImage: u32,
    biXPelsPerMeter: c_int,
    biYPelsPerMeter: c_int,
    biClrUsed: u32,
    biClrImportant: u32,
}

#[repr(C)]
struct bmp_pixel {
    blue: u8,
    green: u8,
    red: u8,
}

struct bmp_img {
    img_header: bmp_header,
    img_pixels: Vec<Vec<bmp_pixel>>,
}

#[derive(Debug)]
enum BmpError {
    FileNotOpened = -4,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

fn bmp_header_read(header: &mut bmp_header, file: &mut File) -> Result<(), BmpError> {
    // Implement bmp_header_read function here
    unimplemented!()
}

fn bmp_img_alloc(img: &mut bmp_img) {
    // Implement bmp_img_alloc function here
    unimplemented!()
}

fn bmp_img_read(img: &mut bmp_img, filename: &str) -> Result<(), BmpError> {
    let mut img_file = match File::open(filename) {
        Ok(file) => file,
        Err(_) => return Err(BmpError::FileNotOpened),
    };

    let err = bmp_header_read(&mut img.img_header, &mut img_file);
    if err != Ok {
        return Err(err);
    }

    bmp_img_alloc(img);

    let h = img.img_header.biHeight.abs() as usize;
    let offset = if img.img_header.biHeight > 0 { h - 1 } else { 0 };
    let padding = (img.img_header.biWidth % 4) as usize;
    let items = img.img_header.biWidth as usize;

    for y in 0..h {
        let mut buffer = vec![bmp_pixel { blue: 0, green: 0, red: 0 }; items];
        if img_file.read_exact(unsafe {
            std::slice::from_raw_parts_mut(
                buffer.as_mut_ptr() as *mut u8,
                size_of::<bmp_pixel>() * items,
            )
        })
        .is_err()
        {
            return Err(BmpError::Error);
        }
        img.img_pixels[abs(offset as isize - y as isize)] = buffer;

        img_file.seek(SeekFrom::Current(padding as i64)).unwrap();
    }

    Ok(())
}
