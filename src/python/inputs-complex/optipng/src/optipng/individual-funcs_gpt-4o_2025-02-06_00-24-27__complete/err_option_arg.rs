#![allow(unaligned_references)]
#[no_mangle]
#[no_mangle]
fn opng_strltrim(s: &str) -> &str {
    s.trim_start()
}

#[no_mangle]
#[no_mangle]
fn error(message: &str) {
    eprintln!("{}", message);
}

#[no_mangle]
#[no_mangle]
fn err_option_arg(opt: &str, opt_arg: Option<&str>) {
    if let Some(arg) = opt_arg {
        if opng_strltrim(arg).is_empty() {
            error(&format!("Missing argument for option {}", opt));
        } else {
            error(&format!("Invalid argument for option {}: {}", opt, arg));
        }
    } else {
        error(&format!("Missing argument for option {}", opt));
    }
}

#[no_mangle]
#[no_mangle]
fn main() {
    // Example usage
    err_option_arg("example_option", Some("   "));
    err_option_arg("example_option", Some("valid_arg"));
    err_option_arg("example_option", None);
}
