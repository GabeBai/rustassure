use std::fs::File;
use std::io::Write;

static mut LOG_FILE: Option<File> = None;

fn app_finish() {
    unsafe {
        if let Some(file) = LOG_FILE.take() {
            drop(file);
        }
    }
}