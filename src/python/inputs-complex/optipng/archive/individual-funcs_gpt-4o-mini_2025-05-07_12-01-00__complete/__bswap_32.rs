type __uint32_t = u32;

fn __bswap_32(__bsx: __uint32_t) -> __uint32_t {
    ((__bsx & 0xff000000) >> 24) |
    ((__bsx & 0x00ff0000) >> 8) |
    ((__bsx & 0x0000ff00) << 8) |
    ((__bsx & 0x000000ff) << 24)
}
