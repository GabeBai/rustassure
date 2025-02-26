use std::io::{self, Write};

static mut OPTIONS: Option<OpngOptions> = None;

struct OpngOptions {
    debug: bool,
}

fn panic(msg: &str) {
    eprintln!("\n** INTERNAL ERROR: {}", msg);
    eprintln!("Please submit a defect report.");
    eprintln!("http://optipng.sourceforge.net/\n");
    io::stderr().flush().unwrap();

    unsafe {
        if let Some(options) = &OPTIONS {
            if options.debug {
                std::process::abort();
            } else {
                osys_terminate();
            }
        } else {
            osys_terminate();
        }
    }
}

extern "C" {
    fn osys_terminate() -> !;
}