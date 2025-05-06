use std::io::{self, Write};

#[repr(C)]
struct timespec {
    tv_sec: i64,
    tv_nsec: i64,
}

#[repr(C)]
struct fd_set {
    __fds_bits: [i64; 16],
}

#[repr(C)]
union pthread_attr_t {
    __size: [u8; 56],
    __align: i64,
}

extern "C" {
    fn fputs(s: *const i8, stream: *mut libc::FILE) -> i32;
    fn exit(status: i32) -> !;
}

fn osys_terminate() {
    let msg = "The execution of this program has been terminated abnormally.\n";
    unsafe {
        let stderr = libc::stderr;
        fputs(msg.as_ptr() as *const i8, stderr);
        exit(70);
    }
}
