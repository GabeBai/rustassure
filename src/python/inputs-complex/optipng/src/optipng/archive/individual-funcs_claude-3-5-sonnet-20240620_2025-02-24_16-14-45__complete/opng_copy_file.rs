use std::io::{Read, Write};
use std::mem::MaybeUninit;
use std::ptr;

fn opng_copy_file(infile: &mut impl Read, outfile: &mut impl Write) -> Result<(), Box<dyn std::error::Error>> {
    let mut write_ptr = unsafe {
        png_create_write_struct(
            b"1.6.21\0".as_ptr() as *const i8,
            ptr::null_mut(),
            Some(opng_error),
            Some(opng_warning),
        )
    };
    if write_ptr.is_null() {
        return Err("Out of memory".into());
    }

    opng_init_write_data();
    unsafe {
        png_set_write_fn(
            write_ptr,
            outfile as *mut _ as *mut libc::c_void,
            Some(opng_write_data),
            None,
        );
    }

    let result = std::panic::catch_unwind(|| {
        let mut buf: Vec<u8> = Vec::new();
        let buf_size_incr: u32 = 0x1000;
        let mut chunk_hdr = [0u8; 8];

        unsafe { png_write_sig(write_ptr) };

        loop {
            if infile.read_exact(&mut chunk_hdr).is_err() {
                return Err("Read error".into());
            }

            let length = u32::from_be_bytes([chunk_hdr[0], chunk_hdr[1], chunk_hdr[2], chunk_hdr[3]]);
            if length > 0x7fffffff {
                if buf.is_empty() && length == 0x89504e47 {
                    continue;
                }
                return Err("Data error".into());
            }

            if (length as usize + 4) > buf.len() {
                buf.resize(((length as usize + 4 + buf_size_incr as usize - 1) / buf_size_incr as usize) * buf_size_incr as usize, 0);
            }

            if infile.read_exact(&mut buf[..(length as usize + 4)]).is_err() {
                return Err("Read error".into());
            }

            unsafe {
                png_write_chunk(
                    write_ptr,
                    chunk_hdr[4..].as_ptr(),
                    buf.as_ptr(),
                    length,
                );
            }

            if &chunk_hdr[4..] == b"IEND" {
                break;
            }
        }

        Ok(())
    });

    unsafe {
        png_destroy_write_struct(&mut write_ptr, ptr::null_mut());
    }

    match result {
        Ok(Ok(())) => Ok(()),
        Ok(Err(e)) => Err(e),
        Err(_) => Err("Panic occurred".into()),
    }
}