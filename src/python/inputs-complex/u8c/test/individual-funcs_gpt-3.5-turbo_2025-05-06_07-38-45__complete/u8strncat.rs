use std::ffi::CStr;
use std::os::raw::c_char;

fn u8strncpy(dest: &mut [u8], src: &[u8], n: usize) {
    dest[..n.min(src.len())].copy_from_slice(&src[..n.min(src.len())]);
}

fn u8strncat(dest: &mut [u8], src: &[u8], n: usize) {
    let mut d = dest.iter_mut().position(|&x| x == 0).unwrap_or(dest.len());
    u8strncpy(&mut dest[d..], src, n);
    dest[d + n] = 0;
}

fn main() {
    let mut dest = [0u8; 20];
    let src = b"world";
    u8strncpy(&mut dest, b"hello ", 20);
    u8strncat(&mut dest, src, 20);
    println!("{}", String::from_utf8_lossy(&dest));
}
