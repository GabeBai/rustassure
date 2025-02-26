use std::num::ParseIntError;

fn opng_str2ulong(value: &mut u64, opt_arg: &str) -> Result<(), ParseIntError> {
    *value = opt_arg.parse::<u64>()?;
    Ok(())
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Error: Option '{}' has invalid argument '{}'", opt, opt_arg);
}

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> Result<i32, ()> {
    let mut value: u64 = 0;

    // Attempt to parse the option argument as an unsigned long
    if opng_str2ulong(&mut value, opt_arg).is_err() || 
       value > 2147483647 || 
       (value as i32) < lowest || 
       (value as i32) > highest {
        err_option_arg(opt, opt_arg);
        return Err(());
    }

    Ok(value as i32)
}
