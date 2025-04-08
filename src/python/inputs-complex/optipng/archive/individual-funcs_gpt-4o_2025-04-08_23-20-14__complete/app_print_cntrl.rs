use std::fs::File;
use std::io::{self, Write}; // Bring the Write trait into scope

fn main() -> io::Result<()> {
    let mut con_file = File::create("output.txt")?;
    let con_str = "Hello, world!";

    // Example of writing a space
    write!(con_file, " ")?;

    // Example of writing a formatted string
    write!(con_file, "{}", con_str)?;

    Ok(())
}
