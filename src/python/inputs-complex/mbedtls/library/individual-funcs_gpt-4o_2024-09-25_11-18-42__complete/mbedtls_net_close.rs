use std::os::unix::io::RawFd;
use std::os::unix::prelude::AsRawFd;
use std::fs::File;
use std::os::unix::io::FromRawFd;

pub struct MbedtlsNetContext {
    fd: RawFd,
}

impl MbedtlsNetContext {
    pub fn new(fd: RawFd) -> Self {
        MbedtlsNetContext { fd }
    }

    pub fn close(&mut self) {
        if self.fd == -1 {
            return;
        }
        unsafe {
            File::from_raw_fd(self.fd);
        }
        self.fd = -1;
    }
}
