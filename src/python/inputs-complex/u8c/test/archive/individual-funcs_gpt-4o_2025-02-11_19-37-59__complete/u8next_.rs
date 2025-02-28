#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn u8next(txt: &str) -> (i32, i32) {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let mut val = 0;

    if let Some(&first) = s.first() {
        val = first as i32;
        let mut state = "fsm_state_START";

        loop {
            match state {
                "fsm_state_START" => {
                    if s[0] < 0x80 {
                        len = 1;
                        state = "fsm_state_end";
                    } else if s[0] == 0xC0 {
                        len = 2;
                        state = "fsm_state_null";
                    } else if s[0] <= 0xC1 {
                        state = "fsm_state_invalid";
                    } else if s[0] <= 0xDF {
                        val &= 0x1F;
                        len = 2;
                        state = "fsm_state_len2_0";
                    } else if s[0] == 0xE0 {
                        val &= 0x0F;
                        len = 3;
                        state = "fsm_state_len3_0";
                    } else if s[0] <= 0xEC {
                        val &= 0x0F;
                        len = 3;
                        state = "fsm_state_len3_1";
                    } else if s[0] == 0xED {
                        val &= 0x0F;
                        len = 3;
                        state = "fsm_state_len3_2";
                    } else if s[0] <= 0xEF {
                        val &= 0x0F;
                        len = 3;
                        state = "fsm_state_len3_1";
                    } else if s[0] == 0xF0 {
                        val &= 0x07;
                        len = 4;
                        state = "fsm_state_len4_0";
                    } else if s[0] <= 0xF3 {
                        val &= 0x07;
                        len = 4;
                        state = "fsm_state_len4_1";
                    } else if s[0] == 0xF4 {
                        val &= 0x07;
                        len = 4;
                        state = "fsm_state_len4_2";
                    } else {
                        state = "fsm_state_invalid";
                    }
                }
                "fsm_state_null" => {
                    val = 0;
                    s = &s[1..];
                    if s[0] != 0x80 {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_end";
                    }
                }
                "fsm_state_len4_0" => {
                    s = &s[1..];
                    if s[0] < 0x90 || 0xBF < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len4";
                    }
                }
                "fsm_state_len4_1" => {
                    s = &s[1..];
                    if s[0] < 0x80 || 0xBF < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len4";
                    }
                }
                "fsm_state_len4_2" => {
                    s = &s[1..];
                    if s[0] < 0x80 || 0x8F < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len4";
                    }
                }
                "fsm_state_len4" => {
                    val = (val << 6) | (s[0] & 0x3F) as i32;
                    state = "fsm_state_len3_1";
                }
                "fsm_state_len3_0" => {
                    s = &s[1..];
                    if s[0] < 0xA0 || 0xBF < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len3";
                    }
                }
                "fsm_state_len3_1" => {
                    s = &s[1..];
                    if s[0] < 0x80 || 0xBF < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len3";
                    }
                }
                "fsm_state_len3_2" => {
                    s = &s[1..];
                    if s[0] < 0x80 || 0x9F < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        state = "fsm_state_len3";
                    }
                }
                "fsm_state_len3" => {
                    val = (val << 6) | (s[0] & 0x3F) as i32;
                    state = "fsm_state_len2_0";
                }
                "fsm_state_len2_0" => {
                    s = &s[1..];
                    if s[0] < 0x80 || 0xBF < s[0] {
                        state = "fsm_state_invalid";
                    } else {
                        val = (val << 6) | (s[0] & 0x3F) as i32;
                        state = "fsm_state_end";
                    }
                }
                "fsm_state_invalid" => {
                    val = first as i32;
                    len = -1;
                    state = "fsm_state_end";
                }
                "fsm_state_end" => {
                    break;
                }
                _ => unreachable!(),
            }
        }
    }

    (len, val)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let txt = "example";
    let (len, ch) = u8next(txt);
    println!("Length: {}, Character: {}", len, ch);
}
