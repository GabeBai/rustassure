use libc::c_int;

#[inline]
fn isspace(c: c_int) -> c_int {
    libc::isspace(c)
}