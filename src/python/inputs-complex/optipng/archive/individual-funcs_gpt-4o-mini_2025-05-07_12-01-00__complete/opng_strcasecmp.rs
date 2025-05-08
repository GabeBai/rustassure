fn opng_strcasecmp(str1: &str, str2: &str) -> i32 {
    let mut chars1 = str1.chars();
    let mut chars2 = str2.chars();

    loop {
        let ch1 = chars1.next().map(|c| c.to_ascii_lowercase() as i32).unwrap_or(0);
        let ch2 = chars2.next().map(|c| c.to_ascii_lowercase() as i32).unwrap_or(0);

        if ch1 != ch2 {
            return ch1 - ch2;
        }
        if ch1 == 0 {
            return 0;
        }
    }
}
