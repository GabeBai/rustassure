use std::os::raw::{c_ulong, c_char};

fn opng_str2ulong(value: &mut c_ulong, opt_arg: *const c_char, base: i32) -> i32 {
    // Implementation of opng_str2ulong function
    unimplemented!()
}

fn check_power2_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let mut value: c_ulong = 0;
    let result: i32;

    if opng_str2ulong(&mut value, opt_arg.as_ptr() as *const c_char, 1) == 0 {
        let mut lowest = lowest;
        let mut highest = highest;

        if lowest < 0 {
            lowest = 0;
        }
        if highest > (8 * std::mem::size_of::<c_ulong>() as i32 - 2) {
            highest = 8 * std::mem::size_of::<c_ulong>() as i32 - 2;
        }

        for result in lowest..=highest {
            if (1u64 << result) == value {
                return result;
            }
        }
    }

    // err_option_arg(opt, opt_arg); // You need to implement this function
    -1
}
