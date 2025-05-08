use lazy_static::lazy_static;
use std::sync::Mutex;
use std::fs::OpenOptions;
use std::io::{self, Write};
use std::fmt;

lazy_static! {
    static ref CON_FILE: Mutex<Option<io::BufWriter<std::fs::File>>> = Mutex::new(None);
    static ref LOG_FILE: Mutex<Option<io::BufWriter<std::fs::File>>> = Mutex::new(None);
}

static mut START_OF_LINE: bool = false;

fn app_printf(fmt: &str, args: fmt::Arguments) {
    unsafe {
        if fmt.is_empty() {
            return;
        }
        START_OF_LINE = fmt.ends_with('\n');

        if let Ok(mut con_file) = CON_FILE.lock() {
            if let Some(ref mut file) = *con_file {
                let _ = writeln!(file, "{}", fmt);
            }
        }

        if let Ok(mut log_file) = LOG_FILE.lock() {
            if let Some(ref mut file) = *log_file {
                let _ = writeln!(file, "{}", fmt);
            }
        }
    }
}

fn main() {
    // Example usage
    let con_file = OpenOptions::new()
        .write(true)
        .create(true)
        .open("console.log")
        .unwrap();
    
    let log_file = OpenOptions::new()
        .write(true)
        .create(true)
        .open("log.log")
        .unwrap();

    *CON_FILE.lock().unwrap() = Some(io::BufWriter::new(con_file));
    *LOG_FILE.lock().unwrap() = Some(io::BufWriter::new(log_file));

    app_printf("Hello, world!\n", format_args!(""));
}
