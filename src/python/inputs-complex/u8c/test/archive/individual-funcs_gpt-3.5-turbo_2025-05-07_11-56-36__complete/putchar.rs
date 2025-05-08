use std::os::raw::c_int;

#[link(name = "c")]
extern "C" {
    static mut stdout: *mut std::os::raw::c_void;
    fn putc(c: c_int, stream: *mut std::os::raw::c_void) -> c_int;
}

#[inline(always)]
fn putchar(c: c_int) -> c_int {
    unsafe { putc(c, stdout) }
}
