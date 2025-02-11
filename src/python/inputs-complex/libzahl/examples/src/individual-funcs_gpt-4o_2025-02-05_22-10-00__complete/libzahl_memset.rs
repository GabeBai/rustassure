#![allow(unaligned_references)]
type ZahlCharT = u64;

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn libzahl_memset(a: &mut [ZahlCharT], v: ZahlCharT, n: usize) {
    let mut i = 0;
    while i < n {
        a[i + 0] = v;
        a[i + 1] = v;
        a[i + 2] = v;
        a[i + 3] = v;
        i += 4;
    }
}
