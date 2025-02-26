use std::io::{self, Write};

#[derive(Debug)]
pub enum BmpError {
    FileNotOpened,
    HeaderNotInitialized,
    InvalidFile,
    Error,
    Ok,
}

#[repr(C)]
#[derive(Debug)]
pub struct BmpHeader {
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

pub fn bmp_header_write(header: &BmpHeader, img_file: &mut dyn Write) -> BmpError {
    if header.is_null() {
        return BmpError::HeaderNotInitialized;
    }
    
    // In Rust, we don't have null pointers, so we assume img_file is valid
    // If you want to check for a valid file, you can use Option<dyn Write>
    
    let magic: u16 = 19778;
    
    // Write the magic number
    if let Err(_) = img_file.write_all(&magic.to_le_bytes()) {
        return BmpError::Error;
    }
    
    // Write the header
    if let Err(_) = img_file.write_all(unsafe { std::slice::from_raw_parts(header as *const _ as *const u8, std::mem::size_of::<BmpHeader>()) }) {
        return BmpError::Error;
    }
    
    BmpError::Ok
}

// Helper function to check if a reference is null (for demonstration purposes)
trait IsNull {
    fn is_null(&self) -> bool;
}

impl IsNull for &BmpHeader {
    fn is_null(&self) -> bool {
        false // In Rust, references cannot be null
    }
}
