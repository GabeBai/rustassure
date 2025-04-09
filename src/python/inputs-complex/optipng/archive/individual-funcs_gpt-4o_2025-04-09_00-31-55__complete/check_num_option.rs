fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    // Attempt to parse the string as an unsigned long
    let value = match opt_arg.parse::<u32>() {
        Ok(v) => v,
        Err(_) => {
            err_option_arg(opt, opt_arg);
            return 0; // Return a default value or handle the error as needed
        }
    };

    // Check if the value is within the valid range
    if value > 2147483647 || value < lowest as u32 || value > highest as u32 {
        err_option_arg(opt, opt_arg);
    }

    value as i32
}

// Dummy function to represent error handling
fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Error with option {}: {}", opt, opt_arg);
}

// Dummy function to simulate the opng_str2ulong behavior
fn opng_str2ulong(value: &mut u32, opt_arg: &str, _: u32) -> i32 {
    match opt_arg.parse::<u32>() {
        Ok(v) => {
            *value = v;
            0
        }
        Err(_) => 1,
    }
}

fn main() {
    let opt = "option";
    let opt_arg = "12345";
    let lowest = 0;
    let highest = 100000;

    let result = check_num_option(opt, opt_arg, lowest, highest);
    println!("Result: {}", result);
}
