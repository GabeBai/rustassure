use std::mem;

type opng_bitset_t = u32;

const OPNG_BITSET_ELT_MIN: i32 = 0;
const OPNG_BITSET_ELT_MAX: i32 = (std::mem::size_of::<opng_bitset_t>() as i32 * 8) - 1;

struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

struct fd_set {
    __fds_bits: [__fd_mask; 1024 / (8 * std::mem::size_of::<__fd_mask>())],
}

union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

#[no_mangle]
pub extern "C" fn memset(s: *mut std::ffi::c_void, c: i32, n: usize) -> *mut std::ffi::c_void {
    unsafe {
        let s_ptr = s as *mut u8;
        for i in 0..n {
            *s_ptr.offset(i as isize) = c as u8;
        }
    }
    s
}

struct opng_options {
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
    out_name: *const std::os::raw::c_char,
    dir_name: *const std::os::raw::c_char,
    log_name: *const std::os::raw::c_char,
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

struct opng_ui {
    printf_fn: Option<extern "C" fn(*const std::os::raw::c_char, ...)>,
    print_cntrl_fn: Option<extern "C" fn(i32)>,
    progress_fn: Option<extern "C" fn(u64, u64)>,
    panic_fn: Option<extern "C" fn(*const std::os::raw::c_char)>,
}

static mut usr_printf: Option<extern "C" fn(*const std::os::raw::c_char, ...)> = None;
static mut usr_print_cntrl: Option<extern "C" fn(i32)> = None;
static mut usr_progress: Option<extern "C" fn(u64, u64)> = None;
static mut usr_panic: Option<extern "C" fn(*const std::os::raw::c_char)> = None;

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

static mut summary: opng_summary_struct = opng_summary_struct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

struct opng_engine_struct {
    started: i32,
}

static mut engine: opng_engine_struct = opng_engine_struct { started: 0 };

#[repr(C)]
struct opng_summary_struct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

#[no_mangle]
pub extern "C" fn opng_initialize(init_options: *const opng_options, init_ui: *const opng_ui) -> i32 {
    unsafe {
        usr_printf = (*init_ui).printf_fn;
        usr_print_cntrl = (*init_ui).print_cntrl_fn;
        usr_progress = (*init_ui).progress_fn;
        usr_panic = (*init_ui).panic_fn;

        if usr_printf.is_none() || usr_print_cntrl.is_none() || usr_progress.is_none() || usr_panic.is_none() {
            return -1;
        }

        options = *init_options;

        if options.optim_level == 0 {
            options.nb = 1;
            options.nc = 1;
            options.np = 1;
            options.nz = 1;
        }

        memset(&mut summary as *mut opng_summary_struct as *mut std::ffi::c_void, 0, mem::size_of::<opng_summary_struct>());

        engine.started = 1;

        return 0;
    }
}
