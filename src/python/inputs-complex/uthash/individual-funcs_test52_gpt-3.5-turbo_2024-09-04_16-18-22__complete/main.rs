use std::ffi::CString;
use std::fmt::Write;

struct IntChar {
    a: i32,
    s: Option<String>,
}

fn main() {
    let mut intchars: Vec<IntChar> = Vec::new();

    let ic1 = IntChar { a: 1, s: Some("hello".to_string()) };
    intchars.push(ic1);

    let ic2 = IntChar { a: 2, s: Some("world".to_string()) };
    intchars.push(ic2);

    for ic in intchars.iter() {
        println!("{} {}", ic.a, ic.s.as_deref().unwrap_or("null"));
    }
}
