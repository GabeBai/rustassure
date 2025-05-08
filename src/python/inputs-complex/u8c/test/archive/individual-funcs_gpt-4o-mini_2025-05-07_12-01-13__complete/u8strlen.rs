fn u8strlen(s: *const i8) -> i32 {
    let mut len = 0;
    let mut ptr = s;

    unsafe {
        while *ptr != 0 {
            if (*ptr & 0xC0) != 0x80 {
                len += 1;
            }
            ptr = ptr.add(1);
        }
    }

    len
}
