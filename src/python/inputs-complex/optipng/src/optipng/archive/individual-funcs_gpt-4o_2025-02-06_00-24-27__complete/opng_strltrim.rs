#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn opng_strltrim(mut str: &str) -> &str {
    while str.chars().next().map_or(false, |c| c.is_whitespace()) {
        str = &str[1..];
    }
    str
}
