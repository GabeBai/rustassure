#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_punct(c: char) -> bool {
    c.is_ascii_punctuation()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = '!';
    if is_punct(c) {
        println!("'{}' is a punctuation character.", c);
    } else {
        println!("'{}' is not a punctuation character.", c);
    }
}
