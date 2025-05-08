fn u8next_(txt: *const i8, ch: *mut i32) -> i32 {
    let mut len = 0;
    let s = txt as *const u8;
    let first = unsafe { *s };
    let mut val = 0;

    if first != 0 {
        val = first as i32;
        unsafe {
            match first {
                0..=0x7F => {
                    len = 1;
                }
                0xC0 => {
                    len = 2;
                    val = 0;
                    if *s.add(1) != 0x80 {
                        len = -1;
                    }
                }
                0xC1..=0xDF => {
                    val &= 0x1F;
                    len = 2;
                    let next = *s.add(1);
                    if next < 0x80 || next > 0xBF {
                        len = -1;
                    } else {
                        val = (val << 6) | (next & 0x3F) as i32;
                    }
                }
                0xE0 => {
                    val &= 0x0F;
                    len = 3;
                    let next = *s.add(1);
                    if next < 0xA0 || next > 0xBF {
                        len = -1;
                    } else {
                        val = (val << 6) | (next & 0x3F) as i32;
                        let next2 = *s.add(2);
                        if next2 < 0x80 || next2 > 0xBF {
                            len = -1;
                        } else {
                            val = (val << 6) | (next2 & 0x3F) as i32;
                        }
                    }
                }
                0xED => {
                    val &= 0x0F;
                    len = 3;
                    let next = *s.add(1);
                    if next < 0x80 || next > 0x9F {
                        len = -1;
                    } else {
                        val = (val << 6) | (next & 0x3F) as i32;
                        let next2 = *s.add(2);
                        if next2 < 0x80 || next2 > 0xBF {
                            len = -1;
                        } else {
                            val = (val << 6) | (next2 & 0x3F) as i32;
                        }
                    }
                }
                0xF0 => {
                    val &= 0x07;
                    len = 4;
                    let next = *s.add(1);
                    if next < 0x90 || next > 0xBF {
                        len = -1;
                    } else {
                        val = (val << 6) | (next & 0x3F) as i32;
                        let next2 = *s.add(2);
                        if next2 < 0x80 || next2 > 0xBF {
                            len = -1;
                        } else {
                            val = (val << 6) | (next2 & 0x3F) as i32;
                            let next3 = *s.add(3);
                            if next3 < 0x80 || next3 > 0x8F {
                                len = -1;
                            } else {
                                val = (val << 6) | (next3 & 0x3F) as i32;
                            }
                        }
                    }
                }
                _ => {
                    len = -1;
                }
            }
        }
    }

    if !ch.is_null() {
        unsafe { *ch = val };
    }
    len
}
