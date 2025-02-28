use std::ffi::c_void;

#[repr(C)]
struct OpngOptions {
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
    out_name: *const i8,
    dir_name: *const i8,
    log_name: *const i8,
    interlace: i32,
    nb: i32,
    nc: i32,
    np: i32,
    nz: i32,
    optim_level: i32,
    compr_level_set: u32,
    mem_level_set: u32,
    strategy_set: u32,
    filter_set: u32,
    window_bits: i32,
    snip: i32,
    strip_all: i32,
}

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

static mut options: OpngOptions = OpngOptions {
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

static mut usr_printf: Option<unsafe extern "C" fn(*const i8, ...) -> ()> = None;
static mut usr_print_cntrl: Option<unsafe extern "C" fn(i32) -> ()> = None;
static mut usr_progress: Option<unsafe extern "C" fn(u64, u64) -> ()> = None;
static mut usr_panic: Option<unsafe extern "C" fn(*const i8) -> ()> = None;

const IDAT_SIZE_MAX: u64 = 0x7fffffff;

unsafe fn opng_iterate() {
    let mut compr_level_set: u32;
    let mut mem_level_set: u32;
    let mut strategy_set: u32;
    let mut filter_set: u32;
    let mut saved_compr_level_set: u32;
    let mut compr_level: i32;
    let mut mem_level: i32;
    let mut strategy: i32;
    let mut filter: i32;
    let mut counter: i32;
    let mut line_reused: i32;

    if process.num_iterations <= 0 {
        if let Some(panic_fn) = usr_panic {
            panic_fn(b"Iterations not initialized\0".as_ptr() as *const i8);
        }
    }

    if process.num_iterations == 1 && (process.status & 0x2000) != 0 {
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
    process.best_idat_size = IDAT_SIZE_MAX + 1;
    process.best_compr_level = -1;
    process.best_mem_level = -1;
    process.best_strategy = -1;
    process.best_filter = -1;

    if let Some(printf_fn) = usr_printf {
        printf_fn(b"\nTrying:\n\0".as_ptr() as *const i8);
    }

    line_reused = 0;
    counter = 0;

    for filter in 0..=5 {
        if (filter_set & (1 << filter)) != 0 {
            for strategy in 0..=3 {
                if (strategy_set & (1 << strategy)) != 0 {
                    saved_compr_level_set = compr_level_set;
                    if strategy == 2 {
                        compr_level_set = 1 << 1;
                    } else if strategy == 3 {
                        compr_level_set = 1 << 9;
                    }
                    for compr_level in (1..=9).rev() {
                        if (compr_level_set & (1 << compr_level)) != 0 {
                            for mem_level in (1..=9).rev() {
                                if (mem_level_set & (1 << mem_level)) != 0 {
                                    if let Some(printf_fn) = usr_printf {
                                        printf_fn(b"  zc = %d  zm = %d  zs = %d  f = %d\0".as_ptr() as *const i8,
                                                  compr_level, mem_level, strategy, filter);
                                    }
                                    if let Some(progress_fn) = usr_progress {
                                        progress_fn(counter as u64, process.num_iterations as u64);
                                    }
                                    counter += 1;
                                    opng_write_file(std::ptr::null_mut(), compr_level, mem_level, strategy, filter);
                                    if process.out_idat_size > IDAT_SIZE_MAX {
                                        if options.verbose != 0 {
                                            if let Some(printf_fn) = usr_printf {
                                                printf_fn(b"\t\tIDAT too big\n\0".as_ptr() as *const i8);
                                            }
                                            line_reused = 0;
                                        } else {
                                            if let Some(print_cntrl_fn) = usr_print_cntrl {
                                                print_cntrl_fn(b'\r' as i32);
                                            }
                                            line_reused = 1;
                                        }
                                        continue;
                                    }
                                    if let Some(printf_fn) = usr_printf {
                                        printf_fn(b"\t\tIDAT size = %lu\n\0".as_ptr() as *const i8, process.out_idat_size);
                                    }
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
                                    if options.full == 0 {
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
        if let Some(print_cntrl_fn) = usr_print_cntrl {
            print_cntrl_fn(-31);
        }
    }

    if counter != process.num_iterations {
        if let Some(panic_fn) = usr_panic {
            panic_fn(b"Inconsistent iteration counter\0".as_ptr() as *const i8);
        }
    }

    if let Some(progress_fn) = usr_progress {
        progress_fn(counter as u64, process.num_iterations as u64);
    }
}

extern "C" {
    fn opng_bitset_find_first(set: u32) -> i32;
    fn opng_write_file(file_name: *mut c_void, compr_level: i32, mem_level: i32, strategy: i32, filter: i32);
}