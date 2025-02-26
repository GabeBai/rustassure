type DarwinCtRuneT = i32;

fn mask_rune(c: DarwinCtRuneT, mask: u32) -> DarwinCtRuneT {
    c & mask as DarwinCtRuneT
}

fn digit_to_int(c: i32) -> DarwinCtRuneT {
    mask_rune(c, 0x0F)
}
