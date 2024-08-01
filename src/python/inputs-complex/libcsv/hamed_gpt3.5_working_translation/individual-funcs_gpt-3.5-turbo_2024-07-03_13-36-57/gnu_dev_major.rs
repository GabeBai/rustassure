pub type __dev_t = u64;

#[inline]
pub const fn gnu_dev_major(__dev: __dev_t) -> u32 {
    let mut __major: u32;
    __major = ((__dev & 0x00000000000fff00u64) >> 8) as u32;
    __major |= ((__dev & 0xfffff00000000000u64) >> 32) as u32;
    __major
}
