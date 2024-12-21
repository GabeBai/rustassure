use std::os::unix::io::AsRawFd;
use std::fs::File;
use std::io;
use std::os::unix::prelude::RawFd;
use libc::{fcntl, F_GETFL, F_SETFL, O_NONBLOCK};

pub struct MbedtlsNetContext {
    fd: RawFd,
}

impl MbedtlsNetContext {
    pub fn new(fd: RawFd) -> Self {
        MbedtlsNetContext { fd }
    }

    pub fn set_block(&self) -> io::Result<()> {
        unsafe {
            let flags = fcntl(self.fd, F_GETFL);
            if flags == -1 {
                return Err(io::Error::last_os_error());
            }

            let new_flags = flags & !O_NONBLOCK;
            if fcntl(self.fd, F_SETFL, new_flags) == -1 {
                return Err(io::Error::last_os_error());
            }
        }
        Ok(())
    }
}

fn main() {
    // Example usage
    let file = File::open("/dev/null").unwrap();
    let ctx = MbedtlsNetContext::new(file.as_raw_fd());
    match ctx.set_block() {
        Ok(_) => println!("Successfully set to blocking mode"),
        Err(e) => eprintln!("Failed to set to blocking mode: {}", e),
    }
}
