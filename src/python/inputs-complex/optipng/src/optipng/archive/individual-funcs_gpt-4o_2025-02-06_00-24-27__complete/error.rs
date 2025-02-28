#![allow(unaligned_references)]
use std::io::{self, Write};
use std::process;

#[no_mangle]
#[no_mangle]
fn error(fmt: &str, args: std::fmt::Arguments) {
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    write!(handle, "** Error: ").unwrap();
    handle.write_fmt(args).unwrap();
    writeln!(handle).unwrap();
    process::exit(1);
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    error("This is a test error with a number: {}", format_args!("{}", 42));
}
