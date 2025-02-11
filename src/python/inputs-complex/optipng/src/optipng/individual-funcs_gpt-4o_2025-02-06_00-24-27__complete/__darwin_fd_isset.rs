#![allow(unaligned_references)]
#[derive(Debug, Clone, Copy)]
#[repr(C, packed)]struct FdSet {
    fds_bits: [i32; (1024 + 31) / 32], // 1024 bits divided by 32 bits per i32
}

impl FdSet {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        FdSet {
            fds_bits: [0; (1024 + 31) / 32],
        }
    }

#[no_mangle]
#[no_mangle]
    fn fd_isset(&self, fd: usize) -> bool {
        if fd >= 1024 {
            return false;
        }
        let index = fd / 32;
        let bit = fd % 32;
        (self.fds_bits[index] & (1 << bit)) != 0
    }

#[no_mangle]
#[no_mangle]
    fn fd_set(&mut self, fd: usize) {
        if fd < 1024 {
            let index = fd / 32;
            let bit = fd % 32;
            self.fds_bits[index] |= 1 << bit;
        }
    }

#[no_mangle]
#[no_mangle]
    fn fd_clear(&mut self, fd: usize) {
        if fd < 1024 {
            let index = fd / 32;
            let bit = fd % 32;
            self.fds_bits[index] &= !(1 << bit);
        }
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut fd_set = FdSet::new();
    fd_set.fd_set(10);
    println!("FD 10 is set: {}", fd_set.fd_isset(10));
    fd_set.fd_clear(10);
    println!("FD 10 is set: {}", fd_set.fd_isset(10));
}
