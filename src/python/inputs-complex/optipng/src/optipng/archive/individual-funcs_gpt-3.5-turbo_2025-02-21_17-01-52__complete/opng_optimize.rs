use std::os::raw::{c_char, c_int, c_ulonglong, c_ulong, c_ushort};

type opng_bitset_t = c_uint;

const OPNG_BITSET_ELT_MIN: c_int = 0;
const OPNG_BITSET_ELT_MAX: c_int = (std::mem::size_of::<opng_bitset_t>() as c_int * 8) - 1;

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

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

struct opng_engine_struct {
    started: c_int,
}

struct opng_process_struct {
    status: c_uint,
    num_iterations: c_int,
    in_datastream_offset: c_ulonglong,
    in_file_size: c_ulong,
    out_file_size: c_ulong,
    in_idat_size: c_ulong,
    out_idat_size: c_ulong,
    best_idat_size: c_ulong,
    max_idat_size: c_ulong,
    in_plte_trns_size: c_ulong,
    out_plte_trns_size: c_ulong,
    reductions: c_ulong,
    compr_level_set: opng_bitset_t,
    mem_level_set: opng_bitset_t,
    strategy_set: opng_bitset_t,
    filter_set: opng_bitset_t,
    best_compr_level: c_int,
    best_mem_level: c_int,
    best_strategy: c_int,
    best_filter: c_int,
}

struct opng_summary_struct {
    file_count: c_uint,
    err_count: c_uint,
    fix_count: c_uint,
    snip_count: c_uint,
}

static mut engine: opng_engine_struct = opng_engine_struct { started: 0 };
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

static mut summary: opng_summary_struct = opng_summary_struct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
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

unsafe fn opng_optimize(infile_name: *const c_char) -> c_int {
    let mut err_msg: *const c_char = std::ptr::null();
    let mut result: c_int = 0;

    if engine.started == 0 {
        usr_panic("The OptiPNG engine is not running");
    }

    usr_printf("** Processing: %s\n", infile_name);
    summary.file_count += 1;

    opng_clear_image_info();

    let mut exception_env: jmp_buf = std::mem::zeroed();
    let exception_prev = the_exception_context[0].penv;
    the_exception_context[0].penv = &mut exception_env;

    if setjmp(&mut exception_env as *mut _) == 0 {
        loop {
            opng_optimize_impl(infile_name);
            if process.status & INPUT_HAS_ERRORS != 0 {
                summary.err_count += 1;
                summary.fix_count += 1;
            }
            if process.status & INPUT_HAS_MULTIPLE_IMAGES != 0 {
                if options.snip != 0 {
                    summary.snip_count += 1;
                }
            }
            result = 0;
        }
    } else {
        the_exception_context[0].caught = 1;
    }

    the_exception_context[0].penv = exception_prev;

    if the_exception_context[0].caught == 0 || err_msg.is_null() {
        // Do nothing
    } else {
        summary.err_count += 1;
        opng_print_error(err_msg);
        result = -1;
    }

    opng_destroy_image_info();
    usr_printf("\n");

    result
}
