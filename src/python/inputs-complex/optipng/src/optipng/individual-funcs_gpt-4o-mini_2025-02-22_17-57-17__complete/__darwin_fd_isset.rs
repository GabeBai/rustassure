#[repr(C)]
pub struct FdSet {
    fds_bits: [i32; (1024 + (std::mem::size_of::<i32>() * 8 - 1)) / (std::mem::size_of::<i32>() * 8)],
}

impl FdSet {
    pub fn is_set(&self, fd: i32) -> bool {
        let index = (fd / (std::mem::size_of::<i32>() as i32 * 8)) as usize;
        let bit = (1 << (fd % (std::mem::size_of::<i32>() as i32 * 8))) as i32;
        (self.fds_bits[index] & bit) != 0
    }
}

pub fn fd_isset(fd: i32, fd_set: &FdSet) -> i32 {
    if fd_set.is_set(fd) {
        return 1; // true
    }
    0 // false
}
