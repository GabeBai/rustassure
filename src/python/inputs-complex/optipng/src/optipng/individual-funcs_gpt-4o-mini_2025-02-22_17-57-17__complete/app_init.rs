use std::fs::OpenOptions;
use std::io::{self, Write};
use std::path::Path;

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

enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

static mut OPERATION: Operation = Operation::Run;
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
    out_name: None,
    dir_name: None,
    log_name: None,
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

static mut CON_FILE: Option<Box<dyn Write>> = None;
static mut LOG_FILE: Option<Box<dyn Write>> = None;
static mut START_OF_LINE: bool = true;

fn app_init() {
    unsafe {
        START_OF_LINE = true;

        match OPERATION {
            Operation::ShowHelp | Operation::ShowVersion => {
                CON_FILE = Some(Box::new(io::stdout()));
            }
            _ if OPTIONS.quiet == 0 => {
                CON_FILE = Some(Box::new(io::stderr()));
            }
            _ => {
                CON_FILE = None;
            }
        }

        if let Some(log_name) = &OPTIONS.log_name {
            match OpenOptions::new().append(true).open(Path::new(log_name)) {
                Ok(file) => {
                    LOG_FILE = Some(Box::new(file));
                }
                Err(e) => {
                    eprintln!("Can't open log file: {}", log_name);
                    eprintln!("Error: {}", e);
                }
            }
        }
    }
}

fn main() {
    app_init();
}
