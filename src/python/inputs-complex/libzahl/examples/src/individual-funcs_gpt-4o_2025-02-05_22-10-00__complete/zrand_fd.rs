#![allow(unaligned_references)]
use std::fs::File;
use std::io::{self, Read};
use std::os::unix::io::AsRawFd;

#[no_mangle]
#[no_mangle]
fn zrand_fd(out: &mut [u8], statep: &mut File) -> io::Result<()> {
    let fd = statep.as_raw_fd();
    let mut read_total = 0;

    while read_total < out.len() {
        match statep.read(&mut out[read_total..]) {
            Ok(0) => break, // EOF reached
            Ok(n) => read_total += n,
            Err(e) => return Err(e),
        }
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let mut file = File::open("/dev/urandom").expect("Failed to open file");
    let mut buffer = vec![0u8; 1024];
    zrand_fd(&mut buffer, &mut file).expect("Failed to read from file");
}
