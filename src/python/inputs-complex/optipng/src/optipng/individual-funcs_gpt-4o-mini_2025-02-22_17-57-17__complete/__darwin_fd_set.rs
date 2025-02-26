use std::mem;
use std::os::raw::c_void;

const FD_SETSIZE: usize = 1024;

#[repr(C)]
struct FdSet {
    fds_bits: [u32; (FD_SETSIZE + (mem::size_of::<u32>() * 8 - 1)) / (mem::size_of::<u32>() * 8)],
}

extern "C" {
    fn darwin_check_fd_set(fd: i32, p: *const c_void) -> bool; // Assuming this function is defined elsewhere
}

fn darwin_fd_set(fd: i32, p: &mut FdSet) {
    if unsafe { darwin_check_fd_set(fd, p as *const _ as *const c_void) } {
        let index = (fd as usize) / (mem::size_of::<u32>() * 8);
        let bit = (fd as usize) % (mem::size_of::<u32>() * 8);
        p.fds_bits[index] |= 1 << bit;
    }
}
