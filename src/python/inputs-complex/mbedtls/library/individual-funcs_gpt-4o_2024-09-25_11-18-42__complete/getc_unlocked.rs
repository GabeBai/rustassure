use std::fs::File;
use std::io::{self, Read, BufReader};

fn getc_unlocked(fp: &mut BufReader<File>) -> io::Result<u8> {
    let mut buffer = [0; 1];
    match fp.read(&mut buffer) {
        Ok(0) => Err(io::Error::new(io::ErrorKind::UnexpectedEof, "EOF reached")),
        Ok(_) => Ok(buffer[0]),
        Err(e) => Err(e),
    }
}

fn main() -> io::Result<()> {
    let file = File::open("example.txt")?;
    let mut reader = BufReader::new(file);

    match getc_unlocked(&mut reader) {
        Ok(c) => println!("Read character: {}", c as char),
        Err(e) => eprintln!("Error reading character: {}", e),
    }

    Ok(())
}
