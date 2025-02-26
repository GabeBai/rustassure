use std::ptr::null;
use std::fs::File;
use std::io::{self, Write};

static mut OPERATION: Operation = Operation::Run;
static mut OPTIONS: OpngOptions = OpngOptions::default();
static mut CON_FILE: Option<*mut libc::FILE> = None;
static mut LOG_FILE: Option<*mut libc::FILE> = None;
static mut START_OF_LINE: bool = true;

#[derive(PartialEq)]
enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

#[derive(Default)]
struct OpngOptions {
    // Fields omitted for brevity
}

unsafe fn app_init() {
    START_OF_LINE = true;
    CON_FILE = match OPERATION {
        Operation::ShowHelp | Operation::ShowVersion => Some(libc::stdout),
        _ if !OPTIONS.quiet => Some(libc::stderr),
        _ => None,
    };

    if let Some(log_name) = OPTIONS.log_name.as_deref() {
        let log_file = libc::fopen(log_name.as_ptr() as *const i8, b"a\0".as_ptr() as *const i8);
        if log_file.is_null() {
            error("Can't open log file: %s\n", log_name);
        } else {
            LOG_FILE = Some(log_file);
            libc::setvbuf(log_file, null(), libc::_IOLBF, 1024);
            app_printf("** Warning: %s\n\n", "The option -log is deprecated; use shell redirection");
        }
    }
}

fn error(format: &str, arg: &str) {
    eprintln!("{}", format!("{}{}", format, arg));
}

fn app_printf(format: &str, arg: &str) {
    if let Some(file) = unsafe { CON_FILE } {
        unsafe {
            libc::fprintf(file, format.as_ptr() as *const i8, arg.as_ptr() as *const i8);
        }
    }
}