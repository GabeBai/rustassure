#![allow(unaligned_references)]
use std::num::ParseIntError;

#[no_mangle]
#[no_mangle]
fn opng_str2ulong(value: &mut u32, opt_arg: &str) -> Result<(), ParseIntError> {
    *value = u32::from_str_radix(opt_arg, 10)?;
    Ok(())
}

#[no_mangle]
#[no_mangle]
fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let mut value: u32 = 0;
    if opng_str2ulong(&mut value, opt_arg).is_err() || value > i32::MAX as u32 || (value as i32) < lowest || (value as i32) > highest {
        err_option_arg(opt, opt_arg);
    }
    value as i32
}

#[no_mangle]
#[no_mangle]
fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Error: Invalid option argument for {}: {}", opt, opt_arg);
    // Handle the error appropriately, e.g., by exiting the program or returning an error code
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    let opt = "example_option";
    let opt_arg = "12345";
    let lowest = 0;
    let highest = 100000;

    let result = check_num_option(opt, opt_arg, lowest, highest);
    println!("Result: {}", result);
}
