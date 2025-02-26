pub fn toupper(c: i32) -> i32 {
    unsafe { libc::toupper(c) }
}