use std::io::Write;

static mut CON_FILE: Option<Box<dyn Write>> = None;

fn app_progress(current_step: u64, total_steps: u64) {
    unsafe {
        if let Some(ref mut file) = CON_FILE {
            let _ = file.flush();
        }
        if current_step != 0 && total_steps != 0 {
            return;
        }
    }
}
