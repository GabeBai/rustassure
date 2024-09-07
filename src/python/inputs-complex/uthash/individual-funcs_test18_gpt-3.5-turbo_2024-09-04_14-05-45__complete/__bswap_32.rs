use std::mem;

fn bswap_32(bsx: u32) -> u32 {
    ((bsx & 0xff000000u32) >> 24) | ((bsx & 0x00ff0000u32) >> 8) | ((bsx & 0x0000ff00u32) << 8) | ((bsx & 0x000000ffu32) << 24)
}