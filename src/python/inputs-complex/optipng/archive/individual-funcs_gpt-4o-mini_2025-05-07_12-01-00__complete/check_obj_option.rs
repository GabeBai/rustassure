fn error(message: &str) {
    panic!("{}", message); // You can replace this with proper error handling if needed
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    // Implement the behavior of this function based on your requirements
    println!("Error with option: {}, argument: {}", opt, opt_arg);
}

fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let mut i = 0;
    while i < 4 {
        if !opt_arg.chars().nth(i).map_or(false, |c| c.is_ascii_alphabetic()) {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg.chars().nth(i).is_none() {
        error("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}
