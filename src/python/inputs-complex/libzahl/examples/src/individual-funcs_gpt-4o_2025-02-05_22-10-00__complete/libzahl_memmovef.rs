#![allow(unaligned_references)]
type ZahlCharT = u64;

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn libzahl_memmovef(d: &mut [ZahlCharT], s: &[ZahlCharT], n: usize) {
    if n != 0 && n < 4 {
        d[0] = s[0];
        d[1] = s[1];
        d[2] = s[2];
    } else {
        let mut i = 0;
        while i < n {
            d[i + 0] = s[i + 0];
            d[i + 1] = s[i + 1];
            d[i + 2] = s[i + 2];
            d[i + 3] = s[i + 3];
            i += 4;
        }
    }
}
