fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let is_valid = opt_arg.chars().take(4).all(|c| c.is_ascii_alphabetic());

    if is_valid && opt_arg.len() == 4 {
        eprintln!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Invalid option argument: {} {}", opt, opt_arg);
}

fn main() {
    // Example usage
    check_obj_option("some_option", "abcd");
    check_obj_option("some_option", "all");
    check_obj_option("some_option", "1234");
}
