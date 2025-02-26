#[inline(always)]
fn __darwin_fd_clr(fd: i32, p: &mut fd_set) {
    if __darwin_check_fd_set(fd, p as *const _ as *const std::ffi::c_void) {
        let index = (fd as usize) / (std::mem::size_of::<i32>() * 8);
        let bit = 1 << ((fd as usize) % (std::mem::size_of::<i32>() * 8));
        p.fds_bits[index] &= !bit;
    }
}

#[repr(C)]
struct fd_set {
    fds_bits: [i32; ((1024 + std::mem::size_of::<i32>() * 8 - 1) / (std::mem::size_of::<i32>() * 8))],
}

extern "C" {
    fn __darwin_check_fd_set(fd: i32, p: *const std::ffi::c_void) -> bool;
}