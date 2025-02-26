use std::os::raw::c_char;

fn opng_strcasecmp(str1: &str, str2: &str) -> i32 {
    let mut str1_iter = str1.chars().map(|c| c.to_ascii_lowercase());
    let mut str2_iter = str2.chars().map(|c| c.to_ascii_lowercase());

    loop {
        let ch1 = str1_iter.next();
        let ch2 = str2_iter.next();

        match (ch1, ch2) {
            (Some(c1), Some(c2)) if c1 != c2 => return c1 as i32 - c2 as i32,
            (Some(_), Some(_)) => continue,
            _ => return 0,
        }
    }
}

fn main() {
    let str1 = "Hello";
    let str2 = "hello";
    let result = opng_strcasecmp(str1, str2);
    println!("Comparison result: {}", result);
}
