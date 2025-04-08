use std::io::{self, Write, Seek, SeekFrom};
use std::convert::TryInto;
use std::fs::File;
use crc::crc32;
use std::panic;

struct Process {
    out_idat_size: u32,
    max_idat_size: u32,
    out_plte_trns_size: u32,
    out_file_size: u64,
    best_idat_size: u64,
}

struct ExceptionContext {
    penv: Option<jmp_buf>,
}

fn opng_write_data(png_ptr: &mut PngStruct, data: &[u8], length: usize) {
    let mut allow_crt_chunk = false;
    let mut crt_chunk_is_idat = false;
    let mut crt_idat_offset = 0;
    let mut crt_idat_size = 0;
    let mut crt_idat_crc = 0;
    let stream = png_ptr.get_io_ptr().unwrap();
    let io_state = png_ptr.get_io_state();
    let io_state_loc = io_state & 0x00f0;
    let chunk_sig;
    let mut buf = [0u8; 4];

    assert!((io_state & 0x0002) != 0 && io_state_loc != 0, "Incorrect info in png_ptr->io_state");

    if io_state_loc == 0x0020 {
        assert!(length == 8, "Writing chunk header, expecting 8 bytes");
        chunk_sig = &data[4..8];
        allow_crt_chunk = opng_allow_chunk(chunk_sig);
        if chunk_sig == sig_IDAT {
            crt_chunk_is_idat = true;
            process.out_idat_size += u32::from_be_bytes(data[0..4].try_into().unwrap());
            if stream.is_none() {
                if process.out_idat_size > process.max_idat_size {
                    panic::resume_unwind(Box::new(()));
                }
            }
        } else {
            crt_chunk_is_idat = false;
            if chunk_sig == sig_PLTE || chunk_sig == sig_tRNS {
                process.out_plte_trns_size += u32::from_be_bytes(data[0..4].try_into().unwrap()) + 12;
            }
        }
    } else if io_state_loc == 0x0080 {
        assert!(length == 4, "Writing chunk CRC, expecting 4 bytes");
    }

    if stream.is_none() {
        return;
    }

    if io_state_loc != 0x0010 && !allow_crt_chunk {
        return;
    }

    match io_state_loc {
        0x0020 => {
            if crt_chunk_is_idat {
                if crt_idat_offset == 0 {
                    crt_idat_offset = stream.seek(SeekFrom::Current(0)).unwrap();
                    crt_idat_size = if process.best_idat_size > 0 {
                        process.best_idat_size
                    } else {
                        length as u64
                    };
                    data[0..4].copy_from_slice(&crt_idat_size.to_be_bytes());
                    crt_idat_crc = crc32::checksum_ieee(sig_IDAT);
                } else {
                    return;
                }
            } else {
                if crt_idat_offset != 0 {
                    buf.copy_from_slice(&crt_idat_crc.to_be_bytes());
                    if stream.write(&buf).unwrap() != 4 {
                        io_state = 0;
                    }
                    process.out_file_size += 4;
                    if process.out_idat_size != crt_idat_size {
                        assert!(process.best_idat_size == 0, "Wrong guess of the output IDAT size");
                        opng_check_idat_size(process.out_idat_size);
                        buf.copy_from_slice(&process.out_idat_size.to_be_bytes());
                        if osys_fwrite_at(stream, crt_idat_offset, 0, &buf, 4) != 4 {
                            io_state = 0;
                        }
                    }
                    if io_state == 0 {
                        png_error(png_ptr, "Can't finalize IDAT");
                    }
                    crt_idat_offset = 0;
                }
            }
        }
        0x0040 => {
            if crt_chunk_is_idat {
                crt_idat_crc = crc32::update(crt_idat_crc, &crc32::IEEE_TABLE, data);
            }
        }
        0x0080 => {
            if crt_chunk_is_idat {
                return;
            }
        }
        _ => {}
    }

    if stream.write(data).unwrap() != length {
        png_error(png_ptr, "Can't write the output file");
    }
    process.out_file_size += length as u64;
}
