fn is_punct(c: char) -> bool {
    c.is_ascii_punctuation() // For ASCII punctuation
    // Alternatively, for Unicode punctuation, you can use:
    // c.is_punctuation()
}

fn main() {
    let c = '!';
    if is_punct(c) {
        println!("'{}' is a punctuation character.", c);
    } else {
        println!("'{}' is not a punctuation character.", c);
    }
}
