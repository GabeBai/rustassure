use std::os::raw::{c_long, c_ulong};

#[repr(C)]
pub struct timespec {
    pub tv_sec: c_long,
    pub tv_nsec: c_long,
}

#[repr(C)]
pub struct fd_set {
    __fds_bits: [c_long; 128],
}

#[repr(C)]
pub union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

pub type opng_bitset_t = u32;

pub const OPNG_BITSET_ELT_MIN: u32 = 0;
pub const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as u32;

pub type png_byte = u8;
pub type png_uint_32 = u32;
pub type png_bytep = *mut png_byte;
pub type png_const_charp = *const std::os::raw::c_char;

pub struct png_struct;

pub type png_structp = *mut png_struct;

pub type osys_foffset_t = c_long;
pub type osys_fsize_t = c_ulong;

pub struct internal_state;

pub type jmp_buf = [c_long; 8];

pub struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: volatile,
}

pub const INPUT_IS_PNG_FILE: u32 = 0x0001;
pub const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
pub const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
pub const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
pub const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
pub const INPUT_HAS_APNG: u32 = 0x0020;
pub const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
pub const INPUT_HAS_JUNK: u32 = 0x0080;
pub const INPUT_HAS_ERRORS: u32 = 0x0100;
pub const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
pub const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
pub const OUTPUT_HAS_ERRORS: u32 = 0x4000;

pub struct opng_process_struct {
    status: u32,
    num_iterations: c_int,
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
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
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

fn opng_init_write_data() {
    unsafe {
        process.out_file_size = 0;
        process.out_plte_trns_size = 0;
        process.out_idat_size = 0;
    }
}
