#[inline]
fn _OSSwapInt32(mut _data: u32) -> u32 {
    _data = _data.swap_bytes();
    _data
}