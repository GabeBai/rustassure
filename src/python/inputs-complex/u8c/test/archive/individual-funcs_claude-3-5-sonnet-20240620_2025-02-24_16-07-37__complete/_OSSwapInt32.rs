#[inline(always)]
fn _OSSwapInt32(data: u32) -> u32 {
    data.swap_bytes()
}