fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        None => {
            eprintln!("Missing argument for option {}", opt);
        }
        Some(arg) if arg.trim().is_empty() => {
            eprintln!("Missing argument for option {}", opt);
        }
        Some(arg) => {
            eprintln!("Invalid argument for option {}: {}", opt, arg);
        }
    }
}

fn main() {
    let option = "example_option";
    let argument: Option<&str> = None; // or Some(" ") or Some("valid_arg")

    err_option_arg(option, argument);
}
