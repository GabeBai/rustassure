use std::ffi::CString;
use std::os::raw::c_char;
use std::io::Write;

pub fn error(fmt: &str, args: std::fmt::Arguments) {
    let stderr = std::io::stderr();
    let mut handle = stderr.lock();
    
    write!(handle, "** Error: ").unwrap();
    write!(handle, "{}", format_args!("{}", args)).unwrap();
    writeln!(handle).unwrap();
    
    std::process::exit(1);
}

fn main() {
    error("Something went wrong: {}", format_args!("Error message"));
}
