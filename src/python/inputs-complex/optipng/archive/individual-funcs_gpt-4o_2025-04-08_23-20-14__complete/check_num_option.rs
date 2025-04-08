fn opng_str2ulong(value: &mut u64, opt_arg: &str, base: u32) -> Result<(), ()> {
    match u64::from_str_radix(opt_arg, base) {
        Ok(v) => {
            *value = v;
            Ok(())
        }
        Err(_) => Err(()),
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) -> ! {
    eprintln!("Invalid argument for option {}: {}", opt, opt_arg);
    std::process::exit(1);
}

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let mut value: u64 = 0;
    if opng_str2ulong(&mut value, opt_arg, 10).is_err()
        || value > i32::MAX as u64
        || (value as i32) < lowest
        || (value as i32) > highest
    {
        err_option_arg(opt, opt_arg);
    }
    value as i32
}

fn main() {
    // Example usage
    let opt = "-o";
    let opt_arg = "5";
    let lowest = 0;
    let highest = 7;

    let value = check_num_option(opt, opt_arg, lowest, highest);
    println!("Option value: {}", value);
}
