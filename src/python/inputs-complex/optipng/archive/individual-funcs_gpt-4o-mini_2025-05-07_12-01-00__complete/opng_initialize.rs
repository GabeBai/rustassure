use std::ptr;

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
struct OpngUi {
    printf_fn: extern "C" fn(*const i8, ...),
    print_cntrl_fn: extern "C" fn(i32),
    progress_fn: extern "C" fn(u64, u64),
    panic_fn: extern "C" fn(*const i8),
}

static mut usr_printf: Option<extern "C" fn(*const i8, ...)> = None;
static mut usr_print_cntrl: Option<extern "C" fn(i32)> = None;
static mut usr_progress: Option<extern "C" fn(u64, u64)> = None;
static mut usr_panic: Option<extern "C" fn(*const i8)> = None;

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

static mut engine: OpngEngineStruct = OpngEngineStruct { started: 0 };
static mut summary: OpngSummaryStruct = OpngSummaryStruct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

#[repr(C)]
struct OpngEngineStruct {
    started: i32,
}

#[repr(C)]
struct OpngSummaryStruct {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

extern "C" fn opng_initialize(init_options: *const OpngOptions, init_ui: *const OpngUi) -> i32 {
    unsafe {
        usr_printf = (*init_ui).printf_fn;
        usr_print_cntrl = (*init_ui).print_cntrl_fn;
        usr_progress = (*init_ui).progress_fn;
        usr_panic = (*init_ui).panic_fn;

        if usr_printf.is_none() || usr_print_cntrl.is_none() || usr_progress.is_none() || usr_panic.is_none() {
            return -1;
        }

        // Copy the contents of init_options into options
        options = *init_options;

        if options.optim_level == 0 {
            options.nb = 1;
            options.nc = 1;
            options.np = 1;
            options.nz = 1;
        }

        // Zero out the summary
        std::ptr::write_bytes(&mut summary as *mut _ as *mut u8, 0, std::mem::size_of::<OpngSummaryStruct>());
        
        engine.started = 1;
        return 0;
    }
}
