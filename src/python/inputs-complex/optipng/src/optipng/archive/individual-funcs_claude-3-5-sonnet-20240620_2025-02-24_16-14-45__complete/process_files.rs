use std::ffi::CStr;
use std::os::raw::c_char;

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
    out_name: *const c_char,
    dir_name: *const c_char,
    log_name: *const c_char,
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
struct OpngUi {
    printf_fn: extern "C" fn(*const c_char, ...),
    print_cntrl_fn: extern "C" fn(i32),
    progress_fn: extern "C" fn(u64, u64),
    panic_fn: extern "C" fn(*const c_char),
}

extern "C" {
    fn opng_initialize(options: *const OpngOptions, ui: *const OpngUi) -> i32;
    fn opng_optimize(infile_name: *const c_char) -> i32;
    fn opng_finalize() -> i32;
}

extern "C" fn app_printf(_fmt: *const c_char, ...) {}
extern "C" fn app_print_cntrl(_cntrl_code: i32) {}
extern "C" fn app_progress(_current_step: u64, _total_steps: u64) {}
extern "C" fn panic(msg: *const c_char) {
    let msg = unsafe { CStr::from_ptr(msg) };
    panic!("{}", msg.to_string_lossy());
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

unsafe fn process_files(argc: i32, argv: *mut *mut c_char) -> i32 {
    let mut result: i32;
    let ui = OpngUi {
        printf_fn: app_printf,
        print_cntrl_fn: app_print_cntrl,
        progress_fn: app_progress,
        panic_fn: panic,
    };

    if opng_initialize(&OPTIONS, &ui) != 0 {
        panic(b"Can't initialize optimization engine\0".as_ptr() as *const c_char);
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
        panic(b"Can't finalize optimization engine\0".as_ptr() as *const c_char);
    }

    result
}