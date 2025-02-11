#![allow(unaligned_references)]
type ZahlCharT = u64;

#[inline(always)]
#[no_mangle]
#[no_mangle]
fn sprintint_fix(buf: &mut [u8], mut v: ZahlCharT) {
    let partials = b"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899";
    let buffer = &mut buf[1..];
    buffer[16] = partials[2 * (v % 100) as usize];
    buffer[17] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[14] = partials[2 * (v % 100) as usize];
    buffer[15] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[12] = partials[2 * (v % 100) as usize];
    buffer[13] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[10] = partials[2 * (v % 100) as usize];
    buffer[11] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[8] = partials[2 * (v % 100) as usize];
    buffer[9] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[6] = partials[2 * (v % 100) as usize];
    buffer[7] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[4] = partials[2 * (v % 100) as usize];
    buffer[5] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[2] = partials[2 * (v % 100) as usize];
    buffer[3] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buffer[0] = partials[2 * (v % 100) as usize];
    buffer[1] = partials[2 * (v % 100) as usize + 1];
    v /= 100;
    buf[0] = b'0' + v as u8;
    buf[19] = 0;
}
