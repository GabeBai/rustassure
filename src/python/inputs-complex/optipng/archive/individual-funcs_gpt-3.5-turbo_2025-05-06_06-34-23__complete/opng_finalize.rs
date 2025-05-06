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

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

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
struct png_struct;

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_structp = *mut png_struct;

struct internal_state;

type jmp_buf = [i32; 1];

struct exception_context {
    penv: *mut jmp_buf,
    caught: c_int,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const c_char,
}

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

struct opng_summary_struct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

struct opng_options options;

static mut usr_printf: Option<extern "C" fn(*const c_char, ...) -> ()> = None;

fn opng_finalize() -> c_int {
    unsafe {
        if options.verbose != 0 || summary.snip_count > 0 || summary.err_count > 0 {
            if let Some(printf) = usr_printf {
                printf("** Status report\n\0".as_ptr() as *const c_char);
                printf("%u file(s) have been processed.\n\0".as_ptr() as *const c_char, summary.file_count);
                if summary.snip_count > 0 {
                    printf("%u multi-image file(s) have been snipped.\n\0".as_ptr() as *const c_char, summary.snip_count);
                }
                if summary.err_count > 0 {
                    printf("%u error(s) have been encountered.\n\0".as_ptr() as *const c_char, summary.err_count);
                    if summary.fix_count > 0 {
                        printf("%u erroneous file(s) have been fixed.\n\0".as_ptr() as *const c_char, summary.fix_count);
                    }
                }
            }
        }
        engine.started = 0;
    }
    0
}
