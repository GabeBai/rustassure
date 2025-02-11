#![allow(unaligned_references)]
type ZahlCharT = u64;

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn libzahl_memset_precise(a: &mut [ZahlCharT], v: ZahlCharT, n: usize) {
    if n <= 4 {
        if n >= 1 {
            a[0] = v;
        }
        if n >= 2 {
            a[1] = v;
        }
        if n >= 3 {
            a[2] = v;
        }
        if n >= 4 {
            a[3] = v;
        }
    } else {
        let mut i = 0;
        while {
            i += 4;
            i <= n
        } {
            a[i - 1] = v;
            a[i - 2] = v;
            a[i - 3] = v;
            a[i - 4] = v;
        }
        if i > n {
            i -= 4;
            for j in i..n {
                a[j] = v;
            }
        }
    }
}
