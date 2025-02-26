#[inline(always)]
fn __darwin_fd_isset(_fd: i32, _p: &fd_set) -> i32 {
    if __darwin_check_fd_set(_fd, _p as *const _ as *const std::ffi::c_void) != 0 {
        let index = (_fd as usize) / (std::mem::size_of::<i32>() * 8);
        let bit = 1 << ((_fd as usize) % (std::mem::size_of::<i32>() * 8));
        if _p.fds_bits[index] & bit != 0 {
            return 1;
        }
    }
    0
}

#[repr(C)]
struct fd_set {
    fds_bits: [i32; (1024 + std::mem::size_of::<i32>() * 8 - 1) / (std::mem::size_of::<i32>() * 8)],
}

extern "C" {
    fn __darwin_check_fd_set(_fd: i32, _p: *const std::ffi::c_void) -> i32;
}