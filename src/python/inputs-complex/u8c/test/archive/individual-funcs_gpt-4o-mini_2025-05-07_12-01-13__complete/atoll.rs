pub fn atoll(nptr: &str) -> i64 {
    nptr.trim().parse::<i64>().unwrap_or(0)
}
