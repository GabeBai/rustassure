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
    __fds_bits: [c_ulong; 128],
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

const idat_size_max: png_uint_32 = 0x7fffffff;

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

unsafe fn usr_printf(fmt: *const c_char, ...) {
    // Implementation for usr_printf
}

unsafe fn usr_print_cntrl(cntrl_code: c_int) {
    // Implementation for usr_print_cntrl
}

unsafe fn usr_progress(num: u32, denom: u32) {
    // Implementation for usr_progress
}

unsafe fn usr_panic(msg: *const c_char) {
    // Implementation for usr_panic
}

unsafe fn opng_bitset_find_first(set: opng_bitset_t) -> i32 {
    // Implementation for opng_bitset_find_first
    0
}

unsafe fn opng_write_file(_: *mut std::ffi::c_void, compr_level: c_int, mem_level: c_int, strategy: c_int, filter: c_int) {
    // Implementation for opng_write_file
}

unsafe fn opng_iterate() {
    let mut compr_level_set: opng_bitset_t;
    let mut mem_level_set: opng_bitset_t;
    let mut strategy_set: opng_bitset_t;
    let mut filter_set: opng_bitset_t;
    let mut saved_compr_level_set: opng_bitset_t;
    let mut compr_level: c_int;
    let mut mem_level: c_int;
    let mut strategy: c_int;
    let mut filter: c_int;
    let mut counter: c_int;
    let mut line_reused: c_int;

    if process.num_iterations <= 0 {
        usr_panic("Iterations not initialized");
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
    usr_printf("\nTrying:\n");
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
                                    usr_printf("  zc = %d  zm = %d  zs = %d  f = %d", compr_level, mem_level, strategy, filter);
                                    usr_progress(counter as u32, process.num_iterations as u32);
                                    counter += 1;
                                    opng_write_file(std::ptr::null_mut(), compr_level, mem_level, strategy, filter);
                                    if process.out_idat_size > idat_size_max {
                                        if options.verbose != 0 {
                                            usr_printf("\t\tIDAT too big\n");
                                            line_reused = 0;
                                        } else {
                                            usr_print_cntrl('\r' as c_int);
                                            line_reused = 1;
                                        }
                                        continue;
                                    }
                                    usr_printf("\t\tIDAT size = %lu\n", process.out_idat_size);
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
        usr_panic("Inconsistent iteration counter");
    }

    usr_progress(counter as u32, process.num_iterations as u32);
}
