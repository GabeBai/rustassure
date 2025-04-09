use std::os::raw::{c_int, c_long, c_uint, c_ulong};
use std::ptr;

type OsysFoffsetT = c_long;
type OsysFsizeT = c_ulong;
type OpngBitsetT = c_uint;

#[repr(C)]
struct Timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct FdSet {
    __fds_bits: [c_long; 1024 / (8 * std::mem::size_of::<c_long>())],
}

#[repr(C)]
union PthreadAttrT {
    __size: [u8; 56],
    __align: c_long,
}

#[repr(C)]
struct OpngOptions {
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
    out_name: *const u8,
    dir_name: *const u8,
    log_name: *const u8,
    interlace: c_int,
    nb: c_int,
    nc: c_int,
    np: c_int,
    nz: c_int,
    optim_level: c_int,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    window_bits: c_int,
    snip: c_int,
    strip_all: c_int,
}

#[repr(C)]
struct OpngProcessStruct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: OsysFoffsetT,
    in_file_size: OsysFsizeT,
    out_file_size: OsysFsizeT,
    in_idat_size: OsysFsizeT,
    out_idat_size: OsysFsizeT,
    best_idat_size: OsysFsizeT,
    max_idat_size: OsysFsizeT,
    in_plte_trns_size: c_uint,
    out_plte_trns_size: c_uint,
    reductions: c_uint,
    compr_level_set: OpngBitsetT,
    mem_level_set: OpngBitsetT,
    strategy_set: OpngBitsetT,
    filter_set: OpngBitsetT,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

const IDAT_SIZE_MAX: OsysFsizeT = 0x7fffffff;

extern "C" {
    fn opng_bitset_find_first(set: OpngBitsetT) -> c_int;
    fn usr_printf(fmt: *const u8, ...);
    fn usr_print_cntrl(cntrl_code: c_int);
    fn usr_progress(num: c_ulong, denom: c_ulong);
    fn usr_panic(msg: *const u8);
    fn opng_write_file(
        file: *mut std::ffi::c_void,
        compr_level: c_int,
        mem_level: c_int,
        strategy: c_int,
        filter: c_int,
    );
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
    best_compr_level: -1,
    best_mem_level: -1,
    best_strategy: -1,
    best_filter: -1,
};

static mut OPTIONS: OpngOptions = OpngOptions {
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
    out_name: ptr::null(),
    dir_name: ptr::null(),
    log_name: ptr::null(),
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

unsafe fn opng_iterate() {
    let mut compr_level_set = PROCESS.compr_level_set;
    let mut mem_level_set = PROCESS.mem_level_set;
    let mut strategy_set = PROCESS.strategy_set;
    let mut filter_set = PROCESS.filter_set;
    let mut saved_compr_level_set;
    let mut compr_level;
    let mut mem_level;
    let mut strategy;
    let mut filter;
    let mut counter;
    let mut line_reused;

    if PROCESS.num_iterations <= 0 {
        usr_panic(b"Iterations not initialized\0".as_ptr());
    }

    if PROCESS.num_iterations == 1 && (PROCESS.status & 0x2000) != 0 {
        PROCESS.best_idat_size = 0;
        PROCESS.best_compr_level = opng_bitset_find_first(PROCESS.compr_level_set);
        PROCESS.best_mem_level = opng_bitset_find_first(PROCESS.mem_level_set);
        PROCESS.best_strategy = opng_bitset_find_first(PROCESS.strategy_set);
        PROCESS.best_filter = opng_bitset_find_first(PROCESS.filter_set);
        return;
    }

    PROCESS.best_idat_size = IDAT_SIZE_MAX + 1;
    PROCESS.best_compr_level = -1;
    PROCESS.best_mem_level = -1;
    PROCESS.best_strategy = -1;
    PROCESS.best_filter = -1;
    usr_printf(b"\nTrying:\n\0".as_ptr());
    line_reused = 0;
    counter = 0;

    for filter in 0..=5 {
        if (filter_set & (1 << filter)) != 0 {
            for strategy in 0..=3 {
                if (strategy_set & (1 << strategy)) != 0 {
                    saved_compr_level_set = compr_level_set;
                    if strategy == 2 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 1;
                    } else if strategy == 3 {
                        compr_level_set = 0;
                        compr_level_set |= 1 << 9;
                    }
                    for compr_level in (1..=9).rev() {
                        if (compr_level_set & (1 << compr_level)) != 0 {
                            for mem_level in (1..=9).rev() {
                                if (mem_level_set & (1 << mem_level)) != 0 {
                                    usr_printf(
                                        b"  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr(),
                                        compr_level,
                                        mem_level,
                                        strategy,
                                        filter,
                                    );
                                    usr_progress(counter as c_ulong, PROCESS.num_iterations as c_ulong);
                                    counter += 1;
                                    opng_write_file(
                                        ptr::null_mut(),
                                        compr_level,
                                        mem_level,
                                        strategy,
                                        filter,
                                    );
                                    if PROCESS.out_idat_size > IDAT_SIZE_MAX {
                                        if OPTIONS.verbose != 0 {
                                            usr_printf(b"\t\tIDAT too big\n\0".as_ptr());
                                            line_reused = 0;
                                        } else {
                                            usr_print_cntrl(b'\r' as c_int);
                                            line_reused = 1;
                                        }
                                        continue;
                                    }
                                    usr_printf(
                                        b"\t\tIDAT size = %lu\n\0".as_ptr(),
                                        PROCESS.out_idat_size,
                                    );
                                    line_reused = 0;
                                    if PROCESS.best_idat_size < PROCESS.out_idat_size {
                                        continue;
                                    }
                                    if PROCESS.best_idat_size == PROCESS.out_idat_size
                                        && PROCESS.best_strategy >= 2
                                    {
                                        continue;
                                    }
                                    PROCESS.best_compr_level = compr_level;
                                    PROCESS.best_mem_level = mem_level;
                                    PROCESS.best_strategy = strategy;
                                    PROCESS.best_filter = filter;
                                    PROCESS.best_idat_size = PROCESS.out_idat_size;
                                    if OPTIONS.full == 0 {
                                        PROCESS.max_idat_size = PROCESS.out_idat_size;
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
    if counter != PROCESS.num_iterations {
        usr_panic(b"Inconsistent iteration counter\0".as_ptr());
    }
    usr_progress(counter as c_ulong, PROCESS.num_iterations as c_ulong);
}
