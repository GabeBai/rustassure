use std::os::raw::{c_void, c_uchar};
use std::io::Result;
use std::fs::File;
use std::io::Write;

fn csv_fwrite(fp: &mut File, src: *const c_void, src_size: usize) -> Result<()> {
    csv_fwrite2(fp, src, src_size, 0x22)
}

fn csv_fwrite2(fp: &mut File, src: *const c_void, src_size: usize, quote: c_uchar) -> Result<()> {
    let src_slice = unsafe { std::slice::from_raw_parts(src as *const u8, src_size) };
    fp.write_all(src_slice)?;
    Ok(())
}
