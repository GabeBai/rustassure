extern crate log;
extern crate env_logger;

use log::info;

fn main() {
    // Initialize the logger
    env_logger::init();

    // Example usage of the info macro
    let file = "example.rs";
    let line = 42;
    let format = "This is a log message";
    info!("{}:{} - {}", file, line, format);
}
