#![allow(unaligned_references)]
use std::error::Error;
use std::num::ParseIntError;
use std::str::FromStr;

#[derive(Debug)]
#[repr(C, packed)]struct Zahl {
    sign: i32,
    used: usize,
    alloced: usize,
    chars: Vec<u64>,
}

impl Zahl {
#[no_mangle]
#[no_mangle]
    fn new() -> Self {
        Zahl {
            sign: 0,
            used: 0,
            alloced: 0,
            chars: vec![],
        }
    }
}

#[no_mangle]
#[no_mangle]
fn zsets(a: &mut Zahl, str: &str) -> Result<(), Box<dyn Error>> {
    let mut temp: u64 = 0;
    let neg = str.starts_with('-');
    let str = if neg || str.starts_with('+') {
        &str[1..]
    } else {
        str
    };

    if str.is_empty() {
        return Err(Box::new(ParseIntError::from(std::num::IntErrorKind::Empty)));
    }

    for c in str.chars() {
        if !c.is_digit(10) {
            return Err(Box::new(ParseIntError::from(std::num::IntErrorKind::InvalidDigit)));
        }
    }

    a.sign = 0;
    let libzahl_const_1e19: u64 = 10u64.pow(19);
    let mut str_iter = str.chars();

    while let Some(_) = str_iter.next() {
        a.chars.push(0);
        temp = 0;
        for _ in 0..19 {
            if let Some(c) = str_iter.next() {
                temp = temp * 10 + (c.to_digit(10).unwrap() as u64);
            }
        }
        if temp != 0 {
            a.chars.push(temp);
        }
    }

    if neg {
        a.sign = -1;
    }

    Ok(())
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut zahl = Zahl::new();
    match zsets(&mut zahl, "12345678901234567890") {
        Ok(_) => println!("Success: {:?}", zahl),
        Err(e) => println!("Error: {}", e),
    }
}
