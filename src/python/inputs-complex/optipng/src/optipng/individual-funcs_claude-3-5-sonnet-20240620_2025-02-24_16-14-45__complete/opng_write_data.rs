use std::ffi::c_void;
use std::io::{Seek, SeekFrom, Write};
use std::mem::size_of;
use std::os::raw::{c_char, c_int, c_uint, c_ulong};
use std::ptr;

type PngStructp = *mut c_void;
type PngConstStructrp = *const c_void;
type PngBytep = *mut u8;
type PngConstCharp = *const c_char;

extern "C" {
    fn png_get_io_ptr(png_ptr: PngConstStructrp) -> *mut c_void;
    fn png_error(png_ptr: PngConstStructrp, error_message: PngConstCharp) -> !;
    fn png_get_io_state(png_ptr: PngConstStructrp) -> c_uint;
    fn png_save_uint_32(buf: PngBytep, i: c_uint);
    fn crc32(crc: c_ulong, buf: *const u8, len: c_uint) -> c_ulong;
}

static mut PROCESS: OpngProcessStruct = OpngProcessStruct {
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

static mut USR_PANIC: Option<fn(*const c_char)> = None;

struct OpngProcessStruct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: i64,
    in_file_size: u64,
    out_file_size: u64,
    in_idat_size: u64,
    out_idat_size: u64,
    best_idat_size: u64,
    max_idat_size: u64,
    in_plte_trns_size: c_uint,
    out_plte_trns_size: c_uint,
    reductions: c_uint,
    compr_level_set: c_uint,
    mem_level_set: c_uint,
    strategy_set: c_uint,
    filter_set: c_uint,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

unsafe fn opng_write_data(png_ptr: PngStructp, data: PngBytep, length: usize) {
    static mut ALLOW_CRT_CHUNK: bool = false;
    static mut CRT_CHUNK_IS_IDAT: bool = false;
    static mut CRT_IDAT_OFFSET: i64 = 0;
    static mut CRT_IDAT_SIZE: u64 = 0;
    static mut CRT_IDAT_CRC: c_ulong = 0;

    let stream = png_get_io_ptr(png_ptr) as *mut std::fs::File;
    let io_state = png_get_io_state(png_ptr);
    let io_state_loc = io_state & 0x00f0;

    if !((io_state & 0x0002) != 0 && (io_state_loc != 0)) {
        if let Some(panic_fn) = USR_PANIC {
            panic_fn(b"Incorrect info in png_ptr->io_state\0".as_ptr() as *const c_char);
        }
    }

    match io_state_loc {
        0x0020 => {
            if length != 8 {
                if let Some(panic_fn) = USR_PANIC {
                    panic_fn(b"Writing chunk header, expecting 8 bytes\0".as_ptr() as *const c_char);
                }
            }
            let chunk_sig = data.add(4);
            ALLOW_CRT_CHUNK = opng_allow_chunk(chunk_sig);
            if chunk_sig.read_unaligned() == u32::from_be_bytes(*sig_IDAT) {
                CRT_CHUNK_IS_IDAT = true;
                PROCESS.out_idat_size += u32::from_be_bytes(*(data as *const [u8; 4])) as u64;
                if stream.is_null() {
                    if PROCESS.out_idat_size > PROCESS.max_idat_size {
                        // Handle exception (not directly translatable to Rust)
                    }
                }
            } else {
                CRT_CHUNK_IS_IDAT = false;
                if chunk_sig.read_unaligned() == u32::from_be_bytes(*sig_PLTE) ||
                   chunk_sig.read_unaligned() == u32::from_be_bytes(*sig_tRNS) {
                    PROCESS.out_plte_trns_size += u32::from_be_bytes(*(data as *const [u8; 4])) + 12;
                }
            }
        }
        0x0080 => {
            if length != 4 {
                if let Some(panic_fn) = USR_PANIC {
                    panic_fn(b"Writing chunk CRC, expecting 4 bytes\0".as_ptr() as *const c_char);
                }
            }
        }
        _ => {}
    }

    if stream.is_null() {
        return;
    }

    if io_state_loc != 0x0010 && !ALLOW_CRT_CHUNK {
        return;
    }

    match io_state_loc {
        0x0020 => {
            if CRT_CHUNK_IS_IDAT {
                if CRT_IDAT_OFFSET == 0 {
                    CRT_IDAT_OFFSET = (*stream).stream_position().unwrap() as i64;
                    if PROCESS.best_idat_size > 0 {
                        CRT_IDAT_SIZE = PROCESS.best_idat_size;
                    } else {
                        CRT_IDAT_SIZE = length as u64;
                    }
                    png_save_uint_32(data, CRT_IDAT_SIZE as c_uint);
                    CRT_IDAT_CRC = crc32(0, sig_IDAT.as_ptr(), 4);
                } else {
                    return;
                }
            } else {
                if CRT_IDAT_OFFSET != 0 {
                    let mut buf = [0u8; 4];
                    png_save_uint_32(buf.as_mut_ptr(), CRT_IDAT_CRC as c_uint);
                    if (*stream).write_all(&buf).is_err() {
                        png_error(png_ptr, b"Can't finalize IDAT\0".as_ptr() as *const c_char);
                    }
                    PROCESS.out_file_size += 4;
                    if PROCESS.out_idat_size != CRT_IDAT_SIZE {
                        if PROCESS.best_idat_size != 0 {
                            if let Some(panic_fn) = USR_PANIC {
                                panic_fn(b"Wrong guess of the output IDAT size\0".as_ptr() as *const c_char);
                            }
                        }
                        opng_check_idat_size(PROCESS.out_idat_size);
                        png_save_uint_32(buf.as_mut_ptr(), PROCESS.out_idat_size as c_uint);
                        (*stream).seek(SeekFrom::Start(CRT_IDAT_OFFSET as u64)).unwrap();
                        if (*stream).write_all(&buf).is_err() {
                            png_error(png_ptr, b"Can't finalize IDAT\0".as_ptr() as *const c_char);
                        }
                    }
                    CRT_IDAT_OFFSET = 0;
                }
            }
        }
        0x0040 => {
            if CRT_CHUNK_IS_IDAT {
                CRT_IDAT_CRC = crc32(CRT_IDAT_CRC, data, length as c_uint);
            }
        }
        0x0080 => {
            if CRT_CHUNK_IS_IDAT {
                return;
            }
        }
        _ => {}
    }

    if (*stream).write_all(std::slice::from_raw_parts(data, length)).is_err() {
        png_error(png_ptr, b"Can't write the output file\0".as_ptr() as *const c_char);
    }
    PROCESS.out_file_size += length as u64;
}

static sig_PLTE: [u8; 4] = [0x50, 0x4c, 0x54, 0x45];
static sig_tRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];
static sig_IDAT: [u8; 4] = [0x49, 0x44, 0x41, 0x54];

// Note: The following functions are not provided in the original C code,
// so they are left as external function declarations.
extern "C" {
    fn opng_allow_chunk(chunk_sig: *const u8) -> bool;
    fn opng_check_idat_size(size: u64);
}