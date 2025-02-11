#![allow(unaligned_references)]
#[derive(PartialEq, PartialOrd)]
#[repr(C, packed)]struct ZahlCharT(u64);

#[no_mangle]
#[no_mangle]
fn zsub_impl(a: &mut [ZahlCharT], b: &[ZahlCharT], n: usize) {
    let mut carry = 0;
    let mut i = 0;
    while i < n {
        let tcarry = if carry != 0 {
            a[i] <= b[i]
        } else {
            a[i] < b[i]
        };
        a[i] -= b[i];
        a[i] -= carry;
        carry = if tcarry { 1 } else { 0 };
        i += 1;
    }

    if carry != 0 {
        while i < a.len() && a[i] == ZahlCharT(0) {
            a[i] = ZahlCharT(u64::MAX);
            i += 1;
        }

        if i < a.len() && a[i] == ZahlCharT(1) {
            a.pop();
        } else if i < a.len() {
            a[i] -= ZahlCharT(1);
        }
    }
}
