use std::os::raw::{c_long, c_int};

type osys_foffset_t = c_long;
type FILE = std::os::unix::io::RawFd; // Assuming FILE is represented as a file descriptor in Rust

fn osys_ftello(stream: &FILE) -> osys_foffset_t {
    unsafe { libc::ftell(stream) as osys_foffset_t }
}
