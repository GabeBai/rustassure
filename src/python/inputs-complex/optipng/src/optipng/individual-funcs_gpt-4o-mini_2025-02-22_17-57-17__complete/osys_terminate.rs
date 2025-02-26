use std::io::{self, Write};
use std::process;

fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n";
    
    // Write the message to standard error
    if let Err(e) = io::stderr().write_all(msg.as_bytes()) {
        eprintln!("Failed to write to stderr: {}", e);
    }
    
    // Exit with status code 70
    process::exit(70);
}
