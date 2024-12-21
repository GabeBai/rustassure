use std::io::{self, Read};

pub fn getchar_unlocked() -> i32 {
    let mut buffer = [0; 1];
    match io::stdin().read(&mut buffer) {
        Ok(1) => buffer[0] as i32,
        _ => -1,
    }
}
