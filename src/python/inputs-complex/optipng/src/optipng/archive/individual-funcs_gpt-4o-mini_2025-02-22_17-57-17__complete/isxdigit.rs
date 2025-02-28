fn is_xdigit(c: char) -> bool {
    c.is_digit(16)
}

fn main() {
    let c = 'A';
    if is_xdigit(c) {
        println!("'{}' is a hexadecimal digit.", c);
    } else {
        println!("'{}' is not a hexadecimal digit.", c);
    }
}
