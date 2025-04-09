use std::fs::File;
use std::io::{self, Write};
use std::sync::{Mutex, Once};

// Simulate global file pointers with Mutex for thread safety
static INIT: Once = Once::new();
static mut CON_FILE: Option<Mutex<File>> = None;
static mut LOG_FILE: Option<Mutex<File>> = None;
static mut START_OF_LINE: bool = false;

fn initialize_files() {
    INIT.call_once(|| {
        unsafe {
            CON_FILE = Some(Mutex::new(File::create("console_output.txt").unwrap()));
            LOG_FILE = Some(Mutex::new(File::create("log_output.txt").unwrap()));
        }
    });
}

fn app_printf(fmt: &str, args: std::fmt::Arguments) {
    initialize_files();

    unsafe {
        START_OF_LINE = fmt.ends_with('\n');

        if let Some(ref con_file) = CON_FILE {
            let mut con_file = con_file.lock().unwrap();
            write!(con_file, "{}", args).unwrap();
        }

        if let Some(ref log_file) = LOG_FILE {
            let mut log_file = log_file.lock().unwrap();
            write!(log_file, "{}", args).unwrap();
        }
    }
}

macro_rules! app_printf {
    ($fmt:expr, $($arg:tt)*) => {
        app_printf($fmt, format_args!($fmt, $($arg)*))
    };
}

fn main() {
    app_printf!("Hello, {}!\n", "world");
}
