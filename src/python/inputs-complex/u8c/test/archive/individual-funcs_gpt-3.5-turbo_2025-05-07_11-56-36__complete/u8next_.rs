fn u8next(txt: &str, ch: &mut Option<u32>) -> usize {
    let mut len = 0;
    let mut s = txt.as_bytes();
    let mut val = 0;

    if let Some(&first) = s.first() {
        val = first as u32;
        let mut state = State::Start;

        loop {
            match state {
                State::Start => {
                    if *s < 0x80 {
                        len = 1;
                        state = State::End;
                    } else if *s == 0xC0 {
                        len = 2;
                        state = State::Null;
                    } else if *s <= 0xC1 {
                        state = State::Invalid;
                    } else if *s <= 0xDF {
                        val &= 0x1F;
                        len = 2;
                        state = State::Len2_0;
                    } else if *s == 0xE0 {
                        val &= 0x0F;
                        len = 3;
                        state = State::Len3_0;
                    } else if *s <= 0xEC {
                        val &= 0x0F;
                        len = 3;
                        state = State::Len3_1;
                    } else if *s == 0xED {
                        val &= 0x0F;
                        len = 3;
                        state = State::Len3_2;
                    } else if *s <= 0xEF {
                        val &= 0x0F;
                        len = 3;
                        state = State::Len3_1;
                    } else if *s == 0xF0 {
                        val &= 0x07;
                        len = 4;
                        state = State::Len4_0;
                    } else if *s <= 0xF3 {
                        val &= 0x07;
                        len = 4;
                        state = State::Len4_1;
                    } else if *s == 0xF4 {
                        val &= 0x07;
                        len = 4;
                        state = State::Len4_2;
                    } else {
                        state = State::Invalid;
                    }
                }
                State::Null => {
                    val = 0;
                    s = &s[1..];
                    if s.first() != Some(&0x80) {
                        state = State::Invalid;
                    } else {
                        state = State::End;
                    }
                }
                State::Len4_0 => {
                    s = &s[1..];
                    if *s < 0x90 || 0xBF < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len4;
                    }
                }
                State::Len4_1 => {
                    s = &s[1..];
                    if *s < 0x80 || 0xBF < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len4;
                    }
                }
                State::Len4_2 => {
                    s = &s[1..];
                    if *s < 0x80 || 0x8F < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len4;
                    }
                }
                State::Len4 => {
                    val = (val << 6) | (*s & 0x3F) as u32;
                    state = State::Len3_1;
                }
                State::Len3_0 => {
                    s = &s[1..];
                    if *s < 0xA0 || 0xBF < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len3;
                    }
                }
                State::Len3_1 => {
                    s = &s[1..];
                    if *s < 0x80 || 0xBF < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len3;
                    }
                }
                State::Len3_2 => {
                    s = &s[1..];
                    if *s < 0x80 || 0x9F < *s {
                        state = State::Invalid;
                    } else {
                        state = State::Len3;
                    }
                }
                State::Len3 => {
                    val = (val << 6) | (*s & 0x3F) as u32;
                    state = State::Len2_0;
                }
                State::Len2_0 => {
                    s = &s[1..];
                    if *s < 0x80 || 0xBF < *s {
                        state = State::Invalid;
                    } else {
                        val = (val << 6) | (*s & 0x3F) as u32;
                        state = State::End;
                    }
                }
                State::Invalid => {
                    val = first as u32;
                    len = -1;
                    break;
                }
                State::End => {
                    break;
                }
            }
        }
    }

    if let Some(ch) = ch {
        *ch = val;
    }

    len
}

enum State {
    Start,
    Null,
    Len4_0,
    Len4_1,
    Len4_2,
    Len4,
    Len3_0,
    Len3_1,
    Len3_2,
    Len3,
    Len2_0,
    Invalid,
    End,
}
