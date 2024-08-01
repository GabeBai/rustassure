use std::os::raw::c_ushort;

#[inline]
fn uint16_identity(x: c_ushort) -> c_ushort {
    x
}
