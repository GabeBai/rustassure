use std::fs::File;

static mut LOG_FILE: Option<File> = None;

fn app_finish() {
    unsafe {
        if let Some(file) = LOG_FILE.take() {
            let _ = file.sync_all(); // Ensure all data is written before closing
        }
    }
}
