use std::os::unix::io::AsRawFd;
use std::fs::File;
use libc::{fcntl, F_GETFL, F_SETFL, O_NONBLOCK};

pub struct MbedtlsNetContext {
    fd: File,
}

impl MbedtlsNetContext {
    pub fn set_nonblock(&self) -> std::io::Result<()> {
        let fd = self.fd.as_raw_fd();
        unsafe {
            let flags = fcntl(fd, F_GETFL);
            if flags == -1 {
                return Err(std::io::Error::last_os_error());
            }
            if fcntl(fd, F_SETFL, flags | O_NONBLOCK) == -1 {
                return Err(std::io::Error::last_os_error());
            }
        }
        Ok(())
    }
}

fn main() {
    // Example usage
    let file = File::open("/dev/null").unwrap();
    let ctx = MbedtlsNetContext { fd: file };
    ctx.set_nonblock().unwrap();
}
