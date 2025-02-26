use libc::c_long;

struct timespec {
    tv_sec: __darwin_time_t,
    tv_nsec: c_long,
};

// Define other types and functions as needed
