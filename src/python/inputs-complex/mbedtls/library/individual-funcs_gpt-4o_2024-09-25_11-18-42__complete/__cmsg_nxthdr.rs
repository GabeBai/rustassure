extern crate libc;

use libc::{cmsghdr, msghdr, size_t, socklen_t, iovec, time_t};

extern "C" {
    fn __cmsg_nxthdr(mhdr: *mut msghdr, cmsg: *mut cmsghdr) -> *mut cmsghdr;
}

#[inline(always)]
unsafe fn cmsg_nxthdr(mhdr: *mut msghdr, cmsg: *mut cmsghdr) -> *mut cmsghdr {
    if (*cmsg).cmsg_len < std::mem::size_of::<cmsghdr>() as size_t {
        return std::ptr::null_mut();
    }
    let cmsg = (cmsg as *mut u8).add(((*cmsg).cmsg_len + std::mem::size_of::<size_t>() - 1) & !(std::mem::size_of::<size_t>() - 1)) as *mut cmsghdr;
    if (cmsg as *mut u8).add(std::mem::size_of::<cmsghdr>()) > ((*mhdr).msg_control as *mut u8).add((*mhdr).msg_controllen) ||
       (cmsg as *mut u8).add(((*cmsg).cmsg_len + std::mem::size_of::<size_t>() - 1) & !(std::mem::size_of::<size_t>() - 1)) > ((*mhdr).msg_control as *mut u8).add((*mhdr).msg_controllen) {
        return std::ptr::null_mut();
    }
    cmsg
}

fn main() {
    // Your main function code here
}
