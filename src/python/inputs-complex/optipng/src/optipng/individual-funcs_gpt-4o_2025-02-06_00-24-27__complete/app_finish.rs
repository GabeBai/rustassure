#![allow(unaligned_references)]
use std::ptr;
use std::fs::File;
use std::os::unix::io::AsRawFd;

static mut LOG_FILE: Option<File> = None;

unsafe fn app_finish() {
    if let Some(file) = LOG_FILE.take() {
        let _ = file.as_raw_fd();
    }
}
