use std::ffi::c_void;
use std::io::{Read, Seek, SeekFrom};
use std::mem;
use std::ptr;

type PngStructP = *mut c_void;
type PngInfoP = *mut c_void;
type PngConstStructRP = *const c_void;
type PngConstInfoRP = *const c_void;
type PngByte = u8;
type PngByteP = *mut PngByte;
type PngConstCharP = *const i8;
type PngUint32 = u32;

extern "C" {
    fn png_get_io_ptr(png_ptr: PngConstStructRP) -> *mut c_void;
    fn png_get_io_state(png_ptr: PngConstStructRP) -> PngUint32;
    fn png_error(png_ptr: PngConstStructRP, error_message: PngConstCharP);
    fn png_get_rows(png_ptr: PngConstStructRP, info_ptr: PngConstInfoRP) -> *mut *mut PngByte;
    fn png_get_image_height(png_ptr: PngConstStructRP, info_ptr: PngConstInfoRP) -> PngUint32;
    fn png_data_freer(png_ptr: PngConstStructRP, info_ptr: PngInfoP, freer: i32, mask: PngUint32);
}

static mut process: OpngProcessStruct = OpngProcessStruct {
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

static mut usr_panic: Option<fn(&str)> = None;
static mut read_ptr: PngStructP = ptr::null_mut();
static mut read_info_ptr: PngInfoP = ptr::null_mut();

const SIG_PLTE: [u8; 4] = [0x50, 0x4c, 0x54, 0x45];
const SIG_TRNS: [u8; 4] = [0x74, 0x52, 0x4e, 0x53];
const SIG_IDAT: [u8; 4] = [0x49, 0x44, 0x41, 0x54];

#[repr(C)]
struct OpngProcessStruct {
    status: u32,
    num_iterations: i32,
    in_datastream_offset: i64,
    in_file_size: u64,
    out_file_size: u64,
    in_idat_size: u64,
    out_idat_size: u64,
    best_idat_size: u64,
    max_idat_size: u64,
    in_plte_trns_size: u32,
    out_plte_trns_size: u32,
    reductions: u32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    best_compr_level: i32,
    best_mem_level: i32,
    best_strategy: i32,
    best_filter: i32,
}

unsafe fn opng_read_data(png_ptr: PngStructP, data: *mut u8, length: usize) {
    let stream = png_get_io_ptr(png_ptr) as *mut std::fs::File;
    let io_state = png_get_io_state(png_ptr);
    let io_state_loc = io_state & 0x00f0;

    if (*stream).read(std::slice::from_raw_parts_mut(data, length)).unwrap() != length {
        png_error(png_ptr, b"Can't read the input file or unexpected end of file\0".as_ptr() as *const i8);
    }

    if process.in_file_size == 0 {
        assert!(length == 8, "PNG I/O must start with the first 8 bytes");
        process.in_datastream_offset = (*stream).seek(SeekFrom::Current(0)).unwrap() - 8;
        process.status |= 0x0002; // INPUT_HAS_PNG_DATASTREAM
        if io_state_loc == 0x0010 {
            process.status |= 0x0004; // INPUT_HAS_PNG_SIGNATURE
        }
        if process.in_datastream_offset == 0 {
            process.status |= 0x0001; // INPUT_IS_PNG_FILE
        } else if process.in_datastream_offset < 0 {
            png_error(png_ptr, b"Can't get the file-position indicator in input file\0".as_ptr() as *const i8);
        }
        process.in_file_size = process.in_datastream_offset as u64;
    }

    process.in_file_size += length as u64;

    assert!((io_state & 0x0001) != 0 && io_state_loc != 0, "Incorrect info in png_ptr->io_state");

    if io_state_loc == 0x0020 {
        assert!(length == 8, "Reading chunk header, expecting 8 bytes");
        let chunk_sig = data.add(4);
        if chunk_sig.read_unaligned() == u32::from_be_bytes(SIG_IDAT) {
            assert!(png_ptr == read_ptr, "Incorrect I/O handler setup");
            if png_get_rows(read_ptr, read_info_ptr).is_null() {
                assert!(process.in_idat_size == 0, "Found IDAT with no rows");
                if png_get_image_height(read_ptr, read_info_ptr) == 0 {
                    return;
                }
                assert!(pngx_malloc_rows(read_ptr, read_info_ptr, 0).is_null() == false, 
                        "Failed allocation of image rows; unsafe libpng allocator");
                png_data_freer(read_ptr, read_info_ptr, 2, 0x0040);
            } else {
                process.status |= 0x0080; // INPUT_HAS_JUNK
            }
            process.in_idat_size += u32::from_be_bytes(*(data as *const [u8; 4])) as u64;
        } else if chunk_sig.read_unaligned() == u32::from_be_bytes(SIG_PLTE) ||
                  chunk_sig.read_unaligned() == u32::from_be_bytes(SIG_TRNS) {
            process.in_plte_trns_size += u32::from_be_bytes(*(data as *const [u8; 4])) + 12;
        } else {
            opng_handle_chunk(png_ptr, chunk_sig);
        }
    } else if io_state_loc == 0x0080 {
        assert!(length == 4, "Reading chunk CRC, expecting 4 bytes");
    }
}