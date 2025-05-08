use std::os::raw::{c_void, c_uchar};
use std::io::{Result, Write};

fn csv_fwrite2(fp: &mut std::fs::File, src: *const c_void, src_size: usize, quote: c_uchar) -> Result<()> {
    let csrc = src as *const c_uchar;

    if fp as *const _ == std::ptr::null() || src as *const _ == std::ptr::null() {
        return Ok(());
    }

    fp.write_all(&[quote])?;

    let mut idx = 0;
    while idx < src_size {
        if unsafe { *csrc.offset(idx as isize) } == quote {
            fp.write_all(&[quote])?;
        }
        fp.write_all(&[unsafe { *csrc.offset(idx as isize) }])?;
        idx += 1;
    }

    fp.write_all(&[quote])?;

    Ok(())
}
