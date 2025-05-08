use std::os::raw::{c_char, c_ulong};
use std::ptr;

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() as opng_bitset_t * 8) - 1;

extern "C" {
    fn opng_rangeset_string_to_bitset(str: *const c_char, end_idx: *mut usize) -> opng_bitset_t;
    fn longjmp(env: *const [usize; 8], val: i32) -> !;
}

struct ExceptionContext {
    penv: *const [usize; 8],
    caught: i32,
    v: ExceptionContextV,
}

struct ExceptionContextV {
    etmp: *const c_char,
}

static mut THE_EXCEPTION_CONTEXT: ExceptionContext = ExceptionContext {
    penv: ptr::null(),
    caught: 0,
    v: ExceptionContextV { etmp: ptr::null() },
};

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
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
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

fn opng_init_iteration(cmdline_set: opng_bitset_t, mask_set: opng_bitset_t, preset: *const c_char, output_set: &mut opng_bitset_t) {
    let mut preset_set: opng_bitset_t;
    *output_set = cmdline_set & mask_set;
    if *output_set == 0 && cmdline_set != 0 {
        unsafe {
            longjmp(THE_EXCEPTION_CONTEXT.penv as *const [usize; 8], 1);
        }
    }
    if *output_set == 0 || OPTIONS.optim_level >= 0 {
        preset_set = opng_rangeset_string_to_bitset(preset, ptr::null_mut());
        *output_set |= preset_set & mask_set;
    }
}
