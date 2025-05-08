use std::os::raw::{c_char, c_int};

extern "C" {
    static mut stderr: *mut std::os::raw::c_void;
    fn fputs(s: *const c_char, stream: *mut std::os::raw::c_void) -> c_int;
    fn exit(status: c_int) -> !;
}

fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n\0";
    unsafe {
        fputs(msg.as_ptr() as *const c_char, stderr);
        exit(70);
    }
}
