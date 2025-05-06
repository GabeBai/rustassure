use std::os::raw::{c_char, c_int, c_long, c_ulong};

const _ISupper: c_int = if 0 < 8 { (1 << 0) << 8 } else { (1 << 0) >> 8 };
const _ISlower: c_int = if 1 < 8 { (1 << 1) << 8 } else { (1 << 1) >> 8 };
const _ISalpha: c_int = if 2 < 8 { (1 << 2) << 8 } else { (1 << 2) >> 8 };
const _ISdigit: c_int = if 3 < 8 { (1 << 3) << 8 } else { (1 << 3) >> 8 };
const _ISxdigit: c_int = if 4 < 8 { (1 << 4) << 8 } else { (1 << 4) >> 8 };
const _ISspace: c_int = if 5 < 8 { (1 << 5) << 8 } else { (1 << 5) >> 8 };
const _ISprint: c_int = if 6 < 8 { (1 << 6) << 8 } else { (1 << 6) >> 8 };
const _ISgraph: c_int = if 7 < 8 { (1 << 7) << 8 } else { (1 << 7) >> 8 };
const _ISblank: c_int = if 8 < 8 { (1 << 8) << 8 } else { (1 << 8) >> 8 };
const _IScntrl: c_int = if 9 < 8 { (1 << 9) << 8 } else { (1 << 9) >> 8 };
const _ISpunct: c_int = if 10 < 8 { (1 << 10) << 8 } else { (1 << 10) >> 8 };
const _ISalnum: c_int = if 11 < 8 { (1 << 11) << 8 } else { (1 << 11) >> 8 };

type size_t = c_ulong;

#[repr(C)]
struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

#[repr(C)]
union pthread_attr_t {
    __size: [c_char; 56],
    __align: c_long,
}

type opng_bitset_t = c_uint;

const OPNG_BITSET_ELT_MIN: opng_bitset_t = 0;
const OPNG_BITSET_ELT_MAX: opng_bitset_t = (std::mem::size_of::<opng_bitset_t>() * 8 - 1) as opng_bitset_t;

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
type png_struct = std::ffi::c_void;
type png_structp = *mut png_struct;

const OP_RUN: c_int = 0;
const OP_SHOW_HELP: c_int = 1;
const OP_SHOW_VERSION: c_int = 2;

static mut operation: c_int = OP_RUN;
static mut options: opng_options = opng_options {
    backup: 0, clobber: 0, debug: 0, fix: 0, force: 0, full: 0, preserve: 0, quiet: 0, simulate: 0, verbose: 0,
    out_name: std::ptr::null(), dir_name: std::ptr::null(), log_name: std::ptr::null(),
    interlace: 0, nb: 0, nc: 0, np: 0, nz: 0, optim_level: 0,
    compr_level_set: 0, mem_level_set: 0, strategy_set: 0, filter_set: 0,
    window_bits: 0, snip: 0, strip_all: 0,
};
static mut con_file: *mut std::fs::File = std::ptr::null_mut();
static mut log_file: *mut std::fs::File = std::ptr::null_mut();
static mut start_of_line: c_int = 1;

fn app_init() {
    unsafe {
        start_of_line = 1;
        if operation == OP_SHOW_HELP || operation == OP_SHOW_VERSION {
            con_file = std::ptr::NonNull::new(std::io::stdout()).unwrap().as_ptr();
        } else if options.quiet == 0 {
            con_file = std::ptr::NonNull::new(std::io::stderr()).unwrap().as_ptr();
        } else {
            con_file = std::ptr::null_mut();
        }
        if !options.log_name.is_null() {
            if let Ok(file) = std::fs::File::open(std::ffi::CStr::from_ptr(options.log_name).to_str().unwrap()) {
                log_file = std::mem::transmute(Box::new(file));
                libc::setvbuf(log_file, std::ptr::null_mut(), 1, 8192);
                app_printf("** Warning: %s\n\n", "The option -log is deprecated; use shell redirection");
            } else {
                error("Can't open log file: %s\n", std::ffi::CStr::from_ptr(options.log_name).to_str().unwrap());
            }
        }
    }
}
