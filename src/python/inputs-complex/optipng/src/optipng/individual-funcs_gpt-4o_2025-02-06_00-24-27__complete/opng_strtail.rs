#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn opng_strtail(str: &str, num: usize) -> &str {
    let len = str.len();
    if len <= num {
        str
    } else {
        &str[len - num..]
    }
}
