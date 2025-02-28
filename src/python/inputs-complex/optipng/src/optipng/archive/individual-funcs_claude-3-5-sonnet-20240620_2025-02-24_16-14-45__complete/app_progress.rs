use std::ptr::null_mut;
use std::io::Write;

static mut CON_FILE: *mut libc::FILE = null_mut();

unsafe fn app_progress(current_step: u64, total_steps: u64) {
    if !CON_FILE.is_null() {
        libc::fflush(CON_FILE);
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}