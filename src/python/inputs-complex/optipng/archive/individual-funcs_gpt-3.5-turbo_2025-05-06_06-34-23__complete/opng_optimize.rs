use std::os::raw::{c_char, c_int, c_long, c_ulong};

type time_t = c_long;
type syscall_slong_t = c_long;

#[repr(C)]
struct timespec {
    tv_sec: time_t,
    tv_nsec: syscall_slong_t,
}

type fd_mask = c_long;

#[repr(C)]
struct fd_set {
    __fds_bits: [fd_mask; 128],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: c_long,
}

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as i32;

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

extern "C" {
    fn opng_optimize(infile_name: *const c_char) -> c_int;
}

type png_byte = u8;
type png_uint_32 = u32;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;
type osys_foffset_t = c_long;
type osys_fsize_t = c_ulong;

struct internal_state;

type jmp_buf = [c_long; 8];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const c_char,
}

static mut the_exception_context: exception_context = exception_context {
    penv: std::ptr::null_mut(),
    caught: 0,
    v: ExceptionContextV { etmp: std::ptr::null() },
};

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

struct opng_engine_struct {
    started: c_int,
}

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

struct opng_summary_struct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

struct opng_options options;

extern "C" {
    fn usr_printf(fmt: *const c_char, ...) -> ();
    fn usr_panic(msg: *const c_char) -> ();
}

fn opng_optimize(infile_name: *const c_char) -> c_int {
    let mut err_msg: *const c_char = std::ptr::null();
    let mut result: c_int = 0;

    unsafe {
        if engine.started == 0 {
            usr_panic("The OptiPNG engine is not running\0".as_ptr());
        }

        usr_printf("** Processing: %s\n\0".as_ptr(), infile_name);

        summary.file_count += 1;
        opng_clear_image_info();

        if setjmp(the_exception_context.penv) == 0 {
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
        } else {
            summary.err_count += 1;
            opng_print_error(err_msg);
            result = -1;
        }

        opng_destroy_image_info();
        usr_printf("\n\0".as_ptr());
    }

    result
}
