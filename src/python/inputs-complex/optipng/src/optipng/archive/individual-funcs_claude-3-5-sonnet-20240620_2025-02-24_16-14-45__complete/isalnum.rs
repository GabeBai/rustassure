use libc::c_int;

#[inline]
pub fn isalnum(c: c_int) -> c_int {
    c.is_ascii_alphanumeric() as c_int
}