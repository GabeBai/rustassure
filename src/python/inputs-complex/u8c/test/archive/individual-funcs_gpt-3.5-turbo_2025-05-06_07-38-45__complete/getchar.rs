use std::os::raw::c_int;
use std::io::{self, Read};

extern "C" {
    pub static stdin: *mut libc::FILE;
    pub fn getc(stream: *mut libc::FILE) -> c_int;
}

#[inline(always)]
pub fn getchar() -> c_int {
    unsafe { getc(stdin) }
}

fn main() {
    let c = getchar();
    println!("{}", c as u8 as char);
}
