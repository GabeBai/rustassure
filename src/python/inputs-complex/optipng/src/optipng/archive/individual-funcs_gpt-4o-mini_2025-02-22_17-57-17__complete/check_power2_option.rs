use std::num::ParseIntError;

fn opng_str2ulong(value: &mut u64, opt_arg: &str) -> Result<(), ParseIntError> {
    *value = opt_arg.parse::<u64>()?;
    Ok(())
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Invalid argument for option {}: {}", opt, opt_arg);
}

fn check_power2_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let mut value: u64 = 0;

    if opng_str2ulong(&mut value, opt_arg).is_ok() {
        let mut lowest = lowest.max(0);
        let highest = highest.min((8 * std::mem::size_of::<u64>() as i32 - 2));

        for result in lowest..=highest {
            if (1u64 << result) == value {
                return result;
            }
        }
    }

    err_option_arg(opt, opt_arg);
    -1
}

fn main() {
    // Example usage
    let opt = "example_option";
    let opt_arg = "4"; // This should be a valid power of 2
    let result = check_power2_option(opt, opt_arg, 0, 64);
    println!("Result: {}", result);
}
