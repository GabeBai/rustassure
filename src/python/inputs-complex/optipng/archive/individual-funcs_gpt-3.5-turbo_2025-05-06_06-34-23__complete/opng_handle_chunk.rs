use std::mem;

type __time_t = i64;
type __syscall_slong_t = i64;
type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

struct timespec {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
}

struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

struct opng_options {
    backup: i32,
    clobber: i32,
    debug: i32,
    fix: i32,
    force: i32,
    full: i32,
    preserve: i32,
    quiet: i32,
    simulate: i32,
    verbose: i32,
    out_name: Option<String>,
    dir_name: Option<String>,
    log_name: Option<String>,
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

type png_byte = u8;
type png_uint_32 = u32;
type png_bytep = *mut png_byte;
type png_const_charp = *const std::os::raw::c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;
type osys_foffset_t = i64;
type osys_fsize_t = u64;

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

static mut options: opng_options = opng_options {
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
    out_name: None,
    dir_name: None,
    log_name: None,
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
    let sig_bKGD: [png_byte; 4] = [0x62, 0x4b, 0x47, 0x44];
    let sig_hIST: [png_byte; 4] = [0x68, 0x49, 0x53, 0x54];
    let sig_sBIT: [png_byte; 4] = [0x73, 0x42, 0x49, 0x54];
    let sig_dSIG: [png_byte; 4] = [0x64, 0x53, 0x49, 0x47];
    let sig_fdAT: [png_byte; 4] = [0x66, 0x64, 0x41, 0x54];

    let keep: i32;
    if opng_is_image_chunk(chunk_type) {
        return;
    }
    if options.strip_all != 0 {
        process.status |= INPUT_HAS_STRIPPED_DATA | INPUT_HAS_JUNK;
        opng_set_keep_unknown_chunk(png_ptr, 1, chunk_type);
        return;
    }
    if unsafe { libc::memcmp(chunk_type as *const std::ffi::c_void, sig_bKGD.as_ptr() as *const std::ffi::c_void, 4) } == 0 ||
        unsafe { libc::memcmp(chunk_type as *const std::ffi::c_void, sig_hIST.as_ptr() as *const std::ffi::c_void, 4) } == 0 ||
        unsafe { libc::memcmp(chunk_type as *const std::ffi::c_void, sig_sBIT.as_ptr() as *const std::ffi::c_void, 4) } == 0 {
        return;
    }
    keep = 3;
    if unsafe { libc::memcmp(chunk_type as *const std::ffi::c_void, sig_dSIG.as_ptr() as *const std::ffi::c_void, 4) } == 0 {
        process.status |= INPUT_HAS_DIGITAL_SIGNATURE;
    } else if opng_is_apng_chunk(chunk_type) {
        process.status |= INPUT_HAS_APNG;
        if unsafe { libc::memcmp(chunk_type as *const std::ffi::c_void, sig_fdAT.as_ptr() as *const std::ffi::c_void, 4) } == 0 {
            process.status |= INPUT_HAS_MULTIPLE_IMAGES;
        }
        if options.snip != 0 {
            process.status |= INPUT_HAS_JUNK;
            keep = 1;
        }
    }
    opng_set_keep_unknown_chunk(png_ptr, keep, chunk_type);
}
