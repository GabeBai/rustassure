use std::fs::File;
use std::io;

static mut LOG_FILE: Option<File> = None;

fn app_finish() {
    unsafe {
        if let Some(file) = LOG_FILE.as_mut() {
            if let Err(err) = file.sync_all() {
                eprintln!("Error syncing file: {}", err);
            }
        }
    }
}
