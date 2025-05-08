use std::ffi::CStr;
use std::os::raw::c_char;
use std::os::raw::c_void;
use std::fmt;

fn error(fmt: *const c_char, args: fmt::Arguments) {
    unsafe {
        let fmt_str = CStr::from_ptr(fmt).to_string_lossy();
        print!("** Error: ");
        print!("{}", fmt);
        print!("\n");
    }
}

fn main() {
    let message = "Something went wrong!";
    error(message.as_ptr() as *const c_char, format_args!("Error message: {}", message));
}
