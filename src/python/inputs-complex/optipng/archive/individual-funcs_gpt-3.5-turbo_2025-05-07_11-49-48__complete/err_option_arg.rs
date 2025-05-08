fn error(format: &str, args: &[&dyn std::fmt::Display]) {
    if args.is_empty() {
        println!("{}", format);
    } else {
        println!("{}", format);
        for arg in args {
            println!("{}", arg);
        }
    }
}

fn opng_strltrim(s: &str) -> &str {
    s.trim_start()
}

fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    match opt_arg {
        Some(arg) => {
            if opng_strltrim(arg).is_empty() {
                error(&format!("Missing argument for option {}", opt), &[]);
            } else {
                error(&format!("Invalid argument for option {}: {}", opt, arg), &[]);
            }
        }
        None => {
            error(&format!("Missing argument for option {}", opt), &[]);
        }
    }
}

fn main() {
    err_option_arg("test", Some("value"));
}
