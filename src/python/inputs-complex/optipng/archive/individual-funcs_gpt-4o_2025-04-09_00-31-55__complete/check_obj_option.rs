fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let mut i = 0;
    for c in opt_arg.chars() {
        if !((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z')) {
            break;
        }
        i += 1;
    }

    if i == 4 && opt_arg.len() == 4 {
        panic!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}

fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Invalid option argument: {} for option {}", opt_arg, opt);
}

fn main() {
    // Example usage
    check_obj_option("example_option", "abcd");
}
