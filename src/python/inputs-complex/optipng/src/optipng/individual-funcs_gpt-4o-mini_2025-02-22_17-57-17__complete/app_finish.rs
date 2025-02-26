use std::fs::File;
use std::io::Result;

static mut LOG_FILE: Option<File> = None;

unsafe fn app_finish() {
    if let Some(ref mut log_file) = LOG_FILE {
        let _ = log_file.sync_all(); // Equivalent to fclose in terms of flushing
    }
}
