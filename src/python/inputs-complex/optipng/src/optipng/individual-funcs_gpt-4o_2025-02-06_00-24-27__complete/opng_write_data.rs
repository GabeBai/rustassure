#![allow(unaligned_references)]
use std::io::{self, Write};
use std::ptr;

type PngUint32 = u32;
type OsysFsizeT = u64;

#[repr(C, packed)]struct OpngProcessStruct {
    out_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    // other fields...
}

static mut PROCESS: OpngProcessStruct = OpngProcessStruct {
    out_idat_size: 0,
    max_idat_size: 0,
    // initialize other fields...
};

#[no_mangle]
#[no_mangle]
fn opng_write_data(data: &[u8], length: usize) {
    unsafe {
        if length == 8 {
            let chunk_sig = &data[4..8];
            if chunk_sig == b"IDAT" {
                let size = ((data[0] as PngUint32) << 24)
                    + ((data[1] as PngUint32) << 16)
                    + ((data[2] as PngUint32) << 8)
                    + (data[3] as PngUint32);
                PROCESS.out_idat_size += size as OsysFsizeT;

                if PROCESS.out_idat_size > PROCESS.max_idat_size {
                    panic!("IDAT size exceeds maximum allowed size");
                }
            }
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let data: [u8; 8] = [0, 0, 0, 0, b'I', b'D', b'A', b'T'];
    opng_write_data(&data, 8);
}
