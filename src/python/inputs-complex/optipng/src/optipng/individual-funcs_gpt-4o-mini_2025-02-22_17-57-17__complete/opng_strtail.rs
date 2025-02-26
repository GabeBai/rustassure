fn opng_strtail(str: &str, num: usize) -> &str {
    let len = str.len();
    if len <= num {
        return str;
    }
    &str[len - num..]
}
