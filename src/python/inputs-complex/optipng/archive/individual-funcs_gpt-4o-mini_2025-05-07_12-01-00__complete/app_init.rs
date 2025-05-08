use std::fs::File;
use std::io::{self, BufWriter, Write};

struct OpngOptions {
    quiet: bool,
    log_name: Option<String>,
    // other fields...
}

enum Operation {
    ShowHelp,
    ShowVersion,
    // other operations...
}

static mut options: OpngOptions = OpngOptions {
    quiet: false,
    log_name: None,
    // initialize other fields...
};

static mut operation: Operation = Operation::ShowHelp; // or whatever the initial value is
static mut start_of_line: bool = true;

static mut con_file: Option<Box<dyn Write>> = None;
static mut log_file: Option<BufWriter<File>> = None;

fn app_init() {
    unsafe {
        start_of_line = true;
        match operation {
            Operation::ShowHelp | Operation::ShowVersion => {
                con_file = Some(Box::new(io::stdout()));
            }
            _ if !options.quiet => {
                con_file = Some(Box::new(io::stderr()));
            }
            _ => {
                con_file = None;
            }
        }

        if let Some(ref log_name) = options.log_name {
            match File::create(log_name) {
                Ok(file) => {
                    log_file = Some(BufWriter::new(file));
                    // Set buffer if needed, but in Rust, it's usually not necessary
                    // log_file.as_mut().unwrap().flush().unwrap(); // if you need to flush
                }
                Err(e) => {
                    eprintln!("Can't open log file: {}", e);
                }
            }
        }
    }
}
