#[inline(always)]
fn _OSSwapInt64(data: u64) -> u64 {
    data.swap_bytes()
}