#![allow(unaligned_references)]
use std::fmt::Write;

type OpngUllongT = u64;
type SizeT = usize;

#[no_mangle]
#[no_mangle]
fn opng_sprint_uratio_impl(
    buffer: &mut String,
    buffer_size: SizeT,
    num: OpngUllongT,
    denom: OpngUllongT,
    always_percent: bool,
) -> usize {
    let mut integer_part: OpngUllongT;
    let mut remainder: OpngUllongT;
    let mut fractional_part: u32;
    let mut scale: u32;
    let mut scaled_ratio: f64;

    if denom == 0 {
        return write!(buffer, "{}", if num == 0 { "??%" } else { "INFTY%" }).unwrap();
    }

    if num < denom && denom / (denom - num) < 20000 {
        scale = 10000;
        scaled_ratio = (num as f64 * scale as f64) / denom as f64;
        fractional_part = (scaled_ratio + 0.5) as u32;
        if fractional_part >= scale {
            fractional_part = scale - 1;
        }
        return write!(buffer, "{:u}.{:02u}%", fractional_part / 100, fractional_part % 100).unwrap();
    }

    integer_part = num / denom;
    remainder = num % denom;
    scale = 100;
    scaled_ratio = (remainder as f64 * scale as f64) / denom as f64;
    fractional_part = (scaled_ratio + 0.5) as u32;
    if fractional_part >= scale {
        fractional_part = 0;
        integer_part += 1;
    }

    if always_percent {
        return write!(buffer, "{:llu}{:02u}%", integer_part, fractional_part).unwrap();
    }

    if integer_part < 100 {
        return write!(buffer, "{:llu}.{:02u}x", integer_part, fractional_part).unwrap();
    }

    integer_part = num / denom;
    if remainder > (denom - 1) / 2 {
        integer_part += 1;
    }

    write!(buffer, "{:llu}x", integer_part).unwrap()
}

#[no_mangle]
#[no_mangle]
fn main() {
    let mut buffer = String::new();
    let buffer_size = 100;
    let num = 123456789;
    let denom = 987654321;
    let always_percent = true;

    opng_sprint_uratio_impl(&mut buffer, buffer_size, num, denom, always_percent);
    println!("{}", buffer);
}
