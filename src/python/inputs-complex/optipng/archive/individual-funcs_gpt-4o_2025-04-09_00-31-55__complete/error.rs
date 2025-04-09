use std::fmt;
use std::io::{self, Write};
use std::process;

fn error(args: fmt::Arguments) {
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    writeln!(handle, "** Error: {}", args).expect("Failed to write to stderr");
    process::exit(1);
}

fn main() {
    let args = format_args!("{}", 404);
    error(args);
}
