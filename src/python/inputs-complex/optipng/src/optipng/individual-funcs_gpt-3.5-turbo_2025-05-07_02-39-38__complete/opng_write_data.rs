use std::os::raw::{c_void, c_char, c_ulong, c_long, c_int};
use std::io::{Write, Seek, SeekFrom};

type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;
type png_uint_32 = u32;
type opng_bitset_t = u32;
type Byte = u8;

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

static mut process: opng_process_struct = opng_process_struct {
    status: 0,
    num_iterations: 0,
    in_datastream_offset: 0,
    in_file_size: 0,
    out_file_size: 0,
    in_idat_size: 0,
    out_idat_size: 0,
    best_idat_size: 0,
    max_idat_size: 0,
    in_plte_trns_size: 0,
    out_plte_trns_size: 0,
    reductions: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    best_compr_level: 0,
    best_mem_level: 0,
    best_strategy: 0,
    best_filter: 0,
};

unsafe extern "C" fn opng_write_data(png_ptr: *mut png_struct, data: *mut Byte, length: usize) {
    let mut allow_crt_chunk: i32 = 0;
    let mut crt_chunk_is_idat: i32 = 0;
    let mut crt_idat_offset: osys_foffset_t = 0;
    let mut crt_idat_size: osys_fsize_t = 0;
    let mut crt_idat_crc: png_uint_32 = 0;

    let stream = png_get_io_ptr(png_ptr) as *mut std::fs::File;
    let io_state = png_get_io_state(png_ptr);
    let io_state_loc = io_state & 0x00f0;
    let chunk_sig: *mut Byte;

    assert!((io_state & 0x0002 != 0) && (io_state_loc != 0), "Incorrect info in png_ptr->io_state");

    if io_state_loc == 0x0020 {
        assert_eq!(length, 8, "Writing chunk header, expecting 8 bytes");
        chunk_sig = data.add(4);
        allow_crt_chunk = opng_allow_chunk(chunk_sig);
        if libc::memcmp(chunk_sig as *const c_void, sig_IDAT.as_ptr() as *const c_void, 4) == 0 {
            crt_chunk_is_idat = 1;
            process.out_idat_size += ((*(data) as u32) << 24) + ((*(data.add(1)) as u32) << 16) + ((*(data.add(2)) as u32) << 8) + (*(data.add(3)) as u32);
            if stream.is_null() {
                if process.out_idat_size > process.max_idat_size {
                    longjmp(the_exception_context.as_mut_ptr(), 1);
                }
            }
        } else {
            crt_chunk_is_idat = 0;
            if libc::memcmp(chunk_sig as *const c_void, sig_PLTE.as_ptr() as *const c_void, 4) == 0 ||
               libc::memcmp(chunk_sig as *const c_void, sig_tRNS.as_ptr() as *const c_void, 4) == 0 {
                process.out_plte_trns_size += ((*(data) as u32) << 24) + ((*(data.add(1)) as u32) << 16) + ((*(data.add(2)) as u32) << 8) + (*(data.add(3)) as u32) + 12;
            }
        }
    } else if io_state_loc == 0x0080 {
        assert_eq!(length, 4, "Writing chunk CRC, expecting 4 bytes");
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
                    let mut buf = [0; 4];
                    png_save_uint_32(buf.as_mut_ptr(), crt_idat_crc);
                    if (*stream).write(&buf).unwrap() != 4 {
                        io_state = 0;
                    }
                    process.out_file_size += 4;
                    if process.out_idat_size != crt_idat_size {
                        assert_eq!(process.best_idat_size, 0, "Wrong guess of the output IDAT size");
                        opng_check_idat_size(process.out_idat_size);
                        png_save_uint_32(buf.as_mut_ptr(), process.out_idat_size);
                        if osys_fwrite_at(stream, crt_idat_offset, 0, buf.as_ptr() as *const c_void, 4) != 4 {
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
                crt_idat_crc = crc32(crt_idat_crc, data, length as u32);
            }
        }
        0x0080 => {
            if crt_chunk_is_idat {
                return;
            }
        }
        _ => {}
    }

    if (*stream).write(data, length).unwrap() != length {
        png_error(png_ptr, "Can't write the output file");
    }
    process.out_file_size += length as osys_fsize_t;
}
