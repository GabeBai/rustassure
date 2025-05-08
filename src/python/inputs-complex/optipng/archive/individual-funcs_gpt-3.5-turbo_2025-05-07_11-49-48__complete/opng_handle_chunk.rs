use std::os::raw::{c_char, c_int, c_long, c_ulong};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [c_long; 32],
}

#[repr(C)]
struct opng_options {
    backup: c_int,
    clobber: c_int,
    debug: c_int,
    fix: c_int,
    force: c_int,
    full: c_int,
    preserve: c_int,
    quiet: c_int,
    simulate: c_int,
    verbose: c_int,
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
    interlace: c_int,
    nb: c_int,
    nc: c_int,
    np: c_int,
    nz: c_int,
    optim_level: c_int,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    window_bits: c_int,
    snip: c_int,
    strip_all: c_int,
}

type png_byte = u8;
type png_uint_32 = u32;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;
type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;

#[repr(C)]
struct opng_process_struct {
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

let mut process = opng_process_struct {
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

let mut options = opng_options {
    backup: 0,
    clobber: 0,
    debug: 0,
    fix: 0,
    force: 0,
    full: 0,
    preserve: 0,
    quiet: 0,
    simulate: 0,
    verbose: 0,
    out_name: std::ptr::null(),
    dir_name: std::ptr::null(),
    log_name: std::ptr::null(),
    interlace: 0,
    nb: 0,
    nc: 0,
    np: 0,
    nz: 0,
    optim_level: 0,
    compr_level_set: 0,
    mem_level_set: 0,
    strategy_set: 0,
    filter_set: 0,
    window_bits: 0,
    snip: 0,
    strip_all: 0,
};

fn opng_handle_chunk(png_ptr: png_structp, chunk_type: png_bytep) {
    let keep: i32;
    if opng_is_image_chunk(chunk_type) {
        return;
    }
    if options.strip_all != 0 {
        process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        opng_set_keep_unknown_chunk(png_ptr, 1, chunk_type);
        return;
    }
    if libc::memcmp(chunk_type as *const std::ffi::c_void, sig_bKGD.as_ptr() as *const std::ffi::c_void, 4) == 0 ||
        libc::memcmp(chunk_type as *const std::ffi::c_void, sig_hIST.as_ptr() as *const std::ffi::c_void, 4) == 0 ||
        libc::memcmp(chunk_type as *const std::ffi::c_void, sig_sBIT.as_ptr() as *const std::ffi::c_void, 4) == 0 {
        return;
    }
    keep = 3;
    if libc::memcmp(chunk_type as *const std::ffi::c_void, sig_dSIG.as_ptr() as *const std::ffi::c_void, 4) == 0 {
        process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
    } else if opng_is_apng_chunk(chunk_type) {
        process.status |= INPUT_HAS_APNG;
        if libc::memcmp(chunk_type as *const std::ffi::c_void, sig_fdAT.as_ptr() as *const std::ffi::c_void, 4) == 0 {
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        }
        if options.snip != 0 {
            process.status |= INPUT_HAS_JUNK;
            keep = 1;
        }
    }
    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}
