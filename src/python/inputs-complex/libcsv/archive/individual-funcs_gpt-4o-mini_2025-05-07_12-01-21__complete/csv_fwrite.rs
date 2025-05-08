use std::fs::File;
use std::io::{self, Write};
use std::os::raw::{c_int, c_void};

pub unsafe fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: usize, quote: u8) -> c_int {
    let slice = std::slice::from_raw_parts(src as *const u8, src_size);
    let mut writer = vec![];

    // Write the quote character if needed
    if quote != 0 {
        writer.push(quote);
    }

    // Write the data
    writer.extend_from_slice(slice);

    // Write to the file
    if let Err(_) = fp.write_all(&writer) {
        return -1; // Indicate an error
    }

    0 // Success
}

pub unsafe fn csv_fwrite(fp: &mut File, src: *const c_void, src_size: usize) -> c_int {
    csv_fwrite2(fp, src, src_size, b'"') // Using double quote as the default
}
