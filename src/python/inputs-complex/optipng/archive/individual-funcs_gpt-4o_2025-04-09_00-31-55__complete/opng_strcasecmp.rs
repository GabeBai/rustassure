fn opng_strcasecmp(str1: &str, str2: &str) -> i32 {
    let mut iter1 = str1.chars();
    let mut iter2 = str2.chars();
    loop {
        let ch1 = iter1.next().map_or(0, |c| c.to_ascii_lowercase() as i32);
        let ch2 = iter2.next().map_or(0, |c| c.to_ascii_lowercase() as i32);
        if ch1 != ch2 {
            return ch1 - ch2;
        }
        if ch1 == 0 {
            return 0;
        }
    }
}
