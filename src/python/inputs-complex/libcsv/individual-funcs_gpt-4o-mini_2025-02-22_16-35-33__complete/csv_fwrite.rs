use std::ffi::c_void;
use std::fs::File;
use std::io::{self, Write};
use std::os::raw::c_ulong;

pub type size_t = c_ulong;

pub unsafe fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: size_t, quote: u8) -> io::Result<usize> {
    let slice = std::slice::from_raw_parts(src as *const u8, src_size as usize);
    let mut writer = vec![];

    // Optionally handle quoting here
    writer.extend_from_slice(slice);
    
    // Write to the file
    fp.write_all(&writer)?;
    
    Ok(writer.len())
}

pub unsafe fn csv_fwrite(fp: &mut File, src: *const c_void, src_size: size_t) -> io::Result<usize> {
    csv_fwrite2(fp, src, src_size, b'"') // Using ASCII value for double quote
}
