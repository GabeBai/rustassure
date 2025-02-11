#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
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
        eprintln!("Manipulation of individual chunks is not implemented");
    } else {
        err_option_arg(opt, opt_arg);
    }
}

#[no_mangle]
#[no_mangle]
fn err_option_arg(opt: &str, opt_arg: &str) {
    eprintln!("Invalid option argument: {} for option: {}", opt_arg, opt);
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    check_obj_option("example_option", "abcd");
    check_obj_option("example_option", "all");
    check_obj_option("example_option", "1234");
}
