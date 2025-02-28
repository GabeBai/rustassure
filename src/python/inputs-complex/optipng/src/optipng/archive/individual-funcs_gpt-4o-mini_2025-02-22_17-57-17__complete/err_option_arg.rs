fn error(message: &str) {
    eprintln!("{}", message);
}

fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        Some(arg) if !arg.trim().is_empty() => {
            error(&format!("Invalid argument for option {}: {}", opt, arg));
        }
        _ => {
            error(&format!("Missing argument for option {}", opt));
        }
    }
}
