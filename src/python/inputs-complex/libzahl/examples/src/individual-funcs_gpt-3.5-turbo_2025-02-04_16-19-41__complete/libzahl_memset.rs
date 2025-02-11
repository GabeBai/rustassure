#![allow(unaligned_references)]
type size_t = usize;
type uint64_t = u64;
type zahl_char_t = uint64_t;

#[no_mangle]
#[no_mangle]
fn libzahl_memset(a: &mut [zahl_char_t], v: zahl_char_t, n: size_t) {
    for i in (0..n).step_by(4) {
        a[i + 0] = v;
        a[i + 1] = v;
        a[i + 2] = v;
        a[i + 3] = v;
    }
}
