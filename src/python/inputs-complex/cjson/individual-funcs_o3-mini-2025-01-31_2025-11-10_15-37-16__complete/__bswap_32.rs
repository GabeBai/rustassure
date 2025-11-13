
#[no_mangle]
pub extern "C" fn __bswap_32(bsx: u32) -> u32 {
    bsx.swap_bytes()
}