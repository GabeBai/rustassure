use libc::{c_int, siginfo_t, c_void};

struct __sigaction_u {
    __sa_handler: extern "C" fn(c_int),
    __sa_sigaction: extern "C" fn(c_int, *mut siginfo_t, *mut c_void),
};

use std::mem::ManuallyDrop;

union wait {
    w_status: i32,
    w_T: ManuallyDrop<WaitT>,
    w_S: ManuallyDrop<WaitS>,
};

enum Category {
    Scheme = 0x01,
    Unreserved = 0x02,
    GenDelim = 0x04,
    SubDelim = 0x08,
    PCharSlash = 0x10,
    HexDigit = 0x20,
    Query = 0x40,
    Fragment = 0x40,
    Userinfo = 0x80,
    IPv6Char = 0x100,
};
