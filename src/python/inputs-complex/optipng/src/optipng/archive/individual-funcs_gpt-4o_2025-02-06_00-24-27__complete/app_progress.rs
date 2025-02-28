#![allow(unaligned_references)]
use std::io::{self, Write};
use std::fs::File;
use std::option::Option;

static mut CON_FILE: Option<File> = None;

#[no_mangle]
#[no_mangle]
fn app_progress(current_step: u64, total_steps: u64) {
    unsafe {
        if let Some(ref mut con_file) = CON_FILE {
            let _ = con_file.flush();
        }
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    unsafe {
        CON_FILE = Some(File::create("output.txt").unwrap());
    }
    app_progress(0, 0);
}
