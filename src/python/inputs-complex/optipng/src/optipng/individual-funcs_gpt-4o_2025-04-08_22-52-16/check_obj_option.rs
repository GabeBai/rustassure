fn check_obj_option(opt: &str, opt_arg: &str) {
    if opt_arg == "all" {
        return;
    }

    let mut is_valid = true;
    for (i, c) in opt_arg.chars().enumerate() {
        if i >= 4 || !c.is_ascii_alphabetic() {
            is_valid = false;
            break;
        }
    }

    if is_valid && opt_arg.len() == 4 {
        eprintln!("Manipulation of individual chunks is not implemented");
    } else {
        eprintln!("Invalid option argument: {} {}", opt, opt_arg);
    }
}
