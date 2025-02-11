#![allow(unaligned_references)]
type zahl_char_t = u64;

#[no_mangle]
#[no_mangle]
fn libzahl_memset_precise(a: &mut [zahl_char_t], v: zahl_char_t, n: usize) {
    let mut i = 0;
    if n <= 4 {
        for j in 0..n {
            a[j] = v;
        }
    } else {
        while i + 4 <= n {
            a[i] = v;
            a[i + 1] = v;
            a[i + 2] = v;
            a[i + 3] = v;
            i += 4;
        }
        if i < n {
            for j in i..n {
                a[j] = v;
            }
        }
    }
}
