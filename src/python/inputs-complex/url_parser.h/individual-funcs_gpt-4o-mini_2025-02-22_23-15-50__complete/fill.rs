static mut CHAR_CAT: [u8; 256] = [0; 256];

fn fill(value: u32, alnum: &str, special: &str) {
    unsafe {
        for c in alnum.chars() {
            CHAR_CAT[c as usize] |= value as u8;
        }
        for c in special.chars() {
            CHAR_CAT[c as usize] |= value as u8;
        }
    }
}
