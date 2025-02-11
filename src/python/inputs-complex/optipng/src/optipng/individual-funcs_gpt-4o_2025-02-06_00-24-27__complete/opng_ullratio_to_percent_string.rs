#![allow(unaligned_references)]
use std::fmt::Write;

#[repr(C, packed)]struct OpngUllratio {
    num: u64,
    denom: u64,
}

#[no_mangle]
#[no_mangle]
fn opng_ullratio_to_percent_string(buffer: &mut String, ratio: &OpngUllratio) -> Result<(), std::fmt::Error> {
    let num = ratio.num;
    let denom = ratio.denom;
    opng_sprint_uratio_impl(buffer, num, denom)
}

#[no_mangle]
#[no_mangle]
fn opng_sprint_uratio_impl(buffer: &mut String, num: u64, denom: u64) -> Result<(), std::fmt::Error> {
    if denom == 0 {
        return Err(std::fmt::Error); // Handle division by zero
    }
    let percentage = (num as f64 / denom as f64) * 100.0;
    write!(buffer, "{:.2}%", percentage)
}

#[no_mangle]
#[no_mangle]
fn main() {
    let ratio = OpngUllratio { num: 1, denom: 2 };
    let mut buffer = String::new();
    match opng_ullratio_to_percent_string(&mut buffer, &ratio) {
        Ok(_) => println!("Result: {}", buffer),
        Err(_) => println!("Error calculating percentage"),
    }
}
