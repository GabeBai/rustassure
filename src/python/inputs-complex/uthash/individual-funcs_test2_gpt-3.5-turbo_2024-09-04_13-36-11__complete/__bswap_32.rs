use std::mem;

fn bswap_32(bsx: u32) -> u32 {
    bsx.swap_bytes()
}