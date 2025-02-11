#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn is_graph(c: char) -> bool {
    c.is_ascii_graphic()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let c = 'A';
    if is_graph(c) {
        println!("'{}' is a graphic character.", c);
    } else {
        println!("'{}' is not a graphic character.", c);
    }
}
