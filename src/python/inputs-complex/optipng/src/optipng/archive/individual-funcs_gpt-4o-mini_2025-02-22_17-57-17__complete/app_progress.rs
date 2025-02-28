use std::io::{self, Write};

struct File {
    // You can define your own file structure if needed
}

static mut CON_FILE: Option<Box<dyn Write>> = None;

fn app_progress(current_step: u64, total_steps: u64) {
    unsafe {
        if let Some(ref mut file) = CON_FILE {
            // Flush the file if it is open
            let _ = file.flush();
        }
    }
    if current_step != 0 && total_steps != 0 {
        return;
    }
}

fn main() {
    // Example usage
    // Initialize CON_FILE with a file or stdout
    unsafe {
        CON_FILE = Some(Box::new(io::stdout()));
    }

    // Call app_progress with some values
    app_progress(1, 2);
}
