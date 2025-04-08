use std::io::{self, Write};

fn main() {
    let stdout = io::stdout(); // Get a handle to the global stdout
    let mut handle = stdout.lock(); // Lock the handle

    // Perform operations with the locked handle
    if let Err(e) = writeln!(handle, "Hello, world!") {
        eprintln!("Failed to write to stdout: {}", e);
    }
}
