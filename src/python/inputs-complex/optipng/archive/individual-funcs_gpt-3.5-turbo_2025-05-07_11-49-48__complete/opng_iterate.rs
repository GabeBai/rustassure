use std::os::raw::{c_char, c_int, c_long, c_ulong};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

const INPUT_IS_PNG_FILE: u32 = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: u32 = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: u32 = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: u32 = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: u32 = 0x0010;
const INPUT_HAS_APNG: u32 = 0x0020;
const INPUT_HAS_STRIPPED_DATA: u32 = 0x0040;
const INPUT_HAS_JUNK: u32 = 0x0080;
const INPUT_HAS_ERRORS: u32 = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: u32 = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: u32 = 0x2000;
const OUTPUT_HAS_ERRORS: u32 = 0x4000;

struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

type fd_mask = c_long;
const FD_SETSIZE: usize = 1024;
struct fd_set {
    __fds_bits: [fd_mask; FD_SETSIZE / (8 * std::mem::size_of::<fd_mask>())],
}

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

const idat_size_max: png_uint_32 = 0x7fffffff;

struct opng_options {
    // Define the fields here
}

fn opng_bitset_find_first(set: opng_bitset_t) -> i32 {
    // Implementation here
    0
}

fn usr_panic(msg: *const c_char) {
    // Implementation here
}

fn usr_printf(fmt: *const c_char, ...) {
    // Implementation here
}

fn usr_print_cntrl(cntrl_code: c_int) {
    // Implementation here
}

fn usr_progress(num: u32, denom: u32) {
    // Implementation here
}

fn opng_iterate() {
    let mut compr_level_set: opng_bitset_t;
    let mut mem_level_set: opng_bitset_t;
    let mut strategy_set: opng_bitset_t;
    let mut filter_set: opng_bitset_t;
    let mut saved_compr_level_set: opng_bitset_t;
    let mut compr_level: i32;
    let mut mem_level: i32;
    let mut strategy: i32;
    let mut filter: i32;
    let mut counter: i32;
    let mut line_reused: i32;

    if process.num_iterations <= 0 {
        unsafe { usr_panic("Iterations not initialized\0".as_ptr()) };
    }

    if process.num_iterations == 1 && (process.status & OUTPUT_NEEDS_NEW_IDAT) != 0 {
        process.best_idat_size = 0;
        process.best_compr_level = opng_bitset_find_first(process.compr_level_set);
        process.best_mem_level = opng_bitset_find_first(process.mem_level_set);
        process.best_strategy = opng_bitset_find_first(process.strategy_set);
        process.best_filter = opng_bitset_find_first(process.filter_set);
        return;
    }

    compr_level_set = process.compr_level_set;
    mem_level_set = process.mem_level_set;
    strategy_set = process.strategy_set;
    filter_set = process.filter_set;
    process.best_idat_size = idat_size_max + 1;
    process.best_compr_level = -1;
    process.best_mem_level = -1;
    process.best_strategy = -1;
    process.best_filter = -1;
    usr_printf("\nTrying:\n\0".as_ptr() as *const c_char);
    line_reused = 0;
    counter = 0;

    for filter in 0..=5 {
        if filter_set & (1 << filter) != 0 {
            for strategy in 0..=3 {
                if strategy_set & (1 << strategy) != 0 {
                    saved_compr_level_set = compr_level_set;
                    if strategy == 2 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 1;
                    } else if strategy == 3 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 9;
                    }
                    for compr_level in (1..=9).rev() {
                        if compr_level_set & (1 << compr_level) != 0 {
                            for mem_level in (1..=9).rev() {
                                if mem_level_set & (1 << mem_level) != 0 {
                                    usr_printf(
                                        "  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr(),
                                        compr_level,
                                        mem_level,
                                        strategy,
                                        filter,
                                    );
                                    usr_progress(counter as u32, process.num_iterations as u32);
                                    counter += 1;
                                    // opng_write_file(((void*)0),
                                    //    compr_level, mem_level, strategy, filter);
                                    if process.out_idat_size > idat_size_max {
                                        if options.verbose != 0 {
                                            usr_printf("\t\tIDAT too big\n\0".as_ptr());
                                            line_reused = 0;
                                        } else {
                                            usr_print_cntrl('\r' as i32);
                                            line_reused = 1;
                                        }
                                        continue;
                                    }
                                    usr_printf("\t\tIDAT size = %lu\n\0".as_ptr(), process.out_idat_size);
                                    line_reused = 0;
                                    if process.best_idat_size < process.out_idat_size {
                                        continue;
                                    }
                                    if process.best_idat_size == process.out_idat_size && process.best_strategy >= 2 {
                                        continue;
                                    }
                                    process.best_compr_level = compr_level;
                                    process.best_mem_level = mem_level;
                                    process.best_strategy = strategy;
                                    process.best_filter = filter;
                                    process.best_idat_size = process.out_idat_size;
                                    if !options.full {
                                        process.max_idat_size = process.out_idat_size;
                                    }
                                }
                            }
                        }
                    }
                    compr_level_set = saved_compr_level_set;
                }
            }
        }
    }

    if line_reused != 0 {
        usr_print_cntrl(-31);
    }

    if counter != process.num_iterations {
        unsafe { usr_panic("Inconsistent iteration counter\0".as_ptr()) };
    }

    usr_progress(counter as u32, process.num_iterations as u32);
}
