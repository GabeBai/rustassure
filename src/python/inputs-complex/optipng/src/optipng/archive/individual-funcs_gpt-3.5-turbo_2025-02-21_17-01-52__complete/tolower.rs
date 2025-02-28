use std::os::raw::c_int;

#[link(name = "c")]
extern "C" {
    fn tolower(c: c_int) -> c_int;
}

fn main() {
    let c: c_int = 65; // ASCII value for 'A'
    let result = unsafe { tolower(c) };
    println!("Result: {}", result);
}
