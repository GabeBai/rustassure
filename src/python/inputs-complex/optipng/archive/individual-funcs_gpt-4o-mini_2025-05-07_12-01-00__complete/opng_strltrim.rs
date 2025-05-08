fn opng_strltrim(str: &str) -> &str {
    let start = str.chars().position(|c| !c.is_ascii_whitespace()).unwrap_or(str.len());
    &str[start..]
}
