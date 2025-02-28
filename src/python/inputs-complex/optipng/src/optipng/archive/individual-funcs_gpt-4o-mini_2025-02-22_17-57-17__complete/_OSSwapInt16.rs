#[inline]
fn _os_swap_int16(data: u16) -> u16 {
    (data << 8) | (data >> 8)
}
