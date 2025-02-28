use std::fs::File;
use std::io::{self, Write};
use std::sync::Mutex;
use std::fmt::{self, Write as FmtWrite};

lazy_static::lazy_static! {
    static ref CON_FILE: Mutex<Option<File>> = Mutex::new(None);
    static ref LOG_FILE: Mutex<Option<File>> = Mutex::new(None);
}

static mut START_OF_LINE: bool = false;

pub fn app_printf(fmt: &str, args: fmt::Arguments) {
    if fmt.is_empty() {
        return;
    }

    unsafe {
        START_OF_LINE = fmt.ends_with('\n');
    }

    if let Some(ref mut con_file) = *CON_FILE.lock().unwrap() {
        let _ = writeln!(con_file, "{}", fmt::format(args));
    }

    if let Some(ref mut log_file) = *LOG_FILE.lock().unwrap() {
        let _ = writeln!(log_file, "{}", fmt::format(args));
    }
}

// Example usage
pub fn main() {
    // Initialize files (for demonstration purposes)
    let con_file = File::create("console.log").unwrap();
    let log_file = File::create("log.log").unwrap();

    *CON_FILE.lock().unwrap() = Some(con_file);
    *LOG_FILE.lock().unwrap() = Some(log_file);

    // Example of using app_printf
    app_printf("Hello, {}!", format_args("world"));
}
