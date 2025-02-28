type DarwinCtRuneT = i32;

extern "C" {
    fn __maskrune(c: DarwinCtRuneT, mask: u64) -> i32;
}

#[inline]
fn __wcwidth(c: DarwinCtRuneT) -> i32 {
    let mut x: u32;
    if c == 0 {
        return 0;
    }
    x = __maskrune(c, 0xe0000000 | 0x00040000) as u32;
    if (x & 0xe0000000) != 0 {
        return ((x & 0xe0000000) >> 30) as i32;
    }
    if (x & 0x00040000) != 0 { 1 } else { -1 }
}