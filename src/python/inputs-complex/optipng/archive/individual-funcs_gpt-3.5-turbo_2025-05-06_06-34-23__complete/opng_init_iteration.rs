use std::os::raw::{c_char, c_int, c_long, c_ulong};

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() as opng_bitset_t * 8) - 1;

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
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
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;

struct png_struct;

type png_structp = *mut png_struct;

type jmp_buf = [c_long; 8];

#[repr(C)]
struct __jmp_buf_tag {
    __jmpbuf: jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
}

type exception_context = jmp_buf;

const INPUT_IS_PNG_FILE: opng_bitset_t = 0x0001;
const INPUT_HAS_PNG_DATASTREAM: opng_bitset_t = 0x0002;
const INPUT_HAS_PNG_SIGNATURE: opng_bitset_t = 0x0004;
const INPUT_HAS_DIGITAL_SIGNATURE: opng_bitset_t = 0x0008;
const INPUT_HAS_MULTIPLE_IMAGES: opng_bitset_t = 0x0010;
const INPUT_HAS_APNG: opng_bitset_t = 0x0020;
const INPUT_HAS_STRIPPED_DATA: opng_bitset_t = 0x0040;
const INPUT_HAS_JUNK: opng_bitset_t = 0x0080;
const INPUT_HAS_ERRORS: opng_bitset_t = 0x0100;
const OUTPUT_NEEDS_NEW_FILE: opng_bitset_t = 0x1000;
const OUTPUT_NEEDS_NEW_IDAT: opng_bitset_t = 0x2000;
const OUTPUT_HAS_ERRORS: opng_bitset_t = 0x4000;

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

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut usize) -> opng_bitset_t;
    fn longjmp(env: *const __jmp_buf_tag, val: c_int) -> !;
}

static mut the_exception_context: exception_context = [0; 8];

fn opng_init_iteration(cmdline_set: opng_bitset_t, mask_set: opng_bitset_t, preset: *const c_char, output_set: *mut opng_bitset_t) {
    let mut preset_set: opng_bitset_t;
    unsafe {
        *output_set = cmdline_set & mask_set;
        if *output_set == 0 && cmdline_set != 0 {
            longjmp(the_exception_context.as_ptr(), 1);
        }
        if *output_set == 0 || options.optim_level >= 0 {
            preset_set = opng_rangeset_string_to_bitset(preset, std::ptr::null_mut());
            *output_set |= preset_set & mask_set;
        }
    }
}
