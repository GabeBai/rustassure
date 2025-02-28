#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Write};
use std::ffi::CStr;
use std::os::raw::c_char;

static mut CON_FILE: Option<File> = None;
static mut LOG_FILE: Option<File> = None;
static mut START_OF_LINE: bool = false;

#[no_mangle]
#[no_mangle]
fn app_printf(fmt: &CStr, args: std::fmt::Arguments) {
    let fmt_str = fmt.to_str().unwrap_or("");
    unsafe {
        START_OF_LINE = fmt_str.ends_with('\n');
        if let Some(ref mut con_file) = CON_FILE {
            let _ = writeln!(con_file, "{}", args);
        }
        if let Some(ref mut log_file) = LOG_FILE {
            let _ = writeln!(log_file, "{}", args);
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    unsafe {
        CON_FILE = Some(File::create("console_output.txt").unwrap());
        LOG_FILE = Some(File::create("log_output.txt").unwrap());
    }

    let fmt = CStr::from_bytes_with_nul(b"Hello, {}!\n\0").unwrap();
    app_printf(fmt, format_args!("world"));
}
