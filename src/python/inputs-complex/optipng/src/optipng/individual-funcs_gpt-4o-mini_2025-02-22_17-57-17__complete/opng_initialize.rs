use std::ffi::CString;
use std::ptr;

#[repr(C)]
pub struct OpngOptions {
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
pub struct OpngUi {
    printf_fn: extern "C" fn(*const i8, ...),
    print_cntrl_fn: extern "C" fn(i32),
    progress_fn: extern "C" fn(u64, u64),
    panic_fn: extern "C" fn(*const i8),
}

static mut ENGINE: OpngEngineStruct = OpngEngineStruct { started: 0 };
static mut SUMMARY: OpngSummaryStruct = OpngSummaryStruct {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};
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

static mut USR_PRINTF: Option<extern "C" fn(*const i8, ...)> = None;
static mut USR_PRINT_CNTRL: Option<extern "C" fn(i32)> = None;
static mut USR_PROGRESS: Option<extern "C" fn(u64, u64)> = None;
static mut USR_PANIC: Option<extern "C" fn(*const i8)> = None;

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

pub fn opng_initialize(init_options: &OpngOptions, init_ui: &OpngUi) -> i32 {
    unsafe {
        USR_PRINTF = Some(init_ui.printf_fn);
        USR_PRINT_CNTRL = Some(init_ui.print_cntrl_fn);
        USR_PROGRESS = Some(init_ui.progress_fn);
        USR_PANIC = Some(init_ui.panic_fn);

        if USR_PRINTF.is_none() || USR_PRINT_CNTRL.is_none() || USR_PROGRESS.is_none() || USR_PANIC.is_none() {
            return -1;
        }

        OPTIONS = *init_options;

        if OPTIONS.optim_level == 0 {
            OPTIONS.nb = 1;
            OPTIONS.nc = 1;
            OPTIONS.np = 1;
            OPTIONS.nz = 1;
        }

        std::ptr::write_bytes(&mut SUMMARY as *mut _ as *mut u8, 0, std::mem::size_of::<OpngSummaryStruct>());
        ENGINE.started = 1;

        return 0;
    }
}
