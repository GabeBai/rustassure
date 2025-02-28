#![allow(unaligned_references)]
use std::io::{self, Write};
use std::process;

#[no_mangle]
#[no_mangle]
fn osys_terminate() {
    const MSG: &str = "The execution of this program has been terminated abnormally.\n";
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    let _ = handle.write_all(MSG.as_bytes());
    process::exit(70);
}

#[no_mangle]
#[no_mangle]
fn main() {
    osys_terminate();
}
