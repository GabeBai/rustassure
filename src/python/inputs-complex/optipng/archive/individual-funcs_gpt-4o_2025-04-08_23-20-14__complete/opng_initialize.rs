use std::ptr;
use std::mem::zeroed;

#[derive(Clone)]
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
    out_name: Option<String>,
    dir_name: Option<String>,
    log_name: Option<String>,
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

struct OpngUI {
    printf_fn: Option<fn(&str)>,
    print_cntrl_fn: Option<fn(i32)>,
    progress_fn: Option<fn(u64, u64)>,
    panic_fn: Option<fn(&str)>,
}

struct OpngSummary {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

struct OpngEngine {
    started: i32,
}

static mut SUMMARY: OpngSummary = OpngSummary {
    file_count: 0,
    err_count: 0,
    fix_count: 0,
    snip_count: 0,
};

static mut ENGINE: OpngEngine = OpngEngine { started: 0 };

fn opng_initialize(init_options: &OpngOptions, init_ui: &OpngUI) -> i32 {
    let usr_printf = init_ui.printf_fn;
    let usr_print_cntrl = init_ui.print_cntrl_fn;
    let usr_progress = init_ui.progress_fn;
    let usr_panic = init_ui.panic_fn;

    if usr_printf.is_none() || usr_print_cntrl.is_none() || usr_progress.is_none() || usr_panic.is_none() {
        return -1;
    }

    let mut options = init_options.clone();
    if options.optim_level == 0 {
        options.nb = 1;
        options.nc = 1;
        options.np = 1;
        options.nz = 1;
    }

    unsafe {
        ptr::write(&mut SUMMARY, zeroed());
        ENGINE.started = 1;
    }

    0
}
