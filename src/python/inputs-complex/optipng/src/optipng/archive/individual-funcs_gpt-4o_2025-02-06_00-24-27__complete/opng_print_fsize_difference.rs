#![allow(unaligned_references)]
use std::fmt::Write;

#[no_mangle]
#[no_mangle]
fn opng_print_fsize_difference(init_size: u64, final_size: u64, show_ratio: bool) {
    let mut buffer = String::new();
    let difference;
    let sign;

    if init_size <= final_size {
        sign = 0;
        difference = final_size - init_size;
    } else {
        sign = 1;
        difference = init_size - final_size;
    }

    if difference == 0 {
        writeln!(&mut buffer, "no change").unwrap();
    } else {
        if difference == 1 {
            writeln!(&mut buffer, "1 byte").unwrap();
        } else {
            writeln!(&mut buffer, "{} bytes", difference).unwrap();
        }

        if show_ratio && init_size > 0 {
            write!(&mut buffer, " = ").unwrap();
            opng_print_fsize_ratio(&mut buffer, difference, init_size);
        }

        writeln!(&mut buffer, "{}", if sign == 0 { " increase" } else { " decrease" }).unwrap();
    }

    // Assuming usr_printf is a function that prints the buffer
    usr_printf(&buffer);
}

#[no_mangle]
#[no_mangle]
fn opng_print_fsize_ratio(buffer: &mut String, difference: u64, init_size: u64) {
    // Implement the ratio calculation and formatting here
    // For example:
    let ratio = difference as f64 / init_size as f64;
    writeln!(buffer, "{:.2}", ratio).unwrap();
}

#[no_mangle]
#[no_mangle]
fn usr_printf(message: &str) {
    // This function would be equivalent to the C function pointer `usr_printf`
    // For demonstration, we'll just print to the console
    println!("{}", message);
}

#[no_mangle]
#[no_mangle]
fn main() {
    opng_print_fsize_difference(1000, 800, true);
}
