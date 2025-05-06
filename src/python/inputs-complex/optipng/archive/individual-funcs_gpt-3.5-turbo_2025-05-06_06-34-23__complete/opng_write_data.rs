use std::os::raw::{c_void, c_char, c_int, c_long, c_ulong};
use std::io::{Error, Write};
use std::mem;
use std::ptr;

type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;
type png_uint_32 = u32;
type opng_bitset_t = u32;
type Byte = u8;
type uInt = u32;
type uLong = u64;
type Bytef = Byte;

const sig_PLTE: [Byte; 4] = [0x50, 0x4c, 0x54, 0x45];
const sig_tRNS: [Byte; 4] = [0x74, 0x52, 0x4e, 0x53];
const sig_IDAT: [Byte; 4] = [0x49, 0x44, 0x41, 0x54];

struct opng_process_struct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: osys_foffset_t,
    in_file_size: osys_fsize_t,
    out_file_size: osys_fsize_t,
    in_idat_size: osys_fsize_t,
    out_idat_size: osys_fsize_t,
    best_idat_size: osys_fsize_t,
    max_idat_size: osys_fsize_t,
    in_plte_trns_size: png_uint_32,
    out_plte_trns_size: png_uint_32,
    reductions: png_uint_32,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

static mut usr_panic: Option<extern "C" fn(*const c_char)> = None;

unsafe fn opng_write_data(png_ptr: *mut png_struct, data: *mut Byte, length: usize) {
    let mut allow_crt_chunk: i32 = 0;
    let mut crt_chunk_is_idat: i32 = 0;
    let mut crt_idat_offset: osys_foffset_t = 0;
    let mut crt_idat_size: osys_fsize_t = 0;
    let mut crt_idat_crc: png_uint_32 = 0;

    let stream = png_get_io_ptr(png_ptr);
    let io_state = png_get_io_state(png_ptr);
    let io_state_loc = io_state & 0x00f0;
    let chunk_sig: *mut Byte;

    if (io_state & 0x0002 != 0) && (io_state_loc != 0) {
        usr_panic.expect("Incorrect info in png_ptr->io_state\0")(b"Incorrect info in png_ptr->io_state\0".as_ptr());
    }

    if io_state_loc == 0x0020 {
        if length == 8 {
            chunk_sig = data.add(4);
            allow_crt_chunk = opng_allow_chunk(chunk_sig);
            if memcmp(chunk_sig as *const c_void, sig_IDAT.as_ptr() as *const c_void, 4) == 0 {
                crt_chunk_is_idat = 1;
                process.out_idat_size += u32::from_be(*(data as *const u32));
                if stream.is_null() {
                    if process.out_idat_size > process.max_idat_size {
                        usr_panic.expect("Error: IDAT size exceeds maximum\0")(b"Error: IDAT size exceeds maximum\0".as_ptr());
                    }
                }
            } else {
                crt_chunk_is_idat = 0;
                if memcmp(chunk_sig as *const c_void, sig_PLTE.as_ptr() as *const c_void, 4) == 0 ||
                   memcmp(chunk_sig as *const c_void, sig_tRNS.as_ptr() as *const c_void, 4) == 0 {
                    process.out_plte_trns_size += u32::from_be(*(data as *const u32)) + 12;
                }
            }
        } else {
            usr_panic.expect("Error: Writing chunk header, expecting 8 bytes\0")(b"Error: Writing chunk header, expecting 8 bytes\0".as_ptr());
        }
    } else if io_state_loc == 0x0080 {
        if length != 4 {
            usr_panic.expect("Error: Writing chunk CRC, expecting 4 bytes\0")(b"Error: Writing chunk CRC, expecting 4 bytes\0".as_ptr());
        }
    }

    if stream.is_null() {
        return;
    }

    if io_state_loc != 0x0010 && !allow_crt_chunk {
        return;
    }

    match io_state_loc {
        0x0020 => {
            if crt_chunk_is_idat {
                if crt_idat_offset == 0 {
                    crt_idat_offset = osys_ftello(stream);
                    if process.best_idat_size > 0 {
                        crt_idat_size = process.best_idat_size;
                    } else {
                        crt_idat_size = length as osys_fsize_t;
                    }
                    png_save_uint_32(data, crt_idat_size);
                    crt_idat_crc = crc32(0, sig_IDAT.as_ptr(), 4);
                } else {
                    return;
                }
            } else {
                if crt_idat_offset != 0 {
                    let mut buf: [Byte; 4] = [0; 4];
                    png_save_uint_32(buf.as_mut_ptr(), crt_idat_crc);
                    if fwrite(buf.as_ptr() as *const c_void, 1, 4, stream) != 4 {
                        io_state = 0;
                    }
                    process.out_file_size += 4;
                    if process.out_idat_size != crt_idat_size {
                        if process.best_idat_size == 0 {
                            usr_panic.expect("Error: Wrong guess of the output IDAT size\0")(b"Error: Wrong guess of the output IDAT size\0".as_ptr());
                        }
                        opng_check_idat_size(process.out_idat_size);
                        png_save_uint_32(buf.as_mut_ptr(), process.out_idat_size);
                        if osys_fwrite_at(stream, crt_idat_offset, 0, buf.as_ptr() as *const c_void, 4) != 4 {
                            io_state = 0;
                        }
                    }
                    if io_state == 0 {
                        png_error(png_ptr, b"Can't finalize IDAT\0".as_ptr());
                    }
                    crt_idat_offset = 0;
                }
            }
        }
        0x0040 => {
            if crt_chunk_is_idat {
                crt_idat_crc = crc32(crt_idat_crc, data, length as uInt);
            }
        }
        0x0080 => {
            if crt_chunk_is_idat {
                return;
            }
        }
        _ => {}
    }

    if fwrite(data as *const c_void, 1, length, stream) != length {
        png_error(png_ptr, b"Can't write the output file\0".as_ptr());
    }
    process.out_file_size += length as osys_fsize_t;
}
