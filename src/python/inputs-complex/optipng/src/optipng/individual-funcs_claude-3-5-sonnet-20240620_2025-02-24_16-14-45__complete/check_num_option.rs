use std::str::FromStr;

fn check_num_option(opt: &str, opt_arg: &str, lowest: i32, highest: i32) -> i32 {
    match u64::from_str(opt_arg) {
        Ok(value) if value <= i32::MAX as u64 && (value as i32) >= lowest && (value as i32) <= highest => {
            value as i32
        },
        _ => {
            panic!("Invalid argument for option {}: {}", opt, opt_arg);
        }
    }
}