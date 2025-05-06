use libc::{c_char, c_int, c_void};

type png_byte = u8;
type png_bytep = *mut png_byte;
type png_const_charp = *const c_char;
type png_struct = c_void;
type png_structp = *mut png_struct;

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: u32 = 0;
const OPNG_BITSET_ELT_MAX: u32 = (std::mem::size_of::<opng_bitset_t>() as u32 * 8) - 1;

struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

struct fd_set {
    __fds_bits: [u64; 16],
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

struct opng_ui {
    printf_fn: extern "C" fn(*const c_char, ...),
    print_cntrl_fn: extern "C" fn(c_int),
    progress_fn: extern "C" fn(u64, u64),
    panic_fn: extern "C" fn(*const c_char),
}

extern "C" {
    fn opng_initialize(options: *const opng_options, ui: *const opng_ui) -> c_int;
    fn opng_optimize(infile_name: *const c_char) -> c_int;
    fn opng_finalize() -> c_int;
}

static mut options: opng_options = opng_options {
    backup: 0, clobber: 0, debug: 0, fix: 0, force: 0, full: 0, preserve: 0, quiet: 0, simulate: 0, verbose: 0,
    out_name: std::ptr::null(), dir_name: std::ptr::null(), log_name: std::ptr::null(),
    interlace: 0, nb: 0, nc: 0, np: 0, nz: 0, optim_level: 0,
    compr_level_set: 0, mem_level_set: 0, strategy_set: 0, filter_set: 0,
    window_bits: 0, snip: 0, strip_all: 0,
};

unsafe extern "C" fn app_printf(fmt: *const c_char, ...) {}
unsafe extern "C" fn app_print_cntrl(cntrl_code: c_int) {}
unsafe extern "C" fn app_progress(current_step: u64, total_steps: u64) {}
unsafe extern "C" fn panic(msg: *const c_char) {}

fn process_files(argc: c_int, argv: *mut *mut c_char) -> c_int {
    let mut result: c_int;
    let mut ui = opng_ui {
        printf_fn: app_printf,
        print_cntrl_fn: app_print_cntrl,
        progress_fn: app_progress,
        panic_fn: panic,
    };
    let mut i: c_int;
    if opng_initialize(&options, &ui) != 0 {
        panic("Can't initialize optimization engine");
    }
    result = 0;
    for i in 1..argc {
        let arg = *argv.offset(i as isize);
        if arg.is_null() || *arg == 0 {
            continue;
        }
        if opng_optimize(arg) != 0 {
            result = 1;
        }
    }
    if opng_finalize() != 0 {
        panic("Can't finalize optimization engine");
    }
    result
}
