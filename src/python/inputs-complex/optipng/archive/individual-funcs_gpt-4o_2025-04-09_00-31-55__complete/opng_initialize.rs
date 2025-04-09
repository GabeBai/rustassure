use std::mem;
use std::ptr;

#[derive(Default, Clone)]
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
    printf_fn: Option<Box<dyn Fn(&str)>>,
    print_cntrl_fn: Option<Box<dyn Fn(i32)>>,
    progress_fn: Option<Box<dyn Fn(u64, u64)>>,
    panic_fn: Option<Box<dyn Fn(&str)>>,
}

#[derive(Default)]
struct OpngEngine {
    started: i32,
}

#[derive(Default)]
struct OpngSummary {
    file_count: u32,
    err_count: u32,
    fix_count: u32,
    snip_count: u32,
}

static mut ENGINE: OpngEngine = OpngEngine::default();
static mut SUMMARY: OpngSummary = OpngSummary::default();
static mut OPTIONS: OpngOptions = OpngOptions::default();

fn opng_initialize(init_options: &OpngOptions, init_ui: &OpngUI) -> i32 {
    unsafe {
        let usr_printf = init_ui.printf_fn.as_ref();
        let usr_print_cntrl = init_ui.print_cntrl_fn.as_ref();
        let usr_progress = init_ui.progress_fn.as_ref();
        let usr_panic = init_ui.panic_fn.as_ref();

        if usr_printf.is_none() || usr_print_cntrl.is_none() || usr_progress.is_none() || usr_panic.is_none() {
            return -1;
        }

        OPTIONS = init_options.clone();

        if OPTIONS.optim_level == 0 {
            OPTIONS.nb = 1;
            OPTIONS.nc = 1;
            OPTIONS.np = 1;
            OPTIONS.nz = 1;
        }

        mem::zeroed::<OpngSummary>();
        ENGINE.started = 1;
    }
    0
}
