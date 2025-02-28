type uint16_t = u16;

#[inline]
fn _os_swap_int16(data: uint16_t) -> uint16_t {
    (data << 8) | (data >> 8)
}
