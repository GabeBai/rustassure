fn opng_str2ulong(value: &mut u64, opt_arg: &str) -> Result<(), String> {
    match opt_arg.parse::<u64>() {
        Ok(v) => {
            *value = v;
            Ok(())
        }
        Err(_) => Err(format!("Invalid number: {}", opt_arg)),
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    panic!("Invalid argument for option '{}': {}", opt, opt_arg);
}

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    let mut value: u64 = 0;
    if opng_str2ulong(&mut value, opt_arg).is_err() || 
       value > 2147483647 || (value as i32) < lowest || (value as i32) > highest {
        err_option_arg(opt, opt_arg);
    }
    value as i32
}
