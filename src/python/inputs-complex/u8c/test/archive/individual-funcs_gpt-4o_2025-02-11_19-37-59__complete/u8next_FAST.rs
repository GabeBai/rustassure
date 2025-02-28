#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn u8next_fast(txt: &str) -> (i32, Option<i32>) {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let mut val = 0;

    if let Some(&first) = s.get(0) {
        val = first as i32;
        if first > 0x7F {
            s = &s[1..];
            val = (s.get(0).unwrap_or(&0) & 0x3F) as i32;

            if (first & 0xF8) == 0xF0 {
                val |= ((first & 0x07) as i32) << 6;
                val <<= 6;
                if let Some(&next) = s.get(0) {
                    s = &s[1..];
                    val |= (next & 0x3F) as i32;
                }
            } else if (first & 0xF0) == 0xE0 {
                val |= ((first & 0x0F) as i32) << 6;
                val <<= 6;
                if let Some(&next) = s.get(0) {
                    s = &s[1..];
                    val |= (next & 0x3F) as i32;
                }
            } else {
                val |= ((first & 0x1F) as i32) << 6;
            }

            val <<= 6;
            if let Some(&next) = s.get(0) {
                s = &s[1..];
                val |= (next & 0x3F) as i32;
            }
        }
        len = 1 + (txt.len() - s.len()) as i32;
    }

    (len, if val != 0 { Some(val) } else { None })
}

#[no_mangle]
#[no_mangle]
fn main() {
    let text = "example";
    let (len, ch) = u8next_fast(text);
    println!("Length: {}, Character: {:?}", len, ch);
}
