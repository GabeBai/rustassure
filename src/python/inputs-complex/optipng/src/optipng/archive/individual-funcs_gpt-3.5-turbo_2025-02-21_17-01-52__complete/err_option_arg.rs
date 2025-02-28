use std::os::raw::{c_char, c_int, c_ulong};

#[repr(C)]
pub struct _OSUnalignedU16 {
    __val: u16,
}

#[repr(C)]
pub struct _OSUnalignedU32 {
    __val: u32,
}

#[repr(C)]
pub struct _OSUnalignedU64 {
    __val: u64,
}

#[repr(C)]
pub struct timespec {
    tv_sec: c_ulong,
    tv_nsec: c_long,
}

fn opng_strltrim(s: &str) -> &str {
    s.trim_start()
}

fn error(msg: &str, opt: &str, opt_arg: &str) {
    if opt_arg.is_empty() || opng_strltrim(opt_arg) == "" {
        println!("Missing argument for option {}", opt);
    } else {
        println!("Invalid argument for option {}: {}", opt, opt_arg);
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    error("Error", opt, opt_arg);
}

fn main() {
    let opt = "test";
    let opt_arg = "arg";
    err_option_arg(opt, opt_arg);
}
