fn is_alphanumeric(c: char) -> bool {
    c.is_alphanumeric()
}

// Example usage
fn main() {
    let c = 'A';
    if is_alphanumeric(c) {
        println!("'{}' is alphanumeric.", c);
    } else {
        println!("'{}' is not alphanumeric.", c);
    }
}
