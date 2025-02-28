use std::os::raw::{c_char, c_long};
use std::str::FromStr;

fn check_power2_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let value = match opt_arg.parse::<u64>() {
        Ok(val) => val,
        Err(_) => return -1,
    };

    let lowest = if lowest < 0 { 0 } else { lowest };
    let highest = if highest > (8 * std::mem::size_of::<c_long>() as i32 - 2) {
        (8 * std::mem::size_of::<c_long>() as i32 - 2)
    } else {
        highest
    };

    for result in lowest..=highest {
        if (1u64 << result) == value {
            return result;
        }
    }

    // err_option_arg(opt, opt_arg); // You need to implement this function or handle the error differently
    -1
}
