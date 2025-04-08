use std::io::{self, Write};
use std::fmt::Arguments;

fn error(fmt: Arguments) {
    let stderr = io::stderr();
    let mut handle = stderr.lock();
    handle.write_fmt(format_args!("** Error: {}\n", fmt)).unwrap();
    std::process::exit(1);
}

fn main() {
    // Example usage
    error(format_args!("This is an error message with a number: {}", 42));
}
