#[derive(Debug)]
struct UrlKeyValue {
    key: String,
    value: String,
}

fn unhex(s: char) -> i32 {
    match s {
        '0'..='9' => (s as i32) - ('0' as i32),
        'A'..='F' => (s as i32) - ('A' as i32) + 10,
        'a'..='f' => (s as i32) - ('a' as i32) + 10,
        _ => -1,
    }
}

fn main() {
    // Example usage of unhex function
    let hex_char = 'A';
    let value = unhex(hex_char);
    println!("The value of '{}' is {}", hex_char, value);
}
