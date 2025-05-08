use std::ffi::CString;
use std::io::{self, Write};
use std::process;

pub fn osys_terminate() {
    let msg = CString::new("The execution of this program has been terminated abnormally.\n").unwrap();
    io::stderr().write_all(msg.to_bytes_with_nul()).unwrap();
    process::exit(70);
}
