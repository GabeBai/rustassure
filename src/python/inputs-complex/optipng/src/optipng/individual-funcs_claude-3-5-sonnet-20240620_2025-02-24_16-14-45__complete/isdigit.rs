use libc::c_int;

#[inline]
pub fn isdigit(c: c_int) -> c_int {
    (c as u8).is_ascii_digit() as c_int
}