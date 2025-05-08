use std::ffi::CString;
use std::fs;
use std::os::raw::{c_char, c_int, c_long, c_ulong};
use std::os::unix::fs::MetadataExt;

#[repr(C)]
pub struct timespec {
    tv_sec: c_long,
    tv_nsec: c_long,
}

#[repr(C)]
pub struct stat {
    st_dev: c_ulong,
    st_ino: c_ulong,
    st_nlink: c_ulong,
    st_mode: c_ulong,
    st_uid: c_ulong,
    st_gid: c_ulong,
    __pad0: c_int,
    st_rdev: c_ulong,
    st_size: c_long,
    st_blksize: c_long,
    st_blocks: c_long,
    st_atim: timespec,
    st_mtim: timespec,
    st_ctim: timespec,
    __glibc_reserved: [c_long; 3],
}

extern "C" {
    fn stat(path: *const c_char, buf: *mut stat) -> c_int;
    fn mkdir(path: *const c_char, mode: c_ulong) -> c_int;
}

fn osys_create_dir(dirname: &str) -> c_int {
    let c_dirname = CString::new(dirname).expect("CString::new failed");
    let len = c_dirname.as_bytes().len();

    if len == 0 {
        return 0;
    }

    let mut sbuf: stat = unsafe { std::mem::zeroed() };
    if unsafe { stat(c_dirname.as_ptr(), &mut sbuf) } == 0 {
        return if sbuf.st_mode & 0o40000 != 0 { 0 } else { -1 };
    }

    let mode: c_ulong = 0o777;
    let c_mode = mode as c_ulong;
    let result = unsafe { mkdir(c_dirname.as_ptr(), c_mode) };
    result
}

fn main() {
    let dirname = "test_dir";
    let result = osys_create_dir(dirname);
    if result == 0 {
        println!("Directory '{}' created successfully", dirname);
    } else {
        println!("Failed to create directory '{}'", dirname);
    }
}
