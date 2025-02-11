#![allow(unaligned_references)]
type zahl_char_t = u64;

#[no_mangle]
#[no_mangle]
fn libzahl_memmovef(d: &mut [zahl_char_t], s: &[zahl_char_t], n: usize) {
    if n > 0 && n < 4 {
        d[0] = s[0];
        d[1] = s[1];
        d[2] = s[2];
    } else {
        for i in (0..n).step_by(4) {
            d[i + 0] = s[i + 0];
            d[i + 1] = s[i + 1];
            d[i + 2] = s[i + 2];
            d[i + 3] = s[i + 3];
        }
    }
}
