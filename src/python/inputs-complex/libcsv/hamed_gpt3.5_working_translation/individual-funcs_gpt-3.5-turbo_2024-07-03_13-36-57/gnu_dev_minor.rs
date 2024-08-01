pub type __dev_t = u64;

#[inline]
pub const fn gnu_dev_minor(__dev: __dev_t) -> u32 {
    let mut __minor: u32;
    __minor = ((__dev & 0x00000000000000ffu64) >> 0) as u32;
    __minor |= ((__dev & 0x00000ffffff00000u64) >> 12) as u32;
    __minor
}
