#[repr(C)]
pub struct timespec {
    pub tv_sec: __darwin_time_t,
    pub tv_nsec: i64,
}

type __darwin_time_t = i64;
