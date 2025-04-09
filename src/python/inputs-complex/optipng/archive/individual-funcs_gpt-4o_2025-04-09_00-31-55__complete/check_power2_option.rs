fn check_power2_option(opt: &str, opt_arg: &str, mut lowest: i32, mut highest: i32) -> i32 {
    // Attempt to parse the string argument to an unsigned long
    let value: Result<u64, _> = opt_arg.parse();

    if let Ok(value) = value {
        if lowest < 0 {
            lowest = 0;
        }
        if highest > (8 * std::mem::size_of::<u64>() as i32 - 2) {
            highest = 8 * std::mem::size_of::<u64>() as i32 - 2;
        }
        for result in lowest..=highest {
            if (1u64 << result) == value {
                return result;
            }
        }
    }

    // Handle the error case
    err_option_arg(opt, opt_arg);
    -1
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Error: Invalid option argument for {}: {}", opt, opt_arg);
}

fn main() {
    // Example usage
    let opt = "example_option";
    let opt_arg = "16";
    let result = check_power2_option(opt, opt_arg, 0, 10);
    println!("Result: {}", result);
}
