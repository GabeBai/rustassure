use std::os::raw::c_int;

#[link(name = "c")]
extern "C" {
    static mut stdin: *mut std::os::raw::c_void;
    fn getc(stream: *mut std::os::raw::c_void) -> c_int;
}

fn getchar() -> c_int {
    unsafe {
        getc(stdin)
    }
}
