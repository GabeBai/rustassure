#[inline]
fn _OSSwapInt16(data: u16) -> u16 {
    (data << 8) | (data >> 8)
}