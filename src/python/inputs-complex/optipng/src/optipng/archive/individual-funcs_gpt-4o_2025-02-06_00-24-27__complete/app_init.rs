#![allow(unaligned_references)]
use std::fs::OpenOptions;
use std::io::{self, Write};
use std::option::Option;

enum Operation {
    Run,
    ShowHelp,
    ShowVersion,
}

#[repr(C, packed)]struct OpngOptions {
    quiet: bool,
    log_name: Option<String>,
}

static mut OPERATION: Operation = Operation::Run;
static mut OPTIONS: OpngOptions = OpngOptions {
    quiet: false,
    log_name: None,
};

static mut CON_FILE: Option<Box<dyn Write>> = None;
static mut LOG_FILE: Option<Box<dyn Write>> = None;
static mut START_OF_LINE: bool = true;

#[no_mangle]
#[no_mangle]
fn app_init() {
    unsafe {
        START_OF_LINE = true;
        match OPERATION {
            Operation::ShowHelp | Operation::ShowVersion => {
                CON_FILE = Some(Box::new(io::stdout()));
            }
            _ => {
                if !OPTIONS.quiet {
                    CON_FILE = Some(Box::new(io::stderr()));
                } else {
                    CON_FILE = None;
                }
            }
        }

        if let Some(ref log_name) = OPTIONS.log_name {
            match OpenOptions::new().append(true).open(log_name) {
                Ok(file) => {
                    LOG_FILE = Some(Box::new(file));
                    if let Some(ref mut log_file) = LOG_FILE {
                        let _ = log_file.write_all(b"** Warning: The option -log is deprecated; use shell redirection\n\n");
                    }
                }
                Err(_) => {
                    eprintln!("Can't open log file: {}", log_name);
                }
            }
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Initialize the application
    app_init();
}
